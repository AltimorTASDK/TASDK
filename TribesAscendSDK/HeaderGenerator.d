module HeaderGenerator;

private import std.string;
private import std.regex;
private import Config;
private import IndentedStreamWriter;
private import ScriptClasses;

public void Generate()
{
	//IndentedStreamWriter wtr = new IndentedStreamWriter("TribesAscendSDKTest.log");
	ClassDescriptor[] classDescriptors;
	StructDescriptor[] structDescriptors;
	ConstantDescriptor[] constantDescriptors;
	StateDescriptor[] stateDescriptors;
	EnumDescriptor[] enumDescriptors;
	FunctionDescriptor[] functionDescriptors;
	PropertyDescriptor[] propertyDescriptors;
	//wtr.WriteLine("Dumping %u objects.", (*ScriptObject.ObjectArray).Count);
	for (int i = 0; i < (*ScriptObject.ObjectArray).Count; i++)
	{
		ScriptObject classObject = (*ScriptObject.ObjectArray)[i];
		if (classObject)
		{
			//wtr.WriteLine("%u: %s", i, classObject.GetFullName());
			switch (classObject.ObjectClass.GetName())
			{
				case "Class":
				{
					ClassDescriptor cd = new ClassDescriptor(cast(ScriptClass)classObject);
					classDescriptors ~= cd;
					TypeDescriptorMap[classObject.GetFullName()] = cd;
					TypeIdentifiersTable[classObject.GetName()] = cd;
					break;
				}
				case "ScriptStruct":
				{
					StructDescriptor sd = new StructDescriptor(cast(ScriptStruct)classObject); 
					structDescriptors ~= sd;
					TypeDescriptorMap[classObject.GetFullName()] = sd;
					TypeIdentifiersTable[classObject.GetName()] = sd;
					break;
				}
				case "Const":
					constantDescriptors ~= new ConstantDescriptor(cast(ScriptConst)classObject);
					break;
				case "Enum":
				{
					EnumDescriptor ed = new EnumDescriptor(cast(ScriptEnum)classObject);
					enumDescriptors ~= ed;
					TypeIdentifiersTable[classObject.GetName()] = ed;
					break;
				}
				case "Function":
					functionDescriptors ~= new FunctionDescriptor(cast(ScriptFunction)classObject);
					break;
				case "ArrayProperty":
				case "BoolProperty":
				case "ByteProperty":
				case "ClassProperty":
				case "ComponentProperty":
				case "DelegateProperty":
				case "FloatProperty":
				case "IntProperty":
				case "InterfaceProperty":
				case "MapProperty":
				case "NameProperty":
				case "ObjectProperty":
				case "StrProperty":
				case "StructProperty":
					propertyDescriptors ~= new PropertyDescriptor(cast(ScriptProperty)classObject);
					break;
				case "State":
					stateDescriptors ~= new StateDescriptor(cast(ScriptState)classObject);
					break;
				default:
					break;
			}
		}
	}

	foreach (sd; structDescriptors)
		ProcessNested(sd, sd.InnerStruct);
	foreach (cd; constantDescriptors)
		ProcessNested(cd, cd.InnerConstant);
	foreach (sd; stateDescriptors)
		ProcessNested(sd, sd.InnerState);
	foreach (ed; enumDescriptors)
		ProcessNested(ed, ed.InnerEnum);
	foreach (fd; functionDescriptors)
		ProcessNested(fd, fd.InnerFunction);
	foreach (pd; propertyDescriptors)
		ProcessNested(pd, pd.InnerProperty);

	foreach (c; classDescriptors)
		c.Generate();
}

private:
__gshared Descriptor[string] TypeDescriptorMap;
__gshared Descriptor[string] TypeIdentifiersTable;

