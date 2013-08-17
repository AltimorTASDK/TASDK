module UnrealScript.UnrealEd.InterpTrackSoundHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackSoundHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.InterpTrackSoundHelper")); }
	private static __gshared InterpTrackSoundHelper mDefaultProperties;
	@property final static InterpTrackSoundHelper DefaultProperties() { mixin(MGDPC("InterpTrackSoundHelper", "InterpTrackSoundHelper UnrealEd.Default__InterpTrackSoundHelper")); }
}
