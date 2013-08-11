module UnrealScript.Core.HelpCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface HelpCommandlet : Commandlet
{
	final int Main(ScriptString Params)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Params;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3458], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
}
