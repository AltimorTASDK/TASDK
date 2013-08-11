module UnrealScript.Engine.PrecomputedVisibilityOverrideVolume;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Volume;

extern(C++) interface PrecomputedVisibilityOverrideVolume : Volume
{
	public @property final auto ref ScriptArray!(Actor) OverrideVisibleActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref ScriptArray!(Actor) OverrideInvisibleActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 532); }
}
