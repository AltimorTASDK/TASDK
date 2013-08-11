module UnrealScript.Engine.SeqAct_Timer;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Timer : SequenceAction
{
public extern(D):
	@property final auto ref
	{
		float Time() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		float ActivationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	}
}
