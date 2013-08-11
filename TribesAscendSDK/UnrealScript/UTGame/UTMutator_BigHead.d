module UnrealScript.UTGame.UTMutator_BigHead;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_BigHead : UTMutator
{
	final void ModifyPlayer(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48581], params.ptr, cast(void*)0);
	}
}
