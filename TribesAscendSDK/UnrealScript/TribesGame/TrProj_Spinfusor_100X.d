module UnrealScript.TribesGame.TrProj_Spinfusor_100X;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Spinfusor_100X : TrProjectile
{
public extern(D):
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109186], cast(void*)0, cast(void*)0);
	}
}
