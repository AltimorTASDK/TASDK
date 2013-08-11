module UnrealScript.TribesGame.TrProj_AntiAirTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_AntiAirTurret : TrProjectile
{
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107790], cast(void*)0, cast(void*)0);
	}
}
