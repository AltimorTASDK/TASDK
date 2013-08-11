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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44566], params.ptr, cast(void*)0);
		return *cast(UTSquadAI*)params.ptr;
	}
	UTGameObjective GetPriorityAttackObjectiveFor(UTSquadAI InAttackSquad, Controller InController)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = InAttackSquad;
		*cast(Controller*)&params[4] = InController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46310], params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[8];
	}
	bool FriendlyToward(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46504], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46647], cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46648], cast(void*)0, cast(void*)0);
	}
	void CriticalObjectiveWarning(UTGameObjective G, Pawn NewEnemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = G;
		*cast(Pawn*)&params[4] = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46649], params.ptr, cast(void*)0);
	}
	void FindSuperItems()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46652], cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46656], cast(void*)0, cast(void*)0);
	}
	void ReAssessStrategy()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46657], cast(void*)0, cast(void*)0);
	}
	void NotifyKilled(Controller Killer, Controller Killed, Pawn KilledPawn, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46661], params.ptr, cast(void*)0);
	}
	void FindNewObjectives(UTGameObjective DisabledObjective)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = DisabledObjective;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46667], params.ptr, cast(void*)0);
	}
	void FindNewObjectiveFor(UTSquadAI S, bool bForceUpdate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = S;
		*cast(bool*)&params[4] = bForceUpdate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46670], params.ptr, cast(void*)0);
	}
	void RemoveSquad(UTSquadAI Squad)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = Squad;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46674], params.ptr, cast(void*)0);
	}
	void SetObjectiveLists()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46678], cast(void*)0, cast(void*)0);
	}
	UTSquadAI AddHumanSquad()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46681], params.ptr, cast(void*)0);
		return *cast(UTSquadAI*)params.ptr;
	}
	void PutBotOnSquadLedBy(Controller C, UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46685], params.ptr, cast(void*)0);
	}
	UTSquadAI AddSquadWithLeader(Controller C, UTGameObjective O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(UTGameObjective*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46689], params.ptr, cast(void*)0);
		return *cast(UTSquadAI*)&params[8];
	}
	UTGameObjective GetLeastDefendedObjective(Controller InController)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = InController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46694], params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[4];
	}
	UTGameObjective GetPriorityStandaloneObjectiveFor(UTSquadAI InAttackSquad, Controller InController)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = InAttackSquad;
		*cast(Controller*)&params[4] = InController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46708], params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[8];
	}
	UTGameObjective GetPriorityFreelanceObjectiveFor(UTSquadAI InFreelanceSquad)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = InFreelanceSquad;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46716], params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[4];
	}
	bool PutOnDefense(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46719], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PutOnOffense(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46723], params.ptr, cast(void*)0);
	}
	void PutOnFreelance(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46725], params.ptr, cast(void*)0);
	}
	void SetBotOrders(UTBot NewBot)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = NewBot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46727], params.ptr, cast(void*)0);
	}
	void SetOrders(UTBot B, ScriptName NewOrders, Controller OrderGiver)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(ScriptName*)&params[4] = NewOrders;
		*cast(Controller*)&params[12] = OrderGiver;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46731], params.ptr, cast(void*)0);
	}
	void RemoveFromTeam(Controller Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46736], params.ptr, cast(void*)0);
	}
}