void ProcessNested(Descriptor desc, ScriptObject innerVal)
{
	Descriptor parent = TypeDescriptorMap.get(innerVal.Outer.GetFullName(), null);
	if (parent)
	{
		switch (parent.Type)
		{
			case DescriptorType.Class:
			case DescriptorType.State:
			case DescriptorType.Struct:
			{
				NestableContainer cont = cast(NestableContainer)parent;
				switch (desc.Type)
				{
					case DescriptorType.State:
						cont.States ~= cast(StateDescriptor)desc;
						break;
					case DescriptorType.Constant:
						cont.NestedConstants ~= cast(ConstantDescriptor)desc;
						break;
					case DescriptorType.Enum:
						cont.NestedEnums ~= cast(EnumDescriptor)desc;
						break;
					case DescriptorType.Function:
						cont.Functions ~= cast(FunctionDescriptor)desc;
						break;
					case DescriptorType.Property:
					{
						PropertyDescriptor pDesc = cast(PropertyDescriptor)desc;
						if (pDesc.IsBoolProperty)
							cont.BoolProperties ~= pDesc;
						else
							cont.Properties ~= pDesc;
						if (parent.Type == DescriptorType.Struct)
							pDesc.ParentIsStruct = true;
						break;
					}
					case DescriptorType.Struct:
						cont.NestedStructs ~= cast(StructDescriptor)desc;
						break;

					case DescriptorType.Class:
					case DescriptorType.FunctionArgument:
						throw new Exception("These shouldn't be making it here!");
					default:
						throw new Exception("Unknown DescriptorType!");
				}
				break;
			}
			default:
				throw new Exception("Unknown parent descriptor type!");
		}
	}
	else
	{
		// We weren't able to locate the parent of this Descriptor
		// TODO: Output some useful info here.
	}
}

immutable(string) EscapeName(string name)
{
	switch (name)
	{
		case "Interface":
			return "UInterface";
		case "Object":
			return "UObject";
		default:
			return name;
	}
}

final class DependencyManager
{
	ScriptObject[string] RequiredImports;
	ScriptObject ParentType;

	this(ScriptObject parentType)
	{
		ParentType = parentType;
	}

	static final immutable(string) GetImportName(ScriptObject type)
	{
		string n = EscapeName(type.GetName());
		for (ScriptObject outer = type.Outer; outer; outer = outer.Outer)
		{
			n = EscapeName(outer.GetName()) ~ "." ~ n;
		}
		return "UnrealScript." ~ n;
	}

	void ProcessProperty(ScriptProperty prop)
	{
		final switch (prop.Type)
		{
			case ScriptPropertyType.Object:
			case ScriptPropertyType.Struct:
				RequireType((cast(ScriptObjectProperty)prop).PropertyClass);
				break;
			case ScriptPropertyType.Enum:
				RequireType((cast(ScriptByteProperty)prop).EnumType);
				break;
			case ScriptPropertyType.Array:
				ProcessProperty((cast(ScriptArrayProperty)prop).InnerProperty);
				break;

			case ScriptPropertyType.Class:
			case ScriptPropertyType.Boolean:
			case ScriptPropertyType.Byte:
			case ScriptPropertyType.Float:
			case ScriptPropertyType.Integer:
			case ScriptPropertyType.Name:
			case ScriptPropertyType.String:
				break;


			// TODO: Implement
			case ScriptPropertyType.Component:
			case ScriptPropertyType.Delegate:
			case ScriptPropertyType.Interface:
			case ScriptPropertyType.Map:
				break;
		}
	}

	void RequireType(ScriptObject type)
	{
		if (type == ParentType)
			return;
		if (Descriptor.IsManaullyDefinedType(type.GetName()))
			return;

		if (type.Outer.Outer)
		{
			// Ensure that we only require the class-level
			// include.
			RequireType(type.Outer);
			return;
		}
		RequiredImports[GetImportName(type)] = type;
	}

	void Write(IndentedStreamWriter wtr)
	{
		wtr.WriteLine("import ScriptClasses;");
		wtr.WriteLine("import UnrealScript.Helpers;");
		// TODO: Sort these before writing them out.
		foreach (ri; RequiredImports.byValue())
			wtr.WriteLine("import %s;", GetImportName(ri));
	}
}

abstract class Descriptor
{
	@property abstract DescriptorType Type();

	abstract void RequireDependencies(DependencyManager mgr);
	abstract void Write(IndentedStreamWriter wtr);

	static final bool IsManaullyDefinedType(string name)
	{
		switch (name)
		{
			case "Pointer":
			case "QWord":
			case "Rotator":
			case "Vector":
				return true;
			default:
				return false;
		}
	}

	final immutable(string) GetTypeName(ScriptObject obj)
	{
		switch (obj.ObjectClass.GetName())
		{
			case "Class":
			case "Enum":
			case "ScriptStruct":
			{
				string tp = EscapeName(obj.GetName());
				if (IsManaullyDefinedType(tp))
					return tp;
				for (ScriptObject outer = obj.Outer; outer.Outer; outer = outer.Outer)
					tp = EscapeName(outer.GetName()) ~ "." ~ tp;
				return tp;
			}

			default:
				return "\n// ERROR: Unknown object class '" ~ obj.ObjectClass.GetFullName() ~ "'!\nvoid*";
		}
	}

