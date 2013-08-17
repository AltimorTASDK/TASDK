module UnrealScript.UTGame.UTSeqAct_SelfDestruct;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_SelfDestruct : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_SelfDestruct")()); }
	private static __gshared UTSeqAct_SelfDestruct mDefaultProperties;
	@property final static UTSeqAct_SelfDestruct DefaultProperties() { mixin(MGDPC!(UTSeqAct_SelfDestruct, "UTSeqAct_SelfDestruct UTGame.Default__UTSeqAct_SelfDestruct")()); }
}
