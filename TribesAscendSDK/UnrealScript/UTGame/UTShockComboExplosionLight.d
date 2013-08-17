module UnrealScript.UTGame.UTShockComboExplosionLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTShockComboExplosionLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTShockComboExplosionLight")()); }
	private static __gshared UTShockComboExplosionLight mDefaultProperties;
	@property final static UTShockComboExplosionLight DefaultProperties() { mixin(MGDPC!(UTShockComboExplosionLight, "UTShockComboExplosionLight UTGame.Default__UTShockComboExplosionLight")()); }
}
