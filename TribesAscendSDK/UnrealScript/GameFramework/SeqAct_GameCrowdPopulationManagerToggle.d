module UnrealScript.GameFramework.SeqAct_GameCrowdPopulationManagerToggle;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowd_ListOfAgents;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GameCrowdPopulationManagerToggle : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			float WarmupPct() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			GameCrowd_ListOfAgents CrowdAgentList() { return *cast(GameCrowd_ListOfAgents*)(cast(size_t)cast(void*)this + 240); }
			float MaxSimulationDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float SpawnRate() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			int MaxAgents() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
			ScriptClass PopulationManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 256); }
		}
		bool bClearOldArchetypes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
		bool bClearOldArchetypes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
		bool bCastShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8) != 0; }
		bool bCastShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8; } return val; }
		bool bEnableCrowdLightEnvironment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
		bool bEnableCrowdLightEnvironment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
		bool bKillAgentsInstantly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bKillAgentsInstantly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
final:
	void FindPopMgrTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32910], cast(void*)0, cast(void*)0);
	}
	int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32911], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
