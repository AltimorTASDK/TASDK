module UnrealScript.Engine.LevelGridVolume;

import ScriptClasses;
import UnrealScript.Engine.KMeshProps;
import UnrealScript.Engine.Volume;

extern(C++) interface LevelGridVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LevelGridVolume")); }
	enum LevelGridCellShape : ubyte
	{
		LGCS_Box = 0,
		LGCS_Hex = 1,
		LGCS_MAX = 2,
	}
	struct LevelGridCellCoordinate
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.LevelGridVolume.LevelGridCellCoordinate")); }
		@property final auto ref
		{
			int Z() { return *cast(int*)(cast(size_t)&this + 8); }
			int Y() { return *cast(int*)(cast(size_t)&this + 4); }
			int X() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		KMeshProps.KConvexElem CellConvexElem() { return *cast(KMeshProps.KConvexElem*)(cast(size_t)cast(void*)this + 556); }
		float KeepLoadedRange() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
		float LoadingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
		int Subdivisions() { return *cast(int*)(cast(size_t)cast(void*)this + 536); }
		LevelGridVolume.LevelGridCellShape CellShape() { return *cast(LevelGridVolume.LevelGridCellShape*)(cast(size_t)cast(void*)this + 532); }
		ScriptString LevelGridVolumeName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 520); }
	}
}
