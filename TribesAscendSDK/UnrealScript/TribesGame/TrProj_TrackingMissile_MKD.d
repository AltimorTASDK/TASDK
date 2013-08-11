module UnrealScript.TribesGame.TrProj_TrackingMissile_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_TrackingMissile_MKD : TrProjectile
{
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109422], cast(void*)0, cast(void*)0);
	}
}
