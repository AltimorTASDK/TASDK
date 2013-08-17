module UnrealScript.UnrealEd.InterpTrackColorPropHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackVectorPropHelper;

extern(C++) interface InterpTrackColorPropHelper : InterpTrackVectorPropHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.InterpTrackColorPropHelper")); }
	private static __gshared InterpTrackColorPropHelper mDefaultProperties;
	@property final static InterpTrackColorPropHelper DefaultProperties() { mixin(MGDPC("InterpTrackColorPropHelper", "InterpTrackColorPropHelper UnrealEd.Default__InterpTrackColorPropHelper")); }
}
