module UnrealScript.UnrealEd.InterpTrackVisibilityHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackVisibilityHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.InterpTrackVisibilityHelper")); }
	private static __gshared InterpTrackVisibilityHelper mDefaultProperties;
	@property final static InterpTrackVisibilityHelper DefaultProperties() { mixin(MGDPC("InterpTrackVisibilityHelper", "InterpTrackVisibilityHelper UnrealEd.Default__InterpTrackVisibilityHelper")); }
}
