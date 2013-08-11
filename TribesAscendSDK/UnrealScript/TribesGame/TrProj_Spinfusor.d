module UnrealScript.TribesGame.TrProj_Spinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Spinfusor : TrProjectile
{
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108317], cast(void*)0, cast(void*)0);
	}
}
