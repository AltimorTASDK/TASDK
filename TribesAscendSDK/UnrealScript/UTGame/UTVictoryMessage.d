module UnrealScript.UTGame.UTVictoryMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTAnnouncer;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface UTVictoryMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTVictoryMessage")()); }
	private static __gshared UTVictoryMessage mDefaultProperties;
	@property final static UTVictoryMessage DefaultProperties() { mixin(MGDPC!(UTVictoryMessage, "UTVictoryMessage UTGame.Default__UTVictoryMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAnnouncementLevel;
			ScriptFunction mAnnouncementSound;
			ScriptFunction mClientReceive;
			ScriptFunction mAddAnnouncement;
		}
		public @property static final
		{
			ScriptFunction AnnouncementLevel() { mixin(MGF!("mAnnouncementLevel", "Function UTGame.UTVictoryMessage.AnnouncementLevel")()); }
			ScriptFunction AnnouncementSound() { mixin(MGF!("mAnnouncementSound", "Function UTGame.UTVictoryMessage.AnnouncementSound")()); }
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function UTGame.UTVictoryMessage.ClientReceive")()); }
			ScriptFunction AddAnnouncement() { mixin(MGF!("mAddAnnouncement", "Function UTGame.UTVictoryMessage.AddAnnouncement")()); }
		}
	}
	@property final auto ref SoundNodeWave VictorySounds() { mixin(MGPC!(SoundNodeWave, 100)()); }
final:
	static ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		StaticClass.ProcessEvent(Functions.AnnouncementLevel, params.ptr, cast(void*)0);
		return params[1];
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
}
