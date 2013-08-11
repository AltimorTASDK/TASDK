module UnrealScript.Engine.SeqAct_Timer;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Timer : SequenceAction
{
	public @property final auto ref float Time() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float ActivationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
}
