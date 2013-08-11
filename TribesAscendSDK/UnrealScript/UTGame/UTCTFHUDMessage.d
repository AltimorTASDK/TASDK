module UnrealScript.UTGame.UTCTFHUDMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTAnnouncer;

extern(C++) interface UTCTFHUDMessage : UTLocalMessage
{
public extern(D):
	@property final auto ref
	{
		UObject.Color YellowColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 140); }
		UObject.Color RedColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 136); }
		ScriptString BothFlagsString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString EnemyHasFlagString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString YouHaveFlagString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	}
final:
	UObject.Color GetColor(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46126], params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[16];
	}
	ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46132], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	bool AddAnnouncement(UTAnnouncer Announcer, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTAnnouncer*)params.ptr = Announcer;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46139], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
