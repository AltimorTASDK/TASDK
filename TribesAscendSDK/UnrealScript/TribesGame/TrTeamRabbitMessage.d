module UnrealScript.TribesGame.TrTeamRabbitMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrTeamRabbitMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrTeamRabbitMessage")()); }
	private static __gshared TrTeamRabbitMessage mDefaultProperties;
	@property final static TrTeamRabbitMessage DefaultProperties() { mixin(MGDPC!(TrTeamRabbitMessage, "TrTeamRabbitMessage TribesGame.Default__TrTeamRabbitMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function TribesGame.TrTeamRabbitMessage.GetString")()); }
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function TribesGame.TrTeamRabbitMessage.ClientReceive")()); }
		}
	}
	@property final auto ref
	{
		ScriptString LivesLeft() { mixin(MGPC!("ScriptString", 184)()); }
		ScriptString EnemyTeamHas() { mixin(MGPC!("ScriptString", 172)()); }
		ScriptString YourTeamHas() { mixin(MGPC!("ScriptString", 160)()); }
		ScriptString DroppedTheFlag() { mixin(MGPC!("ScriptString", 148)()); }
		ScriptString KillBonus() { mixin(MGPC!("ScriptString", 136)()); }
		ScriptString YourTeamHasTheFlag() { mixin(MGPC!("ScriptString", 124)()); }
		ScriptString TheEnemyHasTheFlag() { mixin(MGPC!("ScriptString", 112)()); }
		ScriptString YouHaveTheFlag() { mixin(MGPC!("ScriptString", 100)()); }
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
