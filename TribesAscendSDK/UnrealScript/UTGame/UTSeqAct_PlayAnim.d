module UnrealScript.UTGame.UTSeqAct_PlayAnim;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_PlayAnim : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_PlayAnim")()); }
	private static __gshared UTSeqAct_PlayAnim mDefaultProperties;
	@property final static UTSeqAct_PlayAnim DefaultProperties() { mixin(MGDPC!(UTSeqAct_PlayAnim, "UTSeqAct_PlayAnim UTGame.Default__UTSeqAct_PlayAnim")()); }
	@property final
	{
		@property final auto ref ScriptName AnimName() { mixin(MGPC!("ScriptName", 232)()); }
		bool bLooping() { mixin(MGBPC!(240, 0x1)()); }
		bool bLooping(bool val) { mixin(MSBPC!(240, 0x1)()); }
	}
}
