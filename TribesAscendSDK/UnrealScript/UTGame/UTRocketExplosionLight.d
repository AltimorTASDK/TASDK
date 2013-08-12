module UnrealScript.UTGame.UTRocketExplosionLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTRocketExplosionLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTRocketExplosionLight")); }
	private static __gshared UTRocketExplosionLight mDefaultProperties;
	@property final static UTRocketExplosionLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTRocketExplosionLight)("UTRocketExplosionLight UTGame.Default__UTRocketExplosionLight")); }
}
