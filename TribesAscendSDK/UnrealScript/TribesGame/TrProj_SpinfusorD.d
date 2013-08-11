module UnrealScript.TribesGame.TrProj_SpinfusorD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_SpinfusorD : TrProjectile
{
public extern(D):
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109192], cast(void*)0, cast(void*)0);
	}
}
