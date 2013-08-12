module UnrealScript.Engine.SkyLightToggleable;

import ScriptClasses;
import UnrealScript.Engine.SkyLight;

extern(C++) interface SkyLightToggleable : SkyLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkyLightToggleable")); }
	private static __gshared SkyLightToggleable mDefaultProperties;
	@property final static SkyLightToggleable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkyLightToggleable)("SkyLightToggleable Engine.Default__SkyLightToggleable")); }
}
