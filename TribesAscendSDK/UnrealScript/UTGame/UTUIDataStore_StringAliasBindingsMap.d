module UnrealScript.UTGame.UTUIDataStore_StringAliasBindingsMap;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKUIDataStore_StringAliasBindingMap;

extern(C++) interface UTUIDataStore_StringAliasBindingsMap : UDKUIDataStore_StringAliasBindingMap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTUIDataStore_StringAliasBindingsMap")()); }
	private static __gshared UTUIDataStore_StringAliasBindingsMap mDefaultProperties;
	@property final static UTUIDataStore_StringAliasBindingsMap DefaultProperties() { mixin(MGDPC!(UTUIDataStore_StringAliasBindingsMap, "UTUIDataStore_StringAliasBindingsMap UTGame.Default__UTUIDataStore_StringAliasBindingsMap")()); }
}
