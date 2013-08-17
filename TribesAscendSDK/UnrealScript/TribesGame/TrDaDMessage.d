module UnrealScript.TribesGame.TrDaDMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrDaDMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDaDMessage")()); }
	private static __gshared TrDaDMessage mDefaultProperties;
	@property final static TrDaDMessage DefaultProperties() { mixin(MGDPC!(TrDaDMessage, "TrDaDMessage TribesGame.Default__TrDaDMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function TribesGame.TrDaDMessage.GetString")()); }
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function TribesGame.TrDaDMessage.ClientReceive")()); }
		}
	}
	@property final auto ref
	{
		ScriptString CannotSwitchTeam() { mixin(MGPC!(ScriptString, 172)()); }
		ScriptString NoRespawnsRemain() { mixin(MGPC!(ScriptString, 160)()); }
		ScriptString Fight() { mixin(MGPC!(ScriptString, 148)()); }
		ScriptString YouAreLastManStanding() { mixin(MGPC!(ScriptString, 136)()); }
		ScriptString TeamRespawnsDepleted() { mixin(MGPC!(ScriptString, 124)()); }
		ScriptString FiveTeamRespawnsRemain() { mixin(MGPC!(ScriptString, 112)()); }
		ScriptString TenTeamRespawnsRemain() { mixin(MGPC!(ScriptString, 100)()); }
	}
final:
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
