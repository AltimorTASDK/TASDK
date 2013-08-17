module UnrealScript.UDKBase.UDKBot;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKBot")()); }
	private static __gshared UDKBot mDefaultProperties;
	@property final static UDKBot DefaultProperties() { mixin(MGDPC!(UDKBot, "UDKBot UDKBase.Default__UDKBot")()); }
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
			ScriptFunction FaceActor() { mixin(MGF!("mFaceActor", "Function UDKBase.UDKBot.FaceActor")()); }
			ScriptFunction ExecuteWhatToDoNext() { mixin(MGF!("mExecuteWhatToDoNext", "Function UDKBase.UDKBot.ExecuteWhatToDoNext")()); }
			ScriptFunction ReceiveRunOverWarning() { mixin(MGF!("mReceiveRunOverWarning", "Function UDKBase.UDKBot.ReceiveRunOverWarning")()); }
			ScriptFunction WaitToSeeEnemy() { mixin(MGF!("mWaitToSeeEnemy", "Function UDKBase.UDKBot.WaitToSeeEnemy")()); }
			ScriptFunction LatentWhatToDoNext() { mixin(MGF!("mLatentWhatToDoNext", "Function UDKBase.UDKBot.LatentWhatToDoNext")()); }
			ScriptFunction CanMakePathTo() { mixin(MGF!("mCanMakePathTo", "Function UDKBase.UDKBot.CanMakePathTo")()); }
			ScriptFunction FindBestInventoryPath() { mixin(MGF!("mFindBestInventoryPath", "Function UDKBase.UDKBot.FindBestInventoryPath")()); }
			ScriptFunction FindPathToSquadRoute() { mixin(MGF!("mFindPathToSquadRoute", "Function UDKBase.UDKBot.FindPathToSquadRoute")()); }
			ScriptFunction BuildSquadRoute() { mixin(MGF!("mBuildSquadRoute", "Function UDKBase.UDKBot.BuildSquadRoute")()); }
			ScriptFunction FindBestSuperPickup() { mixin(MGF!("mFindBestSuperPickup", "Function UDKBase.UDKBot.FindBestSuperPickup")()); }
			ScriptFunction WhatToDoNext() { mixin(MGF!("mWhatToDoNext", "Function UDKBase.UDKBot.WhatToDoNext")()); }
			ScriptFunction MonitoredPawnAlert() { mixin(MGF!("mMonitoredPawnAlert", "Function UDKBase.UDKBot.MonitoredPawnAlert")()); }
			ScriptFunction TimeDJReset() { mixin(MGF!("mTimeDJReset", "Function UDKBase.UDKBot.TimeDJReset")()); }
			ScriptFunction MayDodgeToMoveTarget() { mixin(MGF!("mMayDodgeToMoveTarget", "Function UDKBase.UDKBot.MayDodgeToMoveTarget")()); }
			ScriptFunction SpecialJumpCost() { mixin(MGF!("mSpecialJumpCost", "Function UDKBase.UDKBot.SpecialJumpCost")()); }
			ScriptFunction SuperDesireability() { mixin(MGF!("mSuperDesireability", "Function UDKBase.UDKBot.SuperDesireability")()); }
			ScriptFunction AdjustAimError() { mixin(MGF!("mAdjustAimError", "Function UDKBase.UDKBot.AdjustAimError")()); }
			ScriptFunction MissedDodge() { mixin(MGF!("mMissedDodge", "Function UDKBase.UDKBot.MissedDodge")()); }
			ScriptFunction DelayedWarning() { mixin(MGF!("mDelayedWarning", "Function UDKBase.UDKBot.DelayedWarning")()); }
			ScriptFunction DelayedLeaveVehicle() { mixin(MGF!("mDelayedLeaveVehicle", "Function UDKBase.UDKBot.DelayedLeaveVehicle")()); }
		}
	}
	struct EnemyPosition
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKBot.EnemyPosition")()); }
		@property final auto ref
		{
			float Time() { mixin(MGPS!("float", 24)()); }
			Vector Velocity() { mixin(MGPS!("Vector", 12)()); }
			Vector Position() { mixin(MGPS!("Vector", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UDKBot.EnemyPosition) SavedPositions() { mixin(MGPC!("ScriptArray!(UDKBot.EnemyPosition)", 960)()); }
			float MultiJumpZ() { mixin(MGPC!("float", 1120)()); }
			float DodgeToGoalPct() { mixin(MGPC!("float", 1116)()); }
			Actor FearSpots() { mixin(MGPC!("Actor", 1108)()); }
			float DodgeLandZ() { mixin(MGPC!("float", 1104)()); }
			float CurrentAimError() { mixin(MGPC!("float", 1100)()); }
			float LastErrorUpdateTime() { mixin(MGPC!("float", 1096)()); }
			float ErrorUpdateFrequency() { mixin(MGPC!("float", 1092)()); }
			float LastAimUpdateTime() { mixin(MGPC!("float", 1088)()); }
			float AimUpdateFrequency() { mixin(MGPC!("float", 1084)()); }
			float LastIterativeCheck() { mixin(MGPC!("float", 1080)()); }
			Pawn BlockedAimTarget() { mixin(MGPC!("Pawn", 1076)()); }
			NavigationPoint SquadRouteGoal() { mixin(MGPC!("NavigationPoint", 1072)()); }
			Vector TrackedVelocity() { mixin(MGPC!("Vector", 1060)()); }
			float BaseTrackingReactionTime() { mixin(MGPC!("float", 1056)()); }
			float TrackingReactionTime() { mixin(MGPC!("float", 1052)()); }
			float LastSeenTime() { mixin(MGPC!("float", 1048)()); }
			Vector LastSeeingPos() { mixin(MGPC!("Vector", 1036)()); }
			Vector LastSeenPos() { mixin(MGPC!("Vector", 1024)()); }
			float MonitorMaxDistSq() { mixin(MGPC!("float", 1020)()); }
			Pawn MonitoredPawn() { mixin(MGPC!("Pawn", 1016)()); }
			Vector MonitorStartLoc() { mixin(MGPC!("Vector", 1004)()); }
			Projectile WarningProjectile() { mixin(MGPC!("Projectile", 1000)()); }
			float WarningDelay() { mixin(MGPC!("float", 996)()); }
			float RespawnPredictionTime() { mixin(MGPC!("float", 992)()); }
			float HearingThreshold() { mixin(MGPC!("float", 988)()); }
			int AcquisitionYawRate() { mixin(MGPC!("int", 984)()); }
			Vector ImpactVelocity() { mixin(MGPC!("Vector", 972)()); }
			Pawn CurrentlyTrackedEnemy() { mixin(MGPC!("Pawn", 956)()); }
			Vehicle LastBlockingVehicle() { mixin(MGPC!("Vehicle", 952)()); }
			Pawn VisibleEnemy() { mixin(MGPC!("Pawn", 948)()); }
			float EnemyVisibilityTime() { mixin(MGPC!("float", 944)()); }
			ubyte ScriptedFireMode() { mixin(MGPC!("ubyte", 940)()); }
			Actor TemporaryFocus() { mixin(MGPC!("Actor", 932)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DecisionComponent'!
			UDKSquadAI Squad() { mixin(MGPC!("UDKSquadAI", 924)()); }
		}
		bool bUsePreviousSquadRoute() { mixin(MGBPC!(936, 0x4000)()); }
		bool bUsePreviousSquadRoute(bool val) { mixin(MSBPC!(936, 0x4000)()); }
		bool bUsingSquadRoute() { mixin(MGBPC!(936, 0x2000)()); }
		bool bUsingSquadRoute(bool val) { mixin(MSBPC!(936, 0x2000)()); }
		bool bAllowRouteReuse() { mixin(MGBPC!(936, 0x1000)()); }
		bool bAllowRouteReuse(bool val) { mixin(MSBPC!(936, 0x1000)()); }
		bool bNeedDelayedLeaveVehicle() { mixin(MGBPC!(936, 0x800)()); }
		bool bNeedDelayedLeaveVehicle(bool val) { mixin(MSBPC!(936, 0x800)()); }
		bool bEnemyAcquired() { mixin(MGBPC!(936, 0x400)()); }
		bool bEnemyAcquired(bool val) { mixin(MSBPC!(936, 0x400)()); }
		bool bInDodgeMove() { mixin(MGBPC!(936, 0x200)()); }
		bool bInDodgeMove(bool val) { mixin(MSBPC!(936, 0x200)()); }
		bool bPlannedJump() { mixin(MGBPC!(936, 0x100)()); }
		bool bPlannedJump(bool val) { mixin(MSBPC!(936, 0x100)()); }
		bool bJumpOverWall() { mixin(MGBPC!(936, 0x80)()); }
		bool bJumpOverWall(bool val) { mixin(MSBPC!(936, 0x80)()); }
		bool bLeadTarget() { mixin(MGBPC!(936, 0x40)()); }
		bool bLeadTarget(bool val) { mixin(MSBPC!(936, 0x40)()); }
		bool bEnemyIsVisible() { mixin(MGBPC!(936, 0x20)()); }
		bool bEnemyIsVisible(bool val) { mixin(MSBPC!(936, 0x20)()); }
		bool bEnemyInfoValid() { mixin(MGBPC!(936, 0x10)()); }
		bool bEnemyInfoValid(bool val) { mixin(MSBPC!(936, 0x10)()); }
		bool bTargetAlternateLoc() { mixin(MGBPC!(936, 0x8)()); }
		bool bTargetAlternateLoc(bool val) { mixin(MSBPC!(936, 0x8)()); }
		bool bForceRefreshRoute() { mixin(MGBPC!(936, 0x4)()); }
		bool bForceRefreshRoute(bool val) { mixin(MSBPC!(936, 0x4)()); }
		bool bScriptSpecialJumpCost() { mixin(MGBPC!(936, 0x2)()); }
		bool bScriptSpecialJumpCost(bool val) { mixin(MSBPC!(936, 0x2)()); }
		bool bExecutingWhatToDoNext() { mixin(MGBPC!(936, 0x1)()); }
		bool bExecutingWhatToDoNext(bool val) { mixin(MSBPC!(936, 0x1)()); }
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
	Actor FindBestInventoryPath(ref float MinWeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = MinWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindBestInventoryPath, params.ptr, cast(void*)0);
		MinWeight = *cast(float*)params.ptr;
		return *cast(Actor*)&params[4];
	}
	Actor FindPathToSquadRoute(bool* bWeightDetours = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bWeightDetours !is null)
			*cast(bool*)params.ptr = *bWeightDetours;
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
	bool SpecialJumpCost(float RequiredJumpZ, ref float Cost)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = RequiredJumpZ;
		*cast(float*)&params[4] = Cost;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialJumpCost, params.ptr, cast(void*)0);
		Cost = *cast(float*)&params[4];
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
