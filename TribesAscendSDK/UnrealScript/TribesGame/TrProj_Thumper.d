module UnrealScript.TribesGame.TrProj_Thumper;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Thumper : TrProjectile
{
public extern(D):
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109315], cast(void*)0, cast(void*)0);
	}
}
