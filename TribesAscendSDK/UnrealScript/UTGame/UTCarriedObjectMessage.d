module UnrealScript.UTGame.UTCarriedObjectMessage;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTCarriedObjectMessage")()); }
	private static __gshared UTCarriedObjectMessage mDefaultProperties;
	@property final static UTCarriedObjectMessage DefaultProperties() { mixin(MGDPC!(UTCarriedObjectMessage, "UTCarriedObjectMessage UTGame.Default__UTCarriedObjectMessage")()); }
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
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function UTGame.UTCarriedObjectMessage.ClientReceive")()); }
			ScriptFunction AnnouncementSound() { mixin(MGF!("mAnnouncementSound", "Function UTGame.UTCarriedObjectMessage.AnnouncementSound")()); }
			ScriptFunction AnnouncementLevel() { mixin(MGF!("mAnnouncementLevel", "Function UTGame.UTCarriedObjectMessage.AnnouncementLevel")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function UTGame.UTCarriedObjectMessage.GetString")()); }
			ScriptFunction ShouldBeRemoved() { mixin(MGF!("mShouldBeRemoved", "Function UTGame.UTCarriedObjectMessage.ShouldBeRemoved")()); }
			ScriptFunction ShouldRemoveFlagAnnouncement() { mixin(MGF!("mShouldRemoveFlagAnnouncement", "Function UTGame.UTCarriedObjectMessage.ShouldRemoveFlagAnnouncement")()); }
			ScriptFunction AddAnnouncement() { mixin(MGF!("mAddAnnouncement", "Function UTGame.UTCarriedObjectMessage.AddAnnouncement")()); }
			ScriptFunction PartiallyDuplicates() { mixin(MGF!("mPartiallyDuplicates", "Function UTGame.UTCarriedObjectMessage.PartiallyDuplicates")()); }
		}
	}
	@property final auto ref
	{
		SoundNodeWave TakenSounds() { mixin(MGPC!(SoundNodeWave, 260)()); }
		SoundNodeWave DroppedSounds() { mixin(MGPC!(SoundNodeWave, 252)()); }
		SoundNodeWave ReturnSounds() { mixin(MGPC!(SoundNodeWave, 244)()); }
		ScriptString KilledRed() { mixin(MGPC!(ScriptString, 232)()); }
		ScriptString KilledBlue() { mixin(MGPC!(ScriptString, 220)()); }
		ScriptString HasRed() { mixin(MGPC!(ScriptString, 208)()); }
		ScriptString HasBlue() { mixin(MGPC!(ScriptString, 196)()); }
		ScriptString DroppedRed() { mixin(MGPC!(ScriptString, 184)()); }
		ScriptString DroppedBlue() { mixin(MGPC!(ScriptString, 172)()); }
		ScriptString CaptureRed() { mixin(MGPC!(ScriptString, 160)()); }
		ScriptString CaptureBlue() { mixin(MGPC!(ScriptString, 148)()); }
		ScriptString ReturnedRed() { mixin(MGPC!(ScriptString, 136)()); }
		ScriptString ReturnedBlue() { mixin(MGPC!(ScriptString, 124)()); }
		ScriptString ReturnRed() { mixin(MGPC!(ScriptString, 112)()); }
		ScriptString ReturnBlue() { mixin(MGPC!(ScriptString, 100)()); }
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
