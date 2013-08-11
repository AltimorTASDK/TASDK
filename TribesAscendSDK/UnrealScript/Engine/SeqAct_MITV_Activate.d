module UnrealScript.Engine.SeqAct_MITV_Activate;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MITV_Activate : SequenceAction
{
public extern(D):
	@property final auto ref float DurationOfMITV() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
final:
	int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25763], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25765], cast(void*)0, cast(void*)0);
	}
}
