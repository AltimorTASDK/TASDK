module UnrealScript.UTGame.UTArmorPickupLight;

import ScriptClasses;
import UnrealScript.Engine.Light;

extern(C++) interface UTArmorPickupLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTArmorPickupLight")); }
}
