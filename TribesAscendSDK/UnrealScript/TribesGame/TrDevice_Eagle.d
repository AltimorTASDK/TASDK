module UnrealScript.TribesGame.TrDevice_Eagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Eagle : TrDevice
{
public extern(D):
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81274], cast(void*)0, cast(void*)0);
	}
}
