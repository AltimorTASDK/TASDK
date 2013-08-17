module UnrealScript.UTGame.UTSeqAct_InfiniteAmmo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_InfiniteAmmo : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_InfiniteAmmo")()); }
	private static __gshared UTSeqAct_InfiniteAmmo mDefaultProperties;
	@property final static UTSeqAct_InfiniteAmmo DefaultProperties() { mixin(MGDPC!(UTSeqAct_InfiniteAmmo, "UTSeqAct_InfiniteAmmo UTGame.Default__UTSeqAct_InfiniteAmmo")()); }
	@property final
	{
		bool bInfiniteAmmo() { mixin(MGBPC!(232, 0x1)()); }
		bool bInfiniteAmmo(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
}
