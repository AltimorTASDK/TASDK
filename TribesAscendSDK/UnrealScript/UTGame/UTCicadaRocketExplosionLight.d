module UnrealScript.UTGame.UTCicadaRocketExplosionLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTCicadaRocketExplosionLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTCicadaRocketExplosionLight")); }
	private static __gshared UTCicadaRocketExplosionLight mDefaultProperties;
	@property final static UTCicadaRocketExplosionLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTCicadaRocketExplosionLight)("UTCicadaRocketExplosionLight UTGame.Default__UTCicadaRocketExplosionLight")); }
}
