module UnrealScript.UTGame.UTWeaponKillMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;

extern(C++) interface UTWeaponKillMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTWeaponKillMessage")); }
	private static __gshared UTWeaponKillMessage mDefaultProperties;
	@property final static UTWeaponKillMessage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTWeaponKillMessage)("UTWeaponKillMessage UTGame.Default__UTWeaponKillMessage")); }
}
