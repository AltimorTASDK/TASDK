module UnrealScript.Engine.NavigationPoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.DroppedPickup;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface NavigationPoint : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavigationPoint")()); }
	private static __gshared NavigationPoint mDefaultProperties;
	@property final static NavigationPoint DefaultProperties() { mixin(MGDPC!(NavigationPoint, "NavigationPoint Engine.Default__NavigationPoint")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mProceedWithMove;
			ScriptFunction mGetBoundingCylinder;
			ScriptFunction mGetReachSpecTo;
			ScriptFunction mIsUsableAnchorFor;
			ScriptFunction mCanTeleport;
			ScriptFunction mSpecialCost;
			ScriptFunction mAccept;
			ScriptFunction mDetourWeight;
			ScriptFunction mSuggestMovePreparation;
			ScriptFunction mGetNearestNavToActor;
			ScriptFunction mGetNearestNavToPoint;
			ScriptFunction mGetAllNavInRadius;
			ScriptFunction mIsOnDifferentNetwork;
			ScriptFunction mOnToggle;
			ScriptFunction mShutDown;
			ScriptFunction mShouldSaveForCheckpoint;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
			ScriptFunction mGetDebugAbbrev;
		}
		public @property static final
		{
			ScriptFunction ProceedWithMove() { mixin(MGF!("mProceedWithMove", "Function Engine.NavigationPoint.ProceedWithMove")()); }
			ScriptFunction GetBoundingCylinder() { mixin(MGF!("mGetBoundingCylinder", "Function Engine.NavigationPoint.GetBoundingCylinder")()); }
			ScriptFunction GetReachSpecTo() { mixin(MGF!("mGetReachSpecTo", "Function Engine.NavigationPoint.GetReachSpecTo")()); }
			ScriptFunction IsUsableAnchorFor() { mixin(MGF!("mIsUsableAnchorFor", "Function Engine.NavigationPoint.IsUsableAnchorFor")()); }
			ScriptFunction CanTeleport() { mixin(MGF!("mCanTeleport", "Function Engine.NavigationPoint.CanTeleport")()); }
			ScriptFunction SpecialCost() { mixin(MGF!("mSpecialCost", "Function Engine.NavigationPoint.SpecialCost")()); }
			ScriptFunction Accept() { mixin(MGF!("mAccept", "Function Engine.NavigationPoint.Accept")()); }
			ScriptFunction DetourWeight() { mixin(MGF!("mDetourWeight", "Function Engine.NavigationPoint.DetourWeight")()); }
			ScriptFunction SuggestMovePreparation() { mixin(MGF!("mSuggestMovePreparation", "Function Engine.NavigationPoint.SuggestMovePreparation")()); }
			ScriptFunction GetNearestNavToActor() { mixin(MGF!("mGetNearestNavToActor", "Function Engine.NavigationPoint.GetNearestNavToActor")()); }
			ScriptFunction GetNearestNavToPoint() { mixin(MGF!("mGetNearestNavToPoint", "Function Engine.NavigationPoint.GetNearestNavToPoint")()); }
			ScriptFunction GetAllNavInRadius() { mixin(MGF!("mGetAllNavInRadius", "Function Engine.NavigationPoint.GetAllNavInRadius")()); }
			ScriptFunction IsOnDifferentNetwork() { mixin(MGF!("mIsOnDifferentNetwork", "Function Engine.NavigationPoint.IsOnDifferentNetwork")()); }
			ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.NavigationPoint.OnToggle")()); }
			ScriptFunction ShutDown() { mixin(MGF!("mShutDown", "Function Engine.NavigationPoint.ShutDown")()); }
			ScriptFunction ShouldSaveForCheckpoint() { mixin(MGF!("mShouldSaveForCheckpoint", "Function Engine.NavigationPoint.ShouldSaveForCheckpoint")()); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF!("mCreateCheckpointRecord", "Function Engine.NavigationPoint.CreateCheckpointRecord")()); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF!("mApplyCheckpointRecord", "Function Engine.NavigationPoint.ApplyCheckpointRecord")()); }
			ScriptFunction GetDebugAbbrev() { mixin(MGF!("mGetDebugAbbrev", "Function Engine.NavigationPoint.GetDebugAbbrev")()); }
		}
	}
	static struct Constants
	{
		enum INFINITE_PATH_COST = 10000000;
	}
	struct DebugNavCost
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.NavigationPoint.DebugNavCost")()); }
		@property final auto ref
		{
			int Cost() { mixin(MGPS!(int, 12)()); }
			ScriptString Desc() { mixin(MGPS!(ScriptString, 0)()); }
		}
	}
	struct NavigationOctreeObject
	{
		private ubyte __buffer__[49];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.NavigationPoint.NavigationOctreeObject")()); }
		@property final auto ref
		{
			ubyte OwnerType() { mixin(MGPS!(ubyte, 48)()); }
			UObject Owner() { mixin(MGPS!(UObject, 44)()); }
			UObject.Pointer OctreeNode() { mixin(MGPS!(UObject.Pointer, 40)()); }
			Vector BoxCenter() { mixin(MGPS!(Vector, 28)()); }
			UObject.Box BoundingBox() { mixin(MGPS!(UObject.Box, 0)()); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.NavigationPoint.CheckpointRecord")()); }
		@property final
		{
			bool bBlocked() { mixin(MGBPS!(0, 0x2)()); }
			bool bBlocked(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool bDisabled() { mixin(MGBPS!(0, 0x1)()); }
			bool bDisabled(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ReachSpec) PathList() { mixin(MGPC!(ScriptArray!(ReachSpec), 532)()); }
			ScriptArray!(Actor.ActorReference) EditorProscribedPaths() { mixin(MGPC!(ScriptArray!(Actor.ActorReference), 544)()); }
			ScriptArray!(Actor.ActorReference) EditorForcedPaths() { mixin(MGPC!(ScriptArray!(Actor.ActorReference), 556)()); }
			ScriptArray!(Actor.ActorReference) Volumes() { mixin(MGPC!(ScriptArray!(Actor.ActorReference), 568)()); }
			ScriptArray!(NavigationPoint.DebugNavCost) CostArray() { mixin(MGPC!(ScriptArray!(NavigationPoint.DebugNavCost), 620)()); }
			float LastAnchoredPawnTime() { mixin(MGPC!(float, 688)()); }
			Pawn AnchoredPawn() { mixin(MGPC!(Pawn, 684)()); }
			int NetworkID() { mixin(MGPC!(int, 680)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'BadSprite'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'GoodSprite'!
			UObject.Guid NavGuid() { mixin(MGPC!(UObject.Guid, 656)()); }
			UObject.Cylinder MaxPathSize() { mixin(MGPC!(UObject.Cylinder, 648)()); }
			// WARNING: Property 'CylinderComponent' has the same name as a defined type!
			float LastDetourWeight() { mixin(MGPC!(float, 640)()); }
			float InventoryDist() { mixin(MGPC!(float, 636)()); }
			DroppedPickup InventoryCache() { mixin(MGPC!(DroppedPickup, 632)()); }
			int FearCost() { mixin(MGPC!(int, 616)()); }
			int TransientCost() { mixin(MGPC!(int, 612)()); }
			int ExtraCost() { mixin(MGPC!(int, 608)()); }
			int Cost() { mixin(MGPC!(int, 604)()); }
			NavigationPoint previousPath() { mixin(MGPC!(NavigationPoint, 600)()); }
			NavigationPoint prevOrdered() { mixin(MGPC!(NavigationPoint, 596)()); }
			NavigationPoint nextOrdered() { mixin(MGPC!(NavigationPoint, 592)()); }
			NavigationPoint nextNavigationPoint() { mixin(MGPC!(NavigationPoint, 588)()); }
			int bestPathWeight() { mixin(MGPC!(int, 584)()); }
			int visitedWeight() { mixin(MGPC!(int, 580)()); }
			NavigationPoint.NavigationOctreeObject NavOctreeObject() { mixin(MGPC!(NavigationPoint.NavigationOctreeObject, 480)()); }
		}
		bool bShouldSaveForCheckpoint() { mixin(MGBPC!(476, 0x40000000)()); }
		bool bShouldSaveForCheckpoint(bool val) { mixin(MSBPC!(476, 0x40000000)()); }
		bool bHasCrossLevelPaths() { mixin(MGBPC!(476, 0x20000000)()); }
		bool bHasCrossLevelPaths(bool val) { mixin(MSBPC!(476, 0x20000000)()); }
		bool bPreferredVehiclePath() { mixin(MGBPC!(476, 0x10000000)()); }
		bool bPreferredVehiclePath(bool val) { mixin(MSBPC!(476, 0x10000000)()); }
		bool bBlockedForVehicles() { mixin(MGBPC!(476, 0x8000000)()); }
		bool bBlockedForVehicles(bool val) { mixin(MSBPC!(476, 0x8000000)()); }
		bool bBuildLongPaths() { mixin(MGBPC!(476, 0x4000000)()); }
		bool bBuildLongPaths(bool val) { mixin(MSBPC!(476, 0x4000000)()); }
		bool bCanWalkOnToReach() { mixin(MGBPC!(476, 0x2000000)()); }
		bool bCanWalkOnToReach(bool val) { mixin(MSBPC!(476, 0x2000000)()); }
		bool bMustTouchToReach() { mixin(MGBPC!(476, 0x1000000)()); }
		bool bMustTouchToReach(bool val) { mixin(MSBPC!(476, 0x1000000)()); }
		bool bMakeSourceOnly() { mixin(MGBPC!(476, 0x800000)()); }
		bool bMakeSourceOnly(bool val) { mixin(MSBPC!(476, 0x800000)()); }
		bool bVehicleDestination() { mixin(MGBPC!(476, 0x400000)()); }
		bool bVehicleDestination(bool val) { mixin(MSBPC!(476, 0x400000)()); }
		bool bAlreadyVisited() { mixin(MGBPC!(476, 0x200000)()); }
		bool bAlreadyVisited(bool val) { mixin(MSBPC!(476, 0x200000)()); }
		bool bMayCausePain() { mixin(MGBPC!(476, 0x100000)()); }
		bool bMayCausePain(bool val) { mixin(MSBPC!(476, 0x100000)()); }
		bool bFlyingPreferred() { mixin(MGBPC!(476, 0x80000)()); }
		bool bFlyingPreferred(bool val) { mixin(MSBPC!(476, 0x80000)()); }
		bool bBlockable() { mixin(MGBPC!(476, 0x40000)()); }
		bool bBlockable(bool val) { mixin(MSBPC!(476, 0x40000)()); }
		bool bMustBeReachable() { mixin(MGBPC!(476, 0x20000)()); }
		bool bMustBeReachable(bool val) { mixin(MSBPC!(476, 0x20000)()); }
		bool bSpecialForced() { mixin(MGBPC!(476, 0x10000)()); }
		bool bSpecialForced(bool val) { mixin(MSBPC!(476, 0x10000)()); }
		bool bSourceOnly() { mixin(MGBPC!(476, 0x8000)()); }
		bool bSourceOnly(bool val) { mixin(MSBPC!(476, 0x8000)()); }
		bool bDestinationOnly() { mixin(MGBPC!(476, 0x4000)()); }
		bool bDestinationOnly(bool val) { mixin(MSBPC!(476, 0x4000)()); }
		bool bPathsChanged() { mixin(MGBPC!(476, 0x2000)()); }
		bool bPathsChanged(bool val) { mixin(MSBPC!(476, 0x2000)()); }
		bool bNotBased() { mixin(MGBPC!(476, 0x1000)()); }
		bool bNotBased(bool val) { mixin(MSBPC!(476, 0x1000)()); }
		bool bNoAutoConnect() { mixin(MGBPC!(476, 0x800)()); }
		bool bNoAutoConnect(bool val) { mixin(MSBPC!(476, 0x800)()); }
		bool bSpecialMove() { mixin(MGBPC!(476, 0x400)()); }
		bool bSpecialMove(bool val) { mixin(MSBPC!(476, 0x400)()); }
		bool bAutoBuilt() { mixin(MGBPC!(476, 0x200)()); }
		bool bAutoBuilt(bool val) { mixin(MSBPC!(476, 0x200)()); }
		bool bForceNoStrafing() { mixin(MGBPC!(476, 0x100)()); }
		bool bForceNoStrafing(bool val) { mixin(MSBPC!(476, 0x100)()); }
		bool bAlwaysUseStrafing() { mixin(MGBPC!(476, 0x80)()); }
		bool bAlwaysUseStrafing(bool val) { mixin(MSBPC!(476, 0x80)()); }
		bool bNeverUseStrafing() { mixin(MGBPC!(476, 0x40)()); }
		bool bNeverUseStrafing(bool val) { mixin(MSBPC!(476, 0x40)()); }
		bool bOneWayPath() { mixin(MGBPC!(476, 0x20)()); }
		bool bOneWayPath(bool val) { mixin(MSBPC!(476, 0x20)()); }
		bool bBlocked() { mixin(MGBPC!(476, 0x10)()); }
		bool bBlocked(bool val) { mixin(MSBPC!(476, 0x10)()); }
		bool bCanReach() { mixin(MGBPC!(476, 0x8)()); }
		bool bCanReach(bool val) { mixin(MSBPC!(476, 0x8)()); }
		bool bHideEditorPaths() { mixin(MGBPC!(476, 0x4)()); }
		bool bHideEditorPaths(bool val) { mixin(MSBPC!(476, 0x4)()); }
		bool bTransientEndPoint() { mixin(MGBPC!(476, 0x2)()); }
		bool bTransientEndPoint(bool val) { mixin(MSBPC!(476, 0x2)()); }
		bool bEndPoint() { mixin(MGBPC!(476, 0x1)()); }
		bool bEndPoint(bool val) { mixin(MSBPC!(476, 0x1)()); }
	}
final:
	bool ProceedWithMove(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProceedWithMove, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetBoundingCylinder(ref float CollisionRadius, ref float CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = CollisionRadius;
		*cast(float*)&params[4] = CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoundingCylinder, params.ptr, cast(void*)0);
		*CollisionRadius = *cast(float*)params.ptr;
		*CollisionHeight = *cast(float*)&params[4];
	}
	ReachSpec GetReachSpecTo(NavigationPoint Nav, ScriptClass SpecClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		*cast(ScriptClass*)&params[4] = SpecClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetReachSpecTo, params.ptr, cast(void*)0);
		return *cast(ReachSpec*)&params[8];
	}
	bool IsUsableAnchorFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsUsableAnchorFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CanTeleport(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanTeleport, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int SpecialCost(Pawn Seeker, ReachSpec Path)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Seeker;
		*cast(ReachSpec*)&params[4] = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialCost, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool Accept(Actor Incoming, Actor Source)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Incoming;
		*cast(Actor*)&params[4] = Source;
		(cast(ScriptObject)this).ProcessEvent(Functions.Accept, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetourWeight, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestMovePreparation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	static NavigationPoint GetNearestNavToActor(Actor ChkActor, ScriptClass RequiredClass, ScriptArray!(NavigationPoint) ExcludeList, float MinDist)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = ChkActor;
		*cast(ScriptClass*)&params[4] = RequiredClass;
		*cast(ScriptArray!(NavigationPoint)*)&params[8] = ExcludeList;
		*cast(float*)&params[20] = MinDist;
		StaticClass.ProcessEvent(Functions.GetNearestNavToActor, params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[24];
	}
	static NavigationPoint GetNearestNavToPoint(Actor ChkActor, Vector ChkPoint, ScriptClass RequiredClass, ScriptArray!(NavigationPoint) ExcludeList)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Actor*)params.ptr = ChkActor;
		*cast(Vector*)&params[4] = ChkPoint;
		*cast(ScriptClass*)&params[16] = RequiredClass;
		*cast(ScriptArray!(NavigationPoint)*)&params[20] = ExcludeList;
		StaticClass.ProcessEvent(Functions.GetNearestNavToPoint, params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[32];
	}
	static bool GetAllNavInRadius(Actor ChkActor, Vector ChkPoint, float Radius, ref ScriptArray!(NavigationPoint) out_NavList, bool bSkipBlocked, int inNetworkID, UObject.Cylinder MinSize)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Actor*)params.ptr = ChkActor;
		*cast(Vector*)&params[4] = ChkPoint;
		*cast(float*)&params[16] = Radius;
		*cast(ScriptArray!(NavigationPoint)*)&params[20] = out_NavList;
		*cast(bool*)&params[32] = bSkipBlocked;
		*cast(int*)&params[36] = inNetworkID;
		*cast(UObject.Cylinder*)&params[40] = MinSize;
		StaticClass.ProcessEvent(Functions.GetAllNavInRadius, params.ptr, cast(void*)0);
		*out_NavList = *cast(ScriptArray!(NavigationPoint)*)&params[20];
		return *cast(bool*)&params[48];
	}
	bool IsOnDifferentNetwork(NavigationPoint Nav)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsOnDifferentNetwork, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSaveForCheckpoint, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(ref NavigationPoint.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(NavigationPoint.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref const NavigationPoint.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(NavigationPoint.CheckpointRecord*)params.ptr;
	}
	ScriptString GetDebugAbbrev()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugAbbrev, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
