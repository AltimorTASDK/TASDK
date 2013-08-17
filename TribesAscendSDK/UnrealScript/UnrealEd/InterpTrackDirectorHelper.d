module UnrealScript.UnrealEd.InterpTrackDirectorHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackDirectorHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.InterpTrackDirectorHelper")); }
	private static __gshared InterpTrackDirectorHelper mDefaultProperties;
	@property final static InterpTrackDirectorHelper DefaultProperties() { mixin(MGDPC("InterpTrackDirectorHelper", "InterpTrackDirectorHelper UnrealEd.Default__InterpTrackDirectorHelper")); }
}
