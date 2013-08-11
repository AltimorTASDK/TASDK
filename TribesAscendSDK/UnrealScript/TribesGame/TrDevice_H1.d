module UnrealScript.TribesGame.TrDevice_H1;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_H1 : TrDevice
{
public extern(D):
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81374], cast(void*)0, cast(void*)0);
	}
}
