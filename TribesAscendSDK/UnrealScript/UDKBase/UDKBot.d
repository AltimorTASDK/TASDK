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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKBot")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFaceActor;
			ScriptFunction mExecuteWhatToDoNext;
			ScriptFunction mReceiveRunOverWarning;
			ScriptFunction mWaitToSeeEnemy;
			ScriptFunction mLatentWhatToDoNext;
			ScriptFunction mCanMakePathTo;
			ScriptFunction mFindBestInventoryPath;
			ScriptFunction mFindPathToSquadRoute;
			ScriptFunction mBuildSquadRoute;
			ScriptFunction mFindBestSuperPickup;
			ScriptFunction mWhatToDoNext;
			ScriptFunction mMonitoredPawnAlert;
			ScriptFunction mTimeDJReset;
			ScriptFunction mMayDodgeToMoveTarget;
			ScriptFunction mSpecialJumpCost;
			ScriptFunction mSuperDesireability;
			ScriptFunction mAdjustAimError;
			ScriptFunction mMissedDodge;
			ScriptFunction mDelayedWarning;
			ScriptFunction mDelayedLeaveVehicle;
		}
		public @property static final
		{
			ScriptFunction FaceActor() { return mFaceActor ? mFaceActor : (mFaceActor = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.FaceActor")); }
			ScriptFunction ExecuteWhatToDoNext() { return mExecuteWhatToDoNext ? mExecuteWhatToDoNext : (mExecuteWhatToDoNext = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.ExecuteWhatToDoNext")); }
			ScriptFunction ReceiveRunOverWarning() { return mReceiveRunOverWarning ? mReceiveRunOverWarning : (mReceiveRunOverWarning = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.ReceiveRunOverWarning")); }
			ScriptFunction WaitToSeeEnemy() { return mWaitToSeeEnemy ? mWaitToSeeEnemy : (mWaitToSeeEnemy = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.WaitToSeeEnemy")); }
			ScriptFunction LatentWhatToDoNext() { return mLatentWhatToDoNext ? mLatentWhatToDoNext : (mLatentWhatToDoNext = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.LatentWhatToDoNext")); }
			ScriptFunction CanMakePathTo() { return mCanMakePathTo ? mCanMakePathTo : (mCanMakePathTo = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.CanMakePathTo")); }
			ScriptFunction FindBestInventoryPath() { return mFindBestInventoryPath ? mFindBestInventoryPath : (mFindBestInventoryPath = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.FindBestInventoryPath")); }
			ScriptFunction FindPathToSquadRoute() { return mFindPathToSquadRoute ? mFindPathToSquadRoute : (mFindPathToSquadRoute = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.FindPathToSquadRoute")); }
			ScriptFunction BuildSquadRoute() { return mBuildSquadRoute ? mBuildSquadRoute : (mBuildSquadRoute = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.BuildSquadRoute")); }
			ScriptFunction FindBestSuperPickup() { return mFindBestSuperPickup ? mFindBestSuperPickup : (mFindBestSuperPickup = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.FindBestSuperPickup")); }
			ScriptFunction WhatToDoNext() { return mWhatToDoNext ? mWhatToDoNext : (mWhatToDoNext = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.WhatToDoNext")); }
			ScriptFunction MonitoredPawnAlert() { return mMonitoredPawnAlert ? mMonitoredPawnAlert : (mMonitoredPawnAlert = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.MonitoredPawnAlert")); }
			ScriptFunction TimeDJReset() { return mTimeDJReset ? mTimeDJReset : (mTimeDJReset = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.TimeDJReset")); }
			ScriptFunction MayDodgeToMoveTarget() { return mMayDodgeToMoveTarget ? mMayDodgeToMoveTarget : (mMayDodgeToMoveTarget = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.MayDodgeToMoveTarget")); }
			ScriptFunction SpecialJumpCost() { return mSpecialJumpCost ? mSpecialJumpCost : (mSpecialJumpCost = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.SpecialJumpCost")); }
			ScriptFunction SuperDesireability() { return mSuperDesireability ? mSuperDesireability : (mSuperDesireability = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.SuperDesireability")); }
			ScriptFunction AdjustAimError() { return mAdjustAimError ? mAdjustAimError : (mAdjustAimError = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.AdjustAimError")); }
			ScriptFunction MissedDodge() { return mMissedDodge ? mMissedDodge : (mMissedDodge = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.MissedDodge")); }
			ScriptFunction DelayedWarning() { return mDelayedWarning ? mDelayedWarning : (mDelayedWarning = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.DelayedWarning")); }
			ScriptFunction DelayedLeaveVehicle() { return mDelayedLeaveVehicle ? mDelayedLeaveVehicle : (mDelayedLeaveVehicle = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKBot.DelayedLeaveVehicle")); }
		}
	}
	struct EnemyPosition
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKBot.EnemyPosition")); }
		@property final auto ref
		{
			float Time() { return *cast(float*)(cast(size_t)&this + 24); }
			Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 12); }
			Vector Position() { return *cast(Vector*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UDKBot.EnemyPosition) SavedPositions() { return *cast(ScriptArray!(UDKBot.EnemyPosition)*)(cast(size_t)cast(void*)this + 960); }
			float MultiJumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1120); }
			float DodgeToGoalPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1116); }
			Actor FearSpots() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1108); }
			float DodgeLandZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1104); }
			float CurrentAimError() { return *cast(float*)(cast(size_t)cast(void*)this + 1100); }
			float LastErrorUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1096); }
			float ErrorUpdateFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 1092); }
			float LastAimUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1088); }
			float AimUpdateFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 1084); }
			float LastIterativeCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 1080); }
			Pawn BlockedAimTarget() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1076); }
			NavigationPoint SquadRouteGoal() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1072); }
			Vector TrackedVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1060); }
			float BaseTrackingReactionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1056); }
			float TrackingReactionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1052); }
			float LastSeenTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
			Vector LastSeeingPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1036); }
			Vector LastSeenPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1024); }
			float MonitorMaxDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 1020); }
			Pawn MonitoredPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1016); }
			Vector MonitorStartLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1004); }
			Projectile WarningProjectile() { return *cast(Projectile*)(cast(size_t)cast(void*)this + 1000); }
			float WarningDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 996); }
			float RespawnPredictionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 992); }
			float HearingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 988); }
			int AcquisitionYawRate() { return *cast(int*)(cast(size_t)cast(void*)this + 984); }
			Vector ImpactVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 972); }
			Pawn CurrentlyTrackedEnemy() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 956); }
			Vehicle LastBlockingVehicle() { return *cast(Vehicle*)(cast(size_t)cast(void*)this + 952); }
			Pawn VisibleEnemy() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 948); }
			float EnemyVisibilityTime() { return *cast(float*)(cast(size_t)cast(void*)this + 944); }
			ubyte ScriptedFireMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 940); }
			Actor TemporaryFocus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 932); }
			UDKSquadAI Squad() { return *cast(UDKSquadAI*)(cast(size_t)cast(void*)this + 924); }
		}
		bool bUsePreviousSquadRoute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x4000) != 0; }
		bool bUsePreviousSquadRoute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x4000; } return val; }
		bool bUsingSquadRoute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x2000) != 0; }
		bool bUsingSquadRoute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x2000; } return val; }
		bool bAllowRouteReuse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x1000) != 0; }
		bool bAllowRouteReuse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x1000; } return val; }
		bool bNeedDelayedLeaveVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x800) != 0; }
		bool bNeedDelayedLeaveVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x800; } return val; }
		bool bEnemyAcquired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x400) != 0; }
		bool bEnemyAcquired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x400; } return val; }
		bool bInDodgeMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x200) != 0; }
		bool bInDodgeMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x200; } return val; }
		bool bPlannedJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x100) != 0; }
		bool bPlannedJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x100; } return val; }
		bool bJumpOverWall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x80) != 0; }
		bool bJumpOverWall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x80; } return val; }
		bool bLeadTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x40) != 0; }
		bool bLeadTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x40; } return val; }
		bool bEnemyIsVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x20) != 0; }
		bool bEnemyIsVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x20; } return val; }
		bool bEnemyInfoValid() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x10) != 0; }
		bool bEnemyInfoValid(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x10; } return val; }
		bool bTargetAlternateLoc() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x8) != 0; }
		bool bTargetAlternateLoc(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x8; } return val; }
		bool bForceRefreshRoute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x4) != 0; }
		bool bForceRefreshRoute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x4; } return val; }
		bool bScriptSpecialJumpCost() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x2) != 0; }
		bool bScriptSpecialJumpCost(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x2; } return val; }
		bool bExecutingWhatToDoNext() { return (*cast(uint*)(cast(size_t)cast(void*)this + 936) & 0x1) != 0; }
		bool bExecutingWhatToDoNext(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 936) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 936) &= ~0x1; } return val; }
	}
