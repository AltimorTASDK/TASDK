module UnrealScript.TribesGame.TrSeqEvent_TakeDamage;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SeqEvent_TakeDamage;

extern(C++) interface TrSeqEvent_TakeDamage : SeqEvent_TakeDamage
{
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110940], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void HandleDamage(Actor InOriginator, Actor InInstigator, ScriptClass inDamageType, int inAmount)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(ScriptClass*)&params[8] = inDamageType;
		*cast(int*)&params[12] = inAmount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110942], params.ptr, cast(void*)0);
	}
}
