module UnrealScript.Engine.NavMeshPathConstraint;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface NavMeshPathConstraint : UObject
{
public extern(D):
	@property final auto ref
	{
		float AddedHeuristicCost() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
		float AddedDirectCost() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
		int NumThrownOutNodes() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
		int NumNodesProcessed() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		NavMeshPathConstraint NextConstraint() { return *cast(NavMeshPathConstraint*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21046], cast(void*)0, cast(void*)0);
	}
	ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21047], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
