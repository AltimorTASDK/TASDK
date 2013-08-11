module UnrealScript.TribesGame.TrBotPawn;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerPawn;

extern(C++) interface TrBotPawn : TrPlayerPawn
{
	final void SetMovementPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73644], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73645], params.ptr, cast(void*)0);
	}
	final void RechargeHealthPool(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73648], params.ptr, cast(void*)0);
	}
}
