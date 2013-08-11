module UnrealScript.GameFramework.SeqAct_GameCrowdPopulationManagerToggle;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowd_ListOfAgents;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GameCrowdPopulationManagerToggle : SequenceAction
{
	public @property final auto ref float WarmupPct() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final bool bClearOldArchetypes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
	public @property final bool bClearOldArchetypes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
	public @property final auto ref GameCrowd_ListOfAgents CrowdAgentList() { return *cast(GameCrowd_ListOfAgents*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float MaxSimulationDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final bool bCastShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8) != 0; }
	public @property final bool bCastShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8; } return val; }
	public @property final bool bEnableCrowdLightEnvironment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
	public @property final bool bEnableCrowdLightEnvironment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
	public @property final auto ref float SpawnRate() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref int MaxAgents() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
	public @property final bool bKillAgentsInstantly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
	public @property final bool bKillAgentsInstantly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	public @property final auto ref ScriptClass PopulationManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 256); }
	final void FindPopMgrTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32910], cast(void*)0, cast(void*)0);
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32911], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
