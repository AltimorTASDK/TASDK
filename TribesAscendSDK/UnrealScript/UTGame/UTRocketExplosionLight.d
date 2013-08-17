module UnrealScript.UTGame.UTRocketExplosionLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTRocketExplosionLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTRocketExplosionLight")()); }
	private static __gshared UTRocketExplosionLight mDefaultProperties;
	@property final static UTRocketExplosionLight DefaultProperties() { mixin(MGDPC!(UTRocketExplosionLight, "UTRocketExplosionLight UTGame.Default__UTRocketExplosionLight")()); }
}