	final immutable(string) GetTypeName(ScriptProperty prop)
	{
		final switch (prop.Type)
		{
			case ScriptPropertyType.Object:
			case ScriptPropertyType.Struct:
				return GetTypeName((cast(ScriptObjectProperty)prop).PropertyClass);

			case ScriptPropertyType.Array:
				return "ScriptArray!(" ~ GetTypeName((cast(ScriptArrayProperty)prop).InnerProperty) ~ ")";
			case ScriptPropertyType.Boolean:
				return "bool";
			case ScriptPropertyType.Byte:
				return "ubyte";
			case ScriptPropertyType.Class:
				return "ScriptClass";
			case ScriptPropertyType.Enum:
				return GetTypeName((cast(ScriptByteProperty)prop).EnumType);
			case ScriptPropertyType.Float:
				return "float";
			case ScriptPropertyType.Integer:
				return "int";
			case ScriptPropertyType.Name:
				return "ScriptName";
			case ScriptPropertyType.String:
				return "ScriptString";


			// TODO: Implement
			case ScriptPropertyType.Component:
			case ScriptPropertyType.Delegate:
			case ScriptPropertyType.Interface:
			case ScriptPropertyType.Map:
				return "\n// ERROR: Unknown object class '" ~ prop.ObjectClass.GetFullName() ~ "'!\nvoid*";
		}
	}
}

enum DescriptorType
{
	Class,
	Constant,
	Documenation,
	Enum,
	Function,
	FunctionArgument,
	Property,
	State,
	Struct,
}

final class DocumenationDescriptor : Descriptor
{
	@property final override DescriptorType Type() { return DescriptorType.Documenation; }

	struct ParameterDocumentationDescriptor
	{
		string ParameterName;
		string Summary;
	}

	@property bool HasDocumentation() { return Summary !is null || ParameterDocumentation.length > 0 || ReturnDocumentation !is null; }
	string Summary;
	ParameterDocumentationDescriptor[] ParameterDocumentation;
	string ReturnDocumentation;
	this(string docString)
	{
		if (startsWith(docString, "/**"))
			docString = docString[3..docString.length];
		if (endsWith(docString, "*/"))
			docString = docString[0..(docString.length - 3)];
		Summary = docString;
		// TODO: Extract parameters, and return documentation.
		//string[] lns = splitLines(docString);
	}

	// Documentation doesn't have any types to require.
	override void RequireDependencies(DependencyManager mgr) { }
	override void Write(IndentedStreamWriter wtr)
	{
		if (HasDocumentation)
		{
			wtr.WriteLine("/**");
			if (Summary !is null)
			{
				wtr.WriteLine(" * %s", Summary);
				wtr.WriteLine(" * ");
			}
			if (ParameterDocumentation.length > 0)
			{
				wtr.WriteLine(" * Params:");
				foreach (pd; ParameterDocumentation)
					wtr.WriteLine(" *\t\t%s = %s", pd.ParameterName, pd.Summary);
				wtr.WriteLine(" * ");
			}
			if (ReturnDocumentation !is null)
				wtr.WriteLine(" * Returns: %s", ReturnDocumentation);
			wtr.WriteLine(" */");
		}
	}
}

final class EnumDescriptor : Descriptor
{
	@property final override DescriptorType Type() { return DescriptorType.Enum; }

	ScriptEnum InnerEnum;
	this(ScriptEnum innerEnum)
	{
		InnerEnum = innerEnum;
	}

	override void RequireDependencies(DependencyManager mgr) { }
	override void Write(IndentedStreamWriter wtr)
	{
		wtr.WriteLine("enum %s : ubyte", InnerEnum.GetName());
		wtr.WriteLine("{");
		wtr.Indent++;

		for (int i = 0; i < InnerEnum.ValueNames.Count; i++)
		{
			wtr.WriteLine("%s = %u,", InnerEnum.ValueNames[i].GetName(), i);
		}

		wtr.Indent--;
		wtr.WriteLine("}");
	}
}

final class ConstantDescriptor : Descriptor
{
	@property final override DescriptorType Type() { return DescriptorType.Constant; }

	ScriptConst InnerConstant;
	this(ScriptConst innerConstant)
	{
		InnerConstant = innerConstant;
	}

	override void RequireDependencies(DependencyManager mgr) { }
	override void Write(IndentedStreamWriter wtr) { assert(0, "This method isn't implemented!"); }
	void Write(IndentedStreamWriter wtr, bool alone)
	{
		string valString = InnerConstant.Value.ToString();
		if (valString.length > 2)
		{
			switch(valString[valString.length - 1])
			{
				case 'f':
					if (valString[valString.length - 2] == '.')
						valString = valString[0..(valString.length - 3)] ~ ".0f";
					break;
				case '\'':
					if (valString[0] == '\'')
						valString = `"` ~ valString[1..(valString.length - 1)] ~ `"`;
					break;
				default:
					break;
			}
		}
		if (alone)
			wtr.WriteLine("enum %s = %s;", InnerConstant.GetName(), valString);
		else
			wtr.WriteLine("%s = %s,", InnerConstant.GetName(), valString);
	}
}

