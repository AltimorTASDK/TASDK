module UnrealScript.TribesGame.TrProj_LightSpinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_LightSpinfusor : TrProjectile
{
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108598], cast(void*)0, cast(void*)0);
	}
}
