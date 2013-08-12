module UnrealScript.UTGame.UTHealthPickupLight;

import ScriptClasses;
import UnrealScript.Engine.Light;

extern(C++) interface UTHealthPickupLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTHealthPickupLight")); }
	private static __gshared UTHealthPickupLight mDefaultProperties;
	@property final static UTHealthPickupLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTHealthPickupLight)("UTHealthPickupLight UTGame.Default__UTHealthPickupLight")); }
}
