module UnrealScript.UDKBase.UDKUIDataProvider_StringArray;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_SimpleElementProvider;

extern(C++) interface UDKUIDataProvider_StringArray : UDKUIDataProvider_SimpleElementProvider
{
	public @property final auto ref ScriptArray!(ScriptString) Strings() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 92); }
	final int GetElementCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35594], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
