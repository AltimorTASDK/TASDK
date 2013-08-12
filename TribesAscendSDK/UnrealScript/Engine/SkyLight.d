module UnrealScript.Engine.SkyLight;

import ScriptClasses;
import UnrealScript.Engine.Light;

extern(C++) interface SkyLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkyLight")); }
	private static __gshared SkyLight mDefaultProperties;
	@property final static SkyLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkyLight)("SkyLight Engine.Default__SkyLight")); }
}
