module UnrealScript.Engine.NavMeshPath_SameCoverLink;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_SameCoverLink : NavMeshPathConstraint
{
public extern(D):
	@property final auto ref CoverLink TestLink() { return *cast(CoverLink*)(cast(size_t)cast(void*)this + 80); }
final:
	void SameCoverLink(NavigationHandle NavHandle, CoverLink InLink)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(CoverLink*)&params[4] = InLink;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21072], params.ptr, cast(void*)0);
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21076], cast(void*)0, cast(void*)0);
	}
}
