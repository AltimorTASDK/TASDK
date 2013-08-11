module UnrealScript.Engine.NavMeshGoal_Filter;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface NavMeshGoal_Filter : UObject
{
	public @property final auto ref int NumNodesProcessed() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int NumNodesThrownOut() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bShowDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bShowDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	final ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20957], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
