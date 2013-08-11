module UnrealScript.UTGame.UTKismetAnnouncement;

import ScriptClasses;
import UnrealScript.UTGame.UTObjectiveSpecificMessage;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface UTKismetAnnouncement : UTObjectiveSpecificMessage
{
	final UDKPlayerController.ObjectiveAnnouncementInfo GetObjectiveAnnouncement(ubyte MessageIndex, UObject Objective, PlayerController PC)
	{
		ubyte params[25];
		params[] = 0;
		params[0] = MessageIndex;
		*cast(UObject*)&params[4] = Objective;
		*cast(PlayerController*)&params[8] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48265], params.ptr, cast(void*)0);
		return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)&params[12];
	}
	final ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48274], params.ptr, cast(void*)0);
		return params[1];
	}
}
