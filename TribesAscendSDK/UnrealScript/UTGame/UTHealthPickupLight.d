module UnrealScript.UTGame.UTHealthPickupLight;

import ScriptClasses;
import UnrealScript.Engine.Light;

extern(C++) interface UTHealthPickupLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTHealthPickupLight")); }
}