final class PropertyDescriptor : Descriptor
{
	@property final override DescriptorType Type() { return DescriptorType.Property; }

	ScriptProperty InnerProperty;
	bool ParentIsStruct;
	bool IsBoolProperty;
	this(ScriptProperty innerProperty)
	{
		InnerProperty = innerProperty;
		ParentIsStruct = false;
		IsBoolProperty = InnerProperty.ObjectClass.GetName() == "BoolProperty";
	}

	// TODO: Add support for DelegateProperty, MapProperty, InterfaceProperty, and ComponentProperty

	override void RequireDependencies(DependencyManager mgr) { mgr.ProcessProperty(InnerProperty); }
	override void Write(IndentedStreamWriter wtr) { assert(0, "This method is not implemented!"); }

	void Write(IndentedStreamWriter wtr, bool alone)
	{
		// Check to see if the property name is the same as a valid type.
		if (TypeIdentifiersTable.get(InnerProperty.GetName(), null))
		{
			wtr.WriteLine("// WARNING: Property '%s' has the same name as a defined type!", InnerProperty.GetName());
			return;
		}

		final switch (InnerProperty.Type)
		{
			case ScriptPropertyType.Boolean:
				if (alone)
					wtr.Write("@property final ");
				if (ParentIsStruct)
				{
					wtr.WriteLine("bool %s() { mixin(MGBPS(%u, 0x%X)); }", InnerProperty.GetName(), InnerProperty.Offset, (cast(ScriptBoolProperty)InnerProperty).BitMask);
					wtr.WriteLine("bool %s(bool val) { mixin(MSBPS(%u, 0x%x)); }", InnerProperty.GetName(), InnerProperty.Offset, (cast(ScriptBoolProperty)InnerProperty).BitMask);
				}
				else
				{
					wtr.WriteLine("bool %s() { mixin(MGBPC(%u, 0x%X)); }", InnerProperty.GetName(), InnerProperty.Offset, (cast(ScriptBoolProperty)InnerProperty).BitMask);
					wtr.WriteLine("bool %s(bool val) { mixin(MSBPC(%u, 0x%X)); }", InnerProperty.GetName(), InnerProperty.Offset, (cast(ScriptBoolProperty)InnerProperty).BitMask);
				}
				break;

			case ScriptPropertyType.Array:
			case ScriptPropertyType.Byte:
			case ScriptPropertyType.Class:
			case ScriptPropertyType.Enum:
			case ScriptPropertyType.Float:
			case ScriptPropertyType.Integer:
			case ScriptPropertyType.Name:
			case ScriptPropertyType.Object:
			case ScriptPropertyType.String:
			case ScriptPropertyType.Struct:
				if (alone)
					wtr.Write("@property final auto ref ");
				if (ParentIsStruct)
					wtr.WriteLine(`%s %s() { mixin(MGPS("%s", %u)); }`, GetTypeName(InnerProperty), InnerProperty.GetName(), GetTypeName(InnerProperty), InnerProperty.Offset);
				else
					wtr.WriteLine(`%s %s() { mixin(MGPC("%s", %u)); }`, GetTypeName(InnerProperty), InnerProperty.GetName(), GetTypeName(InnerProperty), InnerProperty.Offset);
				break;
				
			case ScriptPropertyType.Component:
			case ScriptPropertyType.Delegate:
			case ScriptPropertyType.Interface:
			case ScriptPropertyType.Map:
				wtr.WriteLine("// ERROR: Unsupported object class '%s' for the property named '%s'!", InnerProperty.ObjectClass.GetName(), InnerProperty.GetName());
				break;
		}
	}
}

final class FunctionArgumentDescriptor : Descriptor
{
	@property final override DescriptorType Type() { return DescriptorType.FunctionArgument; }

	string ArgumentName;
	ScriptProperty InnerProperty;
	this(ScriptProperty innerProperty)
	{
		InnerProperty = innerProperty;
	}
	
	override void RequireDependencies(DependencyManager mgr) { mgr.ProcessProperty(InnerProperty); }

	// We don't implement this method, instead we implement a set of 3 methods.
	override void Write(IndentedStreamWriter wtr) { }

