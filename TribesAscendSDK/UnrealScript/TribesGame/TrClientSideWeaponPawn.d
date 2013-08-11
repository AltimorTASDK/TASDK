module UnrealScript.TribesGame.TrClientSideWeaponPawn;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTClientSideWeaponPawn;

extern(C++) interface TrClientSideWeaponPawn : UTClientSideWeaponPawn
{
	final void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74486], params.ptr, cast(void*)0);
	}
}
