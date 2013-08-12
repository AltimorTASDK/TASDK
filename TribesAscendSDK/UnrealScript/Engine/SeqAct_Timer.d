module UnrealScript.Engine.SeqAct_Timer;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Timer : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_Timer")); }
	private static __gshared SeqAct_Timer mDefaultProperties;
	@property final static SeqAct_Timer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_Timer)("SeqAct_Timer Engine.Default__SeqAct_Timer")); }
	@property final auto ref
	{
		float Time() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		float ActivationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	}
}
