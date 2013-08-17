module UnrealScript.UTGame.UTStartupMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface UTStartupMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTStartupMessage")()); }
	private static __gshared UTStartupMessage mDefaultProperties;
	@property final static UTStartupMessage DefaultProperties() { mixin(MGDPC!(UTStartupMessage, "UTStartupMessage UTGame.Default__UTStartupMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClientReceive;
			ScriptFunction mGetString;
		}
		public @property static final
		{
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function UTGame.UTStartupMessage.ClientReceive")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function UTGame.UTStartupMessage.GetString")()); }
		}
	}
	@property final auto ref
	{
		ScriptString SinglePlayer() { mixin(MGPC!(ScriptString, 196)()); }
		ScriptString NotReady() { mixin(MGPC!(ScriptString, 184)()); }
		ScriptString Stage() { mixin(MGPC!(ScriptString, 100)()); }
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
