module UnrealScript.Engine.LightmassCharacterIndirectDetailVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface LightmassCharacterIndirectDetailVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LightmassCharacterIndirectDetailVolume")); }
	private static __gshared LightmassCharacterIndirectDetailVolume mDefaultProperties;
	@property final static LightmassCharacterIndirectDetailVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LightmassCharacterIndirectDetailVolume)("LightmassCharacterIndirectDetailVolume Engine.Default__LightmassCharacterIndirectDetailVolume")); }
}