	void WriteDeclaration(IndentedStreamWriter wtr)
	{
		ArgumentName = InnerProperty.GetName();
		// Check to see if the parameter name is the same as a valid type.
		if (TypeIdentifiersTable.get(InnerProperty.GetName(), null))
			ArgumentName = "p" ~ ArgumentName;

		if (InnerProperty.IsOutParameter && !InnerProperty.IsOptionalParameter)
			wtr.Write("ref ");
		if (InnerProperty.IsConstant)
			wtr.Write("in ");


		wtr.Write("%s%s %s", GetTypeName(InnerProperty), InnerProperty.IsOptionalParameter ? "*" : "", ArgumentName);
		// TODO: Optional parameters are very very fun!
		if (InnerProperty.IsOptionalParameter)
			wtr.Write(" = null");
	}

	void WriteLoadToBuffer(IndentedStreamWriter wtr, string bufName)
	{
		string tpName = GetTypeName(InnerProperty);

		if (InnerProperty.IsOptionalParameter)
		{
			wtr.WriteLine("if (%s !is null)", ArgumentName);
			wtr.Indent++;
		}

		if (InnerProperty.Offset != 0)
		{
			if (tpName == "ubyte")
				wtr.Write("%s[%u]", bufName, InnerProperty.Offset);
			else
				wtr.Write("*cast(%s*)&%s[%u]", tpName, bufName, InnerProperty.Offset);
		}
		else
		{
			if (tpName == "ubyte")
				wtr.Write("%s[0]", bufName);
			else
				wtr.Write("*cast(%s*)%s.ptr", tpName, bufName);
		}

		wtr.Write(" = ");
		if (InnerProperty.IsConstant)
			wtr.Write("cast(%s)", tpName);

		if (InnerProperty.IsOptionalParameter)
		{
			wtr.WriteLine("*%s;", ArgumentName);
			wtr.Indent--;
		}
		else
		{
			wtr.WriteLine("%s;", ArgumentName);
		}
	}

	void WriteLoadFromBuffer(IndentedStreamWriter wtr, string bufName)
	{
		// If an out parameter is constant, then it's being
		// used purely as an input value, not an output value.
		if (InnerProperty.IsOutParameter && !InnerProperty.IsConstant)
		{
			string tpName = GetTypeName(InnerProperty);
			if (InnerProperty.IsOptionalParameter)
			{
				wtr.WriteLine("if (%s !is null)", ArgumentName);
				wtr.Indent++;

				wtr.Write("*%s", ArgumentName);
			}
			else
			{
				wtr.Write("%s", ArgumentName);
			}

			wtr.Write(" = ");

			if (InnerProperty.Offset != 0)
			{
				if (tpName == "ubyte")
					wtr.Write("%s[%u]", bufName, InnerProperty.Offset);
				else
					wtr.Write("*cast(%s*)&%s[%u]", tpName, bufName, InnerProperty.Offset);
			}
			else
			{
				if (tpName == "ubyte")
					wtr.Write("%s[0]", bufName);
				else
					wtr.Write("*cast(%s*)%s.ptr", tpName, bufName);
			}
			wtr.WriteLine(";");
			if (InnerProperty.IsOptionalParameter)
				wtr.Indent--;
		}
	}
}

final class FunctionDescriptor : Descriptor
{
	@property final override DescriptorType Type() { return DescriptorType.Function; }

	ScriptFunction InnerFunction;
	FunctionArgumentDescriptor[] Arguments;
	ScriptProperty ReturnProperty;
	this(ScriptFunction innerFunction)
	{
		InnerFunction = innerFunction;
		for (ScriptProperty functionArgument = cast(ScriptProperty)InnerFunction.Children; functionArgument; functionArgument = cast(ScriptProperty)functionArgument.Next)
		{
			if (functionArgument.PropertyFlags.HasAnyFlags(ScriptPropertyFlags.ParamFlags))
			{
				if (functionArgument.IsReturnParameter)
				{
					if (ReturnProperty)
						throw new Exception("Found multiple return parameters!");
					ReturnProperty = functionArgument;
				}
				else if (functionArgument.IsParameter)
					Arguments ~= new FunctionArgumentDescriptor(functionArgument);
				else
					throw new Exception("Unknown property with param flags!");
			}
			else
			{
				// We don't currently do anything with any children other than the params.
			}
		}
	}

	override void RequireDependencies(DependencyManager mgr)
	{
		if (ReturnProperty)
			mgr.ProcessProperty(ReturnProperty);
		foreach (arg; Arguments)
			arg.RequireDependencies(mgr);
	}

