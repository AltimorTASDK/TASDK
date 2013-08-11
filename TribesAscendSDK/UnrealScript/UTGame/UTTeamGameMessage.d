module UnrealScript.UTGame.UTTeamGameMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.Engine.HUD;

extern(C++) interface UTTeamGameMessage : UTLocalMessage
{
	public @property final auto ref SoundNodeWave AnnouncerSounds() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref UObject.Color BlueDrawColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref UObject.Color RedDrawColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ScriptString YouAreOnBlueMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptString YouAreOnRedMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptString RequestTeamSwapPostfix() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptString RequestTeamSwapPrefix() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	final void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49419], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49425], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	final SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49432], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	final int GetFontSize(int Switch, PlayerReplicationInfo RelatedPRI1, PlayerReplicationInfo RelatedPRI2, PlayerReplicationInfo LocalPlayer)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI2;
		*cast(PlayerReplicationInfo*)&params[12] = LocalPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49437], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	final float GetPos(int Switch, HUD myHUD)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(HUD*)&params[4] = myHUD;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49443], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final UObject.Color GetColor(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49447], params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[16];
	}
}
