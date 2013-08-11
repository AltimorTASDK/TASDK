module UnrealScript.Engine.AICommandBase;

import ScriptClasses;
import UnrealScript.Engine.AIController;
import UnrealScript.Core.UObject;

extern(C++) interface AICommandBase : UObject
{
public extern(D):
	final int GetUtility(AIController InAI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = InAI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9681], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
