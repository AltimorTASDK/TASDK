module UnrealScript.UTGame.UTObjectiveAnnouncement;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTObjectiveSpecificMessage;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTQueuedAnnouncement;

extern(C++) interface UTObjectiveAnnouncement : UTObjectiveSpecificMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTObjectiveAnnouncement")); }
	private static __gshared UTObjectiveAnnouncement mDefaultProperties;
	@property final static UTObjectiveAnnouncement DefaultProperties() { mixin(MGDPC("UTObjectiveAnnouncement", "UTObjectiveAnnouncement UTGame.Default__UTObjectiveAnnouncement")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjectiveAnnouncement;
			ScriptFunction mShouldBeRemoved;
			ScriptFunction mSetHUDDisplay;
		}
		public @property static final
		{
			ScriptFunction GetObjectiveAnnouncement() { mixin(MGF("mGetObjectiveAnnouncement", "Function UTGame.UTObjectiveAnnouncement.GetObjectiveAnnouncement")); }
			ScriptFunction ShouldBeRemoved() { mixin(MGF("mShouldBeRemoved", "Function UTGame.UTObjectiveAnnouncement.ShouldBeRemoved")); }
			ScriptFunction SetHUDDisplay() { mixin(MGF("mSetHUDDisplay", "Function UTGame.UTObjectiveAnnouncement.SetHUDDisplay")); }
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
	static bool ShouldBeRemoved(UTQueuedAnnouncement MyAnnouncement, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTQueuedAnnouncement*)params.ptr = MyAnnouncement;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		StaticClass.ProcessEvent(Functions.ShouldBeRemoved, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
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
