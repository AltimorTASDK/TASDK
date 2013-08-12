module UnrealScript.UTGame.UTHugeExplosionLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTHugeExplosionLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTHugeExplosionLight")); }
	private static __gshared UTHugeExplosionLight mDefaultProperties;
	@property final static UTHugeExplosionLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTHugeExplosionLight)("UTHugeExplosionLight UTGame.Default__UTHugeExplosionLight")); }
}
