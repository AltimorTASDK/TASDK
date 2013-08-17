module UnrealScript.UTGame.UTTeamPlayerStart;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKTeamPlayerStart;

extern(C++) interface UTTeamPlayerStart : UDKTeamPlayerStart
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTTeamPlayerStart")); }
	private static __gshared UTTeamPlayerStart mDefaultProperties;
	@property final static UTTeamPlayerStart DefaultProperties() { mixin(MGDPC("UTTeamPlayerStart", "UTTeamPlayerStart UTGame.Default__UTTeamPlayerStart")); }
}
