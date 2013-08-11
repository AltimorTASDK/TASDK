module UnrealScript.UTGame.UTHealthPickupFactory;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTItemPickupFactory;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTHealthPickupFactory : UTItemPickupFactory
{
	public @property final bool bSuperHeal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 980) & 0x1) != 0; }
	public @property final bool bSuperHeal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 980) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 980) &= ~0x1; } return val; }
	public @property final auto ref int HealingAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 976); }
	final void UpdateHUD(UTHUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTHUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47961], params.ptr, cast(void*)0);
	}
	final void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47963], params.ptr, cast(void*)0);
	}
	final int HealAmount(Pawn Recipient)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47965], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final float BotDesireability(Pawn P, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47978], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
}
