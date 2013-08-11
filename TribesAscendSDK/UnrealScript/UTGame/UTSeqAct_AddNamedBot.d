module UnrealScript.UTGame.UTSeqAct_AddNamedBot;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTSeqAct_AddNamedBot : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			UTBot SpawnedBot() { return *cast(UTBot*)(cast(size_t)cast(void*)this + 256); }
			NavigationPoint StartSpot() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 252); }
			int TeamIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
			ScriptString BotName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bForceTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bForceTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	}
final:
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49065], cast(void*)0, cast(void*)0);
	}
	int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49067], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
