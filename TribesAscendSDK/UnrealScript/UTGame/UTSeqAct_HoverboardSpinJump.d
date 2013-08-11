module UnrealScript.UTGame.UTSeqAct_HoverboardSpinJump;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_HoverboardSpinJump : SequenceAction
{
	public @property final auto ref float WarmupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
}
