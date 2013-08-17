module UnrealScript.UTGame.UTSeqAct_ActivateRocketBoosters;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ActivateRocketBoosters : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_ActivateRocketBoosters")()); }
	private static __gshared UTSeqAct_ActivateRocketBoosters mDefaultProperties;
	@property final static UTSeqAct_ActivateRocketBoosters DefaultProperties() { mixin(MGDPC!(UTSeqAct_ActivateRocketBoosters, "UTSeqAct_ActivateRocketBoosters UTGame.Default__UTSeqAct_ActivateRocketBoosters")()); }
}
