module UnrealScript.UTGame.UTCTFTeamAI;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTTeamAI;
import UnrealScript.UTGame.UTCTFFlag;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.UTGame.UTGameObjective;

extern(C++) interface UTCTFTeamAI : UTTeamAI
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTCTFTeamAI")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddSquadWithLeader;
			ScriptFunction mGetPriorityFreelanceObjectiveFor;
		}
		public @property static final
		{
			ScriptFunction AddSquadWithLeader() { return mAddSquadWithLeader ? mAddSquadWithLeader : (mAddSquadWithLeader = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFTeamAI.AddSquadWithLeader")); }
			ScriptFunction GetPriorityFreelanceObjectiveFor() { return mGetPriorityFreelanceObjectiveFor ? mGetPriorityFreelanceObjectiveFor : (mGetPriorityFreelanceObjectiveFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFTeamAI.GetPriorityFreelanceObjectiveFor")); }
		}
	}
	@property final auto ref
	{
		UTCTFFlag FriendlyFlag() { return *cast(UTCTFFlag*)(cast(size_t)cast(void*)this + 668); }
		UTCTFFlag EnemyFlag() { return *cast(UTCTFFlag*)(cast(size_t)cast(void*)this + 672); }
		float LastGotFlag() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
	}
final:
	UTSquadAI AddSquadWithLeader(Controller C, UTGameObjective O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(UTGameObjective*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSquadWithLeader, params.ptr, cast(void*)0);
		return *cast(UTSquadAI*)&params[8];
	}
	UTGameObjective GetPriorityFreelanceObjectiveFor(UTSquadAI InFreelanceSquad)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = InFreelanceSquad;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPriorityFreelanceObjectiveFor, params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[4];
	}
}
