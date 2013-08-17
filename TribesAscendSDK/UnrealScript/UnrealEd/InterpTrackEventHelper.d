module UnrealScript.UnrealEd.InterpTrackEventHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackEventHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.InterpTrackEventHelper")()); }
	private static __gshared InterpTrackEventHelper mDefaultProperties;
	@property final static InterpTrackEventHelper DefaultProperties() { mixin(MGDPC!(InterpTrackEventHelper, "InterpTrackEventHelper UnrealEd.Default__InterpTrackEventHelper")()); }
}
