module UnrealScript.Engine.SequenceVariable;

import ScriptClasses;
import UnrealScript.Engine.SequenceObject;

extern(C++) interface SequenceVariable : SequenceObject
{
	public @property final auto ref ScriptName VarName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 140); }
}
