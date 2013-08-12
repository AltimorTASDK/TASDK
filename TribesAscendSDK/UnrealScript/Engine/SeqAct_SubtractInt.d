module UnrealScript.Engine.SeqAct_SubtractInt;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SubtractInt : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SubtractInt")); }
	private static __gshared SeqAct_SubtractInt mDefaultProperties;
	@property final static SeqAct_SubtractInt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_SubtractInt)("SeqAct_SubtractInt Engine.Default__SeqAct_SubtractInt")); }
	@property final auto ref
	{
		int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
		float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		int ValueB() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		int ValueA() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	}
}
