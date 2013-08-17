module UnrealScript.UTGame.UTUIResourceDataProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;

extern(C++) interface UTUIResourceDataProvider : UDKUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTUIResourceDataProvider")()); }
	private static __gshared UTUIResourceDataProvider mDefaultProperties;
	@property final static UTUIResourceDataProvider DefaultProperties() { mixin(MGDPC!(UTUIResourceDataProvider, "UTUIResourceDataProvider UTGame.Default__UTUIResourceDataProvider")()); }
}
