module UnrealScript.TribesGame.TrProj_StealthSpinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_StealthSpinfusor : TrProjectile
{
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109204], cast(void*)0, cast(void*)0);
	}
}
