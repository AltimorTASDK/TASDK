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
	public @property final auto ref SoundNodeWave TakenSounds() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref SoundNodeWave DroppedSounds() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref SoundNodeWave ReturnSounds() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptString KilledRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref ScriptString KilledBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref ScriptString HasRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref ScriptString HasBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref ScriptString DroppedRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref ScriptString DroppedBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref ScriptString CaptureRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref ScriptString CaptureBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ScriptString ReturnedRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptString ReturnedBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptString ReturnRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptString ReturnBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	final void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43835], params.ptr, cast(void*)0);
	}
	final SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43844], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	final ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43849], params.ptr, cast(void*)0);
		return params[1];
	}
	final ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43852], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	final bool ShouldBeRemoved(UTQueuedAnnouncement MyAnnouncement, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTQueuedAnnouncement*)params.ptr = MyAnnouncement;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43859], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool ShouldRemoveFlagAnnouncement(int MyMessageIndex, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MyMessageIndex;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43864], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool AddAnnouncement(UTAnnouncer Announcer, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTAnnouncer*)params.ptr = Announcer;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43869], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool PartiallyDuplicates(int Switch1, int Switch2, UObject OptionalObject1, UObject OptionalObject2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch1;
		*cast(int*)&params[4] = Switch2;
		*cast(UObject*)&params[8] = OptionalObject1;
		*cast(UObject*)&params[12] = OptionalObject2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43875], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
