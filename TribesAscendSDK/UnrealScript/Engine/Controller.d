module UnrealScript.Engine.Controller;

import ScriptClasses;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.ReachSpec;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpActor;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SeqAct_ToggleHidden;
import UnrealScript.Engine.InterpGroup;
import UnrealScript.Engine.SeqAct_Possess;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.SeqAct_SetVelocity;
import UnrealScript.Engine.SeqAct_SetPhysics;
import UnrealScript.Engine.SeqAct_Teleport;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.SeqAct_ModifyHealth;
import UnrealScript.Engine.LiftCenter;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.SeqAct_ToggleGodMode;
import UnrealScript.Engine.SeqAct_Interp;
import UnrealScript.Engine.InterpGroupInst;
import UnrealScript.Engine.Weapon;

extern(C++) interface Controller : Actor
{
public extern(D):
	enum LATENT_MOVETOWARD = 503;
	struct VisiblePortalInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			Actor Destination() { return *cast(Actor*)(cast(size_t)&this + 4); }
			Actor Source() { return *cast(Actor*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			// WARNING: Property 'Pawn' has the same name as a defined type!
			// WARNING: Property 'PlayerReplicationInfo' has the same name as a defined type!
			ScriptArray!(NavigationPoint) RouteCache() { return *cast(ScriptArray!(NavigationPoint)*)(cast(size_t)cast(void*)this + 716); }
			ScriptArray!(Controller.VisiblePortalInfo) VisiblePortals() { return *cast(ScriptArray!(Controller.VisiblePortalInfo)*)(cast(size_t)cast(void*)this + 860); }
			Vector NavMeshPath_SearchExtent_Modifier() { return *cast(Vector*)(cast(size_t)cast(void*)this + 888); }
			Rotator OldBasedRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 876); }
			float LaneOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 872); }
			Pawn Enemy() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 856); }
			float MaxMoveTowardPawnTargetTime() { return *cast(float*)(cast(size_t)cast(void*)this + 852); }
			int HighJumpNodeCostModifier() { return *cast(int*)(cast(size_t)cast(void*)this + 848); }
			float InUseNodeCostMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 844); }
			float SightCounterInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 840); }
			float SightCounter() { return *cast(float*)(cast(size_t)cast(void*)this + 836); }
			Vector FailedReachLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 824); }
			float FailedReachTime() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
			Actor LastFailedReach() { return *cast(Actor*)(cast(size_t)cast(void*)this + 816); }
			Pawn ShotTarget() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 812); }
			Vector ViewZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 800); }
			Vector ViewY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
			Vector ViewX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 776); }
			float GroundPitchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
			int MoveFailureCount() { return *cast(int*)(cast(size_t)cast(void*)this + 768); }
			Actor FailedMoveTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 764); }
			InterpActor PendingMover() { return *cast(InterpActor*)(cast(size_t)cast(void*)this + 760); }
			float LastRouteFind() { return *cast(float*)(cast(size_t)cast(void*)this + 756); }
			float RouteDist() { return *cast(float*)(cast(size_t)cast(void*)this + 752); }
			Actor RouteGoal() { return *cast(Actor*)(cast(size_t)cast(void*)this + 748); }
			Vector CurrentPathDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 736); }
			ReachSpec NextRoutePath() { return *cast(ReachSpec*)(cast(size_t)cast(void*)this + 732); }
			ReachSpec CurrentPath() { return *cast(ReachSpec*)(cast(size_t)cast(void*)this + 728); }
			NavigationPoint StartSpot() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 712); }
			Actor.BasedPosition AdjustPosition() { return *cast(Actor.BasedPosition*)(cast(size_t)cast(void*)this + 660); }
			Actor GoalList() { return *cast(Actor*)(cast(size_t)cast(void*)this + 644); }
			Actor Focus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 640); }
			Actor.BasedPosition FocalPosition() { return *cast(Actor.BasedPosition*)(cast(size_t)cast(void*)this + 588); }
			Actor.BasedPosition DestinationPosition() { return *cast(Actor.BasedPosition*)(cast(size_t)cast(void*)this + 536); }
			Actor MoveTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 532); }
			float MoveTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			Vector OverrideSearchStart() { return *cast(Vector*)(cast(size_t)cast(void*)this + 516); }
			// WARNING: Property 'NavigationHandle' has the same name as a defined type!
			ScriptClass NavigationHandleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 508); }
			float MinHitWall() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			ubyte bAltFire() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 501); }
			ubyte bFire() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 500); }
			Controller NextController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 492); }
			int PlayerNum() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
			UObject.Pointer VfTable_IInterface_NavigationHandle() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bGodMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x2) != 0; }
		bool bGodMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x2; } return val; }
		bool bUsingPathLanes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x20000) != 0; }
		bool bUsingPathLanes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x20000; } return val; }
		bool bSeeFriendly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x10000) != 0; }
		bool bSeeFriendly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x10000; } return val; }
		bool bPreciseDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x8000) != 0; }
		bool bPreciseDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x8000; } return val; }
		bool bNotifyFallingHitWall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x4000) != 0; }
		bool bNotifyFallingHitWall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x4000; } return val; }
		bool bSkipExtraLOSChecks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x2000) != 0; }
		bool bSkipExtraLOSChecks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x2000; } return val; }
		bool bLOSflag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1000) != 0; }
		bool bLOSflag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1000; } return val; }
		bool bForceStrafe() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x800) != 0; }
		bool bForceStrafe(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x800; } return val; }
		bool bPreparingMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x400) != 0; }
		bool bPreparingMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x400; } return val; }
		bool bAdjusting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x200) != 0; }
		bool bAdjusting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x200; } return val; }
		bool bCanDoSpecial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x100) != 0; }
		bool bCanDoSpecial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x100; } return val; }
		bool bAdvancedTactics() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x80) != 0; }
		bool bAdvancedTactics(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x80; } return val; }
		bool bOverrideSearchStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x40) != 0; }
		bool bOverrideSearchStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x40; } return val; }
		bool bNotifyApex() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x20) != 0; }
		bool bNotifyApex(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x20; } return val; }
		bool bNotifyPostLanded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x10) != 0; }
		bool bNotifyPostLanded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x10; } return val; }
		bool bSlowerZAcquire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x8) != 0; }
		bool bSlowerZAcquire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x8; } return val; }
		bool bSoaking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x4) != 0; }
		bool bSoaking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x4; } return val; }
		bool bIsPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
		bool bIsPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
	}
