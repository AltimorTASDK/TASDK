module UnrealScript.Engine.SeqAct_AddInt;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_AddInt : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_AddInt")); }
	private static __gshared SeqAct_AddInt mDefaultProperties;
	@property final static SeqAct_AddInt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_AddInt)("SeqAct_AddInt Engine.Default__SeqAct_AddInt")); }
	@property final auto ref
	{
		int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
		float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		int ValueB() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		int ValueA() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	}
}
