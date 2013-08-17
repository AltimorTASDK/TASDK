module UnrealScript.Engine.MaterialExpressionTextureSampleParameterNormal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

extern(C++) interface MaterialExpressionTextureSampleParameterNormal : MaterialExpressionTextureSampleParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionTextureSampleParameterNormal")()); }
	private static __gshared MaterialExpressionTextureSampleParameterNormal mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameterNormal DefaultProperties() { mixin(MGDPC!(MaterialExpressionTextureSampleParameterNormal, "MaterialExpressionTextureSampleParameterNormal Engine.Default__MaterialExpressionTextureSampleParameterNormal")()); }
	@property final auto ref UObject.Pointer InstanceOverride() { mixin(MGPC!("UObject.Pointer", 164)()); }
}
