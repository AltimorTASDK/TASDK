module UnrealScript.Engine.LevelGridVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.KMeshProps;
import UnrealScript.Engine.Volume;

extern(C++) interface LevelGridVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LevelGridVolume")()); }
	private static __gshared LevelGridVolume mDefaultProperties;
	@property final static LevelGridVolume DefaultProperties() { mixin(MGDPC!(LevelGridVolume, "LevelGridVolume Engine.Default__LevelGridVolume")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.LevelGridVolume.LevelGridCellCoordinate")()); }
		@property final auto ref
		{
			int Z() { mixin(MGPS!("int", 8)()); }
			int Y() { mixin(MGPS!("int", 4)()); }
			int X() { mixin(MGPS!("int", 0)()); }
		}
	}
	@property final auto ref
	{
		KMeshProps.KConvexElem CellConvexElem() { mixin(MGPC!("KMeshProps.KConvexElem", 556)()); }
		float KeepLoadedRange() { mixin(MGPC!("float", 552)()); }
		float LoadingDistance() { mixin(MGPC!("float", 548)()); }
		int Subdivisions() { mixin(MGPC!("int", 536)()); }
		LevelGridVolume.LevelGridCellShape CellShape() { mixin(MGPC!("LevelGridVolume.LevelGridCellShape", 532)()); }
		ScriptString LevelGridVolumeName() { mixin(MGPC!("ScriptString", 520)()); }
	}
}
