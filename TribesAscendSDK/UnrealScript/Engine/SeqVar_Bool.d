module UnrealScript.Engine.SeqVar_Bool;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Bool : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_Bool")); }
	@property final auto ref int bValue() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
}
