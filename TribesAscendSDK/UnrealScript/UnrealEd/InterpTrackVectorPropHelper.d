module UnrealScript.UnrealEd.InterpTrackVectorPropHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackVectorPropHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.InterpTrackVectorPropHelper")); }
	private static __gshared InterpTrackVectorPropHelper mDefaultProperties;
	@property final static InterpTrackVectorPropHelper DefaultProperties() { mixin(MGDPC("InterpTrackVectorPropHelper", "InterpTrackVectorPropHelper UnrealEd.Default__InterpTrackVectorPropHelper")); }
}
