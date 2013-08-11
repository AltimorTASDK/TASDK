module UnrealScript.UTGame.UTPickupInventory;

import ScriptClasses;
import UnrealScript.UTGame.UTInventory;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;

extern(C++) interface UTPickupInventory : UTInventory
{
public extern(D):
	final float BotDesireability(Actor PickupHolder, Pawn P, Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(Pawn*)&params[4] = P;
		*cast(Controller*)&params[8] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48737], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
}
