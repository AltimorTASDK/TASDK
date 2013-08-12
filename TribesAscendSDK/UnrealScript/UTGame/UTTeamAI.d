module UnrealScript.UTGame.UTTeamAI;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTeamAI")); }
	private static __gshared UTTeamAI mDefaultProperties;
	@property final static UTTeamAI DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTTeamAI)("UTTeamAI UTGame.Default__UTTeamAI")); }
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
			ScriptFunction FindHumanSquad() { return mFindHumanSquad ? mFindHumanSquad : (mFindHumanSquad = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.FindHumanSquad")); }
			ScriptFunction GetPriorityAttackObjectiveFor() { return mGetPriorityAttackObjectiveFor ? mGetPriorityAttackObjectiveFor : (mGetPriorityAttackObjectiveFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.GetPriorityAttackObjectiveFor")); }
			ScriptFunction FriendlyToward() { return mFriendlyToward ? mFriendlyToward : (mFriendlyToward = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.FriendlyToward")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.PostBeginPlay")); }
			ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.Timer")); }
			ScriptFunction CriticalObjectiveWarning() { return mCriticalObjectiveWarning ? mCriticalObjectiveWarning : (mCriticalObjectiveWarning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.CriticalObjectiveWarning")); }
			ScriptFunction FindSuperItems() { return mFindSuperItems ? mFindSuperItems : (mFindSuperItems = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.FindSuperItems")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.Reset")); }
			ScriptFunction ReAssessStrategy() { return mReAssessStrategy ? mReAssessStrategy : (mReAssessStrategy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.ReAssessStrategy")); }
			ScriptFunction NotifyKilled() { return mNotifyKilled ? mNotifyKilled : (mNotifyKilled = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.NotifyKilled")); }
			ScriptFunction FindNewObjectives() { return mFindNewObjectives ? mFindNewObjectives : (mFindNewObjectives = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.FindNewObjectives")); }
			ScriptFunction FindNewObjectiveFor() { return mFindNewObjectiveFor ? mFindNewObjectiveFor : (mFindNewObjectiveFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.FindNewObjectiveFor")); }
			ScriptFunction RemoveSquad() { return mRemoveSquad ? mRemoveSquad : (mRemoveSquad = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.RemoveSquad")); }
			ScriptFunction SetObjectiveLists() { return mSetObjectiveLists ? mSetObjectiveLists : (mSetObjectiveLists = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.SetObjectiveLists")); }
			ScriptFunction AddHumanSquad() { return mAddHumanSquad ? mAddHumanSquad : (mAddHumanSquad = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.AddHumanSquad")); }
			ScriptFunction PutBotOnSquadLedBy() { return mPutBotOnSquadLedBy ? mPutBotOnSquadLedBy : (mPutBotOnSquadLedBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.PutBotOnSquadLedBy")); }
			ScriptFunction AddSquadWithLeader() { return mAddSquadWithLeader ? mAddSquadWithLeader : (mAddSquadWithLeader = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.AddSquadWithLeader")); }
			ScriptFunction GetLeastDefendedObjective() { return mGetLeastDefendedObjective ? mGetLeastDefendedObjective : (mGetLeastDefendedObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.GetLeastDefendedObjective")); }
			ScriptFunction GetPriorityStandaloneObjectiveFor() { return mGetPriorityStandaloneObjectiveFor ? mGetPriorityStandaloneObjectiveFor : (mGetPriorityStandaloneObjectiveFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.GetPriorityStandaloneObjectiveFor")); }
			ScriptFunction GetPriorityFreelanceObjectiveFor() { return mGetPriorityFreelanceObjectiveFor ? mGetPriorityFreelanceObjectiveFor : (mGetPriorityFreelanceObjectiveFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.GetPriorityFreelanceObjectiveFor")); }
			ScriptFunction PutOnDefense() { return mPutOnDefense ? mPutOnDefense : (mPutOnDefense = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.PutOnDefense")); }
			ScriptFunction PutOnOffense() { return mPutOnOffense ? mPutOnOffense : (mPutOnOffense = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.PutOnOffense")); }
			ScriptFunction PutOnFreelance() { return mPutOnFreelance ? mPutOnFreelance : (mPutOnFreelance = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.PutOnFreelance")); }
			ScriptFunction SetBotOrders() { return mSetBotOrders ? mSetBotOrders : (mSetBotOrders = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.SetBotOrders")); }
			ScriptFunction SetOrders() { return mSetOrders ? mSetOrders : (mSetOrders = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.SetOrders")); }
			ScriptFunction RemoveFromTeam() { return mRemoveFromTeam ? mRemoveFromTeam : (mRemoveFromTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamAI.RemoveFromTeam")); }
		}
	}
	@property final
	{
		auto ref
		{
			UTTeamInfo EnemyTeam() { return *cast(UTTeamInfo*)(cast(size_t)cast(void*)this + 480); }
			UTGameObjective Objectives() { return *cast(UTGameObjective*)(cast(size_t)cast(void*)this + 488); }
			UTSquadAI Squads() { return *cast(UTSquadAI*)(cast(size_t)cast(void*)this + 500); }
			ScriptArray!(UTVehicleFactory) ImportantVehicleFactories() { return *cast(ScriptArray!(UTVehicleFactory)*)(cast(size_t)cast(void*)this + 656); }
			int NumSuperPickups() { return *cast(int*)(cast(size_t)cast(void*)this + 648); }
			UTPickupFactory SuperPickups() { return *cast(UTPickupFactory*)(cast(size_t)cast(void*)this + 584); }
			ScriptName OrderList() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 520); }
			int OrderOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
			ScriptClass SquadType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 512); }
			UTSquadAI FreelanceSquad() { return *cast(UTSquadAI*)(cast(size_t)cast(void*)this + 508); }
			UTSquadAI AttackSquad() { return *cast(UTSquadAI*)(cast(size_t)cast(void*)this + 504); }
			UTGameObjective PickedStandaloneObjective() { return *cast(UTGameObjective*)(cast(size_t)cast(void*)this + 496); }
			UTGameObjective PickedObjective() { return *cast(UTGameObjective*)(cast(size_t)cast(void*)this + 492); }
			int NumSupportingPlayer() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
		}
		bool bFoundSuperItems() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x1) != 0; }
		bool bFoundSuperItems(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x1; } return val; }
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
