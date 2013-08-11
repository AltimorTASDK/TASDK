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
	public @property final auto ref ScriptString UTVoiceSoundCueSoundCue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref SoundCue UTVoiceSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref ScriptString CustomAnnouncerSoundCue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref SoundCue AnnouncerSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref UTPlayerController PlayerOwner() { return *cast(UTPlayerController*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref UTQueuedAnnouncement Queue() { return *cast(UTQueuedAnnouncement*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref int PlayingAnnouncementIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref ScriptClass PlayingAnnouncementClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref ubyte AnnouncerLevel() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 476); }
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40579], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40582], cast(void*)0, cast(void*)0);
	}
	final void PlayNextAnnouncement()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40583], cast(void*)0, cast(void*)0);
	}
	final void PlayAnnouncementNow(ScriptClass InMessageClass, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40589], params.ptr, cast(void*)0);
	}
	final void AnnouncementFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40602], params.ptr, cast(void*)0);
	}
	final void PlayAnnouncement(ScriptClass InMessageClass, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40604], params.ptr, cast(void*)0);
	}
}
