module UnrealScript.UTGame.UTPickupInventory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTInventory;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;

extern(C++) interface UTPickupInventory : UTInventory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTPickupInventory")()); }
	private static __gshared UTPickupInventory mDefaultProperties;
	@property final static UTPickupInventory DefaultProperties() { mixin(MGDPC!(UTPickupInventory, "UTPickupInventory UTGame.Default__UTPickupInventory")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mBotDesireability;
		public @property static final ScriptFunction BotDesireability() { mixin(MGF!("mBotDesireability", "Function UTGame.UTPickupInventory.BotDesireability")()); }
	}
	final static float BotDesireability(Actor PickupHolder, Pawn P, Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(Pawn*)&params[4] = P;
		*cast(Controller*)&params[8] = C;
		StaticClass.ProcessEvent(Functions.BotDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
}
