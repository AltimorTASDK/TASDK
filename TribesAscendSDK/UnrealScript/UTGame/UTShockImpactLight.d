module UnrealScript.UTGame.UTShockImpactLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTShockImpactLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTShockImpactLight")()); }
	private static __gshared UTShockImpactLight mDefaultProperties;
	@property final static UTShockImpactLight DefaultProperties() { mixin(MGDPC!(UTShockImpactLight, "UTShockImpactLight UTGame.Default__UTShockImpactLight")()); }
}
