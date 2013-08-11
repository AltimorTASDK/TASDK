module UnrealScript.UTGame.UTObjectiveSpecificMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface UTObjectiveSpecificMessage : UTLocalMessage
{
public extern(D):
final:
	UDKPlayerController.ObjectiveAnnouncementInfo GetObjectiveAnnouncement(ubyte MessageIndex, UObject Objective, PlayerController PC)
	{
		ubyte params[28];
		params[] = 0;
		params[0] = MessageIndex;
		*cast(UObject*)&params[4] = Objective;
		*cast(PlayerController*)&params[8] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48229], params.ptr, cast(void*)0);
		return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)&params[12];
	}
	SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48234], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48240], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48248], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	void SetHUDDisplay(PlayerController P, int Switch, ScriptString Text, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(ScriptString*)&params[8] = Text;
		*cast(PlayerReplicationInfo*)&params[20] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[24] = RelatedPRI_2;
		*cast(UObject*)&params[28] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48256], params.ptr, cast(void*)0);
	}
}
