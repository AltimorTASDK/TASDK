module UnrealScript.UTGame.UTDMRoster;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTTeamInfo;

extern(C++) interface UTDMRoster : UTTeamInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDMRoster")); }
	private static __gshared UTDMRoster mDefaultProperties;
	@property final static UTDMRoster DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDMRoster)("UTDMRoster UTGame.Default__UTDMRoster")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mAddToTeam;
		public @property static final ScriptFunction AddToTeam() { return mAddToTeam ? mAddToTeam : (mAddToTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMRoster.AddToTeam")); }
	}
	@property final auto ref
	{
		ScriptClass DMSquadClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 600); }
		int Position() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
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
