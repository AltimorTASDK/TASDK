module UnrealScript.TribesGame.TrConduitVolume;

import ScriptClasses;
import UnrealScript.TribesGame.TrPhysicsVolume;
import UnrealScript.Engine.Pawn;

extern(C++) interface TrConduitVolume : TrPhysicsVolume
{
	final void PawnEnteredVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74627], params.ptr, cast(void*)0);
	}
	final void PawnLeavingVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74631], params.ptr, cast(void*)0);
	}
}
