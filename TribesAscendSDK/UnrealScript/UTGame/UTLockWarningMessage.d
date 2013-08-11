module UnrealScript.UTGame.UTLockWarningMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;

extern(C++) interface UTLockWarningMessage : UTLocalMessage
{
public extern(D):
	@property final auto ref
	{
		UObject.Color YellowColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 128); }
		UObject.Color RedColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 124); }
		ScriptString RadarLockString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString MissileLockOnString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	}
final:
	ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48315], params.ptr, cast(void*)0);
		return params[1];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48318], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	UObject.Color GetColor(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48325], params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[16];
	}
}