	override void Write(IndentedStreamWriter wtr) { assert(0, "This method is not implemented!"); }

	void WriteField(IndentedStreamWriter wtr, bool alone)
	{
		if (alone)
			wtr.Write("private static __gshared ");
		wtr.WriteLine("ScriptFunction m%s;", InnerFunction.GetName());
	}

	void WriteProperty(IndentedStreamWriter wtr, bool alone)
	{
		if (alone)
			wtr.Write("public @property static final ");
		wtr.WriteLine(`ScriptFunction %s() { mixin(MGF("m%s", "%s")); }`, InnerFunction.GetName(), InnerFunction.GetName(), InnerFunction.GetFullName());
	}

	void Write(IndentedStreamWriter wtr, bool alone)
	{
		// Check to see if the function name is the same as a valid type.
		if (TypeIdentifiersTable.get(InnerFunction.GetName(), null))
		{
			wtr.WriteLine("// WARNING: Function '%s' has the same name as a defined type!", InnerFunction.GetName());
			return;
		}

		if (alone)
			wtr.Write("final ");
		if (InnerFunction.FunctionFlags.HasFlag(ScriptFunctionFlags.Static))
			wtr.Write("static ");
		if (ReturnProperty)
			wtr.Write("%s", GetTypeName(ReturnProperty));
		else
			wtr.Write("void");
		wtr.Write(" %s(", InnerFunction.GetName());

		for (int i = 0; i < Arguments.length; i++)
		{
			Arguments[i].WriteDeclaration(wtr);
			if (i + 1 != Arguments.length)
				wtr.Write(", ");
		}

		wtr.WriteLine(")");
		wtr.WriteLine("{");
		wtr.Indent++;

		if (InnerFunction.ParamsSize > 0)
		{
			wtr.WriteLine("ubyte params[%u];", InnerFunction.ParamsSize);
			wtr.WriteLine("params[] = 0;");
		}

		foreach (arg; Arguments)
			arg.WriteLoadToBuffer(wtr, "params");

		if (InnerFunction.FunctionFlags.HasFlag(ScriptFunctionFlags.Static))
			wtr.Write("StaticClass");
		else
			wtr.Write("(cast(ScriptObject)this)");
		wtr.Write(".ProcessEvent(Functions.%s, ", InnerFunction.GetName());
		if (InnerFunction.ParamsSize > 0)
			wtr.Write("params.ptr");
		else
			wtr.Write("cast(void*)0");
		wtr.WriteLine(", cast(void*)0);");

		foreach (arg; Arguments)
			arg.WriteLoadFromBuffer(wtr, "params");

		if (ReturnProperty)
		{
			string tpName = GetTypeName(ReturnProperty);
			if (ReturnProperty.Offset != 0)
			{
				if (tpName == "ubyte")
					wtr.WriteLine("return params[%u];", ReturnProperty.Offset,);
				else
					wtr.WriteLine("return *cast(%s*)&params[%u];", tpName, ReturnProperty.Offset);
			}
			else
			{
				if (tpName == "ubyte")
					wtr.WriteLine("return params[0];");
				else
					wtr.WriteLine("return *cast(%s*)params.ptr;", tpName);
			}
		}

		wtr.Indent--;
		wtr.WriteLine("}");
	}
}

abstract class NestableContainer : Descriptor
{
	ConstantDescriptor[] NestedConstants;
	EnumDescriptor[] NestedEnums;
	StructDescriptor[] NestedStructs;
	StateDescriptor[] States;
	PropertyDescriptor[] Properties;
	PropertyDescriptor[] BoolProperties;
	FunctionDescriptor[] Functions;

	// TODO: Separate events out from Functions.

	final void RequireChildren(DependencyManager mgr)
	{
		foreach (nc; NestedConstants)
			nc.RequireDependencies(mgr);
		foreach (ne; NestedEnums)
			ne.RequireDependencies(mgr);
		foreach (ns; NestedStructs)
			ns.RequireDependencies(mgr);
		foreach (s; States)
			s.RequireDependencies(mgr);
		foreach (p; Properties)
			p.RequireDependencies(mgr);
		foreach (bp; BoolProperties)
			bp.RequireDependencies(mgr);
		foreach (f; Functions)
			f.RequireDependencies(mgr);
	}

