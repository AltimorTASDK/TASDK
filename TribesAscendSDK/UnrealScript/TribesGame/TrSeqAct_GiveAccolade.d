module UnrealScript.TribesGame.TrSeqAct_GiveAccolade;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_GiveAccolade : SequenceAction
{
	public @property final auto ref ScriptClass AccoladeType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 232); }
}
