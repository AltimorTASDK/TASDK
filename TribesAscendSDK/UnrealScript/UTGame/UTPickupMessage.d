module UnrealScript.UTGame.UTPickupMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface UTPickupMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTPickupMessage")()); }
	private static __gshared UTPickupMessage mDefaultProperties;
	@property final static UTPickupMessage DefaultProperties() { mixin(MGDPC!(UTPickupMessage, "UTPickupMessage UTGame.Default__UTPickupMessage")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mClientReceive;
		public @property static final ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function UTGame.UTPickupMessage.ClientReceive")()); }
	}
	final static void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
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
