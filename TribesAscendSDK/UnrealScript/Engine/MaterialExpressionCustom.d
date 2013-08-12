module UnrealScript.Engine.MaterialExpressionCustom;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCustom : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionCustom")); }
	private static __gshared MaterialExpressionCustom mDefaultProperties;
	@property final static MaterialExpressionCustom DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionCustom)("MaterialExpressionCustom Engine.Default__MaterialExpressionCustom")); }
	enum ECustomMaterialOutputType : ubyte
	{
		CMOT_Float1 = 0,
		CMOT_Float2 = 1,
		CMOT_Float3 = 2,
		CMOT_Float4 = 3,
		CMOT_MAX = 4,
	}
	struct CustomInput
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialExpressionCustom.CustomInput")); }
		@property final auto ref
		{
			// WARNING: Property 'Input' has the same name as a defined type!
			ScriptString InputName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(MaterialExpressionCustom.CustomInput) Inputs() { return *cast(ScriptArray!(MaterialExpressionCustom.CustomInput)*)(cast(size_t)cast(void*)this + 136); }
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		MaterialExpressionCustom.ECustomMaterialOutputType OutputType() { return *cast(MaterialExpressionCustom.ECustomMaterialOutputType*)(cast(size_t)cast(void*)this + 120); }
		ScriptString Code() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
	}
}
