module UnrealScript.UTGame.UTTeamAI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.UTGame.UTVehicleFactory;
import UnrealScript.UTGame.UTPickupFactory;
import UnrealScript.UDKBase.UDKTeamOwnedInfo;
import UnrealScript.UTGame.UTTeamInfo;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTTeamAI : UDKTeamOwnedInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTTeamAI")()); }
	private static __gshared UTTeamAI mDefaultProperties;
	@property final static UTTeamAI DefaultProperties() { mixin(MGDPC!(UTTeamAI, "UTTeamAI UTGame.Default__UTTeamAI")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFindHumanSquad;
			ScriptFunction mGetPriorityAttackObjectiveFor;
			ScriptFunction mFriendlyToward;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mTimer;
			ScriptFunction mCriticalObjectiveWarning;
			ScriptFunction mFindSuperItems;
			ScriptFunction mReset;
			ScriptFunction mReAssessStrategy;
			ScriptFunction mNotifyKilled;
			ScriptFunction mFindNewObjectives;
			ScriptFunction mFindNewObjectiveFor;
			ScriptFunction mRemoveSquad;
			ScriptFunction mSetObjectiveLists;
			ScriptFunction mAddHumanSquad;
			ScriptFunction mPutBotOnSquadLedBy;
			ScriptFunction mAddSquadWithLeader;
			ScriptFunction mGetLeastDefendedObjective;
			ScriptFunction mGetPriorityStandaloneObjectiveFor;
			ScriptFunction mGetPriorityFreelanceObjectiveFor;
			ScriptFunction mPutOnDefense;
			ScriptFunction mPutOnOffense;
			ScriptFunction mPutOnFreelance;
			ScriptFunction mSetBotOrders;
			ScriptFunction mSetOrders;
			ScriptFunction mRemoveFromTeam;
		}
		public @property static final
		{
			ScriptFunction FindHumanSquad() { mixin(MGF!("mFindHumanSquad", "Function UTGame.UTTeamAI.FindHumanSquad")()); }
			ScriptFunction GetPriorityAttackObjectiveFor() { mixin(MGF!("mGetPriorityAttackObjectiveFor", "Function UTGame.UTTeamAI.GetPriorityAttackObjectiveFor")()); }
			ScriptFunction FriendlyToward() { mixin(MGF!("mFriendlyToward", "Function UTGame.UTTeamAI.FriendlyToward")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTTeamAI.PostBeginPlay")()); }
			ScriptFunction Timer() { mixin(MGF!("mTimer", "Function UTGame.UTTeamAI.Timer")()); }
			ScriptFunction CriticalObjectiveWarning() { mixin(MGF!("mCriticalObjectiveWarning", "Function UTGame.UTTeamAI.CriticalObjectiveWarning")()); }
			ScriptFunction FindSuperItems() { mixin(MGF!("mFindSuperItems", "Function UTGame.UTTeamAI.FindSuperItems")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function UTGame.UTTeamAI.Reset")()); }
			ScriptFunction ReAssessStrategy() { mixin(MGF!("mReAssessStrategy", "Function UTGame.UTTeamAI.ReAssessStrategy")()); }
			ScriptFunction NotifyKilled() { mixin(MGF!("mNotifyKilled", "Function UTGame.UTTeamAI.NotifyKilled")()); }
			ScriptFunction FindNewObjectives() { mixin(MGF!("mFindNewObjectives", "Function UTGame.UTTeamAI.FindNewObjectives")()); }
			ScriptFunction FindNewObjectiveFor() { mixin(MGF!("mFindNewObjectiveFor", "Function UTGame.UTTeamAI.FindNewObjectiveFor")()); }
			ScriptFunction RemoveSquad() { mixin(MGF!("mRemoveSquad", "Function UTGame.UTTeamAI.RemoveSquad")()); }
			ScriptFunction SetObjectiveLists() { mixin(MGF!("mSetObjectiveLists", "Function UTGame.UTTeamAI.SetObjectiveLists")()); }
			ScriptFunction AddHumanSquad() { mixin(MGF!("mAddHumanSquad", "Function UTGame.UTTeamAI.AddHumanSquad")()); }
			ScriptFunction PutBotOnSquadLedBy() { mixin(MGF!("mPutBotOnSquadLedBy", "Function UTGame.UTTeamAI.PutBotOnSquadLedBy")()); }
			ScriptFunction AddSquadWithLeader() { mixin(MGF!("mAddSquadWithLeader", "Function UTGame.UTTeamAI.AddSquadWithLeader")()); }
			ScriptFunction GetLeastDefendedObjective() { mixin(MGF!("mGetLeastDefendedObjective", "Function UTGame.UTTeamAI.GetLeastDefendedObjective")()); }
			ScriptFunction GetPriorityStandaloneObjectiveFor() { mixin(MGF!("mGetPriorityStandaloneObjectiveFor", "Function UTGame.UTTeamAI.GetPriorityStandaloneObjectiveFor")()); }
			ScriptFunction GetPriorityFreelanceObjectiveFor() { mixin(MGF!("mGetPriorityFreelanceObjectiveFor", "Function UTGame.UTTeamAI.GetPriorityFreelanceObjectiveFor")()); }
			ScriptFunction PutOnDefense() { mixin(MGF!("mPutOnDefense", "Function UTGame.UTTeamAI.PutOnDefense")()); }
			ScriptFunction PutOnOffense() { mixin(MGF!("mPutOnOffense", "Function UTGame.UTTeamAI.PutOnOffense")()); }
			ScriptFunction PutOnFreelance() { mixin(MGF!("mPutOnFreelance", "Function UTGame.UTTeamAI.PutOnFreelance")()); }
			ScriptFunction SetBotOrders() { mixin(MGF!("mSetBotOrders", "Function UTGame.UTTeamAI.SetBotOrders")()); }
			ScriptFunction SetOrders() { mixin(MGF!("mSetOrders", "Function UTGame.UTTeamAI.SetOrders")()); }
			ScriptFunction RemoveFromTeam() { mixin(MGF!("mRemoveFromTeam", "Function UTGame.UTTeamAI.RemoveFromTeam")()); }
		}
	}
	@property final
	{
		auto ref
		{
			UTTeamInfo EnemyTeam() { mixin(MGPC!(UTTeamInfo, 480)()); }
			UTGameObjective Objectives() { mixin(MGPC!(UTGameObjective, 488)()); }
			UTSquadAI Squads() { mixin(MGPC!(UTSquadAI, 500)()); }
			ScriptArray!(UTVehicleFactory) ImportantVehicleFactories() { mixin(MGPC!(ScriptArray!(UTVehicleFactory), 656)()); }
			int NumSuperPickups() { mixin(MGPC!(int, 648)()); }
			UTPickupFactory SuperPickups() { mixin(MGPC!(UTPickupFactory, 584)()); }
			ScriptName OrderList() { mixin(MGPC!(ScriptName, 520)()); }
			int OrderOffset() { mixin(MGPC!(int, 516)()); }
			ScriptClass SquadType() { mixin(MGPC!(ScriptClass, 512)()); }
			UTSquadAI FreelanceSquad() { mixin(MGPC!(UTSquadAI, 508)()); }
			UTSquadAI AttackSquad() { mixin(MGPC!(UTSquadAI, 504)()); }
			UTGameObjective PickedStandaloneObjective() { mixin(MGPC!(UTGameObjective, 496)()); }
			UTGameObjective PickedObjective() { mixin(MGPC!(UTGameObjective, 492)()); }
			int NumSupportingPlayer() { mixin(MGPC!(int, 484)()); }
		}
		bool bFoundSuperItems() { mixin(MGBPC!(652, 0x1)()); }
		bool bFoundSuperItems(bool val) { mixin(MSBPC!(652, 0x1)()); }
	}
final:
	UTSquadAI FindHumanSquad()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindHumanSquad, params.ptr, cast(void*)0);
		return *cast(UTSquadAI*)params.ptr;
	}
	UTGameObjective GetPriorityAttackObjectiveFor(UTSquadAI InAttackSquad, Controller InController)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = InAttackSquad;
		*cast(Controller*)&params[4] = InController;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPriorityAttackObjectiveFor, params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[8];
	}
	bool FriendlyToward(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.FriendlyToward, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
	void CriticalObjectiveWarning(UTGameObjective G, Pawn NewEnemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = G;
		*cast(Pawn*)&params[4] = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.CriticalObjectiveWarning, params.ptr, cast(void*)0);
	}
	void FindSuperItems()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSuperItems, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void ReAssessStrategy()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReAssessStrategy, cast(void*)0, cast(void*)0);
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
	void FindNewObjectives(UTGameObjective DisabledObjective)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = DisabledObjective;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindNewObjectives, params.ptr, cast(void*)0);
	}
	void FindNewObjectiveFor(UTSquadAI S, bool bForceUpdate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = S;
		*cast(bool*)&params[4] = bForceUpdate;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindNewObjectiveFor, params.ptr, cast(void*)0);
	}
	void RemoveSquad(UTSquadAI Squad)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = Squad;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveSquad, params.ptr, cast(void*)0);
	}
	void SetObjectiveLists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetObjectiveLists, cast(void*)0, cast(void*)0);
	}
	UTSquadAI AddHumanSquad()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddHumanSquad, params.ptr, cast(void*)0);
		return *cast(UTSquadAI*)params.ptr;
	}
	void PutBotOnSquadLedBy(Controller C, UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.PutBotOnSquadLedBy, params.ptr, cast(void*)0);
	}
	UTSquadAI AddSquadWithLeader(Controller C, UTGameObjective O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(UTGameObjective*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSquadWithLeader, params.ptr, cast(void*)0);
		return *cast(UTSquadAI*)&params[8];
	}
	UTGameObjective GetLeastDefendedObjective(Controller InController)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = InController;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLeastDefendedObjective, params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[4];
	}
	UTGameObjective GetPriorityStandaloneObjectiveFor(UTSquadAI InAttackSquad, Controller InController)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = InAttackSquad;
		*cast(Controller*)&params[4] = InController;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPriorityStandaloneObjectiveFor, params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[8];
	}
	UTGameObjective GetPriorityFreelanceObjectiveFor(UTSquadAI InFreelanceSquad)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = InFreelanceSquad;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPriorityFreelanceObjectiveFor, params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[4];
	}
	bool PutOnDefense(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.PutOnDefense, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PutOnOffense(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.PutOnOffense, params.ptr, cast(void*)0);
	}
	void PutOnFreelance(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.PutOnFreelance, params.ptr, cast(void*)0);
	}
	void SetBotOrders(UTBot NewBot)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = NewBot;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBotOrders, params.ptr, cast(void*)0);
	}
	void SetOrders(UTBot B, ScriptName NewOrders, Controller OrderGiver)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(ScriptName*)&params[4] = NewOrders;
		*cast(Controller*)&params[12] = OrderGiver;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOrders, params.ptr, cast(void*)0);
	}
	void RemoveFromTeam(Controller Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFromTeam, params.ptr, cast(void*)0);
	}
}
