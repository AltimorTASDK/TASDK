module UnrealScript.Engine.SeqVar_String;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_String : SequenceVariable
{
public extern(D):
	@property final auto ref ScriptString StrValue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
}
