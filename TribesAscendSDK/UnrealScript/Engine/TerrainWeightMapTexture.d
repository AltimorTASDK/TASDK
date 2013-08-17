module UnrealScript.Engine.TerrainWeightMapTexture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Terrain;

extern(C++) interface TerrainWeightMapTexture : Texture2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.TerrainWeightMapTexture")); }
	private static __gshared TerrainWeightMapTexture mDefaultProperties;
	@property final static TerrainWeightMapTexture DefaultProperties() { mixin(MGDPC("TerrainWeightMapTexture", "TerrainWeightMapTexture Engine.Default__TerrainWeightMapTexture")); }
	struct TerrainWeightedMaterial
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.TerrainWeightMapTexture.TerrainWeightedMaterial")); }
	}
	@property final auto ref
	{
		ScriptArray!(UObject.Pointer) WeightedMaterials() { mixin(MGPC("ScriptArray!(UObject.Pointer)", 372)); }
		Terrain ParentTerrain() { mixin(MGPC("Terrain", 368)); }
	}
}
