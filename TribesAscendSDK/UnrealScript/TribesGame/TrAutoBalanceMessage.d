module UnrealScript.TribesGame.TrAutoBalanceMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface TrAutoBalanceMessage : UTLocalMessage
{
public extern(D):
	@property final auto ref
	{
		ScriptString TeamsAutoBalanced() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString AutoBalanceInFive() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString AutoBalanceInTwenty() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69003], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
}
