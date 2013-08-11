module UnrealScript.TribesGame.TrProj_TC24;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_TC24 : TrProjectile
{
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109270], cast(void*)0, cast(void*)0);
	}
}
