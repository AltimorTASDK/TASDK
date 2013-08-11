module UnrealScript.UTGame.UTDMRoster;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTTeamInfo;

extern(C++) interface UTDMRoster : UTTeamInfo
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47180], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
