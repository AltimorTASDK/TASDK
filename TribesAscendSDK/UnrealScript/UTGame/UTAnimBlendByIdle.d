module UnrealScript.UTGame.UTAnimBlendByIdle;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByIdle;

extern(C++) interface UTAnimBlendByIdle : UDKAnimBlendByIdle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByIdle")); }
}
