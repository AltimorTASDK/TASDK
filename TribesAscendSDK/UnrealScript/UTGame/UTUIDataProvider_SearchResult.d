module UnrealScript.UTGame.UTUIDataProvider_SearchResult;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKUIDataProvider_SearchResult;

extern(C++) interface UTUIDataProvider_SearchResult : UDKUIDataProvider_SearchResult
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTUIDataProvider_SearchResult")()); }
	private static __gshared UTUIDataProvider_SearchResult mDefaultProperties;
	@property final static UTUIDataProvider_SearchResult DefaultProperties() { mixin(MGDPC!(UTUIDataProvider_SearchResult, "UTUIDataProvider_SearchResult UTGame.Default__UTUIDataProvider_SearchResult")()); }
}
