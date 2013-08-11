module UnrealScript.Engine.TerrainWeightMapTexture;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Terrain;

extern(C++) interface TerrainWeightMapTexture : Texture2D
{
	struct TerrainWeightedMaterial
	{
	}
	public @property final auto ref ScriptArray!(UObject.Pointer) WeightedMaterials() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref Terrain ParentTerrain() { return *cast(Terrain*)(cast(size_t)cast(void*)this + 368); }
}
