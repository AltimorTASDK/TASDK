module UnrealScript.Engine.LightVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface LightVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LightVolume")); }
	private static __gshared LightVolume mDefaultProperties;
	@property final static LightVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LightVolume)("LightVolume Engine.Default__LightVolume")); }
}
