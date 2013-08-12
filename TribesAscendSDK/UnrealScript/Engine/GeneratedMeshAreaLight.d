module UnrealScript.Engine.GeneratedMeshAreaLight;

import ScriptClasses;
import UnrealScript.Engine.SpotLight;

extern(C++) interface GeneratedMeshAreaLight : SpotLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GeneratedMeshAreaLight")); }
}
