module UnrealScript.UTGame.UTAmmoPickupFactory;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTItemPickupFactory;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTAmmoPickupFactory : UTItemPickupFactory
{
	public @property final auto ref ScriptClass TargetWeapon() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 980); }
	public @property final auto ref int AmmoAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 976); }
	final void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40485], params.ptr, cast(void*)0);
	}
	final void UpdateHUD(UTHUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTHUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40487], params.ptr, cast(void*)0);
	}
	final float BotDesireability(Pawn P, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40506], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
}
