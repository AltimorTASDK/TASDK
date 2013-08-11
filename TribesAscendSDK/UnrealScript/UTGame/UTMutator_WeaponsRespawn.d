module UnrealScript.UTGame.UTMutator_WeaponsRespawn;

import ScriptClasses;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_WeaponsRespawn : UTMutator
{
	final void InitMutator(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48646], params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
}
