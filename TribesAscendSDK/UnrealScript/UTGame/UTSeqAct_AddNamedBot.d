module UnrealScript.UTGame.UTSeqAct_AddNamedBot;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTSeqAct_AddNamedBot : SequenceAction
{
	public @property final auto ref UTBot SpawnedBot() { return *cast(UTBot*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref NavigationPoint StartSpot() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref int TeamIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
	public @property final bool bForceTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
	public @property final bool bForceTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	public @property final auto ref ScriptString BotName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49065], cast(void*)0, cast(void*)0);
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49067], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
