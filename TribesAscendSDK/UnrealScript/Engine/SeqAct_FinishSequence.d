module UnrealScript.Engine.SeqAct_FinishSequence;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_FinishSequence : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_FinishSequence")()); }
	private static __gshared SeqAct_FinishSequence mDefaultProperties;
	@property final static SeqAct_FinishSequence DefaultProperties() { mixin(MGDPC!(SeqAct_FinishSequence, "SeqAct_FinishSequence Engine.Default__SeqAct_FinishSequence")()); }
	@property final auto ref ScriptString OutputLabel() { mixin(MGPC!("ScriptString", 232)()); }
}
