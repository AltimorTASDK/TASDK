module UnrealScript.TribesGame.TrJammerMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface TrJammerMessage : UTLocalMessage
{
	public @property final auto ref ScriptString JammedByEnemyJammerPack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ScriptString JammingViaOtherDropJammer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptString JammedByEnemyDropJammer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptString JammingForOther() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptString JammingViaOther() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	final ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98355], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
}
