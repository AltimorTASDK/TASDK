module UnrealScript.TribesGame.TrDevice_CustomEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_CustomEagle : TrDevice
{
public extern(D):
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81235], cast(void*)0, cast(void*)0);
	}
}
