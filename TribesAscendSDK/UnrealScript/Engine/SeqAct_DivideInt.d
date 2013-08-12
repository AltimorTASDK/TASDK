module UnrealScript.Engine.SeqAct_DivideInt;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_DivideInt : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_DivideInt")); }
	private static __gshared SeqAct_DivideInt mDefaultProperties;
	@property final static SeqAct_DivideInt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_DivideInt)("SeqAct_DivideInt Engine.Default__SeqAct_DivideInt")); }
	@property final auto ref
	{
		int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
		float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		int ValueB() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		int ValueA() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	}
}
