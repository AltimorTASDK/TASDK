module UnrealScript.UnrealEd.InterpTrackBoolPropHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackBoolPropHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.InterpTrackBoolPropHelper")); }
	private static __gshared InterpTrackBoolPropHelper mDefaultProperties;
	@property final static InterpTrackBoolPropHelper DefaultProperties() { mixin(MGDPC("InterpTrackBoolPropHelper", "InterpTrackBoolPropHelper UnrealEd.Default__InterpTrackBoolPropHelper")); }
}
