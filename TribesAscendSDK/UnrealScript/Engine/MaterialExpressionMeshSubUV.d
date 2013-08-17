module UnrealScript.Engine.MaterialExpressionMeshSubUV;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionTextureSample;

extern(C++) interface MaterialExpressionMeshSubUV : MaterialExpressionTextureSample
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionMeshSubUV")()); }
	private static __gshared MaterialExpressionMeshSubUV mDefaultProperties;
	@property final static MaterialExpressionMeshSubUV DefaultProperties() { mixin(MGDPC!(MaterialExpressionMeshSubUV, "MaterialExpressionMeshSubUV Engine.Default__MaterialExpressionMeshSubUV")()); }
}
