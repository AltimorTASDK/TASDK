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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTObjectiveSpecificMessage")); }
	private static __gshared UTObjectiveSpecificMessage mDefaultProperties;
	@property final static UTObjectiveSpecificMessage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTObjectiveSpecificMessage)("UTObjectiveSpecificMessage UTGame.Default__UTObjectiveSpecificMessage")); }
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
			ScriptFunction GetObjectiveAnnouncement() { return mGetObjectiveAnnouncement ? mGetObjectiveAnnouncement : (mGetObjectiveAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTObjectiveSpecificMessage.GetObjectiveAnnouncement")); }
			ScriptFunction AnnouncementSound() { return mAnnouncementSound ? mAnnouncementSound : (mAnnouncementSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTObjectiveSpecificMessage.AnnouncementSound")); }
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTObjectiveSpecificMessage.ClientReceive")); }
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTObjectiveSpecificMessage.GetString")); }
			ScriptFunction SetHUDDisplay() { return mSetHUDDisplay ? mSetHUDDisplay : (mSetHUDDisplay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTObjectiveSpecificMessage.SetHUDDisplay")); }
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
	static void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.ClientReceive, params.ptr, cast(void*)0);
	}
	static ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
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
