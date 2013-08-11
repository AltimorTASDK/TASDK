module UnrealScript.TribesGame.TrExplosiveSpreeMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface TrExplosiveSpreeMessage : UTLocalMessage
{
public extern(D):
	@property final auto ref
	{
		ScriptString EndSpreeNoteTrailer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 276); }
		SoundNodeWave SpreeSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 256); }
		ScriptString SelfSpreeNote() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
		ScriptString SpreeNote() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
		ScriptString MultiKillString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString EndSelfSpree() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString EndSpreeNote() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	}
final:
	int GetFontSize(int Switch, PlayerReplicationInfo RelatedPRI1, PlayerReplicationInfo RelatedPRI2, PlayerReplicationInfo pLocalPlayer)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI2;
		*cast(PlayerReplicationInfo*)&params[12] = pLocalPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87603], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87611], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87618], params.ptr, cast(void*)0);
	}
	SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87624], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
}
