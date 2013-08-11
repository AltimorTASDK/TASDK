module UnrealScript.Engine.SeqAct_GetProperty;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetProperty : SequenceAction
{
public extern(D):
	@property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 232); }
}
