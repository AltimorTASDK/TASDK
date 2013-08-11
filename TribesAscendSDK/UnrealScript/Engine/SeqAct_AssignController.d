module UnrealScript.Engine.SeqAct_AssignController;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AssignController : SequenceAction
{
public extern(D):
	@property final auto ref ScriptClass ControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 232); }
}
