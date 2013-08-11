module UnrealScript.TribesGame.TrProj_HeavyTwinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HeavyTwinfusor : TrProjectile
{
public extern(D):
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108508], cast(void*)0, cast(void*)0);
	}
}
