module UnrealScript.Engine.SeqAct_AIAbortMoveToActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AIAbortMoveToActor : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_AIAbortMoveToActor")()); }
	private static __gshared SeqAct_AIAbortMoveToActor mDefaultProperties;
	@property final static SeqAct_AIAbortMoveToActor DefaultProperties() { mixin(MGDPC!(SeqAct_AIAbortMoveToActor, "SeqAct_AIAbortMoveToActor Engine.Default__SeqAct_AIAbortMoveToActor")()); }
}
