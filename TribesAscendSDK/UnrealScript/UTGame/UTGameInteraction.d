module UnrealScript.UTGame.UTGameInteraction;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKGameInteraction;

extern(C++) interface UTGameInteraction : UDKGameInteraction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTGameInteraction")()); }
	private static __gshared UTGameInteraction mDefaultProperties;
	@property final static UTGameInteraction DefaultProperties() { mixin(MGDPC!(UTGameInteraction, "UTGameInteraction UTGame.Default__UTGameInteraction")()); }
}
