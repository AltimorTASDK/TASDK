module UnrealScript.UTGame.ForcedDirVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKForcedDirectionVolume;

extern(C++) interface ForcedDirVolume : UDKForcedDirectionVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.ForcedDirVolume")); }
	private static __gshared ForcedDirVolume mDefaultProperties;
	@property final static ForcedDirVolume DefaultProperties() { mixin(MGDPC("ForcedDirVolume", "ForcedDirVolume UTGame.Default__ForcedDirVolume")); }
}