final:
	bool IsLocalPlayerController()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5932], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RouteCache_Empty()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5934], cast(void*)0, cast(void*)0);
	}
	void RouteCache_AddItem(NavigationPoint Nav)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5935], params.ptr, cast(void*)0);
	}
	void RouteCache_InsertItem(NavigationPoint Nav, int Idx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		*cast(int*)&params[4] = Idx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5937], params.ptr, cast(void*)0);
	}
	void RouteCache_RemoveItem(NavigationPoint Nav)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5940], params.ptr, cast(void*)0);
	}
	void RouteCache_RemoveIndex(int InIndex, int Count)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InIndex;
		*cast(int*)&params[4] = Count;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5942], params.ptr, cast(void*)0);
	}
	void SetFocalPoint(Vector FP, bool bOffsetFromBase)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = FP;
		*cast(bool*)&params[12] = bOffsetFromBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5945], params.ptr, cast(void*)0);
	}
	Vector GetFocalPoint()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5948], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void SetDestinationPosition(Vector Dest, bool bOffsetFromBase)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Dest;
		*cast(bool*)&params[12] = bOffsetFromBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5950], params.ptr, cast(void*)0);
	}
	Vector GetDestinationPosition()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5953], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void SetAdjustLocation(Vector NewLoc, bool bAdjust, bool bOffsetFromBase)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLoc;
		*cast(bool*)&params[12] = bAdjust;
		*cast(bool*)&params[16] = bOffsetFromBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5955], params.ptr, cast(void*)0);
	}
	Vector GetAdjustLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5959], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void NotifyPathChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5961], cast(void*)0, cast(void*)0);
	}
	void BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5962], params.ptr, cast(void*)0);
	}
	void SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SlotName;
		*cast(int*)&params[8] = ChannelIndex;
		*cast(ScriptName*)&params[12] = InAnimSeqName;
		*cast(float*)&params[20] = InPosition;
		*cast(bool*)&params[24] = bFireNotifies;
		*cast(bool*)&params[28] = bLooping;
		*cast(bool*)&params[32] = bEnableRootMotion;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5964], params.ptr, cast(void*)0);
	}
	void FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5972], params.ptr, cast(void*)0);
	}
	bool PlayActorFaceFXAnim(FaceFXAnimSet pAnimSet, ScriptString GroupName, ScriptString SeqName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = pAnimSet;
		*cast(ScriptString*)&params[4] = GroupName;
		*cast(ScriptString*)&params[16] = SeqName;
		*cast(SoundCue*)&params[28] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5974], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	void StopActorFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5982], cast(void*)0, cast(void*)0);
	}
	void SetMorphWeight(ScriptName MorphNodeName, float MorphWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphNodeName;
		*cast(float*)&params[8] = MorphWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5983], params.ptr, cast(void*)0);
	}
	void SetSkelControlScale(ScriptName SkelControlName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SkelControlName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5986], params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5989], cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5990], cast(void*)0, cast(void*)0);
	}
	void ClientSetLocation(Vector NewLocation, Rotator NewRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		*cast(Rotator*)&params[12] = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5991], params.ptr, cast(void*)0);
	}
	void ClientSetRotation(Rotator NewRotation, bool bResetCamera)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(bool*)&params[12] = bResetCamera;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5995], params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5998], params.ptr, cast(void*)0);
	}
	void OnPossess(SeqAct_Possess inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Possess*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6000], params.ptr, cast(void*)0);
	}
	void Possess(Pawn inPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = inPawn;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6011], params.ptr, cast(void*)0);
	}
	void UnPossess()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6015], cast(void*)0, cast(void*)0);
	}
	void PawnDied(Pawn inPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = inPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6016], params.ptr, cast(void*)0);
	}
	bool GamePlayEndedState()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6020], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void NotifyPostLanded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6022], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6023], cast(void*)0, cast(void*)0);
	}
	void CleanupPRI()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6026], cast(void*)0, cast(void*)0);
	}
	void Restart(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6027], params.ptr, cast(void*)0);
	}
	bool BeyondFogDistance(Vector ViewPoint, Vector OtherPoint)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = ViewPoint;
		*cast(Vector*)&params[12] = OtherPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6030], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void EnemyJustTeleported()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6034], cast(void*)0, cast(void*)0);
	}
	void NotifyTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass pDamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6035], params.ptr, cast(void*)0);
	}
	void InitPlayerReplicationInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6041], cast(void*)0, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6044], params.ptr, cast(void*)0);
		return params[0];
	}
	void ServerRestartPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6046], cast(void*)0, cast(void*)0);
	}
	void ServerGivePawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6047], cast(void*)0, cast(void*)0);
	}
	void SetCharacter(ScriptString inCharacter)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = inCharacter;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6048], params.ptr, cast(void*)0);
	}
	void GameHasEnded(Actor EndGameFocus, bool bIsWinner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = EndGameFocus;
		*cast(bool*)&params[4] = bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6050], params.ptr, cast(void*)0);
	}
	void NotifyKilled(Controller Killer, Controller Killed, Pawn KilledPawn, ScriptClass damageTyp)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = damageTyp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6053], params.ptr, cast(void*)0);
	}
	void NotifyProjLanded(Projectile Proj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = Proj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6058], params.ptr, cast(void*)0);
	}
	void WarnProjExplode(Projectile Proj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = Proj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6060], params.ptr, cast(void*)0);
	}
	float RatePickup(Actor PickupHolder, ScriptClass inPickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(ScriptClass*)&params[4] = inPickup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6062], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	bool FireWeaponAt(Actor inActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = inActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6066], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StopFiring()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6069], cast(void*)0, cast(void*)0);
	}
	void RoundHasEnded(Actor EndRoundFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = EndRoundFocus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6072], params.ptr, cast(void*)0);
	}
	void HandlePickup(Inventory Inv)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = Inv;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6074], params.ptr, cast(void*)0);
	}
	Rotator GetAdjustedAimFor(Weapon W, Vector StartFireLoc)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		*cast(Vector*)&params[4] = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6076], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	void InstantWarnTarget(Actor InTarget, Weapon FiredWeapon, Vector FireDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = InTarget;
		*cast(Weapon*)&params[4] = FiredWeapon;
		*cast(Vector*)&params[8] = FireDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6082], params.ptr, cast(void*)0);
	}
	void ReceiveWarning(Pawn shooter, float projSpeed, Vector FireDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = shooter;
		*cast(float*)&params[4] = projSpeed;
		*cast(Vector*)&params[8] = FireDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6087], params.ptr, cast(void*)0);
	}
	void ReceiveProjectileWarning(Projectile Proj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = Proj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6091], params.ptr, cast(void*)0);
	}
	void SwitchToBestWeapon(bool bForceNewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceNewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6093], params.ptr, cast(void*)0);
	}
	void ClientSwitchToBestWeapon(bool bForceNewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceNewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6095], params.ptr, cast(void*)0);
	}
	void NotifyChangedWeapon(Weapon PrevWeapon, Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = PrevWeapon;
		*cast(Weapon*)&params[4] = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6097], params.ptr, cast(void*)0);
	}
	bool LineOfSightTo(Actor Other, Vector chkLocation, bool bTryAlternateTargetLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = chkLocation;
		*cast(bool*)&params[16] = bTryAlternateTargetLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6100], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool CanSee(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6105], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CanSeeByPoints(Vector ViewLocation, Vector TestLocation, Rotator ViewRotation)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Vector*)params.ptr = ViewLocation;
		*cast(Vector*)&params[12] = TestLocation;
		*cast(Rotator*)&params[24] = ViewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6108], params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	Pawn PickTarget(ScriptClass TargetClass, float* bestAim, float* bestDist, Vector FireDir, Vector projStart, float MaxRange)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = TargetClass;
		*cast(float*)&params[4] = *bestAim;
		*cast(float*)&params[8] = *bestDist;
		*cast(Vector*)&params[12] = FireDir;
		*cast(Vector*)&params[24] = projStart;
		*cast(float*)&params[36] = MaxRange;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6113], params.ptr, cast(void*)0);
		*bestAim = *cast(float*)&params[4];
		*bestDist = *cast(float*)&params[8];
		return *cast(Pawn*)&params[40];
	}
	void HearNoise(float Loudness, Actor NoiseMaker, ScriptName NoiseType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Loudness;
		*cast(Actor*)&params[4] = NoiseMaker;
		*cast(ScriptName*)&params[8] = NoiseType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6121], params.ptr, cast(void*)0);
	}
	void SeePlayer(Pawn Seen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Seen;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6125], params.ptr, cast(void*)0);
	}
	void SeeMonster(Pawn Seen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Seen;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6127], params.ptr, cast(void*)0);
	}
	void EnemyNotVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6129], cast(void*)0, cast(void*)0);
	}
	void MoveTo(Vector NewDestination, Actor ViewFocus, float DestinationOffset, bool bShouldWalk)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = NewDestination;
		*cast(Actor*)&params[12] = ViewFocus;
		*cast(float*)&params[16] = DestinationOffset;
		*cast(bool*)&params[20] = bShouldWalk;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6130], params.ptr, cast(void*)0);
	}
	void MoveToDirectNonPathPos(Vector NewDestination, Actor ViewFocus, float DestinationOffset, bool bShouldWalk)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = NewDestination;
		*cast(Actor*)&params[12] = ViewFocus;
		*cast(float*)&params[16] = DestinationOffset;
		*cast(bool*)&params[20] = bShouldWalk;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6136], params.ptr, cast(void*)0);
	}
	void MoveToward(Actor NewTarget, Actor ViewFocus, float DestinationOffset, bool bUseStrafing, bool bShouldWalk)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewTarget;
		*cast(Actor*)&params[4] = ViewFocus;
		*cast(float*)&params[8] = DestinationOffset;
		*cast(bool*)&params[12] = bUseStrafing;
		*cast(bool*)&params[16] = bShouldWalk;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6141], params.ptr, cast(void*)0);
	}
	void SetupSpecialPathAbilities()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6147], cast(void*)0, cast(void*)0);
	}
	void FinishRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6148], cast(void*)0, cast(void*)0);
	}
	Actor FindPathTo(Vector aPoint, int MaxPathLength, bool bReturnPartial)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = aPoint;
		*cast(int*)&params[12] = MaxPathLength;
		*cast(bool*)&params[16] = bReturnPartial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6149], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[20];
	}
	Actor FindPathToward(Actor anActor, bool bWeightDetours, int MaxPathLength, bool bReturnPartial)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = anActor;
		*cast(bool*)&params[4] = bWeightDetours;
		*cast(int*)&params[8] = MaxPathLength;
		*cast(bool*)&params[12] = bReturnPartial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6154], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[16];
	}
	Actor FindPathTowardNearest(ScriptClass GoalClass, bool bWeightDetours, int MaxPathLength, bool bReturnPartial)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GoalClass;
		*cast(bool*)&params[4] = bWeightDetours;
		*cast(int*)&params[8] = MaxPathLength;
		*cast(bool*)&params[12] = bReturnPartial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6160], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[16];
	}
	NavigationPoint FindRandomDest()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6166], params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)params.ptr;
	}
	Actor FindPathToIntercept(Pawn P, Actor InRouteGoal, bool bWeightDetours, int MaxPathLength, bool bReturnPartial)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Actor*)&params[4] = InRouteGoal;
		*cast(bool*)&params[8] = bWeightDetours;
		*cast(int*)&params[12] = MaxPathLength;
		*cast(bool*)&params[16] = bReturnPartial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6168], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[20];
	}
	bool PointReachable(Vector aPoint)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = aPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6175], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ActorReachable(Actor anActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = anActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6178], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void MoveUnreachable(Vector AttemptedDest, Actor AttemptedTarget)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = AttemptedDest;
		*cast(Actor*)&params[12] = AttemptedTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6181], params.ptr, cast(void*)0);
	}
	bool PickWallAdjust(Vector HitNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6184], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void WaitForLanding(float waitDuration)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = waitDuration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6187], params.ptr, cast(void*)0);
	}
	void LongFall()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6189], cast(void*)0, cast(void*)0);
	}
	void EndClimbLadder()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6190], cast(void*)0, cast(void*)0);
	}
	void MayFall(bool bFloor, Vector FloorNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bFloor;
		*cast(Vector*)&params[4] = FloorNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6191], params.ptr, cast(void*)0);
	}
	bool AllowDetourTo(NavigationPoint N)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6194], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void WaitForMover(InterpActor M)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpActor*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6197], params.ptr, cast(void*)0);
	}
	bool MoverFinished()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6200], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void UnderLift(LiftCenter Lift)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LiftCenter*)params.ptr = Lift;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6205], params.ptr, cast(void*)0);
	}
	bool HandlePathObstruction(Actor BlockedBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = BlockedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6207], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetPlayerViewPoint(Vector* out_Location, Rotator* out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Location;
		*cast(Rotator*)&params[12] = *out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6210], params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	void GetActorEyesViewPoint(Vector* out_Location, Rotator* out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Location;
		*cast(Rotator*)&params[12] = *out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6213], params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	bool IsAimingAt(Actor ATarget, float Epsilon)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = ATarget;
		*cast(float*)&params[4] = Epsilon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6216], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool LandingShake()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6222], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void NotifyPhysicsVolumeChange(PhysicsVolume NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6224], params.ptr, cast(void*)0);
	}
	bool NotifyHeadVolumeChange(PhysicsVolume NewVolume)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6226], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NotifyLanded(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6229], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool NotifyHitWall(Vector HitNormal, Actor Wall)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6233], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void NotifyFallingHitWall(Vector HitNormal, Actor Wall)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6237], params.ptr, cast(void*)0);
	}
	bool NotifyBump(Actor Other, Vector HitNormal)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6240], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void NotifyJumpApex()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6244], cast(void*)0, cast(void*)0);
	}
	void NotifyMissedJump()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6245], cast(void*)0, cast(void*)0);
	}
	void ReachedPreciseDestination()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6246], cast(void*)0, cast(void*)0);
	}
	bool InLatentExecution(int LatentActionNumber)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LatentActionNumber;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6247], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StopLatentExecution()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6250], cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6251], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6258], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool IsDead()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6260], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnTeleport(SeqAct_Teleport Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Teleport*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6315], params.ptr, cast(void*)0);
	}
	void OnToggleGodMode(SeqAct_ToggleGodMode inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleGodMode*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6317], params.ptr, cast(void*)0);
	}
	void OnSetPhysics(SeqAct_SetPhysics Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetPhysics*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6320], params.ptr, cast(void*)0);
	}
	void OnSetVelocity(SeqAct_SetVelocity Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetVelocity*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6322], params.ptr, cast(void*)0);
	}
	void NotifyCoverDisabled(CoverLink Link, int SlotIdx, bool bAdjacentIdx)
	{
		ubyte params[12];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(int*)&params[4] = SlotIdx;
		*cast(bool*)&params[8] = bAdjacentIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6324], params.ptr, cast(void*)0);
	}
	void NotifyCoverAdjusted()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6328], cast(void*)0, cast(void*)0);
	}
	bool NotifyCoverClaimViolation(Controller NewClaim, CoverLink Link, int SlotIdx)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = NewClaim;
		*cast(CoverLink*)&params[4] = Link;
		*cast(int*)&params[8] = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6329], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void OnModifyHealth(SeqAct_ModifyHealth Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ModifyHealth*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6334], params.ptr, cast(void*)0);
	}
	void NotifyAddInventory(Inventory pNewItem)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = pNewItem;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6336], params.ptr, cast(void*)0);
	}
	void OnToggleHidden(SeqAct_ToggleHidden Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleHidden*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6338], params.ptr, cast(void*)0);
	}
	bool IsSpectating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6340], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsInCombat(bool bForceCheck)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6342], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void CurrentLevelUnloaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6345], cast(void*)0, cast(void*)0);
	}
	void SendMessage(PlayerReplicationInfo Recipient, ScriptName MessageType, float Wait, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Recipient;
		*cast(ScriptName*)&params[4] = MessageType;
		*cast(float*)&params[12] = Wait;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6346], params.ptr, cast(void*)0);
	}
	void ReadyForLift()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6351], cast(void*)0, cast(void*)0);
	}
	void InitNavigationHandle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6352], cast(void*)0, cast(void*)0);
	}
	void InterpolationStarted(SeqAct_Interp InterpAction, InterpGroupInst GroupInst)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		*cast(InterpGroupInst*)&params[4] = GroupInst;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6353], params.ptr, cast(void*)0);
	}
	void InterpolationFinished(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6356], params.ptr, cast(void*)0);
	}
	bool GeneratePathToActor(Actor Goal, float WithinDistance, bool bAllowPartialPath)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = Goal;
		*cast(float*)&params[4] = WithinDistance;
		*cast(bool*)&params[8] = bAllowPartialPath;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6358], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool GeneratePathToLocation(Vector Goal, float WithinDistance, bool bAllowPartialPath)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Goal;
		*cast(float*)&params[12] = WithinDistance;
		*cast(bool*)&params[16] = bAllowPartialPath;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6363], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
