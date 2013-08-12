module UnrealScript.Engine.PointLightMovable;

import ScriptClasses;
import UnrealScript.Engine.PointLight;

extern(C++) interface PointLightMovable : PointLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PointLightMovable")); }
}
