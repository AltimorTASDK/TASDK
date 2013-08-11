module UnrealScript.UTGame.UTSeqAct_AIStartFireAt;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_AIStartFireAt : SequenceAction
{
	public @property final auto ref ubyte ForcedFireMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 232); }
}
