module UnrealScript.UTGame.UTQueuedAnnouncement;

import ScriptClasses;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface UTQueuedAnnouncement : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTQueuedAnnouncement")); }
	private static __gshared UTQueuedAnnouncement mDefaultProperties;
	@property final static UTQueuedAnnouncement DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTQueuedAnnouncement)("UTQueuedAnnouncement UTGame.Default__UTQueuedAnnouncement")); }
	@property final auto ref
	{
		UTQueuedAnnouncement nextAnnouncement() { return *cast(UTQueuedAnnouncement*)(cast(size_t)cast(void*)this + 476); }
		ScriptClass AnnouncementClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 480); }
		int MessageIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
		PlayerReplicationInfo PRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 488); }
		UObject OptionalObject() { return *cast(UObject*)(cast(size_t)cast(void*)this + 492); }
	}
}
