module UnrealScript.Engine.PrefabSequence;

import ScriptClasses;
import UnrealScript.Engine.Sequence;
import UnrealScript.Engine.PrefabInstance;

extern(C++) interface PrefabSequence : Sequence
{
	public @property final auto ref PrefabInstance OwnerPrefab() { return *cast(PrefabInstance*)(cast(size_t)cast(void*)this + 300); }
	final void SetOwnerPrefab(PrefabInstance InOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PrefabInstance*)params.ptr = InOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24836], params.ptr, cast(void*)0);
	}
	final PrefabInstance GetOwnerPrefab()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24838], params.ptr, cast(void*)0);
		return *cast(PrefabInstance*)params.ptr;
	}
}
