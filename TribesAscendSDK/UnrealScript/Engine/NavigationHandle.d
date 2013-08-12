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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavigationHandle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClearConstraints;
			ScriptFunction mAddPathConstraint;
			ScriptFunction mAddGoalEvaluator;
			ScriptFunction mCreatePathConstraint;
			ScriptFunction mCreatePathGoalEvaluator;
			ScriptFunction mGetPathCacheLength;
			ScriptFunction mPathCache_Empty;
			ScriptFunction mPathCache_GetGoalPoint;
			ScriptFunction mPathCache_RemoveIndex;
			ScriptFunction mGetBestUnfinishedPathPoint;
			ScriptFunction mFindPylon;
			ScriptFunction mGetPylonFromPos;
			ScriptFunction mGetNextMoveLocation;
			ScriptFunction mSetFinalDestination;
			ScriptFunction mComputeValidFinalDestination;
			ScriptFunction mFindPath;
			ScriptFunction mSuggestMovePreparation;
			ScriptFunction mObstacleLineCheck;
			ScriptFunction mObstaclePointCheck;
			ScriptFunction mLineCheck;
			ScriptFunction mPointCheck;
			ScriptFunction mPointReachable;
			ScriptFunction mActorReachable;
			ScriptFunction mDrawPathCache;
			ScriptFunction mGetCurrentEdgeDebugText;
			ScriptFunction mClearCurrentEdge;
			ScriptFunction mGetCurrentEdgeType;
			ScriptFunction mGetAllPolyCentersWithinBounds;
			ScriptFunction mGetValidPositionsForBox;
			ScriptFunction mLimitPathCacheDistance;
			ScriptFunction mIsAnchorInescapable;
			ScriptFunction mGetFirstMoveLocation;
			ScriptFunction mCalculatePathDistance;
			ScriptFunction mMoveToDesiredHeightAboveMesh;
			ScriptFunction mPopulatePathfindingParamCache;
			ScriptFunction mGetAllCoverSlotsInRadius;
		}
		public @property static final
		{
			ScriptFunction ClearConstraints() { return mClearConstraints ? mClearConstraints : (mClearConstraints = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.ClearConstraints")); }
			ScriptFunction AddPathConstraint() { return mAddPathConstraint ? mAddPathConstraint : (mAddPathConstraint = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.AddPathConstraint")); }
			ScriptFunction AddGoalEvaluator() { return mAddGoalEvaluator ? mAddGoalEvaluator : (mAddGoalEvaluator = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.AddGoalEvaluator")); }
			ScriptFunction CreatePathConstraint() { return mCreatePathConstraint ? mCreatePathConstraint : (mCreatePathConstraint = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.CreatePathConstraint")); }
			ScriptFunction CreatePathGoalEvaluator() { return mCreatePathGoalEvaluator ? mCreatePathGoalEvaluator : (mCreatePathGoalEvaluator = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.CreatePathGoalEvaluator")); }
			ScriptFunction GetPathCacheLength() { return mGetPathCacheLength ? mGetPathCacheLength : (mGetPathCacheLength = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.GetPathCacheLength")); }
			ScriptFunction PathCache_Empty() { return mPathCache_Empty ? mPathCache_Empty : (mPathCache_Empty = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.PathCache_Empty")); }
			ScriptFunction PathCache_GetGoalPoint() { return mPathCache_GetGoalPoint ? mPathCache_GetGoalPoint : (mPathCache_GetGoalPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.PathCache_GetGoalPoint")); }
			ScriptFunction PathCache_RemoveIndex() { return mPathCache_RemoveIndex ? mPathCache_RemoveIndex : (mPathCache_RemoveIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.PathCache_RemoveIndex")); }
			ScriptFunction GetBestUnfinishedPathPoint() { return mGetBestUnfinishedPathPoint ? mGetBestUnfinishedPathPoint : (mGetBestUnfinishedPathPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.GetBestUnfinishedPathPoint")); }
			ScriptFunction FindPylon() { return mFindPylon ? mFindPylon : (mFindPylon = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.FindPylon")); }
			ScriptFunction GetPylonFromPos() { return mGetPylonFromPos ? mGetPylonFromPos : (mGetPylonFromPos = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.GetPylonFromPos")); }
			ScriptFunction GetNextMoveLocation() { return mGetNextMoveLocation ? mGetNextMoveLocation : (mGetNextMoveLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.GetNextMoveLocation")); }
			ScriptFunction SetFinalDestination() { return mSetFinalDestination ? mSetFinalDestination : (mSetFinalDestination = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.SetFinalDestination")); }
			ScriptFunction ComputeValidFinalDestination() { return mComputeValidFinalDestination ? mComputeValidFinalDestination : (mComputeValidFinalDestination = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.ComputeValidFinalDestination")); }
			ScriptFunction FindPath() { return mFindPath ? mFindPath : (mFindPath = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.FindPath")); }
			ScriptFunction SuggestMovePreparation() { return mSuggestMovePreparation ? mSuggestMovePreparation : (mSuggestMovePreparation = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.SuggestMovePreparation")); }
			ScriptFunction ObstacleLineCheck() { return mObstacleLineCheck ? mObstacleLineCheck : (mObstacleLineCheck = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.ObstacleLineCheck")); }
			ScriptFunction ObstaclePointCheck() { return mObstaclePointCheck ? mObstaclePointCheck : (mObstaclePointCheck = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.ObstaclePointCheck")); }
			ScriptFunction LineCheck() { return mLineCheck ? mLineCheck : (mLineCheck = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.LineCheck")); }
			ScriptFunction PointCheck() { return mPointCheck ? mPointCheck : (mPointCheck = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.PointCheck")); }
			ScriptFunction PointReachable() { return mPointReachable ? mPointReachable : (mPointReachable = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.PointReachable")); }
			ScriptFunction ActorReachable() { return mActorReachable ? mActorReachable : (mActorReachable = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.ActorReachable")); }
			ScriptFunction DrawPathCache() { return mDrawPathCache ? mDrawPathCache : (mDrawPathCache = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.DrawPathCache")); }
			ScriptFunction GetCurrentEdgeDebugText() { return mGetCurrentEdgeDebugText ? mGetCurrentEdgeDebugText : (mGetCurrentEdgeDebugText = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.GetCurrentEdgeDebugText")); }
			ScriptFunction ClearCurrentEdge() { return mClearCurrentEdge ? mClearCurrentEdge : (mClearCurrentEdge = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.ClearCurrentEdge")); }
			ScriptFunction GetCurrentEdgeType() { return mGetCurrentEdgeType ? mGetCurrentEdgeType : (mGetCurrentEdgeType = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.GetCurrentEdgeType")); }
			ScriptFunction GetAllPolyCentersWithinBounds() { return mGetAllPolyCentersWithinBounds ? mGetAllPolyCentersWithinBounds : (mGetAllPolyCentersWithinBounds = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.GetAllPolyCentersWithinBounds")); }
			ScriptFunction GetValidPositionsForBox() { return mGetValidPositionsForBox ? mGetValidPositionsForBox : (mGetValidPositionsForBox = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.GetValidPositionsForBox")); }
			ScriptFunction LimitPathCacheDistance() { return mLimitPathCacheDistance ? mLimitPathCacheDistance : (mLimitPathCacheDistance = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.LimitPathCacheDistance")); }
			ScriptFunction IsAnchorInescapable() { return mIsAnchorInescapable ? mIsAnchorInescapable : (mIsAnchorInescapable = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.IsAnchorInescapable")); }
			ScriptFunction GetFirstMoveLocation() { return mGetFirstMoveLocation ? mGetFirstMoveLocation : (mGetFirstMoveLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.GetFirstMoveLocation")); }
			ScriptFunction CalculatePathDistance() { return mCalculatePathDistance ? mCalculatePathDistance : (mCalculatePathDistance = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.CalculatePathDistance")); }
			ScriptFunction MoveToDesiredHeightAboveMesh() { return mMoveToDesiredHeightAboveMesh ? mMoveToDesiredHeightAboveMesh : (mMoveToDesiredHeightAboveMesh = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.MoveToDesiredHeightAboveMesh")); }
			ScriptFunction PopulatePathfindingParamCache() { return mPopulatePathfindingParamCache ? mPopulatePathfindingParamCache : (mPopulatePathfindingParamCache = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.PopulatePathfindingParamCache")); }
			ScriptFunction GetAllCoverSlotsInRadius() { return mGetAllCoverSlotsInRadius ? mGetAllCoverSlotsInRadius : (mGetAllCoverSlotsInRadius = ScriptObject.Find!(ScriptFunction)("Function Engine.NavigationHandle.GetAllCoverSlotsInRadius")); }
		}
	}
	static struct Constants
	{
		enum
		{
			LINECHECK_GRANULARITY = 76.0f,
			NUM_PATHFINDING_PARAMS = 9,
		}
	}
	struct PolySegmentSpan
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.NavigationHandle.PolySegmentSpan")); }
		@property final auto ref
		{
			Vector P2() { return *cast(Vector*)(cast(size_t)&this + 16); }
			Vector P1() { return *cast(Vector*)(cast(size_t)&this + 4); }
			UObject.Pointer Poly() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		}
	}
	struct NavMeshPathParams
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.NavigationHandle.NavMeshPathParams")); }
		@property final
		{
			auto ref
			{
				float MaxHoverDistance() { return *cast(float*)(cast(size_t)&this + 44); }
				float MinWalkableZ() { return *cast(float*)(cast(size_t)&this + 40); }
				float MaxDropHeight() { return *cast(float*)(cast(size_t)&this + 36); }
				Vector SearchStart() { return *cast(Vector*)(cast(size_t)&this + 24); }
				float SearchLaneMultiplier() { return *cast(float*)(cast(size_t)&this + 20); }
				Vector SearchExtent() { return *cast(Vector*)(cast(size_t)&this + 8); }
				// WARNING: Property 'Interface' has the same name as a defined type!
			}
			bool bAbleToSearch() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x4) != 0; }
			bool bAbleToSearch(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x4; } return val; }
			bool bNeedsMantleValidityTest() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
			bool bNeedsMantleValidityTest(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
			bool bCanMantle() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
			bool bCanMantle(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		}
	}
	struct PathStore
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.NavigationHandle.PathStore")); }
		@property final auto ref ScriptArray!(NavigationHandle.EdgePointer) EdgeList() { return *cast(ScriptArray!(NavigationHandle.EdgePointer)*)(cast(size_t)&this + 0); }
	}
	struct EdgePointer
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.NavigationHandle.EdgePointer")); }
		@property final auto ref UObject.Pointer Dummy() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
	}
	@property final
	{
		auto ref
		{
			float LastPathFailTime() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
			EngineTypes.EPathFindingError LastPathError() { return *cast(EngineTypes.EPathFindingError*)(cast(size_t)cast(void*)this + 204); }
			NavigationHandle.NavMeshPathParams CachedPathParams() { return *cast(NavigationHandle.NavMeshPathParams*)(cast(size_t)cast(void*)this + 156); }
			NavMeshPathGoalEvaluator PathGoalList() { return *cast(NavMeshPathGoalEvaluator*)(cast(size_t)cast(void*)this + 152); }
			NavMeshPathConstraint PathConstraintList() { return *cast(NavMeshPathConstraint*)(cast(size_t)cast(void*)this + 148); }
			Actor.BasedPosition FinalDestination() { return *cast(Actor.BasedPosition*)(cast(size_t)cast(void*)this + 92); }
			UObject.Pointer SubGoal_DestPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
			UObject.Pointer CurrentEdge() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 84); }
			UObject.Pointer BestUnfinishedPathPoint() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 80); }
			NavigationHandle.PathStore PathCache() { return *cast(NavigationHandle.PathStore*)(cast(size_t)cast(void*)this + 68); }
			UObject.Pointer AnchorPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
			Pylon AnchorPylon() { return *cast(Pylon*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bUltraVerbosePathDebugging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x8) != 0; }
		bool bUltraVerbosePathDebugging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x8; } return val; }
		bool bDebugConstraintsAndGoalEvals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x4) != 0; }
		bool bDebugConstraintsAndGoalEvals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x4; } return val; }
		bool bUseORforEvaluateGoal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x2) != 0; }
		bool bUseORforEvaluateGoal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x2; } return val; }
		bool bSkipRouteCacheUpdates() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x1) != 0; }
		bool bSkipRouteCacheUpdates(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x1; } return val; }
	}
final:
	void ClearConstraints()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearConstraints, cast(void*)0, cast(void*)0);
	}
	void AddPathConstraint(NavMeshPathConstraint Constraint)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavMeshPathConstraint*)params.ptr = Constraint;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPathConstraint, params.ptr, cast(void*)0);
	}
	void AddGoalEvaluator(NavMeshPathGoalEvaluator Evaluator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavMeshPathGoalEvaluator*)params.ptr = Evaluator;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddGoalEvaluator, params.ptr, cast(void*)0);
	}
	NavMeshPathConstraint CreatePathConstraint(ScriptClass ConstraintClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ConstraintClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreatePathConstraint, params.ptr, cast(void*)0);
		return *cast(NavMeshPathConstraint*)&params[4];
	}
	NavMeshPathGoalEvaluator CreatePathGoalEvaluator(ScriptClass GoalEvalClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GoalEvalClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreatePathGoalEvaluator, params.ptr, cast(void*)0);
		return *cast(NavMeshPathGoalEvaluator*)&params[4];
	}
	int GetPathCacheLength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPathCacheLength, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void PathCache_Empty()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PathCache_Empty, cast(void*)0, cast(void*)0);
	}
	Vector PathCache_GetGoalPoint()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PathCache_GetGoalPoint, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void PathCache_RemoveIndex(int InIdx, int Count)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InIdx;
		*cast(int*)&params[4] = Count;
		(cast(ScriptObject)this).ProcessEvent(Functions.PathCache_RemoveIndex, params.ptr, cast(void*)0);
	}
	Vector GetBestUnfinishedPathPoint()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBestUnfinishedPathPoint, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	bool FindPylon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPylon, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static Pylon GetPylonFromPos(Vector Position)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Position;
		StaticClass.ProcessEvent(Functions.GetPylonFromPos, params.ptr, cast(void*)0);
		return *cast(Pylon*)&params[12];
	}
	bool GetNextMoveLocation(Vector* out_MoveDest, float ArrivalDistance)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_MoveDest;
		*cast(float*)&params[12] = ArrivalDistance;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNextMoveLocation, params.ptr, cast(void*)0);
		*out_MoveDest = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[16];
	}
	bool SetFinalDestination(Vector FinalDest)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = FinalDest;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFinalDestination, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ComputeValidFinalDestination(Vector* out_ComputedPosition)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_ComputedPosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.ComputeValidFinalDestination, params.ptr, cast(void*)0);
		*out_ComputedPosition = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool FindPath(Actor* out_DestActor, int* out_DestItem)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = *out_DestActor;
		*cast(int*)&params[4] = *out_DestItem;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPath, params.ptr, cast(void*)0);
		*out_DestActor = *cast(Actor*)params.ptr;
		*out_DestItem = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool SuggestMovePreparation(Vector* MovePt, Controller C)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = *MovePt;
		*cast(Controller*)&params[12] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestMovePreparation, params.ptr, cast(void*)0);
		*MovePt = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[16];
	}
	static bool ObstacleLineCheck(Vector Start, Vector End, Vector Extent, Vector* out_HitLoc, Vector* out_HitNorm)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		*cast(Vector*)&params[24] = Extent;
		*cast(Vector*)&params[36] = *out_HitLoc;
		*cast(Vector*)&params[48] = *out_HitNorm;
		StaticClass.ProcessEvent(Functions.ObstacleLineCheck, params.ptr, cast(void*)0);
		*out_HitLoc = *cast(Vector*)&params[36];
		*out_HitNorm = *cast(Vector*)&params[48];
		return *cast(bool*)&params[60];
	}
	static bool ObstaclePointCheck(Vector Pt, Vector Extent)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Pt;
		*cast(Vector*)&params[12] = Extent;
		StaticClass.ProcessEvent(Functions.ObstaclePointCheck, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool LineCheck(Vector Start, Vector End, Vector Extent, Vector* out_HitLocation, Vector* out_HitNormal)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		*cast(Vector*)&params[24] = Extent;
		*cast(Vector*)&params[36] = *out_HitLocation;
		*cast(Vector*)&params[48] = *out_HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.LineCheck, params.ptr, cast(void*)0);
		*out_HitLocation = *cast(Vector*)&params[36];
		*out_HitNormal = *cast(Vector*)&params[48];
		return *cast(bool*)&params[60];
	}
	bool PointCheck(Vector Pt, Vector Extent)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Pt;
		*cast(Vector*)&params[12] = Extent;
		(cast(ScriptObject)this).ProcessEvent(Functions.PointCheck, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool PointReachable(Vector Point, Vector OverrideStartPoint, bool bAllowHitsInEndCollisionBox)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Vector*)&params[12] = OverrideStartPoint;
		*cast(bool*)&params[24] = bAllowHitsInEndCollisionBox;
		(cast(ScriptObject)this).ProcessEvent(Functions.PointReachable, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool ActorReachable(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActorReachable, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DrawPathCache(Vector DrawOffset, bool bPersistent, UObject.Color DrawColor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DrawOffset;
		*cast(bool*)&params[12] = bPersistent;
		*cast(UObject.Color*)&params[16] = DrawColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawPathCache, params.ptr, cast(void*)0);
	}
	ScriptString GetCurrentEdgeDebugText()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentEdgeDebugText, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void ClearCurrentEdge()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCurrentEdge, cast(void*)0, cast(void*)0);
	}
	Pylon.ENavMeshEdgeType GetCurrentEdgeType()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentEdgeType, params.ptr, cast(void*)0);
		return *cast(Pylon.ENavMeshEdgeType*)params.ptr;
	}
	static void GetAllPolyCentersWithinBounds(Vector pos, Vector Extent, ScriptArray!(Vector)* out_PolyCtrs)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = pos;
		*cast(Vector*)&params[12] = Extent;
		*cast(ScriptArray!(Vector)*)&params[24] = *out_PolyCtrs;
		StaticClass.ProcessEvent(Functions.GetAllPolyCentersWithinBounds, params.ptr, cast(void*)0);
		*out_PolyCtrs = *cast(ScriptArray!(Vector)*)&params[24];
	}
	static void GetValidPositionsForBox(Vector pos, float Radius, Vector Extent, bool bMustBeReachableFromStartPos, ScriptArray!(Vector)* out_ValidPositions, int MaxPositions, float MinRadius, Vector ValidBoxAroundStartPos)
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
		StaticClass.ProcessEvent(Functions.GetValidPositionsForBox, params.ptr, cast(void*)0);
		*out_ValidPositions = *cast(ScriptArray!(Vector)*)&params[32];
	}
	void LimitPathCacheDistance(float MaxDist)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = MaxDist;
		(cast(ScriptObject)this).ProcessEvent(Functions.LimitPathCacheDistance, params.ptr, cast(void*)0);
	}
	bool IsAnchorInescapable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsAnchorInescapable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Vector GetFirstMoveLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFirstMoveLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	float CalculatePathDistance(Vector FinalDest)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = FinalDest;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculatePathDistance, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static Vector MoveToDesiredHeightAboveMesh(Vector Point, float Height)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(float*)&params[12] = Height;
		StaticClass.ProcessEvent(Functions.MoveToDesiredHeightAboveMesh, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	bool PopulatePathfindingParamCache()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopulatePathfindingParamCache, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static bool GetAllCoverSlotsInRadius(Vector FromLoc, float Radius, ScriptArray!(CoverLink.CoverInfo)* out_CoverList)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = FromLoc;
		*cast(float*)&params[12] = Radius;
		*cast(ScriptArray!(CoverLink.CoverInfo)*)&params[16] = *out_CoverList;
		StaticClass.ProcessEvent(Functions.GetAllCoverSlotsInRadius, params.ptr, cast(void*)0);
		*out_CoverList = *cast(ScriptArray!(CoverLink.CoverInfo)*)&params[16];
		return *cast(bool*)&params[28];
	}
}
