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
public extern(D):
	enum INFINITE_PATH_COST = 10000000;
	struct DebugNavCost
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			int Cost() { return *cast(int*)(cast(size_t)&this + 12); }
			ScriptString Desc() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct NavigationOctreeObject
	{
		private ubyte __buffer__[49];
	public extern(D):
		@property final auto ref
		{
			ubyte OwnerType() { return *cast(ubyte*)(cast(size_t)&this + 48); }
			UObject Owner() { return *cast(UObject*)(cast(size_t)&this + 44); }
			UObject.Pointer OctreeNode() { return *cast(UObject.Pointer*)(cast(size_t)&this + 40); }
			Vector BoxCenter() { return *cast(Vector*)(cast(size_t)&this + 28); }
			UObject.Box BoundingBox() { return *cast(UObject.Box*)(cast(size_t)&this + 0); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		@property final
		{
			bool bBlocked() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bBlocked(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bDisabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ReachSpec) PathList() { return *cast(ScriptArray!(ReachSpec)*)(cast(size_t)cast(void*)this + 532); }
			ScriptArray!(Actor.ActorReference) EditorProscribedPaths() { return *cast(ScriptArray!(Actor.ActorReference)*)(cast(size_t)cast(void*)this + 544); }
			ScriptArray!(Actor.ActorReference) EditorForcedPaths() { return *cast(ScriptArray!(Actor.ActorReference)*)(cast(size_t)cast(void*)this + 556); }
			ScriptArray!(Actor.ActorReference) Volumes() { return *cast(ScriptArray!(Actor.ActorReference)*)(cast(size_t)cast(void*)this + 568); }
			ScriptArray!(NavigationPoint.DebugNavCost) CostArray() { return *cast(ScriptArray!(NavigationPoint.DebugNavCost)*)(cast(size_t)cast(void*)this + 620); }
			float LastAnchoredPawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
			Pawn AnchoredPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 684); }
			int NetworkID() { return *cast(int*)(cast(size_t)cast(void*)this + 680); }
			UObject.Guid NavGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 656); }
			UObject.Cylinder MaxPathSize() { return *cast(UObject.Cylinder*)(cast(size_t)cast(void*)this + 648); }
			float LastDetourWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 640); }
			float InventoryDist() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
			DroppedPickup InventoryCache() { return *cast(DroppedPickup*)(cast(size_t)cast(void*)this + 632); }
			int FearCost() { return *cast(int*)(cast(size_t)cast(void*)this + 616); }
			int TransientCost() { return *cast(int*)(cast(size_t)cast(void*)this + 612); }
			int ExtraCost() { return *cast(int*)(cast(size_t)cast(void*)this + 608); }
			int Cost() { return *cast(int*)(cast(size_t)cast(void*)this + 604); }
			NavigationPoint previousPath() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 600); }
			NavigationPoint prevOrdered() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 596); }
			NavigationPoint nextOrdered() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 592); }
			NavigationPoint nextNavigationPoint() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 588); }
			int bestPathWeight() { return *cast(int*)(cast(size_t)cast(void*)this + 584); }
			int visitedWeight() { return *cast(int*)(cast(size_t)cast(void*)this + 580); }
			NavigationPoint.NavigationOctreeObject NavOctreeObject() { return *cast(NavigationPoint.NavigationOctreeObject*)(cast(size_t)cast(void*)this + 480); }
		}
		bool bShouldSaveForCheckpoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40000000) != 0; }
		bool bShouldSaveForCheckpoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40000000; } return val; }
		bool bHasCrossLevelPaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20000000) != 0; }
		bool bHasCrossLevelPaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20000000; } return val; }
		bool bPreferredVehiclePath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10000000) != 0; }
		bool bPreferredVehiclePath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10000000; } return val; }
		bool bBlockedForVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8000000) != 0; }
		bool bBlockedForVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8000000; } return val; }
		bool bBuildLongPaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4000000) != 0; }
		bool bBuildLongPaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4000000; } return val; }
		bool bCanWalkOnToReach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2000000) != 0; }
		bool bCanWalkOnToReach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2000000; } return val; }
		bool bMustTouchToReach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1000000) != 0; }
		bool bMustTouchToReach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1000000; } return val; }
		bool bMakeSourceOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x800000) != 0; }
		bool bMakeSourceOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x800000; } return val; }
		bool bVehicleDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x400000) != 0; }
		bool bVehicleDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x400000; } return val; }
		bool bAlreadyVisited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x200000) != 0; }
		bool bAlreadyVisited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x200000; } return val; }
		bool bMayCausePain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100000) != 0; }
		bool bMayCausePain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100000; } return val; }
		bool bFlyingPreferred() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80000) != 0; }
		bool bFlyingPreferred(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80000; } return val; }
		bool bBlockable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40000) != 0; }
		bool bBlockable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40000; } return val; }
		bool bMustBeReachable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20000) != 0; }
		bool bMustBeReachable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20000; } return val; }
		bool bSpecialForced() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10000) != 0; }
		bool bSpecialForced(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10000; } return val; }
		bool bSourceOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8000) != 0; }
		bool bSourceOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8000; } return val; }
		bool bDestinationOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4000) != 0; }
		bool bDestinationOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4000; } return val; }
		bool bPathsChanged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2000) != 0; }
		bool bPathsChanged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2000; } return val; }
		bool bNotBased() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1000) != 0; }
		bool bNotBased(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1000; } return val; }
		bool bNoAutoConnect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x800) != 0; }
		bool bNoAutoConnect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x800; } return val; }
		bool bSpecialMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x400) != 0; }
		bool bSpecialMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x400; } return val; }
		bool bAutoBuilt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x200) != 0; }
		bool bAutoBuilt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x200; } return val; }
		bool bForceNoStrafing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100) != 0; }
		bool bForceNoStrafing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100; } return val; }
		bool bAlwaysUseStrafing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80) != 0; }
		bool bAlwaysUseStrafing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80; } return val; }
		bool bNeverUseStrafing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40) != 0; }
		bool bNeverUseStrafing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40; } return val; }
		bool bOneWayPath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20) != 0; }
		bool bOneWayPath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20; } return val; }
		bool bBlocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10) != 0; }
		bool bBlocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10; } return val; }
		bool bCanReach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8) != 0; }
		bool bCanReach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8; } return val; }
		bool bHideEditorPaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4) != 0; }
		bool bHideEditorPaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4; } return val; }
		bool bTransientEndPoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
		bool bTransientEndPoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
		bool bEndPoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
		bool bEndPoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	}
