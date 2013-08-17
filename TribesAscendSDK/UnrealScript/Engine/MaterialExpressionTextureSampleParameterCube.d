module UnrealScript.Engine.MaterialExpressionTextureSampleParameterCube;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

extern(C++) interface MaterialExpressionTextureSampleParameterCube : MaterialExpressionTextureSampleParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionTextureSampleParameterCube")()); }
	private static __gshared MaterialExpressionTextureSampleParameterCube mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameterCube DefaultProperties() { mixin(MGDPC!(MaterialExpressionTextureSampleParameterCube, "MaterialExpressionTextureSampleParameterCube Engine.Default__MaterialExpressionTextureSampleParameterCube")()); }
}