final:
	Actor FaceActor(float StrafingModifier)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = StrafingModifier;
		(cast(ScriptObject)this).ProcessEvent(Functions.FaceActor, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	void ExecuteWhatToDoNext()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ExecuteWhatToDoNext, cast(void*)0, cast(void*)0);
	}
	void ReceiveRunOverWarning(UDKVehicle V, float projSpeed, Vector VehicleDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UDKVehicle*)params.ptr = V;
		*cast(float*)&params[4] = projSpeed;
		*cast(Vector*)&params[8] = VehicleDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceiveRunOverWarning, params.ptr, cast(void*)0);
	}
	void WaitToSeeEnemy()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WaitToSeeEnemy, cast(void*)0, cast(void*)0);
	}
	void LatentWhatToDoNext()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LatentWhatToDoNext, cast(void*)0, cast(void*)0);
	}
	bool CanMakePathTo(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanMakePathTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Actor FindBestInventoryPath(float* MinWeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *MinWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindBestInventoryPath, params.ptr, cast(void*)0);
		*MinWeight = *cast(float*)params.ptr;
		return *cast(Actor*)&params[4];
	}
	Actor FindPathToSquadRoute(bool bWeightDetours)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bWeightDetours;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPathToSquadRoute, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	void BuildSquadRoute()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BuildSquadRoute, cast(void*)0, cast(void*)0);
	}
	Actor FindBestSuperPickup(float MaxDist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = MaxDist;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindBestSuperPickup, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	void WhatToDoNext()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WhatToDoNext, cast(void*)0, cast(void*)0);
	}
	void MonitoredPawnAlert()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MonitoredPawnAlert, cast(void*)0, cast(void*)0);
	}
	void TimeDJReset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimeDJReset, cast(void*)0, cast(void*)0);
	}
	void MayDodgeToMoveTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MayDodgeToMoveTarget, cast(void*)0, cast(void*)0);
	}
	bool SpecialJumpCost(float RequiredJumpZ, float* Cost)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = RequiredJumpZ;
		*cast(float*)&params[4] = *Cost;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialJumpCost, params.ptr, cast(void*)0);
		*Cost = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	float SuperDesireability(PickupFactory P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PickupFactory*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuperDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	float AdjustAimError(float TargetDist, bool bInstantProj)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = TargetDist;
		*cast(bool*)&params[4] = bInstantProj;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustAimError, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void MissedDodge()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MissedDodge, cast(void*)0, cast(void*)0);
	}
	void DelayedWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DelayedWarning, cast(void*)0, cast(void*)0);
	}
	void DelayedLeaveVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DelayedLeaveVehicle, cast(void*)0, cast(void*)0);
	}
}
