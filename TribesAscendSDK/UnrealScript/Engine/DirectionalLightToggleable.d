module UnrealScript.Engine.DirectionalLightToggleable;

import ScriptClasses;
import UnrealScript.Engine.DirectionalLight;

extern(C++) interface DirectionalLightToggleable : DirectionalLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DirectionalLightToggleable")); }
}
