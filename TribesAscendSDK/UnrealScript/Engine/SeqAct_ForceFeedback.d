module UnrealScript.Engine.SeqAct_ForceFeedback;

import ScriptClasses;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ForceFeedback : SequenceAction
{
	public @property final auto ref ForceFeedbackWaveform FFWaveform() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref ScriptClass PredefinedWaveForm() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 236); }
}
