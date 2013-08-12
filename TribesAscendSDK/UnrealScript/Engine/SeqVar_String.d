module UnrealScript.Engine.SeqVar_String;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_String : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_String")); }
	@property final auto ref ScriptString StrValue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
}
