module UnrealScript.UnrealEd.InterpTrackAnimControlHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackAnimControlHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackAnimControlHelper")); }
	private static __gshared InterpTrackAnimControlHelper mDefaultProperties;
	@property final static InterpTrackAnimControlHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackAnimControlHelper)("InterpTrackAnimControlHelper UnrealEd.Default__InterpTrackAnimControlHelper")); }
}
