module UnrealScript.UTGame.UTVictimMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTWeaponKillMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface UTVictimMessage : UTWeaponKillMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTVictimMessage")()); }
	private static __gshared UTVictimMessage mDefaultProperties;
	@property final static UTVictimMessage DefaultProperties() { mixin(MGDPC!(UTVictimMessage, "UTVictimMessage UTGame.Default__UTVictimMessage")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetString;
		public @property static final ScriptFunction GetString() { mixin(MGF!("mGetString", "Function UTGame.UTVictimMessage.GetString")()); }
	}
	@property final auto ref
	{
		ScriptString TelefragString() { mixin(MGPC!(ScriptString, 184)()); }
		ScriptString ViperKamikazeString() { mixin(MGPC!(ScriptString, 172)()); }
		ScriptString ScorpionKamikazeString() { mixin(MGPC!(ScriptString, 160)()); }
		ScriptString SpiderMineString() { mixin(MGPC!(ScriptString, 148)()); }
		ScriptString RunOverString() { mixin(MGPC!(ScriptString, 136)()); }
		ScriptString OrbSuicideString() { mixin(MGPC!(ScriptString, 124)()); }
		ScriptString KilledByTrailer() { mixin(MGPC!(ScriptString, 112)()); }
		ScriptString YouWereKilledBy() { mixin(MGPC!(ScriptString, 100)()); }
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
