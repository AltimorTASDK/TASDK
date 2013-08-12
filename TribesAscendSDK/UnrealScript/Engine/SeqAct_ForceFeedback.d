module UnrealScript.Engine.SeqAct_ForceFeedback;

import ScriptClasses;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ForceFeedback : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ForceFeedback")); }
	private static __gshared SeqAct_ForceFeedback mDefaultProperties;
	@property final static SeqAct_ForceFeedback DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_ForceFeedback)("SeqAct_ForceFeedback Engine.Default__SeqAct_ForceFeedback")); }
	@property final auto ref
	{
		ForceFeedbackWaveform FFWaveform() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 232); }
		ScriptClass PredefinedWaveForm() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 236); }
	}
}
