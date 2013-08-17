module UnrealScript.Engine.PrecomputedVisibilityVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface PrecomputedVisibilityVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PrecomputedVisibilityVolume")); }
	private static __gshared PrecomputedVisibilityVolume mDefaultProperties;
	@property final static PrecomputedVisibilityVolume DefaultProperties() { mixin(MGDPC("PrecomputedVisibilityVolume", "PrecomputedVisibilityVolume Engine.Default__PrecomputedVisibilityVolume")); }
}
