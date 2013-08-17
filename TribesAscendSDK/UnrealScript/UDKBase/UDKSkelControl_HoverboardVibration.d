module UnrealScript.UDKBase.UDKSkelControl_HoverboardVibration;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HoverboardVibration : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_HoverboardVibration")()); }
	private static __gshared UDKSkelControl_HoverboardVibration mDefaultProperties;
	@property final static UDKSkelControl_HoverboardVibration DefaultProperties() { mixin(MGDPC!(UDKSkelControl_HoverboardVibration, "UDKSkelControl_HoverboardVibration UDKBase.Default__UDKSkelControl_HoverboardVibration")()); }
	@property final auto ref
	{
		float VibInput() { mixin(MGPC!(float, 252)()); }
		float VibMaxAmplitude() { mixin(MGPC!(float, 248)()); }
		float VibTurnAmpScale() { mixin(MGPC!(float, 244)()); }
		float VibSpeedAmpScale() { mixin(MGPC!(float, 240)()); }
		float VibFrequency() { mixin(MGPC!(float, 236)()); }
	}
}
