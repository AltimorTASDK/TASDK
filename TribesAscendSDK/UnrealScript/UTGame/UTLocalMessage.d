module UnrealScript.UTGame.UTLocalMessage;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTLocalMessage")); }
	private static __gshared UTLocalMessage mDefaultProperties;
	@property final static UTLocalMessage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTLocalMessage)("UTLocalMessage UTGame.Default__UTLocalMessage")); }
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
			ScriptFunction AnnouncementSound() { return mAnnouncementSound ? mAnnouncementSound : (mAnnouncementSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTLocalMessage.AnnouncementSound")); }
			ScriptFunction AnnouncementLevel() { return mAnnouncementLevel ? mAnnouncementLevel : (mAnnouncementLevel = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTLocalMessage.AnnouncementLevel")); }
			ScriptFunction AddAnnouncement() { return mAddAnnouncement ? mAddAnnouncement : (mAddAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTLocalMessage.AddAnnouncement")); }
			ScriptFunction ShouldBeRemoved() { return mShouldBeRemoved ? mShouldBeRemoved : (mShouldBeRemoved = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTLocalMessage.ShouldBeRemoved")); }
			ScriptFunction GetPos() { return mGetPos ? mGetPos : (mGetPos = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTLocalMessage.GetPos")); }
			ScriptFunction KilledByVictoryMessage() { return mKilledByVictoryMessage ? mKilledByVictoryMessage : (mKilledByVictoryMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTLocalMessage.KilledByVictoryMessage")); }
		}
	}
	@property final
	{
		auto ref
		{
			float AnnouncementVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float AnnouncementDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			int AnnouncementPriority() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
			int MessageArea() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bShowPortrait() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bShowPortrait(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
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
	static bool AddAnnouncement(UTAnnouncer Announcer, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTAnnouncer*)params.ptr = Announcer;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
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
