module UnrealScript.Engine.UIDataStore;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.DataStoreClient;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataStore : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore")); }
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
			ScriptFunction NotifyGameSessionEnded() { return mNotifyGameSessionEnded ? mNotifyGameSessionEnded : (mNotifyGameSessionEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore.NotifyGameSessionEnded")); }
			ScriptFunction OnDataStoreValueUpdated() { return mOnDataStoreValueUpdated ? mOnDataStoreValueUpdated : (mOnDataStoreValueUpdated = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore.OnDataStoreValueUpdated")); }
			ScriptFunction Registered() { return mRegistered ? mRegistered : (mRegistered = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore.Registered")); }
			ScriptFunction Unregistered() { return mUnregistered ? mUnregistered : (mUnregistered = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore.Unregistered")); }
			ScriptFunction SubscriberAttached() { return mSubscriberAttached ? mSubscriberAttached : (mSubscriberAttached = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore.SubscriberAttached")); }
			ScriptFunction SubscriberDetached() { return mSubscriberDetached ? mSubscriberDetached : (mSubscriberDetached = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore.SubscriberDetached")); }
			ScriptFunction RefreshSubscribers() { return mRefreshSubscribers ? mRefreshSubscribers : (mRefreshSubscribers = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore.RefreshSubscribers")); }
			ScriptFunction OnCommit() { return mOnCommit ? mOnCommit : (mOnCommit = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore.OnCommit")); }
			ScriptFunction GetDataStoreClient() { return mGetDataStoreClient ? mGetDataStoreClient : (mGetDataStoreClient = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore.GetDataStoreClient")); }
		}
	}
	@property final auto ref
	{
		ScriptName Tag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 88); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) RefreshSubscriberNotifies() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 96); }
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
	void RefreshSubscribers(ScriptName PropertyTag, bool bInvalidateValues, UIDataProvider SourceProvider, int ArrayIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropertyTag;
		*cast(bool*)&params[8] = bInvalidateValues;
		*cast(UIDataProvider*)&params[12] = SourceProvider;
		*cast(int*)&params[16] = ArrayIndex;
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
