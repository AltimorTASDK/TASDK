module UnrealScript.TribesGame.TrDeployableMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface TrDeployableMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployableMessage")()); }
	private static __gshared TrDeployableMessage mDefaultProperties;
	@property final static TrDeployableMessage DefaultProperties() { mixin(MGDPC!(TrDeployableMessage, "TrDeployableMessage TribesGame.Default__TrDeployableMessage")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetString;
		public @property static final ScriptFunction GetString() { mixin(MGF!("mGetString", "Function TribesGame.TrDeployableMessage.GetString")()); }
	}
	@property final auto ref
	{
		ScriptString DeployableAmmoDepleted() { mixin(MGPC!(ScriptString, 160)()); }
		ScriptString DeployableAmmoRemaining() { mixin(MGPC!(ScriptString, 148)()); }
		ScriptString DeployableHologramInvalidDeploySpot() { mixin(MGPC!(ScriptString, 136)()); }
		ScriptString DeployableHologramOnlyOutside() { mixin(MGPC!(ScriptString, 124)()); }
		ScriptString DeployableHologramTooCloseToAnotherDeployable() { mixin(MGPC!(ScriptString, 112)()); }
		ScriptString DeployableHologramTooCloseToEnemyBase() { mixin(MGPC!(ScriptString, 100)()); }
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
