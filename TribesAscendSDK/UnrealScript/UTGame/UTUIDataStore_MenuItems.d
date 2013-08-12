module UnrealScript.UTGame.UTUIDataStore_MenuItems;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataStore_MenuItems;

extern(C++) interface UTUIDataStore_MenuItems : UDKUIDataStore_MenuItems
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataStore_MenuItems")); }
	private static __gshared UTUIDataStore_MenuItems mDefaultProperties;
	@property final static UTUIDataStore_MenuItems DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTUIDataStore_MenuItems)("UTUIDataStore_MenuItems UTGame.Default__UTUIDataStore_MenuItems")); }
}
