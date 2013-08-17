module UnrealScript.UDKBase.UDKAnimNodeSeqWeap;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimNodeSequence;

extern(C++) interface UDKAnimNodeSeqWeap : UDKAnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimNodeSeqWeap")()); }
	private static __gshared UDKAnimNodeSeqWeap mDefaultProperties;
	@property final static UDKAnimNodeSeqWeap DefaultProperties() { mixin(MGDPC!(UDKAnimNodeSeqWeap, "UDKAnimNodeSeqWeap UDKBase.Default__UDKAnimNodeSeqWeap")()); }
	@property final auto ref
	{
		ScriptName StingerAnim() { mixin(MGPC!("ScriptName", 368)()); }
		ScriptName ShoulderRocketAnim() { mixin(MGPC!("ScriptName", 360)()); }
		ScriptName SinglePistolAnim() { mixin(MGPC!("ScriptName", 352)()); }
		ScriptName DualPistolAnim() { mixin(MGPC!("ScriptName", 344)()); }
		ScriptName DefaultAnim() { mixin(MGPC!("ScriptName", 336)()); }
	}
}
