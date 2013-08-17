module UnrealScript.UTGame.UTSeqAct_AIStartFireAt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_AIStartFireAt : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_AIStartFireAt")()); }
	private static __gshared UTSeqAct_AIStartFireAt mDefaultProperties;
	@property final static UTSeqAct_AIStartFireAt DefaultProperties() { mixin(MGDPC!(UTSeqAct_AIStartFireAt, "UTSeqAct_AIStartFireAt UTGame.Default__UTSeqAct_AIStartFireAt")()); }
	@property final auto ref ubyte ForcedFireMode() { mixin(MGPC!("ubyte", 232)()); }
}
