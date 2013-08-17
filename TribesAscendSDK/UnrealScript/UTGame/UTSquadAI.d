module UnrealScript.UTGame.UTSquadAI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UDKBase.UDKSquadAI;
import UnrealScript.UTGame.UTBot;
import UnrealScript.UTGame.UTTeamInfo;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.Engine.HUD;

extern(C++) interface UTSquadAI : UDKSquadAI
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSquadAI")()); }
	private static __gshared UTSquadAI mDefaultProperties;
	@property final static UTSquadAI DefaultProperties() { mixin(MGDPC!(UTSquadAI, "UTSquadAI UTGame.Default__UTSquadAI")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAllowContinueOnFoot;
			ScriptFunction mAllowImpactJumpBy;
			ScriptFunction mGetOrders;
			ScriptFunction mSetEnemy;
			ScriptFunction mAssignSquadResponsibility;
			ScriptFunction mFindNewEnemyFor;
			ScriptFunction mMustKeepEnemy;
			ScriptFunction mIsDefending;
			ScriptFunction mHasOtherVisibleEnemy;
			ScriptFunction mPriorityObjective;
			ScriptFunction mAllowDetourTo;
			ScriptFunction mSetFacingActor;
			ScriptFunction mFormationCenter;
			ScriptFunction mAcceptableDefensivePosition;
			ScriptFunction mFindDefensivePositionFor;
			ScriptFunction mClearPathFor;
			ScriptFunction mLostEnemy;
			ScriptFunction mPickRetreatDestination;
			ScriptFunction mBeDevious;
			ScriptFunction mShouldSuppressEnemy;
			ScriptFunction mVehicleDesireability;
			ScriptFunction mHandlePathObstruction;
			ScriptFunction mFindPathToObjective;
			ScriptFunction mGetSize;
			ScriptFunction mReset;
			ScriptFunction mCriticalObjectiveWarning;
			ScriptFunction mDestroyed;
			ScriptFunction mGetLinkVehicle;
			ScriptFunction mGetFacingRotation;
			ScriptFunction mAddEnemy;
			ScriptFunction mValidEnemy;
			ScriptFunction mIsOnSquad;
			ScriptFunction mRemoveEnemy;
			ScriptFunction mNotifyKilled;
			ScriptFunction mModifyThreat;
			ScriptFunction mUnderFire;
			ScriptFunction mAssessThreat;
			ScriptFunction mShouldDeferTo;
			ScriptFunction mWaitAtThisPosition;
			ScriptFunction mWanderNearLeader;
			ScriptFunction mNearFormationCenter;
			ScriptFunction mCloseToLeader;
			ScriptFunction mMergeWith;
			ScriptFunction mInitialize;
			ScriptFunction mShouldUseAlternatePaths;
			ScriptFunction mSetAlternatePathTo;
			ScriptFunction mTryToIntercept;
			ScriptFunction mCloseEnoughToObjective;
			ScriptFunction mLeaveVehicleToReachObjective;
			ScriptFunction mMustCompleteOnFoot;
			ScriptFunction mLeaveVehicleAtParkingSpot;
			ScriptFunction mSetLeader;
			ScriptFunction mRemovePlayer;
			ScriptFunction mRemoveBot;
			ScriptFunction mAddBot;
			ScriptFunction mSetDefenseScriptFor;
			ScriptFunction mSetObjective;
			ScriptFunction mRetask;
			ScriptFunction mGetOrderStringFor;
			ScriptFunction mGetShortOrderStringFor;
			ScriptFunction mPickNewLeader;
			ScriptFunction mTellBotToFollow;
			ScriptFunction mAllowTaunt;
			ScriptFunction mAddTransientCosts;
			ScriptFunction mMaxVehicleDist;
			ScriptFunction mNeverBail;
			ScriptFunction mBotEnteredVehicle;
			ScriptFunction mIsOnPathToSquadObjective;
			ScriptFunction mGetOnHoverboard;
			ScriptFunction mEnterAndExitVehicle;
			ScriptFunction mGotoVehicle;
			ScriptFunction mCheckVehicle;
			ScriptFunction mCheckHoverboard;
			ScriptFunction mShouldUseHoverboard;
			ScriptFunction mOverrideFollowPlayer;
			ScriptFunction mShouldCheckSuperVehicle;
			ScriptFunction mCheckSuperItem;
			ScriptFunction mCheckSquadObjectives;
			ScriptFunction mBotSuitability;
			ScriptFunction mPickBotToReassign;
			ScriptFunction mDisplayDebug;
			ScriptFunction mFriendlyToward;
			ScriptFunction mGetMaxDefenseDistanceFrom;
			ScriptFunction mRateDefensivePosition;
			ScriptFunction mMarkHuntingSpots;
			ScriptFunction mModifyAggression;
		}
		public @property static final
		{
			ScriptFunction AllowContinueOnFoot() { mixin(MGF!("mAllowContinueOnFoot", "Function UTGame.UTSquadAI.AllowContinueOnFoot")()); }
			ScriptFunction AllowImpactJumpBy() { mixin(MGF!("mAllowImpactJumpBy", "Function UTGame.UTSquadAI.AllowImpactJumpBy")()); }
			ScriptFunction GetOrders() { mixin(MGF!("mGetOrders", "Function UTGame.UTSquadAI.GetOrders")()); }
			ScriptFunction SetEnemy() { mixin(MGF!("mSetEnemy", "Function UTGame.UTSquadAI.SetEnemy")()); }
			ScriptFunction AssignSquadResponsibility() { mixin(MGF!("mAssignSquadResponsibility", "Function UTGame.UTSquadAI.AssignSquadResponsibility")()); }
			ScriptFunction FindNewEnemyFor() { mixin(MGF!("mFindNewEnemyFor", "Function UTGame.UTSquadAI.FindNewEnemyFor")()); }
			ScriptFunction MustKeepEnemy() { mixin(MGF!("mMustKeepEnemy", "Function UTGame.UTSquadAI.MustKeepEnemy")()); }
			ScriptFunction IsDefending() { mixin(MGF!("mIsDefending", "Function UTGame.UTSquadAI.IsDefending")()); }
			ScriptFunction HasOtherVisibleEnemy() { mixin(MGF!("mHasOtherVisibleEnemy", "Function UTGame.UTSquadAI.HasOtherVisibleEnemy")()); }
			ScriptFunction PriorityObjective() { mixin(MGF!("mPriorityObjective", "Function UTGame.UTSquadAI.PriorityObjective")()); }
			ScriptFunction AllowDetourTo() { mixin(MGF!("mAllowDetourTo", "Function UTGame.UTSquadAI.AllowDetourTo")()); }
			ScriptFunction SetFacingActor() { mixin(MGF!("mSetFacingActor", "Function UTGame.UTSquadAI.SetFacingActor")()); }
			ScriptFunction FormationCenter() { mixin(MGF!("mFormationCenter", "Function UTGame.UTSquadAI.FormationCenter")()); }
			ScriptFunction AcceptableDefensivePosition() { mixin(MGF!("mAcceptableDefensivePosition", "Function UTGame.UTSquadAI.AcceptableDefensivePosition")()); }
			ScriptFunction FindDefensivePositionFor() { mixin(MGF!("mFindDefensivePositionFor", "Function UTGame.UTSquadAI.FindDefensivePositionFor")()); }
			ScriptFunction ClearPathFor() { mixin(MGF!("mClearPathFor", "Function UTGame.UTSquadAI.ClearPathFor")()); }
			ScriptFunction LostEnemy() { mixin(MGF!("mLostEnemy", "Function UTGame.UTSquadAI.LostEnemy")()); }
			ScriptFunction PickRetreatDestination() { mixin(MGF!("mPickRetreatDestination", "Function UTGame.UTSquadAI.PickRetreatDestination")()); }
			ScriptFunction BeDevious() { mixin(MGF!("mBeDevious", "Function UTGame.UTSquadAI.BeDevious")()); }
			ScriptFunction ShouldSuppressEnemy() { mixin(MGF!("mShouldSuppressEnemy", "Function UTGame.UTSquadAI.ShouldSuppressEnemy")()); }
			ScriptFunction VehicleDesireability() { mixin(MGF!("mVehicleDesireability", "Function UTGame.UTSquadAI.VehicleDesireability")()); }
			ScriptFunction HandlePathObstruction() { mixin(MGF!("mHandlePathObstruction", "Function UTGame.UTSquadAI.HandlePathObstruction")()); }
			ScriptFunction FindPathToObjective() { mixin(MGF!("mFindPathToObjective", "Function UTGame.UTSquadAI.FindPathToObjective")()); }
			ScriptFunction GetSize() { mixin(MGF!("mGetSize", "Function UTGame.UTSquadAI.GetSize")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function UTGame.UTSquadAI.Reset")()); }
			ScriptFunction CriticalObjectiveWarning() { mixin(MGF!("mCriticalObjectiveWarning", "Function UTGame.UTSquadAI.CriticalObjectiveWarning")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UTGame.UTSquadAI.Destroyed")()); }
			ScriptFunction GetLinkVehicle() { mixin(MGF!("mGetLinkVehicle", "Function UTGame.UTSquadAI.GetLinkVehicle")()); }
			ScriptFunction GetFacingRotation() { mixin(MGF!("mGetFacingRotation", "Function UTGame.UTSquadAI.GetFacingRotation")()); }
			ScriptFunction AddEnemy() { mixin(MGF!("mAddEnemy", "Function UTGame.UTSquadAI.AddEnemy")()); }
			ScriptFunction ValidEnemy() { mixin(MGF!("mValidEnemy", "Function UTGame.UTSquadAI.ValidEnemy")()); }
			ScriptFunction IsOnSquad() { mixin(MGF!("mIsOnSquad", "Function UTGame.UTSquadAI.IsOnSquad")()); }
			ScriptFunction RemoveEnemy() { mixin(MGF!("mRemoveEnemy", "Function UTGame.UTSquadAI.RemoveEnemy")()); }
			ScriptFunction NotifyKilled() { mixin(MGF!("mNotifyKilled", "Function UTGame.UTSquadAI.NotifyKilled")()); }
			ScriptFunction ModifyThreat() { mixin(MGF!("mModifyThreat", "Function UTGame.UTSquadAI.ModifyThreat")()); }
			ScriptFunction UnderFire() { mixin(MGF!("mUnderFire", "Function UTGame.UTSquadAI.UnderFire")()); }
			ScriptFunction AssessThreat() { mixin(MGF!("mAssessThreat", "Function UTGame.UTSquadAI.AssessThreat")()); }
			ScriptFunction ShouldDeferTo() { mixin(MGF!("mShouldDeferTo", "Function UTGame.UTSquadAI.ShouldDeferTo")()); }
			ScriptFunction WaitAtThisPosition() { mixin(MGF!("mWaitAtThisPosition", "Function UTGame.UTSquadAI.WaitAtThisPosition")()); }
			ScriptFunction WanderNearLeader() { mixin(MGF!("mWanderNearLeader", "Function UTGame.UTSquadAI.WanderNearLeader")()); }
			ScriptFunction NearFormationCenter() { mixin(MGF!("mNearFormationCenter", "Function UTGame.UTSquadAI.NearFormationCenter")()); }
			ScriptFunction CloseToLeader() { mixin(MGF!("mCloseToLeader", "Function UTGame.UTSquadAI.CloseToLeader")()); }
			ScriptFunction MergeWith() { mixin(MGF!("mMergeWith", "Function UTGame.UTSquadAI.MergeWith")()); }
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function UTGame.UTSquadAI.Initialize")()); }
			ScriptFunction ShouldUseAlternatePaths() { mixin(MGF!("mShouldUseAlternatePaths", "Function UTGame.UTSquadAI.ShouldUseAlternatePaths")()); }
			ScriptFunction SetAlternatePathTo() { mixin(MGF!("mSetAlternatePathTo", "Function UTGame.UTSquadAI.SetAlternatePathTo")()); }
			ScriptFunction TryToIntercept() { mixin(MGF!("mTryToIntercept", "Function UTGame.UTSquadAI.TryToIntercept")()); }
			ScriptFunction CloseEnoughToObjective() { mixin(MGF!("mCloseEnoughToObjective", "Function UTGame.UTSquadAI.CloseEnoughToObjective")()); }
			ScriptFunction LeaveVehicleToReachObjective() { mixin(MGF!("mLeaveVehicleToReachObjective", "Function UTGame.UTSquadAI.LeaveVehicleToReachObjective")()); }
			ScriptFunction MustCompleteOnFoot() { mixin(MGF!("mMustCompleteOnFoot", "Function UTGame.UTSquadAI.MustCompleteOnFoot")()); }
			ScriptFunction LeaveVehicleAtParkingSpot() { mixin(MGF!("mLeaveVehicleAtParkingSpot", "Function UTGame.UTSquadAI.LeaveVehicleAtParkingSpot")()); }
			ScriptFunction SetLeader() { mixin(MGF!("mSetLeader", "Function UTGame.UTSquadAI.SetLeader")()); }
			ScriptFunction RemovePlayer() { mixin(MGF!("mRemovePlayer", "Function UTGame.UTSquadAI.RemovePlayer")()); }
			ScriptFunction RemoveBot() { mixin(MGF!("mRemoveBot", "Function UTGame.UTSquadAI.RemoveBot")()); }
			ScriptFunction AddBot() { mixin(MGF!("mAddBot", "Function UTGame.UTSquadAI.AddBot")()); }
			ScriptFunction SetDefenseScriptFor() { mixin(MGF!("mSetDefenseScriptFor", "Function UTGame.UTSquadAI.SetDefenseScriptFor")()); }
			ScriptFunction SetObjective() { mixin(MGF!("mSetObjective", "Function UTGame.UTSquadAI.SetObjective")()); }
			ScriptFunction Retask() { mixin(MGF!("mRetask", "Function UTGame.UTSquadAI.Retask")()); }
			ScriptFunction GetOrderStringFor() { mixin(MGF!("mGetOrderStringFor", "Function UTGame.UTSquadAI.GetOrderStringFor")()); }
			ScriptFunction GetShortOrderStringFor() { mixin(MGF!("mGetShortOrderStringFor", "Function UTGame.UTSquadAI.GetShortOrderStringFor")()); }
			ScriptFunction PickNewLeader() { mixin(MGF!("mPickNewLeader", "Function UTGame.UTSquadAI.PickNewLeader")()); }
			ScriptFunction TellBotToFollow() { mixin(MGF!("mTellBotToFollow", "Function UTGame.UTSquadAI.TellBotToFollow")()); }
			ScriptFunction AllowTaunt() { mixin(MGF!("mAllowTaunt", "Function UTGame.UTSquadAI.AllowTaunt")()); }
			ScriptFunction AddTransientCosts() { mixin(MGF!("mAddTransientCosts", "Function UTGame.UTSquadAI.AddTransientCosts")()); }
			ScriptFunction MaxVehicleDist() { mixin(MGF!("mMaxVehicleDist", "Function UTGame.UTSquadAI.MaxVehicleDist")()); }
			ScriptFunction NeverBail() { mixin(MGF!("mNeverBail", "Function UTGame.UTSquadAI.NeverBail")()); }
			ScriptFunction BotEnteredVehicle() { mixin(MGF!("mBotEnteredVehicle", "Function UTGame.UTSquadAI.BotEnteredVehicle")()); }
			ScriptFunction IsOnPathToSquadObjective() { mixin(MGF!("mIsOnPathToSquadObjective", "Function UTGame.UTSquadAI.IsOnPathToSquadObjective")()); }
			ScriptFunction GetOnHoverboard() { mixin(MGF!("mGetOnHoverboard", "Function UTGame.UTSquadAI.GetOnHoverboard")()); }
			ScriptFunction EnterAndExitVehicle() { mixin(MGF!("mEnterAndExitVehicle", "Function UTGame.UTSquadAI.EnterAndExitVehicle")()); }
			ScriptFunction GotoVehicle() { mixin(MGF!("mGotoVehicle", "Function UTGame.UTSquadAI.GotoVehicle")()); }
			ScriptFunction CheckVehicle() { mixin(MGF!("mCheckVehicle", "Function UTGame.UTSquadAI.CheckVehicle")()); }
			ScriptFunction CheckHoverboard() { mixin(MGF!("mCheckHoverboard", "Function UTGame.UTSquadAI.CheckHoverboard")()); }
			ScriptFunction ShouldUseHoverboard() { mixin(MGF!("mShouldUseHoverboard", "Function UTGame.UTSquadAI.ShouldUseHoverboard")()); }
			ScriptFunction OverrideFollowPlayer() { mixin(MGF!("mOverrideFollowPlayer", "Function UTGame.UTSquadAI.OverrideFollowPlayer")()); }
			ScriptFunction ShouldCheckSuperVehicle() { mixin(MGF!("mShouldCheckSuperVehicle", "Function UTGame.UTSquadAI.ShouldCheckSuperVehicle")()); }
			ScriptFunction CheckSuperItem() { mixin(MGF!("mCheckSuperItem", "Function UTGame.UTSquadAI.CheckSuperItem")()); }
			ScriptFunction CheckSquadObjectives() { mixin(MGF!("mCheckSquadObjectives", "Function UTGame.UTSquadAI.CheckSquadObjectives")()); }
			ScriptFunction BotSuitability() { mixin(MGF!("mBotSuitability", "Function UTGame.UTSquadAI.BotSuitability")()); }
			ScriptFunction PickBotToReassign() { mixin(MGF!("mPickBotToReassign", "Function UTGame.UTSquadAI.PickBotToReassign")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function UTGame.UTSquadAI.DisplayDebug")()); }
			ScriptFunction FriendlyToward() { mixin(MGF!("mFriendlyToward", "Function UTGame.UTSquadAI.FriendlyToward")()); }
			ScriptFunction GetMaxDefenseDistanceFrom() { mixin(MGF!("mGetMaxDefenseDistanceFrom", "Function UTGame.UTSquadAI.GetMaxDefenseDistanceFrom")()); }
			ScriptFunction RateDefensivePosition() { mixin(MGF!("mRateDefensivePosition", "Function UTGame.UTSquadAI.RateDefensivePosition")()); }
			ScriptFunction MarkHuntingSpots() { mixin(MGF!("mMarkHuntingSpots", "Function UTGame.UTSquadAI.MarkHuntingSpots")()); }
			ScriptFunction ModifyAggression() { mixin(MGF!("mModifyAggression", "Function UTGame.UTSquadAI.ModifyAggression")()); }
		}
	}
	static struct Constants
	{
		enum NEAROBJECTIVEDIST = 2000.0;
	}
	static struct Retasking
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTSquadAI.Retasking")()); }
	}
	@property final
	{
		auto ref
		{
			Controller SquadLeader() { mixin(MGPC!(Controller, 536)()); }
			UTBot SquadMembers() { mixin(MGPC!(UTBot, 552)()); }
			float FormationSize() { mixin(MGPC!(float, 676)()); }
			int MaxSquadSize() { mixin(MGPC!(int, 668)()); }
			Pawn Enemies() { mixin(MGPC!(Pawn, 636)()); }
			ScriptName CurrentOrders() { mixin(MGPC!(ScriptName, 628)()); }
			ScriptString SupportStringTrailer() { mixin(MGPC!(ScriptString, 616)()); }
			ScriptString FreelanceString() { mixin(MGPC!(ScriptString, 604)()); }
			ScriptString HoldString() { mixin(MGPC!(ScriptString, 592)()); }
			ScriptString AttackString() { mixin(MGPC!(ScriptString, 580)()); }
			ScriptString DefendString() { mixin(MGPC!(ScriptString, 568)()); }
			ScriptString SupportString() { mixin(MGPC!(ScriptString, 556)()); }
			int Size() { mixin(MGPC!(int, 548)()); }
			UTSquadAI NextSquad() { mixin(MGPC!(UTSquadAI, 544)()); }
			UTPlayerReplicationInfo LeaderPRI() { mixin(MGPC!(UTPlayerReplicationInfo, 540)()); }
		}
		bool bShouldUseGatherPoints() { mixin(MGBPC!(672, 0x20)()); }
		bool bShouldUseGatherPoints(bool val) { mixin(MSBPC!(672, 0x20)()); }
		bool bAddTransientCosts() { mixin(MGBPC!(672, 0x10)()); }
		bool bAddTransientCosts(bool val) { mixin(MSBPC!(672, 0x10)()); }
		bool bRoamingSquad() { mixin(MGBPC!(672, 0x8)()); }
		bool bRoamingSquad(bool val) { mixin(MSBPC!(672, 0x8)()); }
		bool bFreelanceDefend() { mixin(MGBPC!(672, 0x4)()); }
		bool bFreelanceDefend(bool val) { mixin(MSBPC!(672, 0x4)()); }
		bool bFreelanceAttack() { mixin(MGBPC!(672, 0x2)()); }
		bool bFreelanceAttack(bool val) { mixin(MSBPC!(672, 0x2)()); }
		bool bFreelance() { mixin(MGBPC!(672, 0x1)()); }
		bool bFreelance(bool val) { mixin(MSBPC!(672, 0x1)()); }
	}
final:
	bool AllowContinueOnFoot(UTBot B, UTVehicle V)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(UTVehicle*)&params[4] = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowContinueOnFoot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool AllowImpactJumpBy(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowImpactJumpBy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptName GetOrders()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOrders, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	bool SetEnemy(UTBot B, Pawn NewEnemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool AssignSquadResponsibility(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.AssignSquadResponsibility, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FindNewEnemyFor(UTBot B, bool bSeeEnemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(bool*)&params[4] = bSeeEnemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindNewEnemyFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool MustKeepEnemy(Pawn E)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = E;
		(cast(ScriptObject)this).ProcessEvent(Functions.MustKeepEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsDefending(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDefending, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HasOtherVisibleEnemy(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasOtherVisibleEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ubyte PriorityObjective(UTBot B)
	{
		ubyte params[5];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.PriorityObjective, params.ptr, cast(void*)0);
		return params[4];
	}
	bool AllowDetourTo(UTBot B, NavigationPoint N)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(NavigationPoint*)&params[4] = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowDetourTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	Actor SetFacingActor(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFacingActor, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	Actor FormationCenter(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.FormationCenter, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	bool AcceptableDefensivePosition(NavigationPoint N, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.AcceptableDefensivePosition, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	NavigationPoint FindDefensivePositionFor(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindDefensivePositionFor, params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[4];
	}
	bool ClearPathFor(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPathFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool LostEnemy(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.LostEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool PickRetreatDestination(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickRetreatDestination, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool BeDevious(Pawn Enemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Enemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeDevious, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShouldSuppressEnemy(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSuppressEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float VehicleDesireability(UTVehicle V, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	bool HandlePathObstruction(UTBot B, Actor BlockedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = BlockedBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandlePathObstruction, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool FindPathToObjective(UTBot B, Actor O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPathToObjective, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	int GetSize()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSize, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void CriticalObjectiveWarning(Pawn NewEnemy)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.CriticalObjectiveWarning, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	UTVehicle GetLinkVehicle(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLinkVehicle, params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[4];
	}
	Rotator GetFacingRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFacingRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	bool AddEnemy(Pawn NewEnemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ValidEnemy(Pawn NewEnemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsOnSquad(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsOnSquad, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RemoveEnemy(Pawn E)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = E;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveEnemy, params.ptr, cast(void*)0);
	}
	void NotifyKilled(Controller Killer, Controller Killed, Pawn KilledPawn, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyKilled, params.ptr, cast(void*)0);
	}
	float ModifyThreat(float Current, Pawn NewThreat, bool bThreatVisible, UTBot B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Current;
		*cast(Pawn*)&params[4] = NewThreat;
		*cast(bool*)&params[8] = bThreatVisible;
		*cast(UTBot*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyThreat, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	bool UnderFire(Pawn NewThreat, UTBot Ignored)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewThreat;
		*cast(UTBot*)&params[4] = Ignored;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnderFire, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	float AssessThreat(UTBot B, Pawn NewThreat, bool bThreatVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = NewThreat;
		*cast(bool*)&params[8] = bThreatVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.AssessThreat, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	bool ShouldDeferTo(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldDeferTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool WaitAtThisPosition(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.WaitAtThisPosition, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool WanderNearLeader(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.WanderNearLeader, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NearFormationCenter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.NearFormationCenter, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CloseToLeader(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseToLeader, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void MergeWith(UTSquadAI S)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.MergeWith, params.ptr, cast(void*)0);
	}
	void Initialize(UTTeamInfo T, UTGameObjective O, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTTeamInfo*)params.ptr = T;
		*cast(UTGameObjective*)&params[4] = O;
		*cast(Controller*)&params[8] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, params.ptr, cast(void*)0);
	}
	bool ShouldUseAlternatePaths()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldUseAlternatePaths, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetAlternatePathTo(NavigationPoint NewRouteObjective, UTBot RouteMaker)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = NewRouteObjective;
		*cast(UTBot*)&params[4] = RouteMaker;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAlternatePathTo, params.ptr, cast(void*)0);
	}
	bool TryToIntercept(UTBot B, Pawn P, Actor RouteGoal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = P;
		*cast(Actor*)&params[8] = RouteGoal;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryToIntercept, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool CloseEnoughToObjective(UTBot B, Actor O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseEnoughToObjective, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool LeaveVehicleToReachObjective(UTBot B, Actor O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(Functions.LeaveVehicleToReachObjective, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool MustCompleteOnFoot(Actor O, Pawn P)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = O;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.MustCompleteOnFoot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void LeaveVehicleAtParkingSpot(UTBot B, Actor O)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(Functions.LeaveVehicleAtParkingSpot, params.ptr, cast(void*)0);
	}
	void SetLeader(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLeader, params.ptr, cast(void*)0);
	}
	void RemovePlayer(PlayerController P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemovePlayer, params.ptr, cast(void*)0);
	}
	void RemoveBot(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveBot, params.ptr, cast(void*)0);
	}
	void AddBot(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddBot, params.ptr, cast(void*)0);
	}
	void SetDefenseScriptFor(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDefenseScriptFor, params.ptr, cast(void*)0);
	}
	void SetObjective(UTGameObjective O, bool bForceUpdate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = O;
		*cast(bool*)&params[4] = bForceUpdate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetObjective, params.ptr, cast(void*)0);
	}
	void Retask(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.Retask, params.ptr, cast(void*)0);
	}
	ScriptString GetOrderStringFor(UTPlayerReplicationInfo PRI)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOrderStringFor, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString GetShortOrderStringFor(UTPlayerReplicationInfo PRI)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetShortOrderStringFor, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void PickNewLeader()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PickNewLeader, cast(void*)0, cast(void*)0);
	}
	bool TellBotToFollow(UTBot B, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.TellBotToFollow, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool AllowTaunt(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowTaunt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AddTransientCosts(UTBot B, float F)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddTransientCosts, params.ptr, cast(void*)0);
	}
	float MaxVehicleDist(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.MaxVehicleDist, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool NeverBail(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeverBail, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void BotEnteredVehicle(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotEnteredVehicle, params.ptr, cast(void*)0);
	}
	bool IsOnPathToSquadObjective(Actor Goal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Goal;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsOnPathToSquadObjective, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GetOnHoverboard(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOnHoverboard, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool EnterAndExitVehicle(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnterAndExitVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GotoVehicle(UTVehicle SquadVehicle, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = SquadVehicle;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.GotoVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool CheckVehicle(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckHoverboard(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckHoverboard, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShouldUseHoverboard(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldUseHoverboard, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool OverrideFollowPlayer(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverrideFollowPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShouldCheckSuperVehicle(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldCheckSuperVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckSuperItem(UTBot B, float SuperDist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = SuperDist;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckSuperItem, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool CheckSquadObjectives(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckSquadObjectives, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float BotSuitability(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotSuitability, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	UTBot PickBotToReassign()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickBotToReassign, params.ptr, cast(void*)0);
		return *cast(UTBot*)params.ptr;
	}
	void DisplayDebug(HUD pHUD, ref float YL, ref float YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = YL;
		*cast(float*)&params[8] = YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*YL = *cast(float*)&params[4];
		*YPos = *cast(float*)&params[8];
	}
	bool FriendlyToward(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.FriendlyToward, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float GetMaxDefenseDistanceFrom(Actor Center, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Center;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxDefenseDistanceFrom, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	float RateDefensivePosition(NavigationPoint N, UTBot CurrentBot, Actor Center)
	{
		ubyte params[16];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		*cast(UTBot*)&params[4] = CurrentBot;
		*cast(Actor*)&params[8] = Center;
		(cast(ScriptObject)this).ProcessEvent(Functions.RateDefensivePosition, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void MarkHuntingSpots(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.MarkHuntingSpots, params.ptr, cast(void*)0);
	}
	void ModifyAggression(UTBot B, ref float Aggression)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = Aggression;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyAggression, params.ptr, cast(void*)0);
		*Aggression = *cast(float*)&params[4];
	}
}
