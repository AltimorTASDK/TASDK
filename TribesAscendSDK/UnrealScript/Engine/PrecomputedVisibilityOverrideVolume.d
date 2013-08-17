module UnrealScript.Engine.PrecomputedVisibilityOverrideVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Volume;

extern(C++) interface PrecomputedVisibilityOverrideVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PrecomputedVisibilityOverrideVolume")); }
	private static __gshared PrecomputedVisibilityOverrideVolume mDefaultProperties;
	@property final static PrecomputedVisibilityOverrideVolume DefaultProperties() { mixin(MGDPC("PrecomputedVisibilityOverrideVolume", "PrecomputedVisibilityOverrideVolume Engine.Default__PrecomputedVisibilityOverrideVolume")); }
	@property final auto ref
	{
		ScriptArray!(Actor) OverrideVisibleActors() { mixin(MGPC("ScriptArray!(Actor)", 520)); }
		ScriptArray!(Actor) OverrideInvisibleActors() { mixin(MGPC("ScriptArray!(Actor)", 532)); }
	}
}
