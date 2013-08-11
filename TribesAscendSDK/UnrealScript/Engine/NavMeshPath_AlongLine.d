module UnrealScript.Engine.NavMeshPath_AlongLine;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_AlongLine : NavMeshPathConstraint
{
	public @property final auto ref Vector Direction() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
	final bool AlongLine(NavigationHandle NavHandle, Vector Dir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = Dir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21050], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21055], cast(void*)0, cast(void*)0);
	}
}
