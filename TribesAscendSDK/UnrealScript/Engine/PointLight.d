module UnrealScript.Engine.PointLight;

import ScriptClasses;
import UnrealScript.Engine.Light;

extern(C++) interface PointLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PointLight")); }
	private static __gshared PointLight mDefaultProperties;
	@property final static PointLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PointLight)("PointLight Engine.Default__PointLight")); }
}
