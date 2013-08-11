module UnrealScript.TribesGame.TrProj_OrbitalStrike;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_CallInBase;

extern(C++) interface TrProj_OrbitalStrike : TrProj_CallInBase
{
public extern(D):
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108824], cast(void*)0, cast(void*)0);
	}
}
