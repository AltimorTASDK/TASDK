module UnrealScript.TribesGame.TrProj_PlasmaGun;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_PlasmaGun : TrProjectile
{
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108852], cast(void*)0, cast(void*)0);
	}
}
