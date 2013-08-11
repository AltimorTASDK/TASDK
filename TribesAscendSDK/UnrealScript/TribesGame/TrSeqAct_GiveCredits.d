module UnrealScript.TribesGame.TrSeqAct_GiveCredits;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_GiveCredits : SequenceAction
{
	public @property final auto ref int Amount() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
}
