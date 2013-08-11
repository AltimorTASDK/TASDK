module UnrealScript.TribesGame.TrProj_Buckler;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Buckler : TrProjectile
{
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108164], cast(void*)0, cast(void*)0);
	}
}
