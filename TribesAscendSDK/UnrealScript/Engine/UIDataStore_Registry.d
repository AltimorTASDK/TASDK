module UnrealScript.Engine.UIDataStore_Registry;

import ScriptClasses;
import UnrealScript.Engine.UIDynamicFieldProvider;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_Registry : UIDataStore
{
public extern(D):
	@property final auto ref UIDynamicFieldProvider RegistryDataProvider() { return *cast(UIDynamicFieldProvider*)(cast(size_t)cast(void*)this + 120); }
	final UIDynamicFieldProvider GetDataProvider()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28867], params.ptr, cast(void*)0);
		return *cast(UIDynamicFieldProvider*)params.ptr;
	}
}
