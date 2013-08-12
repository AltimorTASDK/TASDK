module UnrealScript.Engine.SpotLightMovable;

import ScriptClasses;
import UnrealScript.Engine.SpotLight;

extern(C++) interface SpotLightMovable : SpotLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SpotLightMovable")); }
}
