module UnrealScript.Engine.MaterialExpressionCustom;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCustom : MaterialExpression
{
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
		// WARNING: Property 'Input' has the same name as a defined type!
		public @property final auto ref ScriptString InputName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __InputName[12];
	}
	public @property final auto ref ScriptArray!(MaterialExpressionCustom.CustomInput) Inputs() { return *cast(ScriptArray!(MaterialExpressionCustom.CustomInput)*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref MaterialExpressionCustom.ECustomMaterialOutputType OutputType() { return *cast(MaterialExpressionCustom.ECustomMaterialOutputType*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptString Code() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
}
