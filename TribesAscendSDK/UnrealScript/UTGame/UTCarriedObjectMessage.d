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
	void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
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
	SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43844], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43849], params.ptr, cast(void*)0);
		return params[1];
	}
	ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
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
	bool ShouldBeRemoved(UTQueuedAnnouncement MyAnnouncement, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTQueuedAnnouncement*)params.ptr = MyAnnouncement;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43859], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ShouldRemoveFlagAnnouncement(int MyMessageIndex, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MyMessageIndex;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43864], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool AddAnnouncement(UTAnnouncer Announcer, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
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
	bool PartiallyDuplicates(int Switch1, int Switch2, UObject OptionalObject1, UObject OptionalObject2)
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
