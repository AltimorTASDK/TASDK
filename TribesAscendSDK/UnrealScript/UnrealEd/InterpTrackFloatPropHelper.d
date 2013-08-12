module UnrealScript.UnrealEd.InterpTrackFloatPropHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackFloatPropHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackFloatPropHelper")); }
	private static __gshared InterpTrackFloatPropHelper mDefaultProperties;
	@property final static InterpTrackFloatPropHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackFloatPropHelper)("InterpTrackFloatPropHelper UnrealEd.Default__InterpTrackFloatPropHelper")); }
}
