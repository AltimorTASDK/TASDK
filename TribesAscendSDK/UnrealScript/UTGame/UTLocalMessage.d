module UnrealScript.UTGame.UTLocalMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTAnnouncer;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.UTGame.UTQueuedAnnouncement;
import UnrealScript.Engine.HUD;

extern(C++) interface UTLocalMessage : LocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTLocalMessage")()); }
	private static __gshared UTLocalMessage mDefaultProperties;
	@property final static UTLocalMessage DefaultProperties() { mixin(MGDPC!(UTLocalMessage, "UTLocalMessage UTGame.Default__UTLocalMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAnnouncementSound;
			ScriptFunction mAnnouncementLevel;
			ScriptFunction mAddAnnouncement;
			ScriptFunction mShouldBeRemoved;
			ScriptFunction mGetPos;
			ScriptFunction mKilledByVictoryMessage;
		}
		public @property static final
		{
			ScriptFunction AnnouncementSound() { mixin(MGF!("mAnnouncementSound", "Function UTGame.UTLocalMessage.AnnouncementSound")()); }
			ScriptFunction AnnouncementLevel() { mixin(MGF!("mAnnouncementLevel", "Function UTGame.UTLocalMessage.AnnouncementLevel")()); }
			ScriptFunction AddAnnouncement() { mixin(MGF!("mAddAnnouncement", "Function UTGame.UTLocalMessage.AddAnnouncement")()); }
			ScriptFunction ShouldBeRemoved() { mixin(MGF!("mShouldBeRemoved", "Function UTGame.UTLocalMessage.ShouldBeRemoved")()); }
			ScriptFunction GetPos() { mixin(MGF!("mGetPos", "Function UTGame.UTLocalMessage.GetPos")()); }
			ScriptFunction KilledByVictoryMessage() { mixin(MGF!("mKilledByVictoryMessage", "Function UTGame.UTLocalMessage.KilledByVictoryMessage")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float AnnouncementVolume() { mixin(MGPC!("float", 92)()); }
			float AnnouncementDelay() { mixin(MGPC!("float", 96)()); }
			int AnnouncementPriority() { mixin(MGPC!("int", 84)()); }
			int MessageArea() { mixin(MGPC!("int", 80)()); }
		}
		bool bShowPortrait() { mixin(MGBPC!(88, 0x1)()); }
		bool bShowPortrait(bool val) { mixin(MSBPC!(88, 0x1)()); }
	}
final:
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
	static ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		StaticClass.ProcessEvent(Functions.AnnouncementLevel, params.ptr, cast(void*)0);
		return params[1];
	}
	static bool AddAnnouncement(UTAnnouncer Announcer, int MessageIndex, PlayerReplicationInfo* PRI = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTAnnouncer*)params.ptr = Announcer;
		*cast(int*)&params[4] = MessageIndex;
		if (PRI !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *PRI;
		if (OptionalObject !is null)
			*cast(UObject*)&params[12] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.AddAnnouncement, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
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
	static float GetPos(int Switch, HUD myHUD)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(HUD*)&params[4] = myHUD;
		StaticClass.ProcessEvent(Functions.GetPos, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static bool KilledByVictoryMessage(int AnnouncementIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = AnnouncementIndex;
		StaticClass.ProcessEvent(Functions.KilledByVictoryMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
