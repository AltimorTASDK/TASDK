module UnrealScript.TribesGame.TrArenaMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrArenaMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrArenaMessage")); }
	private static __gshared TrArenaMessage mDefaultProperties;
	@property final static TrArenaMessage DefaultProperties() { mixin(MGDPC("TrArenaMessage", "TrArenaMessage TribesGame.Default__TrArenaMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction GetString() { mixin(MGF("mGetString", "Function TribesGame.TrArenaMessage.GetString")); }
			ScriptFunction ClientReceive() { mixin(MGF("mClientReceive", "Function TribesGame.TrArenaMessage.ClientReceive")); }
		}
	}
	@property final auto ref
	{
		ScriptString WeLostTheRound() { mixin(MGPC("ScriptString", 196)); }
		ScriptString WeWonTheRound() { mixin(MGPC("ScriptString", 184)); }
		ScriptString CannotSwitchTeam() { mixin(MGPC("ScriptString", 172)); }
		ScriptString NoRespawnsRemain() { mixin(MGPC("ScriptString", 160)); }
		ScriptString Fight() { mixin(MGPC("ScriptString", 148)); }
		ScriptString YouAreLastManStanding() { mixin(MGPC("ScriptString", 136)); }
		ScriptString TeamRespawnsDepleted() { mixin(MGPC("ScriptString", 124)); }
		ScriptString FiveTeamRespawnsRemain() { mixin(MGPC("ScriptString", 112)); }
		ScriptString TenTeamRespawnsRemain() { mixin(MGPC("ScriptString", 100)); }
	}
final:
	static ScriptString GetString(int* Switch = null, bool* bPRI1HUD = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[32];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (bPRI1HUD !is null)
			*cast(bool*)&params[4] = *bPRI1HUD;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	static void ClientReceive(PlayerController P, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		if (Switch !is null)
			*cast(int*)&params[4] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.ClientReceive, params.ptr, cast(void*)0);
	}
}
