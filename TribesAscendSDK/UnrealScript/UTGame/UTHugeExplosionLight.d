module UnrealScript.UTGame.UTHugeExplosionLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTHugeExplosionLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTHugeExplosionLight")); }
	private static __gshared UTHugeExplosionLight mDefaultProperties;
	@property final static UTHugeExplosionLight DefaultProperties() { mixin(MGDPC("UTHugeExplosionLight", "UTHugeExplosionLight UTGame.Default__UTHugeExplosionLight")); }
}
