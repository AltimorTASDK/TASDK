module UnrealScript.Engine.MaterialExpressionMeshSubUVBlend;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionMeshSubUV;

extern(C++) interface MaterialExpressionMeshSubUVBlend : MaterialExpressionMeshSubUV
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionMeshSubUVBlend")); }
	private static __gshared MaterialExpressionMeshSubUVBlend mDefaultProperties;
	@property final static MaterialExpressionMeshSubUVBlend DefaultProperties() { mixin(MGDPC("MaterialExpressionMeshSubUVBlend", "MaterialExpressionMeshSubUVBlend Engine.Default__MaterialExpressionMeshSubUVBlend")); }
}
