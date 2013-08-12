module UnrealScript.Engine.PrecomputedVisibilityOverrideVolume;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Volume;

extern(C++) interface PrecomputedVisibilityOverrideVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PrecomputedVisibilityOverrideVolume")); }
	private static __gshared PrecomputedVisibilityOverrideVolume mDefaultProperties;
	@property final static PrecomputedVisibilityOverrideVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PrecomputedVisibilityOverrideVolume)("PrecomputedVisibilityOverrideVolume Engine.Default__PrecomputedVisibilityOverrideVolume")); }
	@property final auto ref
	{
		ScriptArray!(Actor) OverrideVisibleActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 520); }
		ScriptArray!(Actor) OverrideInvisibleActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 532); }
	}
}
