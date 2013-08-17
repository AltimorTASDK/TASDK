module UnrealScript.Engine.GameMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface GameMessage : LocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.GameMessage")()); }
	private static __gshared GameMessage mDefaultProperties;
	@property final static GameMessage DefaultProperties() { mixin(MGDPC!(GameMessage, "GameMessage Engine.Default__GameMessage")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetString;
		public @property static final ScriptFunction GetString() { mixin(MGF!("mGetString", "Function Engine.GameMessage.GetString")()); }
	}
	@property final auto ref
	{
		ScriptString MaxedOutMessage() { mixin(MGPC!(ScriptString, 152)()); }
		ScriptString SpecEnteredMessage() { mixin(MGPC!(ScriptString, 344)()); }
		ScriptString NewSpecMessage() { mixin(MGPC!(ScriptString, 332)()); }
		ScriptString KickWarning() { mixin(MGPC!(ScriptString, 320)()); }
		ScriptString NewPlayerMessage() { mixin(MGPC!(ScriptString, 308)()); }
		ScriptString BecameSpectator() { mixin(MGPC!(ScriptString, 296)()); }
		ScriptString CantBePlayer() { mixin(MGPC!(ScriptString, 284)()); }
		ScriptString CantBeSpectator() { mixin(MGPC!(ScriptString, 272)()); }
		ScriptString MustHaveStats() { mixin(MGPC!(ScriptString, 260)()); }
		ScriptString VotePassed() { mixin(MGPC!(ScriptString, 248)()); }
		ScriptString VoteStarted() { mixin(MGPC!(ScriptString, 236)()); }
		ScriptString NoNameChange() { mixin(MGPC!(ScriptString, 224)()); }
		ScriptString NewTeamMessageTrailer() { mixin(MGPC!(ScriptString, 212)()); }
		ScriptString NewTeamMessage() { mixin(MGPC!(ScriptString, 200)()); }
		ScriptString GlobalNameChange() { mixin(MGPC!(ScriptString, 188)()); }
		ScriptString OvertimeMessage() { mixin(MGPC!(ScriptString, 176)()); }
		ScriptString ArbitrationMessage() { mixin(MGPC!(ScriptString, 164)()); }
		ScriptString EnteredMessage() { mixin(MGPC!(ScriptString, 140)()); }
		ScriptString FailedSpawnMessage() { mixin(MGPC!(ScriptString, 128)()); }
		ScriptString FailedPlaceMessage() { mixin(MGPC!(ScriptString, 116)()); }
		ScriptString FailedTeamMessage() { mixin(MGPC!(ScriptString, 104)()); }
		ScriptString LeftMessage() { mixin(MGPC!(ScriptString, 92)()); }
		ScriptString SwitchLevelMessage() { mixin(MGPC!(ScriptString, 80)()); }
	}
	final static ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
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
