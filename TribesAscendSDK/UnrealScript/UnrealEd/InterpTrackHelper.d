module UnrealScript.UnrealEd.InterpTrackHelper;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface InterpTrackHelper : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackHelper")); }
	private static __gshared InterpTrackHelper mDefaultProperties;
	@property final static InterpTrackHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackHelper)("InterpTrackHelper UnrealEd.Default__InterpTrackHelper")); }
}
