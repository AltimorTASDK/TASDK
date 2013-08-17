module UnrealScript.TribesGame.TrStormMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface TrStormMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrStormMessage")()); }
	private static __gshared TrStormMessage mDefaultProperties;
	@property final static TrStormMessage DefaultProperties() { mixin(MGDPC!(TrStormMessage, "TrStormMessage TribesGame.Default__TrStormMessage")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetString;
		public @property static final ScriptFunction GetString() { mixin(MGF!("mGetString", "Function TribesGame.TrStormMessage.GetString")()); }
	}
	@property final auto ref
	{
		ScriptString FriendlyCoreDestroyed() { mixin(MGPC!("ScriptString", 268)()); }
		ScriptString FriendlyCore25Percent() { mixin(MGPC!("ScriptString", 256)()); }
		ScriptString FriendlyCore50Percent() { mixin(MGPC!("ScriptString", 244)()); }
		ScriptString FriendlyCore75Percent() { mixin(MGPC!("ScriptString", 232)()); }
		ScriptString EnemyCoreDestroyed() { mixin(MGPC!("ScriptString", 220)()); }
		ScriptString EnemyCore25Percent() { mixin(MGPC!("ScriptString", 208)()); }
		ScriptString EnemyCore50Percent() { mixin(MGPC!("ScriptString", 196)()); }
		ScriptString EnemyCore75Percent() { mixin(MGPC!("ScriptString", 184)()); }
		ScriptString EnemyCarrierShieldsDown() { mixin(MGPC!("ScriptString", 172)()); }
		ScriptString FriendlyCarrierShieldsDown() { mixin(MGPC!("ScriptString", 160)()); }
		ScriptString EnemyCarrierShields50Percent() { mixin(MGPC!("ScriptString", 148)()); }
		ScriptString FriendlyCarrierShields50Percent() { mixin(MGPC!("ScriptString", 136)()); }
		ScriptString ControlPointTransitioning() { mixin(MGPC!("ScriptString", 124)()); }
		ScriptString ControlPointLost() { mixin(MGPC!("ScriptString", 112)()); }
		ScriptString ControlPointWon() { mixin(MGPC!("ScriptString", 100)()); }
	}
	final static ScriptString GetString(int* Switch = null, bool* bPRI1HUD = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
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
}
