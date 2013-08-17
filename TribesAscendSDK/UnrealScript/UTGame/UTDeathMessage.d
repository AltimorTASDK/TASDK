module UnrealScript.UTGame.UTDeathMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;

extern(C++) interface UTDeathMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTDeathMessage")()); }
	private static __gshared UTDeathMessage mDefaultProperties;
	@property final static UTDeathMessage DefaultProperties() { mixin(MGDPC!(UTDeathMessage, "UTDeathMessage UTGame.Default__UTDeathMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetConsoleColor;
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction GetConsoleColor() { mixin(MGF!("mGetConsoleColor", "Function UTGame.UTDeathMessage.GetConsoleColor")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function UTGame.UTDeathMessage.GetString")()); }
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function UTGame.UTDeathMessage.ClientReceive")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString SomeoneString() { mixin(MGPC!(ScriptString, 112)()); }
			ScriptString KilledString() { mixin(MGPC!(ScriptString, 100)()); }
		}
		bool bNoConsoleDeathMessages() { mixin(MGBPC!(124, 0x1)()); }
		bool bNoConsoleDeathMessages(bool val) { mixin(MSBPC!(124, 0x1)()); }
	}
final:
	static UObject.Color GetConsoleColor(PlayerReplicationInfo RelatedPRI_1)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = RelatedPRI_1;
		StaticClass.ProcessEvent(Functions.GetConsoleColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[4];
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
}
