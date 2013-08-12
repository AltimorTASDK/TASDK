module UnrealScript.UTGame.UTAnimBlendByWeapon;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByWeapon;

extern(C++) interface UTAnimBlendByWeapon : UDKAnimBlendByWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByWeapon")); }
	private static __gshared UTAnimBlendByWeapon mDefaultProperties;
	@property final static UTAnimBlendByWeapon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByWeapon)("UTAnimBlendByWeapon UTGame.Default__UTAnimBlendByWeapon")); }
}
