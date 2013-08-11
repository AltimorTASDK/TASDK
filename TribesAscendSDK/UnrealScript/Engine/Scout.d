module UnrealScript.Engine.Scout;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;

extern(C++) interface Scout : Pawn
{
	struct PathSizeInfo
	{
		public @property final auto ref ubyte PathColor() { return *cast(ubyte*)(cast(size_t)&this + 20); }
		private ubyte __PathColor[1];
		public @property final auto ref float CrouchHeight() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __CrouchHeight[4];
		public @property final auto ref float Height() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Height[4];
		public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Radius[4];
		public @property final auto ref ScriptName Desc() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __Desc[8];
	}
	public @property final auto ref ScriptArray!(Scout.PathSizeInfo) PathSizes() { return *cast(ScriptArray!(Scout.PathSizeInfo)*)(cast(size_t)cast(void*)this + 1144); }
	public @property final auto ref ScriptArray!(UObject.Color) EdgePathColors() { return *cast(ScriptArray!(UObject.Color)*)(cast(size_t)cast(void*)this + 1184); }
	public @property final auto ref float MaxMantleFallTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1280); }
	public @property final auto ref float MaxMantleLateralDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1276); }
	public @property final auto ref float MinMantleLateralDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1272); }
	public @property final auto ref float MaxMantleFallDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1268); }
	public @property final auto ref float MinMantleFallDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1264); }
	public @property final bool bHightlightOneWayReachSpecs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1260) & 0x2) != 0; }
	public @property final bool bHightlightOneWayReachSpecs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1260) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1260) &= ~0x2; } return val; }
	public @property final bool NavMeshGen_ExpansionDoObstacleMeshSimplification() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1260) & 0x1) != 0; }
	public @property final bool NavMeshGen_ExpansionDoObstacleMeshSimplification(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1260) &= ~0x1; } return val; }
	public @property final auto ref float NavMeshGen_MinEdgeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1256); }
	public @property final auto ref float NavMeshGen_MaxGroundCheckSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1252); }
	public @property final auto ref float NavMeshGen_EdgeMaxDelta() { return *cast(float*)(cast(size_t)cast(void*)this + 1248); }
	public @property final auto ref float NavMeshGen_HeightMergeThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1244); }
	public @property final auto ref float NavMeshGen_MaxPolyHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1240); }
	public @property final auto ref float NavMeshGen_MinMergeDotLargeArea() { return *cast(float*)(cast(size_t)cast(void*)this + 1236); }
	public @property final auto ref float NavMeshGen_MinMergeDotSmallArea() { return *cast(float*)(cast(size_t)cast(void*)this + 1232); }
	public @property final auto ref float NavMeshGen_MinMergeDotAreaThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1228); }
	public @property final auto ref float NavMeshGen_BorderBackfill_CheckDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1224); }
	public @property final auto ref float NavMeshGen_MinPolyArea() { return *cast(float*)(cast(size_t)cast(void*)this + 1220); }
	public @property final auto ref float NavMeshGen_VertZDeltaSnapThresh() { return *cast(float*)(cast(size_t)cast(void*)this + 1216); }
	public @property final auto ref float NavMeshGen_MaxStepHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1212); }
	public @property final auto ref float NavMeshGen_MaxDropHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1208); }
	public @property final auto ref float NavMeshGen_StartingHeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1204); }
	public @property final auto ref float NavMeshGen_EntityHalfHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1200); }
	public @property final auto ref float NavMeshGen_StepSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1196); }
	public @property final auto ref ScriptClass DefaultReachSpecClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1180); }
	public @property final auto ref int MinNumPlayerStarts() { return *cast(int*)(cast(size_t)cast(void*)this + 1176); }
	public @property final auto ref float MaxLandingVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 1172); }
	public @property final auto ref float TestFallSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1168); }
	public @property final auto ref float TestMaxFallSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1164); }
	public @property final auto ref float TestGroundSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1160); }
	public @property final auto ref float TestJumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1156); }
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25506], cast(void*)0, cast(void*)0);
	}
}
