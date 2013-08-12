module UnrealScript.UnrealEd.InterpTrackBoolPropHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackBoolPropHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackBoolPropHelper")); }
	private static __gshared InterpTrackBoolPropHelper mDefaultProperties;
	@property final static InterpTrackBoolPropHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackBoolPropHelper)("InterpTrackBoolPropHelper UnrealEd.Default__InterpTrackBoolPropHelper")); }
}
