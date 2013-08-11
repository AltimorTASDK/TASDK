module UnrealScript.Engine.NavigationHandle;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.NavMeshPathConstraint;
import UnrealScript.Engine.Pylon;
import UnrealScript.Engine.EngineTypes;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavigationHandle : UObject
{
	public static immutable auto LINECHECK_GRANULARITY = 76.0f;
	public static immutable auto NUM_PATHFINDING_PARAMS = 9;
	struct PolySegmentSpan
	{
		public @property final auto ref Vector P2() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __P2[12];
		public @property final auto ref Vector P1() { return *cast(Vector*)(cast(size_t)&this + 4); }
		private ubyte __P1[12];
		public @property final auto ref UObject.Pointer Poly() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __Poly[4];
	}
	struct NavMeshPathParams
	{
		public @property final auto ref float MaxHoverDistance() { return *cast(float*)(cast(size_t)&this + 44); }
		private ubyte __MaxHoverDistance[4];
		public @property final auto ref float MinWalkableZ() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __MinWalkableZ[4];
		public @property final auto ref float MaxDropHeight() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __MaxDropHeight[4];
		public @property final auto ref Vector SearchStart() { return *cast(Vector*)(cast(size_t)&this + 24); }
		private ubyte __SearchStart[12];
		public @property final auto ref float SearchLaneMultiplier() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __SearchLaneMultiplier[4];
		public @property final auto ref Vector SearchExtent() { return *cast(Vector*)(cast(size_t)&this + 8); }
		private ubyte __SearchExtent[12];
		public @property final bool bAbleToSearch() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x4) != 0; }
		public @property final bool bAbleToSearch(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x4; } return val; }
		private ubyte __bAbleToSearch[4];
		public @property final bool bNeedsMantleValidityTest() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
		public @property final bool bNeedsMantleValidityTest(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
		private ubyte __bNeedsMantleValidityTest[4];
		public @property final bool bCanMantle() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool bCanMantle(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __bCanMantle[4];
		// WARNING: Property 'Interface' has the same name as a defined type!
	}
	struct PathStore
	{
		public @property final auto ref ScriptArray!(NavigationHandle.EdgePointer) EdgeList() { return *cast(ScriptArray!(NavigationHandle.EdgePointer)*)(cast(size_t)&this + 0); }
		private ubyte __EdgeList[12];
	}
	struct EdgePointer
	{
		public @property final auto ref UObject.Pointer Dummy() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __Dummy[4];
	}
	public @property final auto ref float LastPathFailTime() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref EngineTypes.EPathFindingError LastPathError() { return *cast(EngineTypes.EPathFindingError*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref NavigationHandle.NavMeshPathParams CachedPathParams() { return *cast(NavigationHandle.NavMeshPathParams*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref NavMeshPathGoalEvaluator PathGoalList() { return *cast(NavMeshPathGoalEvaluator*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref NavMeshPathConstraint PathConstraintList() { return *cast(NavMeshPathConstraint*)(cast(size_t)cast(void*)this + 148); }
	public @property final bool bUltraVerbosePathDebugging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x8) != 0; }
	public @property final bool bUltraVerbosePathDebugging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x8; } return val; }
	public @property final bool bDebugConstraintsAndGoalEvals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x4) != 0; }
	public @property final bool bDebugConstraintsAndGoalEvals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x4; } return val; }
	public @property final bool bUseORforEvaluateGoal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x2) != 0; }
	public @property final bool bUseORforEvaluateGoal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x2; } return val; }
	public @property final bool bSkipRouteCacheUpdates() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x1) != 0; }
	public @property final bool bSkipRouteCacheUpdates(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x1; } return val; }
	public @property final auto ref Actor.BasedPosition FinalDestination() { return *cast(Actor.BasedPosition*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref UObject.Pointer SubGoal_DestPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref UObject.Pointer CurrentEdge() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref UObject.Pointer BestUnfinishedPathPoint() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref NavigationHandle.PathStore PathCache() { return *cast(NavigationHandle.PathStore*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref UObject.Pointer AnchorPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref Pylon AnchorPylon() { return *cast(Pylon*)(cast(size_t)cast(void*)this + 60); }
	final void ClearConstraints()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20784], cast(void*)0, cast(void*)0);
	}
	final void AddPathConstraint(NavMeshPathConstraint Constraint)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavMeshPathConstraint*)params.ptr = Constraint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20785], params.ptr, cast(void*)0);
	}
	final void AddGoalEvaluator(NavMeshPathGoalEvaluator Evaluator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavMeshPathGoalEvaluator*)params.ptr = Evaluator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20787], params.ptr, cast(void*)0);
	}
	final NavMeshPathConstraint CreatePathConstraint(ScriptClass ConstraintClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ConstraintClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20789], params.ptr, cast(void*)0);
		return *cast(NavMeshPathConstraint*)&params[4];
	}
	final NavMeshPathGoalEvaluator CreatePathGoalEvaluator(ScriptClass GoalEvalClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GoalEvalClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20792], params.ptr, cast(void*)0);
		return *cast(NavMeshPathGoalEvaluator*)&params[4];
	}
	final int GetPathCacheLength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20795], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void PathCache_Empty()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20797], cast(void*)0, cast(void*)0);
	}
	final Vector PathCache_GetGoalPoint()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20798], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final void PathCache_RemoveIndex(int InIdx, int Count)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InIdx;
		*cast(int*)&params[4] = Count;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20800], params.ptr, cast(void*)0);
	}
	final Vector GetBestUnfinishedPathPoint()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20803], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final bool FindPylon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20805], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Pylon GetPylonFromPos(Vector Position)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Position;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20807], params.ptr, cast(void*)0);
		return *cast(Pylon*)&params[12];
	}
	final bool GetNextMoveLocation(Vector* out_MoveDest, float ArrivalDistance)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_MoveDest;
		*cast(float*)&params[12] = ArrivalDistance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20810], params.ptr, cast(void*)0);
		*out_MoveDest = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[16];
	}
	final bool SetFinalDestination(Vector FinalDest)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = FinalDest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20814], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool ComputeValidFinalDestination(Vector* out_ComputedPosition)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_ComputedPosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20817], params.ptr, cast(void*)0);
		*out_ComputedPosition = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[12];
	}
	final bool FindPath(Actor* out_DestActor, int* out_DestItem)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = *out_DestActor;
		*cast(int*)&params[4] = *out_DestItem;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20820], params.ptr, cast(void*)0);
		*out_DestActor = *cast(Actor*)params.ptr;
		*out_DestItem = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	final bool SuggestMovePreparation(Vector* MovePt, Controller C)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = *MovePt;
		*cast(Controller*)&params[12] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20824], params.ptr, cast(void*)0);
		*MovePt = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[16];
	}
	final bool ObstacleLineCheck(Vector Start, Vector End, Vector Extent, Vector* out_HitLoc, Vector* out_HitNorm)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		*cast(Vector*)&params[24] = Extent;
		*cast(Vector*)&params[36] = *out_HitLoc;
		*cast(Vector*)&params[48] = *out_HitNorm;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20828], params.ptr, cast(void*)0);
		*out_HitLoc = *cast(Vector*)&params[36];
		*out_HitNorm = *cast(Vector*)&params[48];
		return *cast(bool*)&params[60];
	}
	final bool ObstaclePointCheck(Vector Pt, Vector Extent)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Pt;
		*cast(Vector*)&params[12] = Extent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20835], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool LineCheck(Vector Start, Vector End, Vector Extent, Vector* out_HitLocation, Vector* out_HitNormal)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		*cast(Vector*)&params[24] = Extent;
		*cast(Vector*)&params[36] = *out_HitLocation;
		*cast(Vector*)&params[48] = *out_HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20839], params.ptr, cast(void*)0);
		*out_HitLocation = *cast(Vector*)&params[36];
		*out_HitNormal = *cast(Vector*)&params[48];
		return *cast(bool*)&params[60];
	}
	final bool PointCheck(Vector Pt, Vector Extent)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Pt;
		*cast(Vector*)&params[12] = Extent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20846], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool PointReachable(Vector Point, Vector OverrideStartPoint, bool bAllowHitsInEndCollisionBox)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Vector*)&params[12] = OverrideStartPoint;
		*cast(bool*)&params[24] = bAllowHitsInEndCollisionBox;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20850], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final bool ActorReachable(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20855], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void DrawPathCache(Vector DrawOffset, bool bPersistent, UObject.Color DrawColor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DrawOffset;
		*cast(bool*)&params[12] = bPersistent;
		*cast(UObject.Color*)&params[16] = DrawColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20858], params.ptr, cast(void*)0);
	}
	final ScriptString GetCurrentEdgeDebugText()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20862], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void ClearCurrentEdge()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20864], cast(void*)0, cast(void*)0);
	}
	final Pylon.ENavMeshEdgeType GetCurrentEdgeType()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20865], params.ptr, cast(void*)0);
		return *cast(Pylon.ENavMeshEdgeType*)params.ptr;
	}
	final void GetAllPolyCentersWithinBounds(Vector pos, Vector Extent, ScriptArray!(Vector)* out_PolyCtrs)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = pos;
		*cast(Vector*)&params[12] = Extent;
		*cast(ScriptArray!(Vector)*)&params[24] = *out_PolyCtrs;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20867], params.ptr, cast(void*)0);
		*out_PolyCtrs = *cast(ScriptArray!(Vector)*)&params[24];
	}
	final void GetValidPositionsForBox(Vector pos, float Radius, Vector Extent, bool bMustBeReachableFromStartPos, ScriptArray!(Vector)* out_ValidPositions, int MaxPositions, float MinRadius, Vector ValidBoxAroundStartPos)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Vector*)params.ptr = pos;
		*cast(float*)&params[12] = Radius;
		*cast(Vector*)&params[16] = Extent;
		*cast(bool*)&params[28] = bMustBeReachableFromStartPos;
		*cast(ScriptArray!(Vector)*)&params[32] = *out_ValidPositions;
		*cast(int*)&params[44] = MaxPositions;
		*cast(float*)&params[48] = MinRadius;
		*cast(Vector*)&params[52] = ValidBoxAroundStartPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20872], params.ptr, cast(void*)0);
		*out_ValidPositions = *cast(ScriptArray!(Vector)*)&params[32];
	}
	final void LimitPathCacheDistance(float MaxDist)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = MaxDist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20882], params.ptr, cast(void*)0);
	}
	final bool IsAnchorInescapable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20884], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Vector GetFirstMoveLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20886], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final float CalculatePathDistance(Vector FinalDest)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = FinalDest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20888], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final Vector MoveToDesiredHeightAboveMesh(Vector Point, float Height)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(float*)&params[12] = Height;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20891], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	final bool PopulatePathfindingParamCache()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20895], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool GetAllCoverSlotsInRadius(Vector FromLoc, float Radius, ScriptArray!(CoverLink.CoverInfo)* out_CoverList)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = FromLoc;
		*cast(float*)&params[12] = Radius;
		*cast(ScriptArray!(CoverLink.CoverInfo)*)&params[16] = *out_CoverList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20897], params.ptr, cast(void*)0);
		*out_CoverList = *cast(ScriptArray!(CoverLink.CoverInfo)*)&params[16];
		return *cast(bool*)&params[28];
	}
}
