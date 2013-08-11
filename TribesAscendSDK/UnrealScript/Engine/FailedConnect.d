module UnrealScript.Engine.FailedConnect;

import ScriptClasses;
import UnrealScript.Engine.LocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface FailedConnect : LocalMessage
{
	public @property final auto ref ScriptString FailMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
	final int GetFailSwitch(ScriptString FailString)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FailString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15694], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15697], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
}
