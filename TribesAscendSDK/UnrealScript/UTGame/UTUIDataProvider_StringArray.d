module UnrealScript.UTGame.UTUIDataProvider_StringArray;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKUIDataProvider_StringArray;

extern(C++) interface UTUIDataProvider_StringArray : UDKUIDataProvider_StringArray
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTUIDataProvider_StringArray")()); }
	private static __gshared UTUIDataProvider_StringArray mDefaultProperties;
	@property final static UTUIDataProvider_StringArray DefaultProperties() { mixin(MGDPC!(UTUIDataProvider_StringArray, "UTUIDataProvider_StringArray UTGame.Default__UTUIDataProvider_StringArray")()); }
}
