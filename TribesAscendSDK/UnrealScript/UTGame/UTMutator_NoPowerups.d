module UnrealScript.UTGame.UTMutator_NoPowerups;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_NoPowerups : UTMutator
{
	final bool CheckReplacement(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48604], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
