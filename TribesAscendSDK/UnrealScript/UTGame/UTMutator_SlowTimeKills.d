module UnrealScript.UTGame.UTMutator_SlowTimeKills;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_SlowTimeKills : UTMutator
{
public extern(D):
	@property final auto ref
	{
		float SlowSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
		float RampUpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
		float SlowTime() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	}
final:
	bool MutatorIsAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48619], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ScoreKill(Controller Killer, Controller Killed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48621], params.ptr, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48624], cast(void*)0, cast(void*)0);
	}
}
