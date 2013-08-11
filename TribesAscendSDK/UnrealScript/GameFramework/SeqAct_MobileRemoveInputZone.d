module UnrealScript.GameFramework.SeqAct_MobileRemoveInputZone;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MobileRemoveInputZone : SequenceAction
{
	public @property final auto ref ScriptString ZoneName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
}
