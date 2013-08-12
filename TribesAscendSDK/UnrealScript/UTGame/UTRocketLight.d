module UnrealScript.UTGame.UTRocketLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTRocketLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTRocketLight")); }
	private static __gshared UTRocketLight mDefaultProperties;
	@property final static UTRocketLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTRocketLight)("UTRocketLight UTGame.Default__UTRocketLight")); }
}
