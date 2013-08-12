module UnrealScript.UTGame.UTUIDataStore_MenuItems;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataStore_MenuItems;

extern(C++) interface UTUIDataStore_MenuItems : UDKUIDataStore_MenuItems
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataStore_MenuItems")); }
}
