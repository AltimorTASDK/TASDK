module UnrealScript.UTGame.UTUIDataStore_StringAliasBindingsMap;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataStore_StringAliasBindingMap;

extern(C++) interface UTUIDataStore_StringAliasBindingsMap : UDKUIDataStore_StringAliasBindingMap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataStore_StringAliasBindingsMap")); }
}
