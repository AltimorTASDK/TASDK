module UnrealScript.Engine.UIDataStore;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.DataStoreClient;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataStore : UIDataProvider
{
	public @property final auto ref ScriptName Tag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) RefreshSubscriberNotifies() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 96); }
	final bool NotifyGameSessionEnded()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13666], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void OnDataStoreValueUpdated(UIDataStore SourceDataStore, bool bValuesInvalidated, ScriptName PropertyTag, UIDataProvider SourceProvider, int ArrayIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UIDataStore*)params.ptr = SourceDataStore;
		*cast(bool*)&params[4] = bValuesInvalidated;
		*cast(ScriptName*)&params[8] = PropertyTag;
		*cast(UIDataProvider*)&params[16] = SourceProvider;
		*cast(int*)&params[20] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28432], params.ptr, cast(void*)0);
	}
	final void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28439], params.ptr, cast(void*)0);
	}
	final void Unregistered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28441], params.ptr, cast(void*)0);
	}
	final void SubscriberAttached(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* Subscriber)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr = Subscriber;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28443], params.ptr, cast(void*)0);
	}
	final void SubscriberDetached(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* Subscriber)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr = Subscriber;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28446], params.ptr, cast(void*)0);
	}
	final void RefreshSubscribers(ScriptName PropertyTag, bool bInvalidateValues, UIDataProvider SourceProvider, int ArrayIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropertyTag;
		*cast(bool*)&params[8] = bInvalidateValues;
		*cast(UIDataProvider*)&params[12] = SourceProvider;
		*cast(int*)&params[16] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28449], params.ptr, cast(void*)0);
	}
	final void OnCommit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28458], cast(void*)0, cast(void*)0);
	}
	final DataStoreClient GetDataStoreClient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28459], params.ptr, cast(void*)0);
		return *cast(DataStoreClient*)params.ptr;
	}
}
