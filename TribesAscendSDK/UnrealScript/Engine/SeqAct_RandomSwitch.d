module UnrealScript.Engine.SeqAct_RandomSwitch;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Switch;

extern(C++) interface SeqAct_RandomSwitch : SeqAct_Switch
{
public extern(D):
	@property final auto ref ScriptArray!(int) AutoDisabledIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 256); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25844], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
