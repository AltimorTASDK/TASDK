module UnrealScript.UTGame.UTAnnouncer;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;
import UnrealScript.UTGame.UTQueuedAnnouncement;

extern(C++) interface UTAnnouncer : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnnouncer")); }
	private static __gshared UTAnnouncer mDefaultProperties;
	@property final static UTAnnouncer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnnouncer)("UTAnnouncer UTGame.Default__UTAnnouncer")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDestroyed;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPlayNextAnnouncement;
			ScriptFunction mPlayAnnouncementNow;
			ScriptFunction mAnnouncementFinished;
			ScriptFunction mPlayAnnouncement;
		}
		public @property static final
		{
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAnnouncer.Destroyed")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAnnouncer.PostBeginPlay")); }
			ScriptFunction PlayNextAnnouncement() { return mPlayNextAnnouncement ? mPlayNextAnnouncement : (mPlayNextAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAnnouncer.PlayNextAnnouncement")); }
			ScriptFunction PlayAnnouncementNow() { return mPlayAnnouncementNow ? mPlayAnnouncementNow : (mPlayAnnouncementNow = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAnnouncer.PlayAnnouncementNow")); }
			ScriptFunction AnnouncementFinished() { return mAnnouncementFinished ? mAnnouncementFinished : (mAnnouncementFinished = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAnnouncer.AnnouncementFinished")); }
			ScriptFunction PlayAnnouncement() { return mPlayAnnouncement ? mPlayAnnouncement : (mPlayAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAnnouncer.PlayAnnouncement")); }
		}
	}
	@property final auto ref
	{
		ScriptString UTVoiceSoundCueSoundCue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 516); }
		SoundCue UTVoiceSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 512); }
		ScriptString CustomAnnouncerSoundCue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 500); }
		SoundCue AnnouncerSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 496); }
		UTPlayerController PlayerOwner() { return *cast(UTPlayerController*)(cast(size_t)cast(void*)this + 492); }
		UTQueuedAnnouncement Queue() { return *cast(UTQueuedAnnouncement*)(cast(size_t)cast(void*)this + 488); }
		int PlayingAnnouncementIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
		ScriptClass PlayingAnnouncementClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 480); }
		ubyte AnnouncerLevel() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 476); }
	}
final:
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PlayNextAnnouncement()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayNextAnnouncement, cast(void*)0, cast(void*)0);
	}
	void PlayAnnouncementNow(ScriptClass InMessageClass, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAnnouncementNow, params.ptr, cast(void*)0);
	}
	void AnnouncementFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnnouncementFinished, params.ptr, cast(void*)0);
	}
	void PlayAnnouncement(ScriptClass InMessageClass, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAnnouncement, params.ptr, cast(void*)0);
	}
}
