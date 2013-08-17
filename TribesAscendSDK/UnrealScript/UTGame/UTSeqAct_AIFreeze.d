module UnrealScript.UTGame.UTSeqAct_AIFreeze;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_AIFreeze : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_AIFreeze")()); }
	private static __gshared UTSeqAct_AIFreeze mDefaultProperties;
	@property final static UTSeqAct_AIFreeze DefaultProperties() { mixin(MGDPC!(UTSeqAct_AIFreeze, "UTSeqAct_AIFreeze UTGame.Default__UTSeqAct_AIFreeze")()); }
	@property final
	{
		bool bAllowWeaponFiring() { mixin(MGBPC!(232, 0x1)()); }
		bool bAllowWeaponFiring(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
}
