module UnrealScript.UTGame.UTVehicleCantCarryFlagMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface UTVehicleCantCarryFlagMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTVehicleCantCarryFlagMessage")()); }
	private static __gshared UTVehicleCantCarryFlagMessage mDefaultProperties;
	@property final static UTVehicleCantCarryFlagMessage DefaultProperties() { mixin(MGDPC!(UTVehicleCantCarryFlagMessage, "UTVehicleCantCarryFlagMessage UTGame.Default__UTVehicleCantCarryFlagMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClientReceive;
			ScriptFunction mAnnouncementSound;
			ScriptFunction mAnnouncementLevel;
			ScriptFunction mGetString;
		}
		public @property static final
		{
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function UTGame.UTVehicleCantCarryFlagMessage.ClientReceive")()); }
			ScriptFunction AnnouncementSound() { mixin(MGF!("mAnnouncementSound", "Function UTGame.UTVehicleCantCarryFlagMessage.AnnouncementSound")()); }
			ScriptFunction AnnouncementLevel() { mixin(MGF!("mAnnouncementLevel", "Function UTGame.UTVehicleCantCarryFlagMessage.AnnouncementLevel")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function UTGame.UTVehicleCantCarryFlagMessage.GetString")()); }
		}
	}
	@property final auto ref
	{
		SoundNodeWave FlagAnnouncement() { mixin(MGPC!(SoundNodeWave, 112)()); }
		ScriptString FlagMessage() { mixin(MGPC!(ScriptString, 100)()); }
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
}
