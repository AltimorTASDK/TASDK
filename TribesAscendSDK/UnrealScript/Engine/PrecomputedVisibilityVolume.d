module UnrealScript.Engine.PrecomputedVisibilityVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface PrecomputedVisibilityVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PrecomputedVisibilityVolume")); }
	private static __gshared PrecomputedVisibilityVolume mDefaultProperties;
	@property final static PrecomputedVisibilityVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PrecomputedVisibilityVolume)("PrecomputedVisibilityVolume Engine.Default__PrecomputedVisibilityVolume")); }
}
