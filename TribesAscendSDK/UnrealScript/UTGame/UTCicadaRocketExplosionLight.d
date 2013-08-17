module UnrealScript.UTGame.UTCicadaRocketExplosionLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTCicadaRocketExplosionLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTCicadaRocketExplosionLight")()); }
	private static __gshared UTCicadaRocketExplosionLight mDefaultProperties;
	@property final static UTCicadaRocketExplosionLight DefaultProperties() { mixin(MGDPC!(UTCicadaRocketExplosionLight, "UTCicadaRocketExplosionLight UTGame.Default__UTCicadaRocketExplosionLight")()); }
}
