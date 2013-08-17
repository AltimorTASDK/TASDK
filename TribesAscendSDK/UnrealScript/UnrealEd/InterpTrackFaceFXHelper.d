module UnrealScript.UnrealEd.InterpTrackFaceFXHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackFaceFXHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.InterpTrackFaceFXHelper")()); }
	private static __gshared InterpTrackFaceFXHelper mDefaultProperties;
	@property final static InterpTrackFaceFXHelper DefaultProperties() { mixin(MGDPC!(InterpTrackFaceFXHelper, "InterpTrackFaceFXHelper UnrealEd.Default__InterpTrackFaceFXHelper")()); }
}
