module UnrealScript.Engine.SpotLight;

import ScriptClasses;
import UnrealScript.Engine.Light;

extern(C++) interface SpotLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SpotLight")); }
	private static __gshared SpotLight mDefaultProperties;
	@property final static SpotLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SpotLight)("SpotLight Engine.Default__SpotLight")); }
}
