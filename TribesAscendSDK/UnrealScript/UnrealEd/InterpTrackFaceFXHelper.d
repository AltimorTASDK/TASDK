module UnrealScript.UnrealEd.InterpTrackFaceFXHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackFaceFXHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackFaceFXHelper")); }
}
