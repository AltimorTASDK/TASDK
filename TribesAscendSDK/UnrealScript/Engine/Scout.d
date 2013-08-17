module UnrealScript.Engine.Scout;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;

extern(C++) interface Scout : Pawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Scout")); }
	private static __gshared Scout mDefaultProperties;
	@property final static Scout DefaultProperties() { mixin(MGDPC("Scout", "Scout Engine.Default__Scout")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPreBeginPlay;
		public @property static final ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function Engine.Scout.PreBeginPlay")); }
	}
	struct PathSizeInfo
	{
		private ubyte __buffer__[21];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Scout.PathSizeInfo")); }
		@property final auto ref
		{
			ubyte PathColor() { mixin(MGPS("ubyte", 20)); }
			float CrouchHeight() { mixin(MGPS("float", 16)); }
			float Height() { mixin(MGPS("float", 12)); }
			float Radius() { mixin(MGPS("float", 8)); }
			ScriptName Desc() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Scout.PathSizeInfo) PathSizes() { mixin(MGPC("ScriptArray!(Scout.PathSizeInfo)", 1144)); }
			ScriptArray!(UObject.Color) EdgePathColors() { mixin(MGPC("ScriptArray!(UObject.Color)", 1184)); }
			float MaxMantleFallTime() { mixin(MGPC("float", 1280)); }
			float MaxMantleLateralDist() { mixin(MGPC("float", 1276)); }
			float MinMantleLateralDist() { mixin(MGPC("float", 1272)); }
			float MaxMantleFallDist() { mixin(MGPC("float", 1268)); }
			float MinMantleFallDist() { mixin(MGPC("float", 1264)); }
			float NavMeshGen_MinEdgeLength() { mixin(MGPC("float", 1256)); }
			float NavMeshGen_MaxGroundCheckSize() { mixin(MGPC("float", 1252)); }
			float NavMeshGen_EdgeMaxDelta() { mixin(MGPC("float", 1248)); }
			float NavMeshGen_HeightMergeThreshold() { mixin(MGPC("float", 1244)); }
			float NavMeshGen_MaxPolyHeight() { mixin(MGPC("float", 1240)); }
			float NavMeshGen_MinMergeDotLargeArea() { mixin(MGPC("float", 1236)); }
			float NavMeshGen_MinMergeDotSmallArea() { mixin(MGPC("float", 1232)); }
			float NavMeshGen_MinMergeDotAreaThreshold() { mixin(MGPC("float", 1228)); }
			float NavMeshGen_BorderBackfill_CheckDist() { mixin(MGPC("float", 1224)); }
			float NavMeshGen_MinPolyArea() { mixin(MGPC("float", 1220)); }
			float NavMeshGen_VertZDeltaSnapThresh() { mixin(MGPC("float", 1216)); }
			float NavMeshGen_MaxStepHeight() { mixin(MGPC("float", 1212)); }
			float NavMeshGen_MaxDropHeight() { mixin(MGPC("float", 1208)); }
			float NavMeshGen_StartingHeightOffset() { mixin(MGPC("float", 1204)); }
			float NavMeshGen_EntityHalfHeight() { mixin(MGPC("float", 1200)); }
			float NavMeshGen_StepSize() { mixin(MGPC("float", 1196)); }
			ScriptClass DefaultReachSpecClass() { mixin(MGPC("ScriptClass", 1180)); }
			int MinNumPlayerStarts() { mixin(MGPC("int", 1176)); }
			float MaxLandingVelocity() { mixin(MGPC("float", 1172)); }
			float TestFallSpeed() { mixin(MGPC("float", 1168)); }
			float TestMaxFallSpeed() { mixin(MGPC("float", 1164)); }
			float TestGroundSpeed() { mixin(MGPC("float", 1160)); }
			float TestJumpZ() { mixin(MGPC("float", 1156)); }
		}
		bool bHightlightOneWayReachSpecs() { mixin(MGBPC(1260, 0x2)); }
		bool bHightlightOneWayReachSpecs(bool val) { mixin(MSBPC(1260, 0x2)); }
		bool NavMeshGen_ExpansionDoObstacleMeshSimplification() { mixin(MGBPC(1260, 0x1)); }
		bool NavMeshGen_ExpansionDoObstacleMeshSimplification(bool val) { mixin(MSBPC(1260, 0x1)); }
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
}
