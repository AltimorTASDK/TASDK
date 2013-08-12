module UnrealScript.Engine.SeqVar_Float;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Float : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_Float")); }
	@property final auto ref float FloatValue() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
}
