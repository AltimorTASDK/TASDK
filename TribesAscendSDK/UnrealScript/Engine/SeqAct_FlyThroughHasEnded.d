module UnrealScript.Engine.SeqAct_FlyThroughHasEnded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_FlyThroughHasEnded : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_FlyThroughHasEnded")()); }
	private static __gshared SeqAct_FlyThroughHasEnded mDefaultProperties;
	@property final static SeqAct_FlyThroughHasEnded DefaultProperties() { mixin(MGDPC!(SeqAct_FlyThroughHasEnded, "SeqAct_FlyThroughHasEnded Engine.Default__SeqAct_FlyThroughHasEnded")()); }
}
