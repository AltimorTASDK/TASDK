module UnrealScript.UnrealEd.InterpTrackVectorPropHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackVectorPropHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackVectorPropHelper")); }
	private static __gshared InterpTrackVectorPropHelper mDefaultProperties;
	@property final static InterpTrackVectorPropHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackVectorPropHelper)("InterpTrackVectorPropHelper UnrealEd.Default__InterpTrackVectorPropHelper")); }
}
