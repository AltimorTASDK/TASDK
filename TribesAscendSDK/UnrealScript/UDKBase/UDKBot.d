module UnrealScript.UDKBase.UDKBot;

import ScriptClasses;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.PickupFactory;
import UnrealScript.UDKBase.UDKSquadAI;

extern(C++) interface UDKBot : AIController
{
	struct EnemyPosition
	{
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __Time[4];
		public @property final auto ref Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __Velocity[12];
		public @property final auto ref Vector Position() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Position[12];
	}
	public @property final auto ref ScriptArray!(UDKBot.EnemyPosition) SavedPositions() { return *cast(ScriptArray!(UDKBot.EnemyPosition)*)(cast(size_t)cast(void*)this + 960); }
	public @property final auto ref float MultiJumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1120); }
	public @property final auto ref float DodgeToGoalPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1116); }
	public @property final auto ref Actor FearSpots() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1108); }
	public @property final auto ref float DodgeLandZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1104); }
	public @property final auto ref float CurrentAimError() { return *cast(float*)(cast(size_t)cast(void*)this + 1100); }
	public @property final auto ref float LastErrorUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1096); }
	public @property final auto ref float ErrorUpdateFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 1092); }
	public @property final auto ref float LastAimUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1088); }
	public @property final auto ref float AimUpdateFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 1084); }
	public @property final auto ref float LastIterativeCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 1080); }
	public @property final auto ref Pawn BlockedAimTarget() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1076); }
	public @property final auto ref NavigationPoint SquadRouteGoal() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1072); }
	public @property final auto ref Vector TrackedVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1060); }
	public @property final auto ref float BaseTrackingReactionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1056); }
	public @property final auto ref float TrackingReactionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1052); }
	public @property final auto ref float LastSeenTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
	public @property final auto ref Vector LastSeeingPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1036); }
	public @property final auto ref Vector LastSeenPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1024); }
	public @property final auto ref float MonitorMaxDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 1020); }
	public @property final auto ref Pawn MonitoredPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1016); }
	public @property final auto ref Vector MonitorStartLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1004); }
	public @property final auto ref Projectile WarningProjectile() { return *cast(Projectile*)(cast(size_t)cast(void*)this + 1000); }
	public @property final auto ref float WarningDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 996); }
	public @property final auto ref float RespawnPredictionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 992); }
	public @property final auto ref float HearingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 988); }
	public @property final auto ref int AcquisitionYawRate() { return *cast(int*)(cast(size_t)cast(void*)this + 984); }
	public @property final auto ref Vector ImpactVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 972); }
	public @property final auto ref Pawn CurrentlyTrackedEnemy() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 956); }
	public @property final auto ref Vehicle LastBlockingVehicle() { return *cast(Vehicle*)(cast(size_t)cast(void*)this + 952); }
	public @property final auto ref Pawn VisibleEnemy() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 948); }
	public @property final auto ref float EnemyVisibilityTime() { return *cast(float*)(cast(size_t)cast(void*)this + 944); }
	public @property final auto ref ubyte ScriptedFireMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 940); }
	public @property final bool bUsePreviousSquadRoute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x4000) != 0; }
	public @property final bool bUsePreviousSquadRoute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x4000; } return val; }
	public @property final bool bUsingSquadRoute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x2000) != 0; }
	public @property final bool bUsingSquadRoute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x2000; } return val; }
	public @property final bool bAllowRouteReuse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x1000) != 0; }
	public @property final bool bAllowRouteReuse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x1000; } return val; }
	public @property final bool bNeedDelayedLeaveVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x800) != 0; }
	public @property final bool bNeedDelayedLeaveVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x800; } return val; }
	public @property final bool bEnemyAcquired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x400) != 0; }
	public @property final bool bEnemyAcquired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x400; } return val; }
	public @property final bool bInDodgeMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x200) != 0; }
	public @property final bool bInDodgeMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x200; } return val; }
	public @property final bool bPlannedJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x100) != 0; }
	public @property final bool bPlannedJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x100; } return val; }
	public @property final bool bJumpOverWall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x80) != 0; }
	public @property final bool bJumpOverWall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x80; } return val; }
	public @property final bool bLeadTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x40) != 0; }
	public @property final bool bLeadTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x40; } return val; }
	public @property final bool bEnemyIsVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x20) != 0; }
	public @property final bool bEnemyIsVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x20; } return val; }
	public @property final bool bEnemyInfoValid() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x10) != 0; }
	public @property final bool bEnemyInfoValid(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x10; } return val; }
	public @property final bool bTargetAlternateLoc() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x8) != 0; }
	public @property final bool bTargetAlternateLoc(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x8; } return val; }
	public @property final bool bForceRefreshRoute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x4) != 0; }
	public @property final bool bForceRefreshRoute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x4; } return val; }
	public @property final bool bScriptSpecialJumpCost() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x2) != 0; }
	public @property final bool bScriptSpecialJumpCost(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x2; } return val; }
	public @property final bool bExecutingWhatToDoNext() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x1) != 0; }
	public @property final bool bExecutingWhatToDoNext(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x1; } return val; }
	public @property final auto ref Actor TemporaryFocus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 932); }
	public @property final auto ref UDKSquadAI Squad() { return *cast(UDKSquadAI*)(cast(size_t)cast(void*)this + 924); }
	final Actor FaceActor(float StrafingModifier)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = StrafingModifier;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34696], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final void ExecuteWhatToDoNext()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34699], cast(void*)0, cast(void*)0);
	}
	final void ReceiveRunOverWarning(UDKVehicle V, float projSpeed, Vector VehicleDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UDKVehicle*)params.ptr = V;
		*cast(float*)&params[4] = projSpeed;
		*cast(Vector*)&params[8] = VehicleDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34700], params.ptr, cast(void*)0);
	}
	final void WaitToSeeEnemy()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34704], cast(void*)0, cast(void*)0);
	}
	final void LatentWhatToDoNext()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34705], cast(void*)0, cast(void*)0);
	}
	final bool CanMakePathTo(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34706], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Actor FindBestInventoryPath(float* MinWeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *MinWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34709], params.ptr, cast(void*)0);
		*MinWeight = *cast(float*)params.ptr;
		return *cast(Actor*)&params[4];
	}
	final Actor FindPathToSquadRoute(bool bWeightDetours)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bWeightDetours;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34712], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final void BuildSquadRoute()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34715], cast(void*)0, cast(void*)0);
	}
	final Actor FindBestSuperPickup(float MaxDist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = MaxDist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34716], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final void WhatToDoNext()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34719], cast(void*)0, cast(void*)0);
	}
	final void MonitoredPawnAlert()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34720], cast(void*)0, cast(void*)0);
	}
	final void TimeDJReset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34721], cast(void*)0, cast(void*)0);
	}
	final void MayDodgeToMoveTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34722], cast(void*)0, cast(void*)0);
	}
	final bool SpecialJumpCost(float RequiredJumpZ, float* Cost)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = RequiredJumpZ;
		*cast(float*)&params[4] = *Cost;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34723], params.ptr, cast(void*)0);
		*Cost = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	final float SuperDesireability(PickupFactory P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PickupFactory*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34727], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float AdjustAimError(float TargetDist, bool bInstantProj)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = TargetDist;
		*cast(bool*)&params[4] = bInstantProj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34730], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final void MissedDodge()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34734], cast(void*)0, cast(void*)0);
	}
	final void DelayedWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34735], cast(void*)0, cast(void*)0);
	}
	final void DelayedLeaveVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34736], cast(void*)0, cast(void*)0);
	}
}
