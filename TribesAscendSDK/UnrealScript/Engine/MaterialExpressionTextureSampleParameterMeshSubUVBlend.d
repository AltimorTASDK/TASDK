module UnrealScript.Engine.MaterialExpressionTextureSampleParameterMeshSubUVBlend;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameterMeshSubUV;

extern(C++) interface MaterialExpressionTextureSampleParameterMeshSubUVBlend : MaterialExpressionTextureSampleParameterMeshSubUV
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionTextureSampleParameterMeshSubUVBlend")()); }
	private static __gshared MaterialExpressionTextureSampleParameterMeshSubUVBlend mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameterMeshSubUVBlend DefaultProperties() { mixin(MGDPC!(MaterialExpressionTextureSampleParameterMeshSubUVBlend, "MaterialExpressionTextureSampleParameterMeshSubUVBlend Engine.Default__MaterialExpressionTextureSampleParameterMeshSubUVBlend")()); }
}
