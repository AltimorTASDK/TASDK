module UnrealScript.Engine.NavMeshPath_EnforceTwoWayEdges;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_EnforceTwoWayEdges : NavMeshPathConstraint
{
	final bool EnforceTwoWayEdges(NavigationHandle NavHandle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21056], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
