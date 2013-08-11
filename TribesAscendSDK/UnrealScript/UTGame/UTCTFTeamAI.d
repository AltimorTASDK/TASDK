module UnrealScript.UTGame.UTCTFTeamAI;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTTeamAI;
import UnrealScript.UTGame.UTCTFFlag;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.UTGame.UTGameObjective;

extern(C++) interface UTCTFTeamAI : UTTeamAI
{
	public @property final auto ref UTCTFFlag FriendlyFlag() { return *cast(UTCTFFlag*)(cast(size_t)cast(void*)this + 668); }
	public @property final auto ref UTCTFFlag EnemyFlag() { return *cast(UTCTFFlag*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref float LastGotFlag() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
	final UTSquadAI AddSquadWithLeader(Controller C, UTGameObjective O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(UTGameObjective*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46740], params.ptr, cast(void*)0);
		return *cast(UTSquadAI*)&params[8];
	}
	final UTGameObjective GetPriorityFreelanceObjectiveFor(UTSquadAI InFreelanceSquad)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = InFreelanceSquad;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46745], params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[4];
	}
}
