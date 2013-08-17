module UnrealScript.UnrealEd.InterpTrackToggleHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackToggleHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.InterpTrackToggleHelper")()); }
	private static __gshared InterpTrackToggleHelper mDefaultProperties;
	@property final static InterpTrackToggleHelper DefaultProperties() { mixin(MGDPC!(InterpTrackToggleHelper, "InterpTrackToggleHelper UnrealEd.Default__InterpTrackToggleHelper")()); }
}