	final void WriteChildren(IndentedStreamWriter wtr)
	{
		// Function Accessors
		if (Functions.length >= 1)
		{
			wtr.WriteLine("static struct Functions");
			wtr.WriteLine("{");
			wtr.Indent++;

			if (Functions.length > 1)
			{
				wtr.WriteLine("private static __gshared");
				wtr.WriteLine("{");
				wtr.Indent++;
			}
			foreach (f; Functions)
				f.WriteField(wtr, Functions.length <= 1);
			if (Functions.length > 1)
			{
				wtr.Indent--;
				wtr.WriteLine("}");
			}
			
			if (Functions.length > 1)
			{
				wtr.WriteLine("public @property static final");
				wtr.WriteLine("{");
				wtr.Indent++;
			}
			foreach (f; Functions)
				f.WriteProperty(wtr, Functions.length <= 1);
			if (Functions.length > 1)
			{
				wtr.Indent--;
				wtr.WriteLine("}");
			}

			wtr.Indent--;
			wtr.WriteLine("}");
		}


		// Nested Constants
		if (NestedConstants.length)
		{
			wtr.WriteLine("static struct Constants");
			wtr.WriteLine("{");
			wtr.Indent++;

			if (NestedConstants.length > 1)
			{
				wtr.WriteLine("enum");
				wtr.WriteLine("{");
				wtr.Indent++;
			}
			foreach (nc; NestedConstants)
				nc.Write(wtr, NestedConstants.length <= 1);
			if (NestedConstants.length > 1)
			{
				wtr.Indent--;
				wtr.WriteLine("}");
			}

			wtr.Indent--;
			wtr.WriteLine("}");
		}

		// Nested Enums
		foreach (ne; NestedEnums)
			ne.Write(wtr);

		// Nested Structs
		foreach (ns; NestedStructs)
			ns.Write(wtr);

		// States
		foreach (s; States)
			s.Write(wtr);

		// Properties & Bool Properties
		if (Properties.length > 1 && BoolProperties.length == 0)
		{
			wtr.WriteLine("@property final auto ref");
			wtr.WriteLine("{");
			wtr.Indent++;
		}
		else
		{
			if (Properties.length + (BoolProperties.length * 2) > 1)
			{
				wtr.WriteLine("@property final");
				wtr.WriteLine("{");
				wtr.Indent++;
			}
			if (Properties.length > 1)
			{
				wtr.WriteLine("auto ref");
				wtr.WriteLine("{");
				wtr.Indent++;
			}
		}
		foreach (p; Properties)
			p.Write(wtr, Properties.length <= 1);
		if (Properties.length > 1)
		{
			wtr.Indent--;
			wtr.WriteLine("}");
		}
		// Bool properties require 2 functions to define, thus,
		// if it calls Write on a BoolProperty, it is not alone.
		foreach (bp; BoolProperties)
			bp.Write(wtr, false);
		if (BoolProperties.length >= 1)
		{
			wtr.Indent--;
			wtr.WriteLine("}");
		}

		// Functions
		if (Functions.length > 1)
		{
			wtr.Indent--;
			wtr.WriteLine("final:");
			wtr.Indent++;
		}
		foreach (f; Functions)
			f.Write(wtr, Functions.length <= 1);
	}
}

final class ClassDescriptor : NestableContainer
{
	@property final override DescriptorType Type() { return DescriptorType.Class; }

	ScriptClass InnerClass;
	DependencyManager DepManager;
	this(ScriptClass innerClass)
	{
		InnerClass = innerClass;
		DepManager = new DependencyManager(innerClass);
	}

	override void RequireDependencies(DependencyManager mgr)
	{
		if (InnerClass.Super)
			mgr.RequireType(InnerClass.Super);
		RequireChildren(mgr);
	}

	static bool IsFactory(ScriptClass sc)
	{
		if (sc.GetName() == "Factory")
			return true;
		if (sc.Super)
			return IsFactory(cast(ScriptClass)sc.Super);
		return false;
	}

	string GetDefaultFullName(ScriptClass c)
	{
		return c.GetName() ~ " " ~ c.Outer.GetName() ~ ".Default__" ~ c.GetName();
	}

	override void Write(IndentedStreamWriter wtr)
	{
		this.RequireDependencies(DepManager);

		wtr.WriteLine("module %s;", DependencyManager.GetImportName(InnerClass));
		wtr.WriteLine();
		DepManager.Write(wtr);
		wtr.WriteLine();

		wtr.Write("extern(C++) interface %s", EscapeName(InnerClass.GetName()));
		if (InnerClass.Super)
			wtr.Write(" : %s", EscapeName(InnerClass.Super.GetName()));
		wtr.WriteLine();
		wtr.WriteLine("{");
		wtr.WriteLine("public extern(D):");
		wtr.Indent++;
		
		wtr.WriteLine("private static __gshared ScriptClass mStaticClass;");
		wtr.WriteLine(`@property final static ScriptClass StaticClass() { mixin(MGSCC("%s")); }`, InnerClass.GetFullName());

		wtr.WriteLine("private static __gshared %s mDefaultProperties;", EscapeName(InnerClass.GetName()));
		wtr.WriteLine(`@property final static %s DefaultProperties() { mixin(MGDPC("%s", "%s")); }`, EscapeName(InnerClass.GetName()), EscapeName(InnerClass.GetName()), GetDefaultFullName(InnerClass));
		
		WriteChildren(wtr);

		wtr.Indent--;
		wtr.WriteLine("}");
	}

