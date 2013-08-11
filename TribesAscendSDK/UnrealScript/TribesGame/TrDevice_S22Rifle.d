module UnrealScript.TribesGame.TrDevice_S22Rifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_S22Rifle : TrDevice
{
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85999], cast(void*)0, cast(void*)0);
	}
}
