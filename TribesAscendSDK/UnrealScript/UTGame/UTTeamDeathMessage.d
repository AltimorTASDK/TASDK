module UnrealScript.UTGame.UTTeamDeathMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDeathMessage;

extern(C++) interface UTTeamDeathMessage : UTDeathMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTTeamDeathMessage")); }
	private static __gshared UTTeamDeathMessage mDefaultProperties;
	@property final static UTTeamDeathMessage DefaultProperties() { mixin(MGDPC("UTTeamDeathMessage", "UTTeamDeathMessage UTGame.Default__UTTeamDeathMessage")); }
}
