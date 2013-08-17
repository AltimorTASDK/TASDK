module UnrealScript.Engine.MaterialExpressionTextureSampleParameterMovie;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

extern(C++) interface MaterialExpressionTextureSampleParameterMovie : MaterialExpressionTextureSampleParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionTextureSampleParameterMovie")); }
	private static __gshared MaterialExpressionTextureSampleParameterMovie mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameterMovie DefaultProperties() { mixin(MGDPC("MaterialExpressionTextureSampleParameterMovie", "MaterialExpressionTextureSampleParameterMovie Engine.Default__MaterialExpressionTextureSampleParameterMovie")); }
}
