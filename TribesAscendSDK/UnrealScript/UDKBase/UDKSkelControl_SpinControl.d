module UnrealScript.UDKBase.UDKSkelControl_SpinControl;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_SpinControl : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_SpinControl")()); }
	private static __gshared UDKSkelControl_SpinControl mDefaultProperties;
	@property final static UDKSkelControl_SpinControl DefaultProperties() { mixin(MGDPC!(UDKSkelControl_SpinControl, "UDKSkelControl_SpinControl UDKBase.Default__UDKSkelControl_SpinControl")()); }
	@property final auto ref
	{
		Vector Axis() { mixin(MGPC!(Vector, 240)()); }
		float DegreesPerSecond() { mixin(MGPC!(float, 236)()); }
	}
}
