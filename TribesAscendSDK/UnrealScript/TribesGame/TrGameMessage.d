module UnrealScript.TribesGame.TrGameMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrGameMessage : UTLocalMessage
{
public extern(D):
	@property final auto ref
	{
		SoundCue m_sMatchStartDiamondSword() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 152); }
		SoundCue m_sMatchStartBloodEagle() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 148); }
		ScriptString WaitingForPlayers() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
		ScriptString OvertimeNotification() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString YouAreOnDiamondSwordMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString YouAreOnBloodEagleMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	}
final:
	ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91089], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91096], params.ptr, cast(void*)0);
	}
}
