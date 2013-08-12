module UnrealScript.UTGame.UTKismetAnnouncement;

import ScriptClasses;
import UnrealScript.UTGame.UTObjectiveSpecificMessage;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface UTKismetAnnouncement : UTObjectiveSpecificMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTKismetAnnouncement")); }
	private static __gshared UTKismetAnnouncement mDefaultProperties;
	@property final static UTKismetAnnouncement DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTKismetAnnouncement)("UTKismetAnnouncement UTGame.Default__UTKismetAnnouncement")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjectiveAnnouncement;
			ScriptFunction mAnnouncementLevel;
		}
		public @property static final
		{
			ScriptFunction GetObjectiveAnnouncement() { return mGetObjectiveAnnouncement ? mGetObjectiveAnnouncement : (mGetObjectiveAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTKismetAnnouncement.GetObjectiveAnnouncement")); }
			ScriptFunction AnnouncementLevel() { return mAnnouncementLevel ? mAnnouncementLevel : (mAnnouncementLevel = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTKismetAnnouncement.AnnouncementLevel")); }
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
	static ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		StaticClass.ProcessEvent(Functions.AnnouncementLevel, params.ptr, cast(void*)0);
		return params[1];
	}
}
