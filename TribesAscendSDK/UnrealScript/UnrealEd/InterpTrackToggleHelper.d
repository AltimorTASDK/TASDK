module UnrealScript.UnrealEd.InterpTrackToggleHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackToggleHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackToggleHelper")); }
}
