module UnrealScript.UnrealEd.InterpTrackLinearColorPropHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackVectorPropHelper;

extern(C++) interface InterpTrackLinearColorPropHelper : InterpTrackVectorPropHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.InterpTrackLinearColorPropHelper")); }
	private static __gshared InterpTrackLinearColorPropHelper mDefaultProperties;
	@property final static InterpTrackLinearColorPropHelper DefaultProperties() { mixin(MGDPC("InterpTrackLinearColorPropHelper", "InterpTrackLinearColorPropHelper UnrealEd.Default__InterpTrackLinearColorPropHelper")); }
}
