module UnrealScript.UTGame.UTTeamSayMsg;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;

extern(C++) interface UTTeamSayMsg : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTTeamSayMsg")()); }
	private static __gshared UTTeamSayMsg mDefaultProperties;
	@property final static UTTeamSayMsg DefaultProperties() { mixin(MGDPC!(UTTeamSayMsg, "UTTeamSayMsg UTGame.Default__UTTeamSayMsg")()); }
}
