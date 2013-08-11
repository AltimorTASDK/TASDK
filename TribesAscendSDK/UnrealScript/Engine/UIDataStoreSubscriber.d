module UnrealScript.Engine.UIDataStoreSubscriber;

import ScriptClasses;
import UnrealScript.Core.UInterface;
import UnrealScript.Engine.UIDataStore;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataStoreSubscriber : UInterface
{
	final void SetDataStoreBinding(ScriptString MarkupText, int BindingIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MarkupText;
		*cast(int*)&params[12] = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28889], params.ptr, cast(void*)0);
	}
	final ScriptString GetDataStoreBinding(int BindingIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28892], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final bool RefreshSubscriberValue(int BindingIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28895], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void NotifyDataStoreValueUpdated(UIDataStore SourceDataStore, bool bValuesInvalidated, ScriptName PropertyTag, UIDataProvider SourceProvider, int ArrayIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UIDataStore*)params.ptr = SourceDataStore;
		*cast(bool*)&params[4] = bValuesInvalidated;
		*cast(ScriptName*)&params[8] = PropertyTag;
		*cast(UIDataProvider*)&params[16] = SourceProvider;
		*cast(int*)&params[20] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28898], params.ptr, cast(void*)0);
	}
	final void GetBoundDataStores(ScriptArray!(UIDataStore)* out_BoundDataStores)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(UIDataStore)*)params.ptr = *out_BoundDataStores;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28904], params.ptr, cast(void*)0);
		*out_BoundDataStores = *cast(ScriptArray!(UIDataStore)*)params.ptr;
	}
	final void ClearBoundDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28907], cast(void*)0, cast(void*)0);
	}
}
