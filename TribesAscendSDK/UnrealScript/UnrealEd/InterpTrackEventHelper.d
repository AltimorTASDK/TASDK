module UnrealScript.UnrealEd.InterpTrackEventHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackEventHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackEventHelper")); }
	private static __gshared InterpTrackEventHelper mDefaultProperties;
	@property final static InterpTrackEventHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackEventHelper)("InterpTrackEventHelper UnrealEd.Default__InterpTrackEventHelper")); }
}
