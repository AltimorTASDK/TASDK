module UnrealScript.UTGame.UTLavaVolume;

import ScriptClasses;
import UnrealScript.Engine.WaterVolume;

extern(C++) interface UTLavaVolume : WaterVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTLavaVolume")); }
}
