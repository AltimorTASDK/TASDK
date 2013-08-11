module UnrealScript.UTGame.UTGib_VehiclePiece;

import ScriptClasses;
import UnrealScript.UTGame.UTGib_Vehicle;

extern(C++) interface UTGib_VehiclePiece : UTGib_Vehicle
{
public extern(D):
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47952], cast(void*)0, cast(void*)0);
	}
}
