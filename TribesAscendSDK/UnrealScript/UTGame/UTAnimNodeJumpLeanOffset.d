module UnrealScript.UTGame.UTAnimNodeJumpLeanOffset;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimNodeJumpLeanOffset;

extern(C++) interface UTAnimNodeJumpLeanOffset : UDKAnimNodeJumpLeanOffset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimNodeJumpLeanOffset")); }
}
