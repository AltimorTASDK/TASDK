module UnrealScript.Engine.SeqVar_Vector;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Vector : SequenceVariable
{
	public @property final auto ref Vector VectValue() { return *cast(Vector*)(cast(size_t)cast(void*)this + 148); }
}
