module UnrealScript.UTGame.UTSayMsg;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;

extern(C++) interface UTSayMsg : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSayMsg")()); }
	private static __gshared UTSayMsg mDefaultProperties;
	@property final static UTSayMsg DefaultProperties() { mixin(MGDPC!(UTSayMsg, "UTSayMsg UTGame.Default__UTSayMsg")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetConsoleColor;
		public @property static final ScriptFunction GetConsoleColor() { mixin(MGF!("mGetConsoleColor", "Function UTGame.UTSayMsg.GetConsoleColor")()); }
	}
	@property final auto ref
	{
		UObject.Color BlueTeamColor() { mixin(MGPC!(UObject.Color, 104)()); }
		UObject.Color RedTeamColor() { mixin(MGPC!(UObject.Color, 100)()); }
	}
	final static UObject.Color GetConsoleColor(PlayerReplicationInfo RelatedPRI_1)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = RelatedPRI_1;
		StaticClass.ProcessEvent(Functions.GetConsoleColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[4];
	}
}
