module UnrealScript.UTGame.UTAnnouncer;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTAnnouncer")()); }
	private static __gshared UTAnnouncer mDefaultProperties;
	@property final static UTAnnouncer DefaultProperties() { mixin(MGDPC!(UTAnnouncer, "UTAnnouncer UTGame.Default__UTAnnouncer")()); }
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
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UTGame.UTAnnouncer.Destroyed")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTAnnouncer.PostBeginPlay")()); }
			ScriptFunction PlayNextAnnouncement() { mixin(MGF!("mPlayNextAnnouncement", "Function UTGame.UTAnnouncer.PlayNextAnnouncement")()); }
			ScriptFunction PlayAnnouncementNow() { mixin(MGF!("mPlayAnnouncementNow", "Function UTGame.UTAnnouncer.PlayAnnouncementNow")()); }
			ScriptFunction AnnouncementFinished() { mixin(MGF!("mAnnouncementFinished", "Function UTGame.UTAnnouncer.AnnouncementFinished")()); }
			ScriptFunction PlayAnnouncement() { mixin(MGF!("mPlayAnnouncement", "Function UTGame.UTAnnouncer.PlayAnnouncement")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'CurrentAnnouncementComponent'!
		ScriptString UTVoiceSoundCueSoundCue() { mixin(MGPC!(ScriptString, 516)()); }
		SoundCue UTVoiceSoundCue() { mixin(MGPC!(SoundCue, 512)()); }
		ScriptString CustomAnnouncerSoundCue() { mixin(MGPC!(ScriptString, 500)()); }
		SoundCue AnnouncerSoundCue() { mixin(MGPC!(SoundCue, 496)()); }
		UTPlayerController PlayerOwner() { mixin(MGPC!(UTPlayerController, 492)()); }
		UTQueuedAnnouncement Queue() { mixin(MGPC!(UTQueuedAnnouncement, 488)()); }
		int PlayingAnnouncementIndex() { mixin(MGPC!(int, 484)()); }
		ScriptClass PlayingAnnouncementClass() { mixin(MGPC!(ScriptClass, 480)()); }
		ubyte AnnouncerLevel() { mixin(MGPC!(ubyte, 476)()); }
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
