module UnrealScript.TribesGame.TrVehicleInput_Flying;

import ScriptClasses;
import UnrealScript.Engine.PlayerInput;

extern(C++) interface TrVehicleInput_Flying : PlayerInput
{
public extern(D):
	final void AdjustMouseSensitivity(float FOVScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FOVScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114951], params.ptr, cast(void*)0);
	}
}
