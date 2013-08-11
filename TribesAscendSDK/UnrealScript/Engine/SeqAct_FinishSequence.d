module UnrealScript.Engine.SeqAct_FinishSequence;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_FinishSequence : SequenceAction
{
	public @property final auto ref ScriptString OutputLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
}
