module UnrealScript.Engine.TerrainWeightMapTexture;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Terrain;

extern(C++) interface TerrainWeightMapTexture : Texture2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TerrainWeightMapTexture")); }
	struct TerrainWeightedMaterial
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.TerrainWeightMapTexture.TerrainWeightedMaterial")); }
	}
	@property final auto ref
	{
		ScriptArray!(UObject.Pointer) WeightedMaterials() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 372); }
		Terrain ParentTerrain() { return *cast(Terrain*)(cast(size_t)cast(void*)this + 368); }
	}
}
