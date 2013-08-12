module UnrealScript.UTGame.UTPickupInventory;

import ScriptClasses;
import UnrealScript.UTGame.UTInventory;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;

extern(C++) interface UTPickupInventory : UTInventory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTPickupInventory")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mBotDesireability;
		public @property static final ScriptFunction BotDesireability() { return mBotDesireability ? mBotDesireability : (mBotDesireability = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupInventory.BotDesireability")); }
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
