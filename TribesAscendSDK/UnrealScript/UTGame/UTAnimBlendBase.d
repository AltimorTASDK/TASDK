module UnrealScript.UTGame.UTAnimBlendBase;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UTAnimBlendBase : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendBase")); }
}
