module UnrealScript.UnrealEd.InterpTrackFloatPropHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackFloatPropHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.InterpTrackFloatPropHelper")); }
	private static __gshared InterpTrackFloatPropHelper mDefaultProperties;
	@property final static InterpTrackFloatPropHelper DefaultProperties() { mixin(MGDPC("InterpTrackFloatPropHelper", "InterpTrackFloatPropHelper UnrealEd.Default__InterpTrackFloatPropHelper")); }
}
