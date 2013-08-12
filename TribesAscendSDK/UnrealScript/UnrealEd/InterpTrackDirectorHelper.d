module UnrealScript.UnrealEd.InterpTrackDirectorHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackDirectorHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackDirectorHelper")); }
	private static __gshared InterpTrackDirectorHelper mDefaultProperties;
	@property final static InterpTrackDirectorHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackDirectorHelper)("InterpTrackDirectorHelper UnrealEd.Default__InterpTrackDirectorHelper")); }
}
