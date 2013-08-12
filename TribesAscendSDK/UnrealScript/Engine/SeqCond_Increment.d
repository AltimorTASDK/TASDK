module UnrealScript.Engine.SeqCond_Increment;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_Increment : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_Increment")); }
	@property final auto ref
	{
		int ValueB() { return *cast(int*)(cast(size_t)cast(void*)this + 216); }
		int ValueA() { return *cast(int*)(cast(size_t)cast(void*)this + 212); }
		int IncrementAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
	}
}
