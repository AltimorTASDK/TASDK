module UnrealScript.Engine.NavMeshPath_WithinTraversalDist;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_WithinTraversalDist : NavMeshPathConstraint
{
	public @property final auto ref float SoftStartPenalty() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final bool bSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
	public @property final bool bSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	public @property final auto ref float MaxTraversalDist() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	final bool DontExceedMaxDist(NavigationHandle NavHandle, float InMaxTraversalDist, bool bInSoft)
	{
		ubyte params[16];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(float*)&params[4] = InMaxTraversalDist;
		*cast(bool*)&params[8] = bInSoft;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21110], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21116], cast(void*)0, cast(void*)0);
	}
}
