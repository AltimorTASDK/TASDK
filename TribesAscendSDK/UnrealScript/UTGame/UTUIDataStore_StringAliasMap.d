module UnrealScript.UTGame.UTUIDataStore_StringAliasMap;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKUIDataStore_StringAliasMap;

extern(C++) interface UTUIDataStore_StringAliasMap : UDKUIDataStore_StringAliasMap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTUIDataStore_StringAliasMap")()); }
	private static __gshared UTUIDataStore_StringAliasMap mDefaultProperties;
	@property final static UTUIDataStore_StringAliasMap DefaultProperties() { mixin(MGDPC!(UTUIDataStore_StringAliasMap, "UTUIDataStore_StringAliasMap UTGame.Default__UTUIDataStore_StringAliasMap")()); }
}
