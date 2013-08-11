module UnrealScript.Engine.Scout;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;

extern(C++) interface Scout : Pawn
{
public extern(D):
	struct PathSizeInfo
	{
		private ubyte __buffer__[21];
	public extern(D):
		@property final auto ref
		{
			ubyte PathColor() { return *cast(ubyte*)(cast(size_t)&this + 20); }
			float CrouchHeight() { return *cast(float*)(cast(size_t)&this + 16); }
			float Height() { return *cast(float*)(cast(size_t)&this + 12); }
			float Radius() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName Desc() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Scout.PathSizeInfo) PathSizes() { return *cast(ScriptArray!(Scout.PathSizeInfo)*)(cast(size_t)cast(void*)this + 1144); }
			ScriptArray!(UObject.Color) EdgePathColors() { return *cast(ScriptArray!(UObject.Color)*)(cast(size_t)cast(void*)this + 1184); }
			float MaxMantleFallTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1280); }
			float MaxMantleLateralDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1276); }
			float MinMantleLateralDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1272); }
			float MaxMantleFallDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1268); }
			float MinMantleFallDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1264); }
			float NavMeshGen_MinEdgeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1256); }
			float NavMeshGen_MaxGroundCheckSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1252); }
			float NavMeshGen_EdgeMaxDelta() { return *cast(float*)(cast(size_t)cast(void*)this + 1248); }
			float NavMeshGen_HeightMergeThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1244); }
			float NavMeshGen_MaxPolyHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1240); }
			float NavMeshGen_MinMergeDotLargeArea() { return *cast(float*)(cast(size_t)cast(void*)this + 1236); }
			float NavMeshGen_MinMergeDotSmallArea() { return *cast(float*)(cast(size_t)cast(void*)this + 1232); }
			float NavMeshGen_MinMergeDotAreaThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1228); }
			float NavMeshGen_BorderBackfill_CheckDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1224); }
			float NavMeshGen_MinPolyArea() { return *cast(float*)(cast(size_t)cast(void*)this + 1220); }
			float NavMeshGen_VertZDeltaSnapThresh() { return *cast(float*)(cast(size_t)cast(void*)this + 1216); }
			float NavMeshGen_MaxStepHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1212); }
			float NavMeshGen_MaxDropHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1208); }
			float NavMeshGen_StartingHeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1204); }
			float NavMeshGen_EntityHalfHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1200); }
			float NavMeshGen_StepSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1196); }
			ScriptClass DefaultReachSpecClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1180); }
			int MinNumPlayerStarts() { return *cast(int*)(cast(size_t)cast(void*)this + 1176); }
			float MaxLandingVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 1172); }
			float TestFallSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1168); }
			float TestMaxFallSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1164); }
			float TestGroundSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1160); }
			float TestJumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1156); }
		}
		bool bHightlightOneWayReachSpecs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1260) & 0x2) != 0; }
		bool bHightlightOneWayReachSpecs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1260) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1260) &= ~0x2; } return val; }
		bool NavMeshGen_ExpansionDoObstacleMeshSimplification() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1260) & 0x1) != 0; }
		bool NavMeshGen_ExpansionDoObstacleMeshSimplification(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1260) &= ~0x1; } return val; }
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25506], cast(void*)0, cast(void*)0);
	}
}
