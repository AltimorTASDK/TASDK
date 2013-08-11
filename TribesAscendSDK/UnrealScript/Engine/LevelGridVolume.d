module UnrealScript.Engine.LevelGridVolume;

import ScriptClasses;
import UnrealScript.Engine.KMeshProps;
import UnrealScript.Engine.Volume;

extern(C++) interface LevelGridVolume : Volume
{
	enum LevelGridCellShape : ubyte
	{
		LGCS_Box = 0,
		LGCS_Hex = 1,
		LGCS_MAX = 2,
	}
	struct LevelGridCellCoordinate
	{
		public @property final auto ref int Z() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __Z[4];
		public @property final auto ref int Y() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Y[4];
		public @property final auto ref int X() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __X[4];
	}
	public @property final auto ref KMeshProps.KConvexElem CellConvexElem() { return *cast(KMeshProps.KConvexElem*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float KeepLoadedRange() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float LoadingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref int Subdivisions() { return *cast(int*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref LevelGridVolume.LevelGridCellShape CellShape() { return *cast(LevelGridVolume.LevelGridCellShape*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref ScriptString LevelGridVolumeName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 520); }
}
