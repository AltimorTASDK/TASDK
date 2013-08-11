module UnrealScript.UDKBase.UDKTeamOwnedInfo;

import ScriptClasses;
import UnrealScript.Engine.ReplicationInfo;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface UDKTeamOwnedInfo : ReplicationInfo
{
public extern(D):
	@property final auto ref TeamInfo Team() { return *cast(TeamInfo*)(cast(size_t)cast(void*)this + 476); }
	final ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35508], params.ptr, cast(void*)0);
		return params[0];
	}
}
