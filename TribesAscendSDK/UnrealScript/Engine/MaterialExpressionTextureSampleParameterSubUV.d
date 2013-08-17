module UnrealScript.Engine.MaterialExpressionTextureSampleParameterSubUV;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter2D;

extern(C++) interface MaterialExpressionTextureSampleParameterSubUV : MaterialExpressionTextureSampleParameter2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionTextureSampleParameterSubUV")()); }
	private static __gshared MaterialExpressionTextureSampleParameterSubUV mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameterSubUV DefaultProperties() { mixin(MGDPC!(MaterialExpressionTextureSampleParameterSubUV, "MaterialExpressionTextureSampleParameterSubUV Engine.Default__MaterialExpressionTextureSampleParameterSubUV")()); }
}
