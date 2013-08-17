module UnrealScript.Engine.UIDataStore;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.DataStoreClient;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataStore : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataStore")); }
	private static __gshared UIDataStore mDefaultProperties;
	@property final static UIDataStore DefaultProperties() { mixin(MGDPC("UIDataStore", "UIDataStore Engine.Default__UIDataStore")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mNotifyGameSessionEnded;
			ScriptFunction mOnDataStoreValueUpdated;
			ScriptFunction mRegistered;
			ScriptFunction mUnregistered;
			ScriptFunction mSubscriberAttached;
			ScriptFunction mSubscriberDetached;
			ScriptFunction mRefreshSubscribers;
			ScriptFunction mOnCommit;
			ScriptFunction mGetDataStoreClient;
		}
		public @property static final
		{
			ScriptFunction NotifyGameSessionEnded() { mixin(MGF("mNotifyGameSessionEnded", "Function Engine.UIDataStore.NotifyGameSessionEnded")); }
			ScriptFunction OnDataStoreValueUpdated() { mixin(MGF("mOnDataStoreValueUpdated", "Function Engine.UIDataStore.OnDataStoreValueUpdated")); }
			ScriptFunction Registered() { mixin(MGF("mRegistered", "Function Engine.UIDataStore.Registered")); }
			ScriptFunction Unregistered() { mixin(MGF("mUnregistered", "Function Engine.UIDataStore.Unregistered")); }
			ScriptFunction SubscriberAttached() { mixin(MGF("mSubscriberAttached", "Function Engine.UIDataStore.SubscriberAttached")); }
			ScriptFunction SubscriberDetached() { mixin(MGF("mSubscriberDetached", "Function Engine.UIDataStore.SubscriberDetached")); }
			ScriptFunction RefreshSubscribers() { mixin(MGF("mRefreshSubscribers", "Function Engine.UIDataStore.RefreshSubscribers")); }
			ScriptFunction OnCommit() { mixin(MGF("mOnCommit", "Function Engine.UIDataStore.OnCommit")); }
			ScriptFunction GetDataStoreClient() { mixin(MGF("mGetDataStoreClient", "Function Engine.UIDataStore.GetDataStoreClient")); }
		}
	}
	@property final auto ref
	{
		ScriptName Tag() { mixin(MGPC("ScriptName", 88)); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) RefreshSubscriberNotifies() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)", 96)); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnDataStoreValueUpdated__Delegate'!
	}
final:
	bool NotifyGameSessionEnded()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyGameSessionEnded, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnDataStoreValueUpdated(UIDataStore SourceDataStore, bool bValuesInvalidated, ScriptName PropertyTag, UIDataProvider SourceProvider, int ArrayIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UIDataStore*)params.ptr = SourceDataStore;
		*cast(bool*)&params[4] = bValuesInvalidated;
		*cast(ScriptName*)&params[8] = PropertyTag;
		*cast(UIDataProvider*)&params[16] = SourceProvider;
		*cast(int*)&params[20] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDataStoreValueUpdated, params.ptr, cast(void*)0);
	}
	void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Registered, params.ptr, cast(void*)0);
	}
	void Unregistered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Unregistered, params.ptr, cast(void*)0);
	}
	void SubscriberAttached(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* Subscriber)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr = Subscriber;
		(cast(ScriptObject)this).ProcessEvent(Functions.SubscriberAttached, params.ptr, cast(void*)0);
	}
	void SubscriberDetached(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* Subscriber)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr = Subscriber;
		(cast(ScriptObject)this).ProcessEvent(Functions.SubscriberDetached, params.ptr, cast(void*)0);
	}
	void RefreshSubscribers(ScriptName* PropertyTag = null, bool* bInvalidateValues = null, UIDataProvider* SourceProvider = null, int* ArrayIndex = null)
	{
		ubyte params[20];
		params[] = 0;
		if (PropertyTag !is null)
			*cast(ScriptName*)params.ptr = *PropertyTag;
		if (bInvalidateValues !is null)
			*cast(bool*)&params[8] = *bInvalidateValues;
		if (SourceProvider !is null)
			*cast(UIDataProvider*)&params[12] = *SourceProvider;
		if (ArrayIndex !is null)
			*cast(int*)&params[16] = *ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshSubscribers, params.ptr, cast(void*)0);
	}
	void OnCommit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCommit, cast(void*)0, cast(void*)0);
	}
	DataStoreClient GetDataStoreClient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDataStoreClient, params.ptr, cast(void*)0);
		return *cast(DataStoreClient*)params.ptr;
	}
}
