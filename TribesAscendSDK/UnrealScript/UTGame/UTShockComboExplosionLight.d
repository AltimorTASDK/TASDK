module UnrealScript.UTGame.UTShockComboExplosionLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTShockComboExplosionLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTShockComboExplosionLight")); }
	private static __gshared UTShockComboExplosionLight mDefaultProperties;
	@property final static UTShockComboExplosionLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTShockComboExplosionLight)("UTShockComboExplosionLight UTGame.Default__UTShockComboExplosionLight")); }
}
