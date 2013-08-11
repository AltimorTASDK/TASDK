module UnrealScript.UDKBase.UDKAnimBlendByDriving;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface UDKAnimBlendByDriving : AnimNodeBlend
{
public extern(D):
	final void UpdateDrivingState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34491], cast(void*)0, cast(void*)0);
	}
}
