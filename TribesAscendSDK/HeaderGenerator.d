module HeaderGenerator;

private import IndentedStreamWriter;
private import ScriptClasses;

public void Generate()
{
	IndentedStreamWriter wtr = new IndentedStreamWriter("TribesAscendSDKTest.log");
	ScriptClass coreClass = ScriptObject.Find!(ScriptClass)("Class Core.Class");
	ScriptClass[] classesToGenerate;
	for (int i = 0; i < ScriptObject.ObjectArray.Count; i++)
	{
		ScriptObject classObject = (*ScriptObject.ObjectArray)[i];
		if (classObject && classObject.ObjectClass == coreClass)
		{
			wtr.WriteLine("Found class '%s'", classObject.GetFullName());
			classesToGenerate ~= cast(ScriptClass)classObject;
		}
	}
	foreach (c; classesToGenerate)
	{
		//c.Generate();
	}
}

private:
Descriptor[string] TypeIdentifiers;

final class DependencyManager
{
	ScriptObject[string] RequiredImports;
	ScriptObject ParentType;

	static final immutable(string) GetImportName(ScriptObject type)
	{
		string n = type.GetName();
		for (ScriptObject outer = type.Outer; outer; outer = outer.Outer)
		{
			n = outer.GetName() ~ "." ~ n;
		}
		return n;
	}

	void ProcessProperty(ScriptProperty prop)
	{
		switch(prop.ObjectClass.GetName())
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
		switch(name)
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
		switch(obj.ObjectClass.GetName())
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
			return;

		switch(InnerProperty.ObjectClass.GetName())
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
	this(ScriptFunction innerFunction)
	{
		InnerFunction = innerFunction;
	}
}

abstract class NestableContainer : Descriptor
{
	ConstantDescriptor[] NestedConstants;
	EnumDescriptor[] NestedEnums;
	StructDescriptor[] NestedStructs;
	PropertyDescriptor[] Properties;
	FunctionDescriptor[] Functions;
}

final class ClassDescriptor : NestableContainer
{
	@property final override DescriptorType Type() { return DescriptorType.Class; }
	ScriptClass InnerClass;

	void Generate()
	{
		// TODO: Implement this.
	}
}

final class StructDescriptor : NestableContainer
{
	@property final override DescriptorType Type() { return DescriptorType.Struct; }
}
