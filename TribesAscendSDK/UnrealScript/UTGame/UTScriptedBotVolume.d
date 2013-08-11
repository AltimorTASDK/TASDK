module UnrealScript.UTGame.UTScriptedBotVolume;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface UTScriptedBotVolume : PhysicsVolume
{
public extern(D):
	final void PawnLeavingVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49026], params.ptr, cast(void*)0);
	}
}
