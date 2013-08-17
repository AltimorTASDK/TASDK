module UnrealScript.TribesGame.TrCTFHUDMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTAnnouncer;

extern(C++) interface TrCTFHUDMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCTFHUDMessage")()); }
	private static __gshared TrCTFHUDMessage mDefaultProperties;
	@property final static TrCTFHUDMessage DefaultProperties() { mixin(MGDPC!(TrCTFHUDMessage, "TrCTFHUDMessage TribesGame.Default__TrCTFHUDMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClientReceive;
			ScriptFunction mGetColor;
			ScriptFunction mGetString;
			ScriptFunction mAddAnnouncement;
		}
		public @property static final
		{
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function TribesGame.TrCTFHUDMessage.ClientReceive")()); }
			ScriptFunction GetColor() { mixin(MGF!("mGetColor", "Function TribesGame.TrCTFHUDMessage.GetColor")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function TribesGame.TrCTFHUDMessage.GetString")()); }
			ScriptFunction AddAnnouncement() { mixin(MGF!("mAddAnnouncement", "Function TribesGame.TrCTFHUDMessage.AddAnnouncement")()); }
		}
	}
	enum CTF_HUD_MESSAGE : ubyte
	{
		CTF_YouHaveTheFlag = 0,
		CTF_EnemyHasTheFlag = 1,
		CTF_YouAndEnemyHaveTheFlag = 2,
		CTF_MAX = 3,
	}
	@property final auto ref
	{
		UObject.Color YellowColor() { mixin(MGPC!(UObject.Color, 152)()); }
		UObject.Color RedColor() { mixin(MGPC!(UObject.Color, 148)()); }
		ScriptString YouHaveFlagReminderString() { mixin(MGPC!(ScriptString, 136)()); }
		ScriptString BothFlagsString() { mixin(MGPC!(ScriptString, 124)()); }
		ScriptString EnemyHasFlagString() { mixin(MGPC!(ScriptString, 112)()); }
		ScriptString YouHaveFlagString() { mixin(MGPC!(ScriptString, 100)()); }
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
	static UObject.Color GetColor(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		*cast(UObject*)&params[12] = OptionalObject;
		StaticClass.ProcessEvent(Functions.GetColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[16];
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
