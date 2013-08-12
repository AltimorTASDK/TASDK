module UnrealScript.UTGame.UTShockImpactLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTShockImpactLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTShockImpactLight")); }
	private static __gshared UTShockImpactLight mDefaultProperties;
	@property final static UTShockImpactLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTShockImpactLight)("UTShockImpactLight UTGame.Default__UTShockImpactLight")); }
}
