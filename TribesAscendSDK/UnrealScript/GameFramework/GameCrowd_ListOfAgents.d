module UnrealScript.GameFramework.GameCrowd_ListOfAgents;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

extern(C++) interface GameCrowd_ListOfAgents : UObject
{
public extern(D):
	@property final auto ref ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo) ListOfAgents() { return *cast(ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo)*)(cast(size_t)cast(void*)this + 60); }
}
