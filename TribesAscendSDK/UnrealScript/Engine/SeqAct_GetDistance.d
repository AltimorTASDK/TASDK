module UnrealScript.Engine.SeqAct_GetDistance;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetDistance : SequenceAction
{
	public @property final auto ref float Distance() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
}
