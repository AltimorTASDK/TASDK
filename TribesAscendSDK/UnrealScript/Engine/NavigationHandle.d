module UnrealScript.Engine.NavigationHandle;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavigationHandle")()); }
	private static __gshared NavigationHandle mDefaultProperties;
	@property final static NavigationHandle DefaultProperties() { mixin(MGDPC!(NavigationHandle, "NavigationHandle Engine.Default__NavigationHandle")()); }
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
			ScriptFunction ClearConstraints() { mixin(MGF!("mClearConstraints", "Function Engine.NavigationHandle.ClearConstraints")()); }
			ScriptFunction AddPathConstraint() { mixin(MGF!("mAddPathConstraint", "Function Engine.NavigationHandle.AddPathConstraint")()); }
			ScriptFunction AddGoalEvaluator() { mixin(MGF!("mAddGoalEvaluator", "Function Engine.NavigationHandle.AddGoalEvaluator")()); }
			ScriptFunction CreatePathConstraint() { mixin(MGF!("mCreatePathConstraint", "Function Engine.NavigationHandle.CreatePathConstraint")()); }
			ScriptFunction CreatePathGoalEvaluator() { mixin(MGF!("mCreatePathGoalEvaluator", "Function Engine.NavigationHandle.CreatePathGoalEvaluator")()); }
			ScriptFunction GetPathCacheLength() { mixin(MGF!("mGetPathCacheLength", "Function Engine.NavigationHandle.GetPathCacheLength")()); }
			ScriptFunction PathCache_Empty() { mixin(MGF!("mPathCache_Empty", "Function Engine.NavigationHandle.PathCache_Empty")()); }
			ScriptFunction PathCache_GetGoalPoint() { mixin(MGF!("mPathCache_GetGoalPoint", "Function Engine.NavigationHandle.PathCache_GetGoalPoint")()); }
			ScriptFunction PathCache_RemoveIndex() { mixin(MGF!("mPathCache_RemoveIndex", "Function Engine.NavigationHandle.PathCache_RemoveIndex")()); }
			ScriptFunction GetBestUnfinishedPathPoint() { mixin(MGF!("mGetBestUnfinishedPathPoint", "Function Engine.NavigationHandle.GetBestUnfinishedPathPoint")()); }
			ScriptFunction FindPylon() { mixin(MGF!("mFindPylon", "Function Engine.NavigationHandle.FindPylon")()); }
			ScriptFunction GetPylonFromPos() { mixin(MGF!("mGetPylonFromPos", "Function Engine.NavigationHandle.GetPylonFromPos")()); }
			ScriptFunction GetNextMoveLocation() { mixin(MGF!("mGetNextMoveLocation", "Function Engine.NavigationHandle.GetNextMoveLocation")()); }
			ScriptFunction SetFinalDestination() { mixin(MGF!("mSetFinalDestination", "Function Engine.NavigationHandle.SetFinalDestination")()); }
			ScriptFunction ComputeValidFinalDestination() { mixin(MGF!("mComputeValidFinalDestination", "Function Engine.NavigationHandle.ComputeValidFinalDestination")()); }
			ScriptFunction FindPath() { mixin(MGF!("mFindPath", "Function Engine.NavigationHandle.FindPath")()); }
			ScriptFunction SuggestMovePreparation() { mixin(MGF!("mSuggestMovePreparation", "Function Engine.NavigationHandle.SuggestMovePreparation")()); }
			ScriptFunction ObstacleLineCheck() { mixin(MGF!("mObstacleLineCheck", "Function Engine.NavigationHandle.ObstacleLineCheck")()); }
			ScriptFunction ObstaclePointCheck() { mixin(MGF!("mObstaclePointCheck", "Function Engine.NavigationHandle.ObstaclePointCheck")()); }
			ScriptFunction LineCheck() { mixin(MGF!("mLineCheck", "Function Engine.NavigationHandle.LineCheck")()); }
			ScriptFunction PointCheck() { mixin(MGF!("mPointCheck", "Function Engine.NavigationHandle.PointCheck")()); }
			ScriptFunction PointReachable() { mixin(MGF!("mPointReachable", "Function Engine.NavigationHandle.PointReachable")()); }
			ScriptFunction ActorReachable() { mixin(MGF!("mActorReachable", "Function Engine.NavigationHandle.ActorReachable")()); }
			ScriptFunction DrawPathCache() { mixin(MGF!("mDrawPathCache", "Function Engine.NavigationHandle.DrawPathCache")()); }
			ScriptFunction GetCurrentEdgeDebugText() { mixin(MGF!("mGetCurrentEdgeDebugText", "Function Engine.NavigationHandle.GetCurrentEdgeDebugText")()); }
			ScriptFunction ClearCurrentEdge() { mixin(MGF!("mClearCurrentEdge", "Function Engine.NavigationHandle.ClearCurrentEdge")()); }
			ScriptFunction GetCurrentEdgeType() { mixin(MGF!("mGetCurrentEdgeType", "Function Engine.NavigationHandle.GetCurrentEdgeType")()); }
			ScriptFunction GetAllPolyCentersWithinBounds() { mixin(MGF!("mGetAllPolyCentersWithinBounds", "Function Engine.NavigationHandle.GetAllPolyCentersWithinBounds")()); }
			ScriptFunction GetValidPositionsForBox() { mixin(MGF!("mGetValidPositionsForBox", "Function Engine.NavigationHandle.GetValidPositionsForBox")()); }
			ScriptFunction LimitPathCacheDistance() { mixin(MGF!("mLimitPathCacheDistance", "Function Engine.NavigationHandle.LimitPathCacheDistance")()); }
			ScriptFunction IsAnchorInescapable() { mixin(MGF!("mIsAnchorInescapable", "Function Engine.NavigationHandle.IsAnchorInescapable")()); }
			ScriptFunction GetFirstMoveLocation() { mixin(MGF!("mGetFirstMoveLocation", "Function Engine.NavigationHandle.GetFirstMoveLocation")()); }
			ScriptFunction CalculatePathDistance() { mixin(MGF!("mCalculatePathDistance", "Function Engine.NavigationHandle.CalculatePathDistance")()); }
			ScriptFunction MoveToDesiredHeightAboveMesh() { mixin(MGF!("mMoveToDesiredHeightAboveMesh", "Function Engine.NavigationHandle.MoveToDesiredHeightAboveMesh")()); }
			ScriptFunction PopulatePathfindingParamCache() { mixin(MGF!("mPopulatePathfindingParamCache", "Function Engine.NavigationHandle.PopulatePathfindingParamCache")()); }
			ScriptFunction GetAllCoverSlotsInRadius() { mixin(MGF!("mGetAllCoverSlotsInRadius", "Function Engine.NavigationHandle.GetAllCoverSlotsInRadius")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.NavigationHandle.PolySegmentSpan")()); }
		@property final auto ref
		{
			Vector P2() { mixin(MGPS!(Vector, 16)()); }
			Vector P1() { mixin(MGPS!(Vector, 4)()); }
			UObject.Pointer Poly() { mixin(MGPS!(UObject.Pointer, 0)()); }
		}
	}
	struct NavMeshPathParams
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.NavigationHandle.NavMeshPathParams")()); }
		@property final
		{
			auto ref
			{
				float MaxHoverDistance() { mixin(MGPS!(float, 44)()); }
				float MinWalkableZ() { mixin(MGPS!(float, 40)()); }
				float MaxDropHeight() { mixin(MGPS!(float, 36)()); }
				Vector SearchStart() { mixin(MGPS!(Vector, 24)()); }
				float SearchLaneMultiplier() { mixin(MGPS!(float, 20)()); }
				Vector SearchExtent() { mixin(MGPS!(Vector, 8)()); }
				// WARNING: Property 'Interface' has the same name as a defined type!
			}
			bool bAbleToSearch() { mixin(MGBPS!(4, 0x4)()); }
			bool bAbleToSearch(bool val) { mixin(MSBPS!(4, 0x4)()); }
			bool bNeedsMantleValidityTest() { mixin(MGBPS!(4, 0x2)()); }
			bool bNeedsMantleValidityTest(bool val) { mixin(MSBPS!(4, 0x2)()); }
			bool bCanMantle() { mixin(MGBPS!(4, 0x1)()); }
			bool bCanMantle(bool val) { mixin(MSBPS!(4, 0x1)()); }
		}
	}
	struct PathStore
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.NavigationHandle.PathStore")()); }
		@property final auto ref ScriptArray!(NavigationHandle.EdgePointer) EdgeList() { mixin(MGPS!(ScriptArray!(NavigationHandle.EdgePointer), 0)()); }
	}
	struct EdgePointer
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.NavigationHandle.EdgePointer")()); }
		@property final auto ref UObject.Pointer Dummy() { mixin(MGPS!(UObject.Pointer, 0)()); }
	}
	@property final
	{
		auto ref
		{
			float LastPathFailTime() { mixin(MGPC!(float, 208)()); }
			EngineTypes.EPathFindingError LastPathError() { mixin(MGPC!(EngineTypes.EPathFindingError, 204)()); }
			NavigationHandle.NavMeshPathParams CachedPathParams() { mixin(MGPC!(NavigationHandle.NavMeshPathParams, 156)()); }
			NavMeshPathGoalEvaluator PathGoalList() { mixin(MGPC!(NavMeshPathGoalEvaluator, 152)()); }
			NavMeshPathConstraint PathConstraintList() { mixin(MGPC!(NavMeshPathConstraint, 148)()); }
			Actor.BasedPosition FinalDestination() { mixin(MGPC!(Actor.BasedPosition, 92)()); }
			UObject.Pointer SubGoal_DestPoly() { mixin(MGPC!(UObject.Pointer, 88)()); }
			UObject.Pointer CurrentEdge() { mixin(MGPC!(UObject.Pointer, 84)()); }
			UObject.Pointer BestUnfinishedPathPoint() { mixin(MGPC!(UObject.Pointer, 80)()); }
			NavigationHandle.PathStore PathCache() { mixin(MGPC!(NavigationHandle.PathStore, 68)()); }
			UObject.Pointer AnchorPoly() { mixin(MGPC!(UObject.Pointer, 64)()); }
			Pylon AnchorPylon() { mixin(MGPC!(Pylon, 60)()); }
		}
		bool bUltraVerbosePathDebugging() { mixin(MGBPC!(144, 0x8)()); }
		bool bUltraVerbosePathDebugging(bool val) { mixin(MSBPC!(144, 0x8)()); }
		bool bDebugConstraintsAndGoalEvals() { mixin(MGBPC!(144, 0x4)()); }
		bool bDebugConstraintsAndGoalEvals(bool val) { mixin(MSBPC!(144, 0x4)()); }
		bool bUseORforEvaluateGoal() { mixin(MGBPC!(144, 0x2)()); }
		bool bUseORforEvaluateGoal(bool val) { mixin(MSBPC!(144, 0x2)()); }
		bool bSkipRouteCacheUpdates() { mixin(MGBPC!(144, 0x1)()); }
		bool bSkipRouteCacheUpdates(bool val) { mixin(MSBPC!(144, 0x1)()); }
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
	bool GetNextMoveLocation(ref Vector out_MoveDest, float ArrivalDistance)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = out_MoveDest;
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
	bool ComputeValidFinalDestination(ref Vector out_ComputedPosition)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = out_ComputedPosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.ComputeValidFinalDestination, params.ptr, cast(void*)0);
		*out_ComputedPosition = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool FindPath(Actor* out_DestActor, int* out_DestItem)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = out_DestActor;
		*cast(int*)&params[4] = out_DestItem;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPath, params.ptr, cast(void*)0);
		*out_DestActor = *cast(Actor*)params.ptr;
		*out_DestItem = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool SuggestMovePreparation(ref Vector MovePt, Controller C)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = MovePt;
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
		*cast(Vector*)&params[36] = out_HitLoc;
		*cast(Vector*)&params[48] = out_HitNorm;
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
		*cast(Vector*)&params[36] = out_HitLocation;
		*cast(Vector*)&params[48] = out_HitNormal;
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
	static void GetAllPolyCentersWithinBounds(Vector pos, Vector Extent, ref ScriptArray!(Vector) out_PolyCtrs)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = pos;
		*cast(Vector*)&params[12] = Extent;
		*cast(ScriptArray!(Vector)*)&params[24] = out_PolyCtrs;
		StaticClass.ProcessEvent(Functions.GetAllPolyCentersWithinBounds, params.ptr, cast(void*)0);
		*out_PolyCtrs = *cast(ScriptArray!(Vector)*)&params[24];
	}
	static void GetValidPositionsForBox(Vector pos, float Radius, Vector Extent, bool bMustBeReachableFromStartPos, ref ScriptArray!(Vector) out_ValidPositions, int MaxPositions, float MinRadius, Vector ValidBoxAroundStartPos)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Vector*)params.ptr = pos;
		*cast(float*)&params[12] = Radius;
		*cast(Vector*)&params[16] = Extent;
		*cast(bool*)&params[28] = bMustBeReachableFromStartPos;
		*cast(ScriptArray!(Vector)*)&params[32] = out_ValidPositions;
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
	static bool GetAllCoverSlotsInRadius(Vector FromLoc, float Radius, ref ScriptArray!(CoverLink.CoverInfo) out_CoverList)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = FromLoc;
		*cast(float*)&params[12] = Radius;
		*cast(ScriptArray!(CoverLink.CoverInfo)*)&params[16] = out_CoverList;
		StaticClass.ProcessEvent(Functions.GetAllCoverSlotsInRadius, params.ptr, cast(void*)0);
		*out_CoverList = *cast(ScriptArray!(CoverLink.CoverInfo)*)&params[16];
		return *cast(bool*)&params[28];
	}
}
