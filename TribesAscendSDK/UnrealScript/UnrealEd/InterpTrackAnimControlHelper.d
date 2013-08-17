module UnrealScript.UnrealEd.InterpTrackAnimControlHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackAnimControlHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.InterpTrackAnimControlHelper")); }
	private static __gshared InterpTrackAnimControlHelper mDefaultProperties;
	@property final static InterpTrackAnimControlHelper DefaultProperties() { mixin(MGDPC("InterpTrackAnimControlHelper", "InterpTrackAnimControlHelper UnrealEd.Default__InterpTrackAnimControlHelper")); }
}
