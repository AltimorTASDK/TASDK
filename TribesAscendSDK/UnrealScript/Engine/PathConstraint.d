module UnrealScript.Engine.PathConstraint;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface PathConstraint : UObject
{
public extern(D):
	@property final auto ref
	{
		PathConstraint NextConstraint() { return *cast(PathConstraint*)(cast(size_t)cast(void*)this + 64); }
		int CacheIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23952], cast(void*)0, cast(void*)0);
	}
	ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23953], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
