module UnrealScript.UDKBase.UDKPlayerInput;

import ScriptClasses;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface UDKPlayerInput : MobilePlayerInput
{
public extern(D):
	final ScriptString GetUDKBindNameFromCommand(ScriptString BindCommand)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BindCommand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35283], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
