module UnrealScript.UTGame.UTWeaponKillMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;

extern(C++) interface UTWeaponKillMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTWeaponKillMessage")); }
}
