module UnrealScript.Engine.DirectionalLight;

import ScriptClasses;
import UnrealScript.Engine.Light;

extern(C++) interface DirectionalLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DirectionalLight")); }
	private static __gshared DirectionalLight mDefaultProperties;
	@property final static DirectionalLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DirectionalLight)("DirectionalLight Engine.Default__DirectionalLight")); }
}
