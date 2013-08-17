module UnrealScript.UTGame.UTRocketLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTRocketLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTRocketLight")()); }
	private static __gshared UTRocketLight mDefaultProperties;
	@property final static UTRocketLight DefaultProperties() { mixin(MGDPC!(UTRocketLight, "UTRocketLight UTGame.Default__UTRocketLight")()); }
}
