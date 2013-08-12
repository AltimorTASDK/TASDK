module UnrealScript.Engine.DominantPointLight;

import ScriptClasses;
import UnrealScript.Engine.PointLight;

extern(C++) interface DominantPointLight : PointLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DominantPointLight")); }
}
