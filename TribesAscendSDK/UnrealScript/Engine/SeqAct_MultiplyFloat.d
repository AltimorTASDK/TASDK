module UnrealScript.Engine.SeqAct_MultiplyFloat;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_MultiplyFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_MultiplyFloat")); }
	private static __gshared SeqAct_MultiplyFloat mDefaultProperties;
	@property final static SeqAct_MultiplyFloat DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_MultiplyFloat)("SeqAct_MultiplyFloat Engine.Default__SeqAct_MultiplyFloat")); }
	@property final auto ref
	{
		int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
		float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		float ValueB() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		float ValueA() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	}
}
