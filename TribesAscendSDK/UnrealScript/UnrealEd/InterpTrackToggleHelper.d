module UnrealScript.UnrealEd.InterpTrackToggleHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackToggleHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackToggleHelper")); }
	private static __gshared InterpTrackToggleHelper mDefaultProperties;
	@property final static InterpTrackToggleHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackToggleHelper)("InterpTrackToggleHelper UnrealEd.Default__InterpTrackToggleHelper")); }
}
