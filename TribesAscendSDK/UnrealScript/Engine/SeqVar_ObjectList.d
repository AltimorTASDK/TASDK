module UnrealScript.Engine.SeqVar_ObjectList;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_ObjectList : SeqVar_Object
{
	public @property final auto ref ScriptArray!(UObject) ObjList() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 176); }
	final UObject GetObjectValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26237], params.ptr, cast(void*)0);
		return *cast(UObject*)params.ptr;
	}
	final void SetObjectValue(UObject NewValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = NewValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26239], params.ptr, cast(void*)0);
	}
}
