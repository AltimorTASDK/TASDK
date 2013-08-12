module UnrealScript.Engine.SeqAct_CastToFloat;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_CastToFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_CastToFloat")); }
	@property final auto ref
	{
		float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		int Value() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	}
}
