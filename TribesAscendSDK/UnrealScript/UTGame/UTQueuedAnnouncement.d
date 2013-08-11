module UnrealScript.UTGame.UTQueuedAnnouncement;

import ScriptClasses;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface UTQueuedAnnouncement : Info
{
	public @property final auto ref UTQueuedAnnouncement nextAnnouncement() { return *cast(UTQueuedAnnouncement*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref ScriptClass AnnouncementClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref int MessageIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref PlayerReplicationInfo PRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref UObject OptionalObject() { return *cast(UObject*)(cast(size_t)cast(void*)this + 492); }
}
