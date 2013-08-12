module UnrealScript.UnrealEd.InterpTrackColorPropHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackVectorPropHelper;

extern(C++) interface InterpTrackColorPropHelper : InterpTrackVectorPropHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackColorPropHelper")); }
	private static __gshared InterpTrackColorPropHelper mDefaultProperties;
	@property final static InterpTrackColorPropHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackColorPropHelper)("InterpTrackColorPropHelper UnrealEd.Default__InterpTrackColorPropHelper")); }
}
