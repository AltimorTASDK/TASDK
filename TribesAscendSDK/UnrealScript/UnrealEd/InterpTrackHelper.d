module UnrealScript.UnrealEd.InterpTrackHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface InterpTrackHelper : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.InterpTrackHelper")()); }
	private static __gshared InterpTrackHelper mDefaultProperties;
	@property final static InterpTrackHelper DefaultProperties() { mixin(MGDPC!(InterpTrackHelper, "InterpTrackHelper UnrealEd.Default__InterpTrackHelper")()); }
}
