module UnrealScript.Engine.MaterialExpressionCustom;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCustom : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionCustom")()); }
	private static __gshared MaterialExpressionCustom mDefaultProperties;
	@property final static MaterialExpressionCustom DefaultProperties() { mixin(MGDPC!(MaterialExpressionCustom, "MaterialExpressionCustom Engine.Default__MaterialExpressionCustom")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MaterialExpressionCustom.CustomInput")()); }
		@property final auto ref
		{
			// WARNING: Property 'Input' has the same name as a defined type!
			ScriptString InputName() { mixin(MGPS!("ScriptString", 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(MaterialExpressionCustom.CustomInput) Inputs() { mixin(MGPC!("ScriptArray!(MaterialExpressionCustom.CustomInput)", 136)()); }
		ScriptString Description() { mixin(MGPC!("ScriptString", 124)()); }
		MaterialExpressionCustom.ECustomMaterialOutputType OutputType() { mixin(MGPC!("MaterialExpressionCustom.ECustomMaterialOutputType", 120)()); }
		ScriptString Code() { mixin(MGPC!("ScriptString", 108)()); }
	}
}
