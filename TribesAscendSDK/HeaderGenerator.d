module HeaderGenerator;

private import Config;
private import IndentedStreamWriter;
private import ScriptClasses;

public void Generate()
{
	IndentedStreamWriter wtr = new IndentedStreamWriter("TribesAscendSDKTest.log");
	ClassDescriptor[] classDescriptors;
	StructDescriptor[] structDescriptors;
	ConstantDescriptor[] constantDescriptors;
	EnumDescriptor[] enumDescriptors;
	FunctionDescriptor[] functionDescriptors;
	PropertyDescriptor[] propertyDescriptors;
	for (int i = 0; i < (*ScriptObject.ObjectArray).Count; i++)
	{
		ScriptObject classObject = (*ScriptObject.ObjectArray)[i];
		if (classObject)
		{
			switch (classObject.ObjectClass.GetName())
			{
				case "Class":
				{
					wtr.WriteLine("Found the class '%s'", classObject.GetFullName());
					ClassDescriptor cd = new ClassDescriptor(cast(ScriptClass)classObject);
					classDescriptors ~= cd;
					TypeIdentifiers[classObject.GetFullName()] = cd;
					break;
				}
				case "ScriptStruct":
				{
					StructDescriptor sd = new StructDescriptor(cast(ScriptStruct)classObject); 
					structDescriptors ~= sd;
					TypeIdentifiers[classObject.GetFullName()] = sd;
					break;
				}
				case "Const":
					constantDescriptors ~= new ConstantDescriptor(cast(ScriptConst)classObject);
					break;
				case "Enum":
					enumDescriptors ~= new EnumDescriptor(cast(ScriptEnum)classObject);
					break;
				case "Function":
					functionDescriptors ~= new FunctionDescriptor(cast(ScriptFunction)classObject);
					break;
				case "ArrayProperty":
				case "BoolProperty":
				case "ByteProperty":
				case "ClassProperty":
				case "FloatProperty":
				case "IntProperty":
				case "NameProperty":
				case "ObjectProperty":
				case "StringRefProperty":
				case "StrProperty":
				case "StructProperty":
					propertyDescriptors ~= new PropertyDescriptor(cast(ScriptProperty)classObject);
					break;
				case "State":
					// TODO: Implement.
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
__gshared Descriptor[string] TypeIdentifiers;

void ProcessNested(Descriptor desc, ScriptObject innerVal)
{
	Descriptor parent = TypeIdentifiers.get(innerVal.Outer.GetFullName(), null);
	if (parent)
	{
		switch (parent.Type)
		{
			case DescriptorType.Class:
			case DescriptorType.Struct:
			{
				NestableContainer cont = cast(NestableContainer)parent;
				switch (desc.Type)
				{
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
						cont.Properties ~= cast(PropertyDescriptor)desc;
						break;
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
		string n = type.GetName();
		for (ScriptObject outer = type.Outer; outer; outer = outer.Outer)
		{
			n = outer.GetName() ~ "." ~ n;
		}
		return "UnrealScript." ~ n;
	}

	void ProcessProperty(ScriptProperty prop)
	{
		switch (prop.ObjectClass.GetName())
		{
			case "ObjectProperty":
			case "StructProperty":
				RequireType((cast(ScriptObjectProperty)prop).PropertyClass);
				break;
			case "ByteProperty":
				if ((cast(ScriptByteProperty)prop).EnumType)
					RequireType((cast(ScriptByteProperty)prop).EnumType);
				break;
			case "ArrayProperty":
				ProcessProperty((cast(ScriptArrayProperty)prop).InnerProperty);
				break;
			default:
				break;
		}
	}

	void RequireType(ScriptObject type)
	{
		if (type == ParentType)
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
		foreach (ri; RequiredImports.byValue())
			wtr.WriteLine("import %s : %s;", ri.GetName(), GetImportName(ri));
	}
}

abstract class Descriptor
{
	@property abstract DescriptorType Type();

	abstract void RequireDependencies(DependencyManager mgr);
	abstract void Write(IndentedStreamWriter wtr);

	final bool IsManaullyDefinedType(string name)
	{
		switch (name)
		{
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
			case "ObjectProperty":
			case "StructProperty":
				return GetTypeName((cast(ScriptObjectProperty)obj).PropertyClass);
			case "Class":
			case "Enum":
			case "ScriptStruct":
			{
				string tp = obj.GetName();
				if (IsManaullyDefinedType(tp))
					return tp;
				for (ScriptObject outer = obj.Outer; outer.Outer; outer = outer.Outer)
					tp = outer.GetName() ~ "." ~ tp;
				return tp;
			}
			case "ArrayProperty":
				return "ScriptArray!(" ~ GetTypeName((cast(ScriptArrayProperty)obj).InnerProperty) ~ ")";
			case "ByteProperty":
				if ((cast(ScriptByteProperty)obj).EnumType)
					return GetTypeName((cast(ScriptByteProperty)obj).EnumType);
				else
					return "ubyte";
			case "IntProperty":
				return "int";
			case "FloatProperty":
				return "float";
			case "BoolProperty":
				return "bool";
			case "StrProperty":
				return "ScriptString";
			case "StringRefProperty":
				return "ScriptString*";
			case "NameProperty":
				return "ScriptName";
			case "ClassProperty":
				return "ScriptClass";
			default:
				return "\n// ERROR: Unknown object class '" ~ obj.ObjectClass.GetFullName() ~ "'~\nvoid*";
		}
	}
}

enum DescriptorType
{
	Class,
	Constant,
	Enum,
	Function,
	FunctionArgument,
	Property,
	Struct,
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
		wtr.Write("enum %s : byte", InnerEnum.GetName());
		if (InnerEnum.ValueNames.Count > 1)
		{
			wtr.WriteLine();
			wtr.WriteLine("{");
			++wtr.Indent;

			for (int i = 0; i < InnerEnum.ValueNames.Count; i++)
			{
				wtr.WriteLine("%s = %u,", InnerEnum.ValueNames[i].GetName(), i);
			}

			--wtr.Indent;
			wtr.WriteLine("}");
		}
		else
			wtr.WriteLine(" %s = 0;", InnerEnum.ValueNames[0].GetName());
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
	override void Write(IndentedStreamWriter wtr)
	{
		// TODO: The way we write InnerConstant.Value may need to change depending on how well this works.
		wtr.WriteLine("static immutable(auto) %s = %s;", InnerConstant.GetName(), InnerConstant.Value);
	}
}

final class PropertyDescriptor : Descriptor
{
	@property final override DescriptorType Type() { return DescriptorType.Property; }

	ScriptProperty InnerProperty;
	this(ScriptProperty innerProperty)
	{
		InnerProperty = innerProperty;
	}

	// TODO: Add support for DelegateProperty, MapProperty, FixedArrayProperty, PointerProperty, InterfaceProperty, and ComponentProperty

	override void RequireDependencies(DependencyManager mgr) { mgr.ProcessProperty(InnerProperty); }

	override void Write(IndentedStreamWriter wtr)
	{
		// Check to see if the property name is the same as a valid type.
		if (TypeIdentifiers.get(InnerProperty.GetName(), null))
		{
			wtr.WriteLine("// WARNING: Property '%s' has the same name as a defined type!", InnerProperty.GetName());
			return;
		}

		switch (InnerProperty.ObjectClass.GetName())
		{
			case "BoolProperty":
				wtr.WriteLine("@property final bool %s() { return (*cast(uint*)(cast(size_t)cast(void*)this + %u) & 0x%X) != 0; }", InnerProperty.GetName(), InnerProperty.Offset, (cast(ScriptBoolProperty)InnerProperty).BitMask);
				wtr.WriteLine("@property final bool %s(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + %u) |= 0x%X; } else { *cast(uint*)(cast(size_t)cast(void*)this + %u) &= ~0x%X; } return val; }", InnerProperty.GetName(), InnerProperty.Offset, (cast(ScriptBoolProperty)InnerProperty).BitMask, InnerProperty.Offset, (cast(ScriptBoolProperty)InnerProperty).BitMask);
				break;
			case "ObjectProperty":
			case "StringRefProperty":
			case "ClassProperty":
			case "StructProperty":
			case "ByteProperty":
			case "IntProperty":
			case "FloatProperty":
			case "StrProperty":
			case "NameProperty":
			case "ArrayProperty":
				wtr.WriteLine("@property final auto ref %s %s() { return *cast(%s*)(cast(size_t)cast(void*)this + %u); }", GetTypeName(InnerProperty), InnerProperty.GetName(), GetTypeName(InnerProperty), InnerProperty.Offset);
				break;
			default:
				// TODO: This never actually gets hit, find a way to make it get hit so we can output this useful information.
				wtr.WriteLine("// ERROR: Unknown object class '%s' for the property named '%s'!", InnerProperty.ObjectClass.GetName(), InnerProperty.GetName());
				break;
		}
	}
}

final class FunctionArgumentDescriptor : Descriptor
{
	@property final override DescriptorType Type() { return DescriptorType.FunctionArgument; }

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
		if (InnerProperty.PropertyFlags.HasFlag(ScriptPropertyFlags.OutParam))
			wtr.WriteLine("%s* %s", GetTypeName(InnerProperty), InnerProperty.GetName());
		else
			wtr.WriteLine("%s %s", GetTypeName(InnerProperty), InnerProperty.GetName());
	}

	void WriteLoadToBuffer(IndentedStreamWriter wtr, string bufName)
	{
		string tpName = GetTypeName(InnerProperty);
		if (InnerProperty.Offset != 0)
		{
			if (tpName == "ubyte")
				wtr.WriteLine("%s[%u] = %s;", bufName, InnerProperty.Offset, InnerProperty.GetName());
			else
				wtr.WriteLine("*cast(%s*)&%s[%u] = %s;", tpName, bufName, InnerProperty.Offset, InnerProperty.GetName());
		}
		else
		{
			if (tpName == "ubyte")
				wtr.WriteLine("%s[0] = %s;", bufName, InnerProperty.GetName());
			else
				wtr.WriteLine("*cast(%s*)%s.ptr = %s;", tpName, bufName, InnerProperty.GetName());
		}
	}

	void WriteLoadFromBuffer(IndentedStreamWriter wtr, string bufName)
	{
		if (InnerProperty.PropertyFlags.HasFlag(ScriptPropertyFlags.OutParam))
		{
			string tpName = GetTypeName(InnerProperty);
			if (InnerProperty.Offset != 0)
			{
				if (tpName == "ubyte")
					wtr.WriteLine("*%s = %s[%u];", InnerProperty.GetName(), bufName, InnerProperty.Offset);
				else
					wtr.WriteLine("*%s = *cast(%s*)&%s[%u];", InnerProperty.GetName(), tpName, bufName, InnerProperty.Offset);
			}
			else
			{
				if (tpName == "ubyte")
					wtr.WriteLine("*%s = %s[0];", InnerProperty.GetName(), bufName);
				else
					wtr.WriteLine("*%s = *cast(%s*)%s.ptr;", InnerProperty.GetName(), tpName, bufName);
			}
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
				if (functionArgument.PropertyFlags.HasFlag(ScriptPropertyFlags.ReturnParam))
				{
					if (ReturnProperty)
						throw new Exception("Found multiple return parameters!");
					ReturnProperty = functionArgument;
				}
				else if (functionArgument.PropertyFlags.HasFlag(ScriptPropertyFlags.Param))
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

	override void Write(IndentedStreamWriter wtr)
	{
		// Check to see if the function name is the same as a valid type.
		if (TypeIdentifiers.get(InnerFunction.GetName(), null))
		{
			wtr.WriteLine("// WARNING: Function '%s' has the same name as a defined type!", InnerFunction.GetName());
			return;
		}

		wtr.Write("final ");
		if (ReturnProperty)
			wtr.Write("%s", GetTypeName(ReturnProperty));
		else
			wtr.Write("void");
		wtr.Write(" %s(", InnerFunction.GetName());

		int paramSize = 0;
		for (int i = 0; i < Arguments.length; i++)
		{
			Arguments[i].WriteDeclaration(wtr);
			paramSize += Arguments[i].InnerProperty.ElementSize;
			if (i != Arguments.length + 1)
				wtr.Write(", ");
		}
		if (ReturnProperty)
			paramSize += ReturnProperty.ElementSize;

		wtr.WriteLine(")");
		wtr.WriteLine("{");
		++wtr.Indent;

		if (paramSize > 0)
		{
			wtr.WriteLine("ubyte params[%u];", paramSize);
			wtr.WriteLine("params[] = 0;");
		}

		foreach (arg; Arguments)
			arg.WriteLoadToBuffer(wtr, "params");

		wtr.Write("(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[%u], ", InnerFunction.ObjectInternalInteger);
		if (paramSize > 0)
			wtr.Write("params.ptr");
		else
			wtr.Write("cast(void*)0");
		wtr.WriteLine(", cast(void*)0);");

		foreach (arg; Arguments)
			arg.WriteLoadFromBuffer(wtr, "params");

		if (ReturnProperty)
		{
			string tpName = GetTypeName(ReturnProperty);
			if (InnerFunction.ReturnValOffset != 0)
			{
				if (tpName == "ubyte")
					wtr.WriteLine("return params[%u];", InnerFunction.ReturnValOffset);
				else
					wtr.WriteLine("return *cast(%s*)&params[%u];", tpName, InnerFunction.ReturnValOffset);
			}
			else
			{
				if (tpName == "ubyte")
					wtr.WriteLine("return params[0];");
				else
					wtr.WriteLine("return *(%s*)params.ptr;", tpName);
			}
		}

		--wtr.Indent;
		wtr.WriteLine("}");
	}
}

abstract class NestableContainer : Descriptor
{
	ConstantDescriptor[] NestedConstants;
	EnumDescriptor[] NestedEnums;
	StructDescriptor[] NestedStructs;
	PropertyDescriptor[] Properties;
	FunctionDescriptor[] Functions;

	override void RequireDependencies(DependencyManager mgr)
	{
		foreach (nc; NestedConstants)
			nc.RequireDependencies(mgr);
		foreach (ne; NestedEnums)
			ne.RequireDependencies(mgr);
		foreach (ns; NestedStructs)
			ns.RequireDependencies(mgr);
		foreach (p; Properties)
			p.RequireDependencies(mgr);
		foreach (f; Functions)
			f.RequireDependencies(mgr);
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
		mgr.RequireType(InnerClass.Super);
		super.RequireDependencies(mgr);
	}

	override void Write(IndentedStreamWriter wtr)
	{
		this.RequireDependencies(DepManager);

		wtr.WriteLine("module %s;", DependencyManager.GetImportName(InnerClass));
		wtr.WriteLine();
		DepManager.Write(wtr);
		wtr.WriteLine();

		wtr.Write("class %s", InnerClass.GetName());
		if (InnerClass.Super)
			wtr.Write(" : %s", InnerClass.Super.GetName());
		wtr.WriteLine();
		wtr.WriteLine("{");
		++wtr.Indent;

		foreach (nc; NestedConstants)
			nc.Write(wtr);
		foreach (ne; NestedEnums)
			ne.Write(wtr);
		foreach (ns; NestedStructs)
			ns.Write(wtr);
		foreach (p; Properties)
			p.Write(wtr);
		foreach (f; Functions)
			f.Write(wtr);

		--wtr.Indent;
		wtr.WriteLine("}");
	}

	void Generate()
	{
		char[] headerNameBuf = cast(char[])DependencyManager.GetImportName(InnerClass);
		for (int i = 0; i < headerNameBuf.length; i++)
		{
			if (headerNameBuf[i] == '.')
				headerNameBuf[i] = '/';
		}
		string headerName = cast(string)headerNameBuf;
		IndentedStreamWriter wtr = new IndentedStreamWriter(SDKSourcePath ~ "TribesAscendSDK/UnrealScript/" ~ headerName ~ ".d");
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
		mgr.RequireType(InnerStruct.Super);
		super.RequireDependencies(mgr);
	}
	
	override void Write(IndentedStreamWriter wtr)
	{
		wtr.Write("struct %s", InnerStruct.GetName());
		if (InnerStruct.Super)
			wtr.Write(" : %s", InnerStruct.Super.GetName());
		wtr.WriteLine();
		wtr.WriteLine("{");
		++wtr.Indent;
		
		foreach (nc; NestedConstants)
			nc.Write(wtr);
		foreach (ne; NestedEnums)
			ne.Write(wtr);
		foreach (ns; NestedStructs)
			ns.Write(wtr);
		foreach (p; Properties)
			p.Write(wtr);
		foreach (f; Functions)
			f.Write(wtr);
		
		--wtr.Indent;
		wtr.WriteLine("}");
	}
}
