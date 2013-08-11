module UnrealScript.Engine.SeqVar_Named;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Named : SequenceVariable
{
	public @property final bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
	public @property final bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	public @property final auto ref ScriptName FindVarName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptClass ExpectedType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 148); }
}
