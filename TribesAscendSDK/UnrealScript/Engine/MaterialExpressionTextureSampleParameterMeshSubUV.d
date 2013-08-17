module UnrealScript.Engine.MaterialExpressionTextureSampleParameterMeshSubUV;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter2D;

extern(C++) interface MaterialExpressionTextureSampleParameterMeshSubUV : MaterialExpressionTextureSampleParameter2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionTextureSampleParameterMeshSubUV")); }
	private static __gshared MaterialExpressionTextureSampleParameterMeshSubUV mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameterMeshSubUV DefaultProperties() { mixin(MGDPC("MaterialExpressionTextureSampleParameterMeshSubUV", "MaterialExpressionTextureSampleParameterMeshSubUV Engine.Default__MaterialExpressionTextureSampleParameterMeshSubUV")); }
}
