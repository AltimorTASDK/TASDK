module UnrealScript.Engine.SeqAct_SubtractFloat;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SubtractFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SubtractFloat")); }
	private static __gshared SeqAct_SubtractFloat mDefaultProperties;
	@property final static SeqAct_SubtractFloat DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_SubtractFloat)("SeqAct_SubtractFloat Engine.Default__SeqAct_SubtractFloat")); }
	@property final auto ref
	{
		int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
		float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		float ValueB() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		float ValueA() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	}
}