final:
	bool ProceedWithMove(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6203], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetBoundingCylinder(float* CollisionRadius, float* CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *CollisionRadius;
		*cast(float*)&params[4] = *CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9839], params.ptr, cast(void*)0);
		*CollisionRadius = *cast(float*)params.ptr;
		*CollisionHeight = *cast(float*)&params[4];
	}
	ReachSpec GetReachSpecTo(NavigationPoint Nav, ScriptClass SpecClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		*cast(ScriptClass*)&params[4] = SpecClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9842], params.ptr, cast(void*)0);
		return *cast(ReachSpec*)&params[8];
	}
	bool IsUsableAnchorFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9846], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CanTeleport(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9849], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int SpecialCost(Pawn Seeker, ReachSpec Path)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Seeker;
		*cast(ReachSpec*)&params[4] = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9852], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool Accept(Actor Incoming, Actor Source)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Incoming;
		*cast(Actor*)&params[4] = Source;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9856], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9861], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9865], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	NavigationPoint GetNearestNavToActor(Actor ChkActor, ScriptClass RequiredClass, ScriptArray!(NavigationPoint) ExcludeList, float MinDist)
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
	NavigationPoint GetNearestNavToPoint(Actor ChkActor, Vector ChkPoint, ScriptClass RequiredClass, ScriptArray!(NavigationPoint) ExcludeList)
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
	bool GetAllNavInRadius(Actor ChkActor, Vector ChkPoint, float Radius, ScriptArray!(NavigationPoint)* out_NavList, bool bSkipBlocked, int inNetworkID, UObject.Cylinder MinSize)
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
	bool IsOnDifferentNetwork(NavigationPoint Nav)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9904], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9907], params.ptr, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9909], cast(void*)0, cast(void*)0);
	}
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9910], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(NavigationPoint.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9912], params.ptr, cast(void*)0);
		*Record = *cast(NavigationPoint.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(NavigationPoint.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9914], params.ptr, cast(void*)0);
		*Record = *cast(NavigationPoint.CheckpointRecord*)params.ptr;
	}
	ScriptString GetDebugAbbrev()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9916], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
