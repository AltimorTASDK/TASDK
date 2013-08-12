module UnrealScript.UTGame.UTUIDataStore_Options;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataStore_Options;

extern(C++) interface UTUIDataStore_Options : UDKUIDataStore_Options
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataStore_Options")); }
}
