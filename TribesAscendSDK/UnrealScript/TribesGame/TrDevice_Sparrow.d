module UnrealScript.TribesGame.TrDevice_Sparrow;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Sparrow : TrDevice
{
public extern(D):
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86200], cast(void*)0, cast(void*)0);
	}
}
