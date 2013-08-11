module UnrealScript.Engine.NavigationPoint;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.DroppedPickup;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface NavigationPoint : Actor
{
	public static immutable auto INFINITE_PATH_COST = 10000000;
	struct DebugNavCost
	{
		public @property final auto ref int Cost() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __Cost[4];
		public @property final auto ref ScriptString Desc() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Desc[12];
	}
	struct NavigationOctreeObject
	{
		public @property final auto ref ubyte OwnerType() { return *cast(ubyte*)(cast(size_t)&this + 48); }
		private ubyte __OwnerType[1];
		public @property final auto ref UObject Owner() { return *cast(UObject*)(cast(size_t)&this + 44); }
		private ubyte __Owner[4];
		public @property final auto ref UObject.Pointer OctreeNode() { return *cast(UObject.Pointer*)(cast(size_t)&this + 40); }
		private ubyte __OctreeNode[4];
		public @property final auto ref Vector BoxCenter() { return *cast(Vector*)(cast(size_t)&this + 28); }
		private ubyte __BoxCenter[12];
		public @property final auto ref UObject.Box BoundingBox() { return *cast(UObject.Box*)(cast(size_t)&this + 0); }
		private ubyte __BoundingBox[28];
	}
	extern(D) struct CheckpointRecord
	{
		public @property final bool bBlocked() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bBlocked(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bBlocked[4];
		public @property final bool bDisabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bDisabled[4];
	}
	public @property final auto ref ScriptArray!(ReachSpec) PathList() { return *cast(ScriptArray!(ReachSpec)*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref ScriptArray!(Actor.ActorReference) EditorProscribedPaths() { return *cast(ScriptArray!(Actor.ActorReference)*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref ScriptArray!(Actor.ActorReference) EditorForcedPaths() { return *cast(ScriptArray!(Actor.ActorReference)*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref ScriptArray!(Actor.ActorReference) Volumes() { return *cast(ScriptArray!(Actor.ActorReference)*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref ScriptArray!(NavigationPoint.DebugNavCost) CostArray() { return *cast(ScriptArray!(NavigationPoint.DebugNavCost)*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref float LastAnchoredPawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
	public @property final auto ref Pawn AnchoredPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 684); }
	public @property final auto ref int NetworkID() { return *cast(int*)(cast(size_t)cast(void*)this + 680); }
	public @property final auto ref UObject.Guid NavGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref UObject.Cylinder MaxPathSize() { return *cast(UObject.Cylinder*)(cast(size_t)cast(void*)this + 648); }
	public @property final auto ref float LastDetourWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref float InventoryDist() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref DroppedPickup InventoryCache() { return *cast(DroppedPickup*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref int FearCost() { return *cast(int*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref int TransientCost() { return *cast(int*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref int ExtraCost() { return *cast(int*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref int Cost() { return *cast(int*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref NavigationPoint previousPath() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref NavigationPoint prevOrdered() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref NavigationPoint nextOrdered() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref NavigationPoint nextNavigationPoint() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref int bestPathWeight() { return *cast(int*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref int visitedWeight() { return *cast(int*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref NavigationPoint.NavigationOctreeObject NavOctreeObject() { return *cast(NavigationPoint.NavigationOctreeObject*)(cast(size_t)cast(void*)this + 480); }
	public @property final bool bShouldSaveForCheckpoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40000000) != 0; }
	public @property final bool bShouldSaveForCheckpoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40000000; } return val; }
	public @property final bool bHasCrossLevelPaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20000000) != 0; }
	public @property final bool bHasCrossLevelPaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20000000; } return val; }
	public @property final bool bPreferredVehiclePath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10000000) != 0; }
	public @property final bool bPreferredVehiclePath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10000000; } return val; }
	public @property final bool bBlockedForVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8000000) != 0; }
	public @property final bool bBlockedForVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8000000; } return val; }
	public @property final bool bBuildLongPaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4000000) != 0; }
	public @property final bool bBuildLongPaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4000000; } return val; }
	public @property final bool bCanWalkOnToReach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2000000) != 0; }
	public @property final bool bCanWalkOnToReach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2000000; } return val; }
	public @property final bool bMustTouchToReach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1000000) != 0; }
	public @property final bool bMustTouchToReach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1000000; } return val; }
	public @property final bool bMakeSourceOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x800000) != 0; }
	public @property final bool bMakeSourceOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x800000; } return val; }
	public @property final bool bVehicleDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x400000) != 0; }
	public @property final bool bVehicleDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x400000; } return val; }
	public @property final bool bAlreadyVisited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x200000) != 0; }
	public @property final bool bAlreadyVisited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x200000; } return val; }
	public @property final bool bMayCausePain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100000) != 0; }
	public @property final bool bMayCausePain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100000; } return val; }
	public @property final bool bFlyingPreferred() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80000) != 0; }
	public @property final bool bFlyingPreferred(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80000; } return val; }
	public @property final bool bBlockable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40000) != 0; }
	public @property final bool bBlockable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40000; } return val; }
	public @property final bool bMustBeReachable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20000) != 0; }
	public @property final bool bMustBeReachable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20000; } return val; }
	public @property final bool bSpecialForced() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10000) != 0; }
	public @property final bool bSpecialForced(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10000; } return val; }
	public @property final bool bSourceOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8000) != 0; }
	public @property final bool bSourceOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8000; } return val; }
	public @property final bool bDestinationOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4000) != 0; }
	public @property final bool bDestinationOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4000; } return val; }
	public @property final bool bPathsChanged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2000) != 0; }
	public @property final bool bPathsChanged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2000; } return val; }
	public @property final bool bNotBased() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1000) != 0; }
	public @property final bool bNotBased(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1000; } return val; }
	public @property final bool bNoAutoConnect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x800) != 0; }
	public @property final bool bNoAutoConnect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x800; } return val; }
	public @property final bool bSpecialMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x400) != 0; }
	public @property final bool bSpecialMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x400; } return val; }
	public @property final bool bAutoBuilt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x200) != 0; }
	public @property final bool bAutoBuilt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x200; } return val; }
	public @property final bool bForceNoStrafing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100) != 0; }
	public @property final bool bForceNoStrafing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100; } return val; }
	public @property final bool bAlwaysUseStrafing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80) != 0; }
	public @property final bool bAlwaysUseStrafing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80; } return val; }
	public @property final bool bNeverUseStrafing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40) != 0; }
	public @property final bool bNeverUseStrafing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40; } return val; }
	public @property final bool bOneWayPath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20) != 0; }
	public @property final bool bOneWayPath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20; } return val; }
	public @property final bool bBlocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10) != 0; }
	public @property final bool bBlocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10; } return val; }
	public @property final bool bCanReach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8) != 0; }
	public @property final bool bCanReach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8; } return val; }
	public @property final bool bHideEditorPaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4) != 0; }
	public @property final bool bHideEditorPaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4; } return val; }
	public @property final bool bTransientEndPoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
	public @property final bool bTransientEndPoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
	public @property final bool bEndPoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
	public @property final bool bEndPoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	final bool ProceedWithMove(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6203], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void GetBoundingCylinder(float* CollisionRadius, float* CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *CollisionRadius;
		*cast(float*)&params[4] = *CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9839], params.ptr, cast(void*)0);
		*CollisionRadius = *cast(float*)params.ptr;
		*CollisionHeight = *cast(float*)&params[4];
	}
	final ReachSpec GetReachSpecTo(NavigationPoint Nav, ScriptClass SpecClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		*cast(ScriptClass*)&params[4] = SpecClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9842], params.ptr, cast(void*)0);
		return *cast(ReachSpec*)&params[8];
	}
	final bool IsUsableAnchorFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9846], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CanTeleport(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9849], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final int SpecialCost(Pawn Seeker, ReachSpec Path)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Seeker;
		*cast(ReachSpec*)&params[4] = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9852], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool Accept(Actor Incoming, Actor Source)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Incoming;
		*cast(Actor*)&params[4] = Source;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9856], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9861], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9865], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final NavigationPoint GetNearestNavToActor(Actor ChkActor, ScriptClass RequiredClass, ScriptArray!(NavigationPoint) ExcludeList, float MinDist)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = ChkActor;
		*cast(ScriptClass*)&params[4] = RequiredClass;
		*cast(ScriptArray!(NavigationPoint)*)&params[8] = ExcludeList;
		*cast(float*)&params[20] = MinDist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9872], params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[24];
	}
	final NavigationPoint GetNearestNavToPoint(Actor ChkActor, Vector ChkPoint, ScriptClass RequiredClass, ScriptArray!(NavigationPoint) ExcludeList)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Actor*)params.ptr = ChkActor;
		*cast(Vector*)&params[4] = ChkPoint;
		*cast(ScriptClass*)&params[16] = RequiredClass;
		*cast(ScriptArray!(NavigationPoint)*)&params[20] = ExcludeList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9883], params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[32];
	}
	final bool GetAllNavInRadius(Actor ChkActor, Vector ChkPoint, float Radius, ScriptArray!(NavigationPoint)* out_NavList, bool bSkipBlocked, int inNetworkID, UObject.Cylinder MinSize)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Actor*)params.ptr = ChkActor;
		*cast(Vector*)&params[4] = ChkPoint;
		*cast(float*)&params[16] = Radius;
		*cast(ScriptArray!(NavigationPoint)*)&params[20] = *out_NavList;
		*cast(bool*)&params[32] = bSkipBlocked;
		*cast(int*)&params[36] = inNetworkID;
		*cast(UObject.Cylinder*)&params[40] = MinSize;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9894], params.ptr, cast(void*)0);
		*out_NavList = *cast(ScriptArray!(NavigationPoint)*)&params[20];
		return *cast(bool*)&params[48];
	}
	final bool IsOnDifferentNetwork(NavigationPoint Nav)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9904], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9907], params.ptr, cast(void*)0);
	}
	final void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9909], cast(void*)0, cast(void*)0);
	}
	final bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9910], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void CreateCheckpointRecord(NavigationPoint.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9912], params.ptr, cast(void*)0);
		*Record = *cast(NavigationPoint.CheckpointRecord*)params.ptr;
	}
	final void ApplyCheckpointRecord(NavigationPoint.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9914], params.ptr, cast(void*)0);
		*Record = *cast(NavigationPoint.CheckpointRecord*)params.ptr;
	}
	final ScriptString GetDebugAbbrev()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9916], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
