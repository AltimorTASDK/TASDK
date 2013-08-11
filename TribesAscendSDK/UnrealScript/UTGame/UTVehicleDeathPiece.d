module UnrealScript.UTGame.UTVehicleDeathPiece;

import ScriptClasses;
import UnrealScript.UTGame.UTGib_Vehicle;

extern(C++) interface UTVehicleDeathPiece : UTGib_Vehicle
{
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49677], cast(void*)0, cast(void*)0);
	}
}
