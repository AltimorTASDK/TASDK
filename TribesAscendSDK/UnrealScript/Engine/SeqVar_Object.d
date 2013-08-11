module UnrealScript.Engine.SeqVar_Object;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;
import UnrealScript.Core.UObject;

extern(C++) interface SeqVar_Object : SequenceVariable
{
	public @property final auto ref ScriptArray!(ScriptClass) SupportedClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref Vector ActorLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref UObject ObjValue() { return *cast(UObject*)(cast(size_t)cast(void*)this + 148); }
	final UObject GetObjectValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9740], params.ptr, cast(void*)0);
		return *cast(UObject*)params.ptr;
	}
	final void SetObjectValue(UObject NewValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = NewValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26220], params.ptr, cast(void*)0);
	}
}
