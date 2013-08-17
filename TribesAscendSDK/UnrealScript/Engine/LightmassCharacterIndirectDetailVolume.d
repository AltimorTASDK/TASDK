module UnrealScript.Engine.LightmassCharacterIndirectDetailVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface LightmassCharacterIndirectDetailVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LightmassCharacterIndirectDetailVolume")); }
	private static __gshared LightmassCharacterIndirectDetailVolume mDefaultProperties;
	@property final static LightmassCharacterIndirectDetailVolume DefaultProperties() { mixin(MGDPC("LightmassCharacterIndirectDetailVolume", "LightmassCharacterIndirectDetailVolume Engine.Default__LightmassCharacterIndirectDetailVolume")); }
}
