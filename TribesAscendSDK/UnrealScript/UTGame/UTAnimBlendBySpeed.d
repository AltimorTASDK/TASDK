module UnrealScript.UTGame.UTAnimBlendBySpeed;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendBySpeed;

extern(C++) interface UTAnimBlendBySpeed : UDKAnimBlendBySpeed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendBySpeed")); }
}
