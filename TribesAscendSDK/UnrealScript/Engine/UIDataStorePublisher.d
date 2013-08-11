module UnrealScript.Engine.UIDataStorePublisher;

import ScriptClasses;
import UnrealScript.Engine.UIDataStoreSubscriber;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStorePublisher : UIDataStoreSubscriber
{
public extern(D):
	final bool SaveSubscriberValue(ScriptArray!(UIDataStore)* out_BoundDataStores, int BindingIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(UIDataStore)*)params.ptr = *out_BoundDataStores;
		*cast(int*)&params[12] = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28908], params.ptr, cast(void*)0);
		*out_BoundDataStores = *cast(ScriptArray!(UIDataStore)*)params.ptr;
		return *cast(bool*)&params[16];
	}
}
