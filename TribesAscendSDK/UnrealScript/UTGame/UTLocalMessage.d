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
	public @property final auto ref float AnnouncementVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final bool bShowPortrait() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bShowPortrait(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	public @property final auto ref float AnnouncementDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref int AnnouncementPriority() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref int MessageArea() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
	final SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40596], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	final ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40609], params.ptr, cast(void*)0);
		return params[1];
	}
	final bool AddAnnouncement(UTAnnouncer Announcer, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTAnnouncer*)params.ptr = Announcer;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40612], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool ShouldBeRemoved(UTQueuedAnnouncement MyAnnouncement, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTQueuedAnnouncement*)params.ptr = MyAnnouncement;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43797], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final float GetPos(int Switch, HUD myHUD)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(HUD*)&params[4] = myHUD;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43810], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final bool KilledByVictoryMessage(int AnnouncementIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = AnnouncementIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43815], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
