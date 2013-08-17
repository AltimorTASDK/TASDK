module UnrealScript.UTGame.UTUIDataStore_Options;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKUIDataStore_Options;

extern(C++) interface UTUIDataStore_Options : UDKUIDataStore_Options
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTUIDataStore_Options")()); }
	private static __gshared UTUIDataStore_Options mDefaultProperties;
	@property final static UTUIDataStore_Options DefaultProperties() { mixin(MGDPC!(UTUIDataStore_Options, "UTUIDataStore_Options UTGame.Default__UTUIDataStore_Options")()); }
}
