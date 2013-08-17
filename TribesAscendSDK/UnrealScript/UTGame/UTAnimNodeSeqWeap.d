module UnrealScript.UTGame.UTAnimNodeSeqWeap;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimNodeSeqWeap;

extern(C++) interface UTAnimNodeSeqWeap : UDKAnimNodeSeqWeap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTAnimNodeSeqWeap")()); }
	private static __gshared UTAnimNodeSeqWeap mDefaultProperties;
	@property final static UTAnimNodeSeqWeap DefaultProperties() { mixin(MGDPC!(UTAnimNodeSeqWeap, "UTAnimNodeSeqWeap UTGame.Default__UTAnimNodeSeqWeap")()); }
}
