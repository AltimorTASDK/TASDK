module UnrealScript.TribesGame.TrProj_PlasmaCannon;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_PlasmaCannon : TrProjectile
{
public extern(D):
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108840], cast(void*)0, cast(void*)0);
	}
}
