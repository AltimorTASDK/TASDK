module UnrealScript.UTGame.UTQueuedAnnouncement;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface UTQueuedAnnouncement : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTQueuedAnnouncement")); }
	private static __gshared UTQueuedAnnouncement mDefaultProperties;
	@property final static UTQueuedAnnouncement DefaultProperties() { mixin(MGDPC("UTQueuedAnnouncement", "UTQueuedAnnouncement UTGame.Default__UTQueuedAnnouncement")); }
	@property final auto ref
	{
		UTQueuedAnnouncement nextAnnouncement() { mixin(MGPC("UTQueuedAnnouncement", 476)); }
		ScriptClass AnnouncementClass() { mixin(MGPC("ScriptClass", 480)); }
		int MessageIndex() { mixin(MGPC("int", 484)); }
		PlayerReplicationInfo PRI() { mixin(MGPC("PlayerReplicationInfo", 488)); }
		UObject OptionalObject() { mixin(MGPC("UObject", 492)); }
	}
}
