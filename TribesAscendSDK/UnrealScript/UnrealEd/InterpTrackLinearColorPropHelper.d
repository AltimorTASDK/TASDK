module UnrealScript.UnrealEd.InterpTrackLinearColorPropHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackVectorPropHelper;

extern(C++) interface InterpTrackLinearColorPropHelper : InterpTrackVectorPropHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackLinearColorPropHelper")); }
	private static __gshared InterpTrackLinearColorPropHelper mDefaultProperties;
	@property final static InterpTrackLinearColorPropHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackLinearColorPropHelper)("InterpTrackLinearColorPropHelper UnrealEd.Default__InterpTrackLinearColorPropHelper")); }
}
