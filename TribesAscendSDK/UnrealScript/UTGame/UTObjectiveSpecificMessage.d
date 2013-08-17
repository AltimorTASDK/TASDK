module UnrealScript.UTGame.UTObjectiveSpecificMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface UTObjectiveSpecificMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTObjectiveSpecificMessage")); }
	private static __gshared UTObjectiveSpecificMessage mDefaultProperties;
	@property final static UTObjectiveSpecificMessage DefaultProperties() { mixin(MGDPC("UTObjectiveSpecificMessage", "UTObjectiveSpecificMessage UTGame.Default__UTObjectiveSpecificMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjectiveAnnouncement;
			ScriptFunction mAnnouncementSound;
			ScriptFunction mClientReceive;
			ScriptFunction mGetString;
			ScriptFunction mSetHUDDisplay;
		}
		public @property static final
		{
			ScriptFunction GetObjectiveAnnouncement() { mixin(MGF("mGetObjectiveAnnouncement", "Function UTGame.UTObjectiveSpecificMessage.GetObjectiveAnnouncement")); }
			ScriptFunction AnnouncementSound() { mixin(MGF("mAnnouncementSound", "Function UTGame.UTObjectiveSpecificMessage.AnnouncementSound")); }
			ScriptFunction ClientReceive() { mixin(MGF("mClientReceive", "Function UTGame.UTObjectiveSpecificMessage.ClientReceive")); }
			ScriptFunction GetString() { mixin(MGF("mGetString", "Function UTGame.UTObjectiveSpecificMessage.GetString")); }
			ScriptFunction SetHUDDisplay() { mixin(MGF("mSetHUDDisplay", "Function UTGame.UTObjectiveSpecificMessage.SetHUDDisplay")); }
		}
	}
final:
	static UDKPlayerController.ObjectiveAnnouncementInfo GetObjectiveAnnouncement(ubyte MessageIndex, UObject Objective, PlayerController PC)
	{
		ubyte params[28];
		params[] = 0;
		params[0] = MessageIndex;
		*cast(UObject*)&params[4] = Objective;
		*cast(PlayerController*)&params[8] = PC;
		StaticClass.ProcessEvent(Functions.GetObjectiveAnnouncement, params.ptr, cast(void*)0);
		return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)&params[12];
	}
	static SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		StaticClass.ProcessEvent(Functions.AnnouncementSound, params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	static void ClientReceive(PlayerController P, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		if (Switch !is null)
			*cast(int*)&params[4] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.ClientReceive, params.ptr, cast(void*)0);
	}
	static ScriptString GetString(int* Switch = null, bool* bPRI1HUD = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[32];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (bPRI1HUD !is null)
			*cast(bool*)&params[4] = *bPRI1HUD;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	static void SetHUDDisplay(PlayerController P, int Switch, ScriptString Text, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(ScriptString*)&params[8] = Text;
		*cast(PlayerReplicationInfo*)&params[20] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[24] = RelatedPRI_2;
		*cast(UObject*)&params[28] = OptionalObject;
		StaticClass.ProcessEvent(Functions.SetHUDDisplay, params.ptr, cast(void*)0);
	}
}
