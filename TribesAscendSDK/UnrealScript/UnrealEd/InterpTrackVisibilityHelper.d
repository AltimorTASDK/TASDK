module UnrealScript.UnrealEd.InterpTrackVisibilityHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackVisibilityHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackVisibilityHelper")); }
	private static __gshared InterpTrackVisibilityHelper mDefaultProperties;
	@property final static InterpTrackVisibilityHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackVisibilityHelper)("InterpTrackVisibilityHelper UnrealEd.Default__InterpTrackVisibilityHelper")); }
}
