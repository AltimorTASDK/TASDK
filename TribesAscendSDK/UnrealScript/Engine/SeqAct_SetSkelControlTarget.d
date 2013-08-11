module UnrealScript.Engine.SeqAct_SetSkelControlTarget;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetSkelControlTarget : SequenceAction
{
	public @property final auto ref ScriptArray!(UObject) TargetActors() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref ScriptName SkelControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 232); }
}
