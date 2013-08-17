module UnrealScript.TribesGame.TrCallInMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface TrCallInMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCallInMessage")()); }
	private static __gshared TrCallInMessage mDefaultProperties;
	@property final static TrCallInMessage DefaultProperties() { mixin(MGDPC!(TrCallInMessage, "TrCallInMessage TribesGame.Default__TrCallInMessage")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetString;
		public @property static final ScriptFunction GetString() { mixin(MGF!("mGetString", "Function TribesGame.TrCallInMessage.GetString")()); }
	}
	@property final auto ref
	{
		ScriptString PlayerCalledInTacticalStrike() { mixin(MGPC!(ScriptString, 124)()); }
		ScriptString PlayerCalledInOrbitalStrike() { mixin(MGPC!(ScriptString, 112)()); }
		ScriptString PlayerCalledInSupportInventory() { mixin(MGPC!(ScriptString, 100)()); }
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