	void Generate()
	{
		if (InnerClass.Super && IsFactory(InnerClass))
		{
			// TODO: Output something useful here.
			//wtr.WriteLine("// ERROR: Factories are not generatable!");
			return;
		}
		else if (InnerClass.ObjectFlags.HasFlag(ScriptObjectFlags.ClassDefaultObject))
		{
			// Don't emit default objects.
			return;
		}
		char[] headerNameBuf = cast(char[])DependencyManager.GetImportName(InnerClass);
		for (int i = 0; i < headerNameBuf.length; i++)
		{
			if (headerNameBuf[i] == '.')
				headerNameBuf[i] = '/';
		}
		string headerName = cast(string)headerNameBuf;
		IndentedStreamWriter wtr = new IndentedStreamWriter(SDKSourcePath ~ "TribesAscendSDK/" ~ headerName ~ ".d");
		this.Write(wtr);
		wtr.Close();
	}
}

final class StructDescriptor : NestableContainer
{
	@property final override DescriptorType Type() { return DescriptorType.Struct; }

	ScriptStruct InnerStruct;
	this(ScriptStruct innerStruct)
	{
		InnerStruct = innerStruct;
	}
	
	override void RequireDependencies(DependencyManager mgr)
	{
		if (InnerStruct.Super)
			(cast(StructDescriptor)TypeDescriptorMap[InnerStruct.Super.GetFullName()]).RequireDependencies(mgr);
		RequireChildren(mgr);
	}

	bool ShouldGenerateSelf()
	{
		switch (InnerStruct.GetFullName())
		{
			case "ScriptStruct Core.Object.Pointer":
			case "ScriptStruct Core.Object.QWord":
			case "ScriptStruct Core.Object.Rotator":
			case "ScriptStruct Core.Object.Vector":
				return false;
			default:
				return true;
		}
	}

	override void Write(IndentedStreamWriter wtr)
	{
		if (!ShouldGenerateSelf())
			return;
		wtr.Write("struct %s", EscapeName(InnerStruct.GetName()));
		wtr.WriteLine();
		wtr.WriteLine("{");
		wtr.Indent++;

		wtr.WriteLine("private ubyte __buffer__[%u];", InnerStruct.PropertySize);
		wtr.Indent--;
		wtr.WriteLine("public extern(D):");
		wtr.Indent++;

		wtr.WriteLine("private static __gshared ScriptStruct mStaticClass;");
		wtr.WriteLine(`@property final static ScriptStruct StaticClass() { mixin(MGSCS("%s")); }`, InnerStruct.GetFullName());

		WriteBody(wtr);
		
		wtr.Indent--;
		wtr.WriteLine("}");
	}

	void WriteBody(IndentedStreamWriter wtr)
	{
		if (InnerStruct.Super)
			(cast(StructDescriptor)TypeDescriptorMap[InnerStruct.Super.GetFullName()]).WriteBody(wtr);
		WriteChildren(wtr);
	}
}

final class StateDescriptor : NestableContainer
{
	@property final override DescriptorType Type() { return DescriptorType.State; }

	ScriptState InnerState;
	this(ScriptState state)
	{
		this.InnerState = state;
	}

	override void RequireDependencies(DependencyManager mgr)
	{
		// TODO: Add support for the parent state

		RequireChildren(mgr);
	}

	override void Write(IndentedStreamWriter wtr)
	{
		wtr.WriteLine("static struct %s", InnerState.GetName());
		wtr.WriteLine("{");
		wtr.Indent++;

		wtr.WriteLine("private static __gshared ScriptState mStaticClass;");
		wtr.WriteLine(`@property final static ScriptState StaticClass() { mixin(MGSCSA("%s")); }`, InnerState.GetFullName());

		// TODO: Add a way to hook the arbitrary code that can be executed in a state (See UTGame.UTPlayerController.Dead for an example)

		WriteChildren(wtr);

		wtr.Indent--;
		wtr.WriteLine("}");
	}
}