module UnrealScript.Engine.DominantDirectionalLightMovable;

import ScriptClasses;
import UnrealScript.Engine.DominantDirectionalLight;

extern(C++) interface DominantDirectionalLightMovable : DominantDirectionalLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DominantDirectionalLightMovable")); }
}
