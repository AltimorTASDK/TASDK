module UnrealScript.UDKBase.UDKSkelControl_DamageHinge;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.UDKBase.UDKSkelControl_Damage;

extern(C++) interface UDKSkelControl_DamageHinge : UDKSkelControl_Damage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_DamageHinge")()); }
	private static __gshared UDKSkelControl_DamageHinge mDefaultProperties;
	@property final static UDKSkelControl_DamageHinge DefaultProperties() { mixin(MGDPC!(UDKSkelControl_DamageHinge, "UDKSkelControl_DamageHinge UDKBase.Default__UDKSkelControl_DamageHinge")()); }
	@property final auto ref
	{
		float SpringStiffness() { mixin(MGPC!(float, 392)()); }
		float CurrentAngle() { mixin(MGPC!(float, 388)()); }
		float AVModifier() { mixin(MGPC!(float, 384)()); }
		UObject.EAxis PivotAxis() { mixin(MGPC!(UObject.EAxis, 380)()); }
		float MaxAngle() { mixin(MGPC!(float, 376)()); }
	}
}
