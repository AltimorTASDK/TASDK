module UnrealScript.UTGame.UTObjectiveAnnouncement;

import ScriptClasses;
import UnrealScript.UTGame.UTObjectiveSpecificMessage;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTQueuedAnnouncement;

extern(C++) interface UTObjectiveAnnouncement : UTObjectiveSpecificMessage
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48650], params.ptr, cast(void*)0);
		return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)&params[12];
	}
	bool ShouldBeRemoved(UTQueuedAnnouncement MyAnnouncement, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTQueuedAnnouncement*)params.ptr = MyAnnouncement;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48660], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48665], params.ptr, cast(void*)0);
	}
}
