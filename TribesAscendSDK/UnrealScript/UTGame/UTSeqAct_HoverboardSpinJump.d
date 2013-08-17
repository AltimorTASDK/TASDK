module UnrealScript.UTGame.UTSeqAct_HoverboardSpinJump;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_HoverboardSpinJump : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_HoverboardSpinJump")()); }
	private static __gshared UTSeqAct_HoverboardSpinJump mDefaultProperties;
	@property final static UTSeqAct_HoverboardSpinJump DefaultProperties() { mixin(MGDPC!(UTSeqAct_HoverboardSpinJump, "UTSeqAct_HoverboardSpinJump UTGame.Default__UTSeqAct_HoverboardSpinJump")()); }
	@property final auto ref float WarmupTime() { mixin(MGPC!("float", 232)()); }
}
