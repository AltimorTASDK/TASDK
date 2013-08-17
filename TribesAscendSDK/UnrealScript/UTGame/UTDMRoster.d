module UnrealScript.UTGame.UTDMRoster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTTeamInfo;

extern(C++) interface UTDMRoster : UTTeamInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDMRoster")); }
	private static __gshared UTDMRoster mDefaultProperties;
	@property final static UTDMRoster DefaultProperties() { mixin(MGDPC("UTDMRoster", "UTDMRoster UTGame.Default__UTDMRoster")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mAddToTeam;
		public @property static final ScriptFunction AddToTeam() { mixin(MGF("mAddToTeam", "Function UTGame.UTDMRoster.AddToTeam")); }
	}
	@property final auto ref
	{
		ScriptClass DMSquadClass() { mixin(MGPC("ScriptClass", 600)); }
		int Position() { mixin(MGPC("int", 596)); }
	}
	final bool AddToTeam(Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToTeam, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
