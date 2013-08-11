module UnrealScript.Engine.Interface_NavMeshPathSwitch;

import ScriptClasses;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.Interface_NavMeshPathObject;

extern(C++) interface Interface_NavMeshPathSwitch : Interface_NavMeshPathObject
{
public extern(D):
	final bool AIActivateSwitch(AIController AI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = AI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18351], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
