module UnrealScript.UTGame.UTCarriedObjectMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTAnnouncer;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.UTGame.UTQueuedAnnouncement;

extern(C++) interface UTCarriedObjectMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTCarriedObjectMessage")); }
	private static __gshared UTCarriedObjectMessage mDefaultProperties;
	@property final static UTCarriedObjectMessage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTCarriedObjectMessage)("UTCarriedObjectMessage UTGame.Default__UTCarriedObjectMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClientReceive;
			ScriptFunction mAnnouncementSound;
			ScriptFunction mAnnouncementLevel;
			ScriptFunction mGetString;
			ScriptFunction mShouldBeRemoved;
			ScriptFunction mShouldRemoveFlagAnnouncement;
			ScriptFunction mAddAnnouncement;
			ScriptFunction mPartiallyDuplicates;
		}
		public @property static final
		{
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObjectMessage.ClientReceive")); }
			ScriptFunction AnnouncementSound() { return mAnnouncementSound ? mAnnouncementSound : (mAnnouncementSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObjectMessage.AnnouncementSound")); }
			ScriptFunction AnnouncementLevel() { return mAnnouncementLevel ? mAnnouncementLevel : (mAnnouncementLevel = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObjectMessage.AnnouncementLevel")); }
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObjectMessage.GetString")); }
			ScriptFunction ShouldBeRemoved() { return mShouldBeRemoved ? mShouldBeRemoved : (mShouldBeRemoved = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObjectMessage.ShouldBeRemoved")); }
			ScriptFunction ShouldRemoveFlagAnnouncement() { return mShouldRemoveFlagAnnouncement ? mShouldRemoveFlagAnnouncement : (mShouldRemoveFlagAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObjectMessage.ShouldRemoveFlagAnnouncement")); }
			ScriptFunction AddAnnouncement() { return mAddAnnouncement ? mAddAnnouncement : (mAddAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObjectMessage.AddAnnouncement")); }
			ScriptFunction PartiallyDuplicates() { return mPartiallyDuplicates ? mPartiallyDuplicates : (mPartiallyDuplicates = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObjectMessage.PartiallyDuplicates")); }
		}
	}
	@property final auto ref
	{
		SoundNodeWave TakenSounds() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 260); }
		SoundNodeWave DroppedSounds() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 252); }
		SoundNodeWave ReturnSounds() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 244); }
		ScriptString KilledRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
		ScriptString KilledBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 220); }
		ScriptString HasRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 208); }
		ScriptString HasBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
		ScriptString DroppedRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
		ScriptString DroppedBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
		ScriptString CaptureRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 160); }
		ScriptString CaptureBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
		ScriptString ReturnedRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
		ScriptString ReturnedBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString ReturnRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString ReturnBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	}
final:
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
	static bool ShouldRemoveFlagAnnouncement(int MyMessageIndex, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MyMessageIndex;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		StaticClass.ProcessEvent(Functions.ShouldRemoveFlagAnnouncement, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
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
	static bool PartiallyDuplicates(int Switch1, int Switch2, UObject OptionalObject1, UObject OptionalObject2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch1;
		*cast(int*)&params[4] = Switch2;
		*cast(UObject*)&params[8] = OptionalObject1;
		*cast(UObject*)&params[12] = OptionalObject2;
		StaticClass.ProcessEvent(Functions.PartiallyDuplicates, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
