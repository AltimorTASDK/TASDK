module UnrealScript.Engine.SeqAct_ForceFeedback;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ForceFeedback : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_ForceFeedback")()); }
	private static __gshared SeqAct_ForceFeedback mDefaultProperties;
	@property final static SeqAct_ForceFeedback DefaultProperties() { mixin(MGDPC!(SeqAct_ForceFeedback, "SeqAct_ForceFeedback Engine.Default__SeqAct_ForceFeedback")()); }
	@property final auto ref
	{
		ForceFeedbackWaveform FFWaveform() { mixin(MGPC!("ForceFeedbackWaveform", 232)()); }
		ScriptClass PredefinedWaveForm() { mixin(MGPC!("ScriptClass", 236)()); }
	}
}
