module UnrealScript.UTGame.UTScout;

import ScriptClasses;
import UnrealScript.UDKBase.UDKScout;

extern(C++) interface UTScout : UDKScout
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTScout")); }
}
