module UnrealScript.UDKBase.UDKSkelControl_PropellerBlade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_PropellerBlade : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_PropellerBlade")()); }
	private static __gshared UDKSkelControl_PropellerBlade mDefaultProperties;
	@property final static UDKSkelControl_PropellerBlade DefaultProperties() { mixin(MGDPC!(UDKSkelControl_PropellerBlade, "UDKSkelControl_PropellerBlade UDKBase.Default__UDKSkelControl_PropellerBlade")()); }
	@property final
	{
		auto ref
		{
			float DesiredRotationsPerSecond() { mixin(MGPC!(float, 252)()); }
			float RotationsPerSecond() { mixin(MGPC!(float, 248)()); }
			float SpinUpTime() { mixin(MGPC!(float, 240)()); }
			float MaxRotationsPerSecond() { mixin(MGPC!(float, 236)()); }
		}
		bool bCounterClockwise() { mixin(MGBPC!(244, 0x1)()); }
		bool bCounterClockwise(bool val) { mixin(MSBPC!(244, 0x1)()); }
	}
}
