module UnrealScript.UDKBase.UDKSkelControl_DamageSpring;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_Damage;

extern(C++) interface UDKSkelControl_DamageSpring : UDKSkelControl_Damage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_DamageSpring")()); }
	private static __gshared UDKSkelControl_DamageSpring mDefaultProperties;
	@property final static UDKSkelControl_DamageSpring DefaultProperties() { mixin(MGDPC!(UDKSkelControl_DamageSpring, "UDKSkelControl_DamageSpring UDKBase.Default__UDKSkelControl_DamageSpring")()); }
	@property final auto ref
	{
		float MomentumPortion() { mixin(MGPC!("float", 444)()); }
		float LastHitTime() { mixin(MGPC!("float", 440)()); }
		Vector LastHitMomentum() { mixin(MGPC!("Vector", 428)()); }
		float RandomPortion() { mixin(MGPC!("float", 424)()); }
		Rotator CurrentAngle() { mixin(MGPC!("Rotator", 412)()); }
		float AVModifier() { mixin(MGPC!("float", 408)()); }
		float SpringStiffness() { mixin(MGPC!("float", 404)()); }
		float Falloff() { mixin(MGPC!("float", 400)()); }
		Rotator MinAngle() { mixin(MGPC!("Rotator", 388)()); }
		Rotator MaxAngle() { mixin(MGPC!("Rotator", 376)()); }
	}
}
