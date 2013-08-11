module UnrealScript.UTGame.UTVehicleCTFGame;

import ScriptClasses;
import UnrealScript.UTGame.UTCTFGame;

extern(C++) interface UTVehicleCTFGame : UTCTFGame
{
public extern(D):
	final bool AllowMutator(ScriptString MutatorClassName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutatorClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49670], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
