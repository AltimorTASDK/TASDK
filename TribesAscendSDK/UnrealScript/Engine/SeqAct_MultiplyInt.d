module UnrealScript.Engine.SeqAct_MultiplyInt;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_MultiplyInt : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_MultiplyInt")); }
	private static __gshared SeqAct_MultiplyInt mDefaultProperties;
	@property final static SeqAct_MultiplyInt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_MultiplyInt)("SeqAct_MultiplyInt Engine.Default__SeqAct_MultiplyInt")); }
	@property final auto ref
	{
		int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
		float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		int ValueB() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		int ValueA() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	}
}
