module UnrealScript.TribesGame.TrProj_RocketLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_RocketLauncher : TrProjectile
{
public extern(D):
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109023], cast(void*)0, cast(void*)0);
	}
}
