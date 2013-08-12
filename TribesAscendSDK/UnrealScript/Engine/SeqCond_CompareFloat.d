module UnrealScript.Engine.SeqCond_CompareFloat;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_CompareFloat : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_CompareFloat")); }
	private static __gshared SeqCond_CompareFloat mDefaultProperties;
	@property final static SeqCond_CompareFloat DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqCond_CompareFloat)("SeqCond_CompareFloat Engine.Default__SeqCond_CompareFloat")); }
	@property final auto ref
	{
		float ValueB() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
		float ValueA() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	}
}
