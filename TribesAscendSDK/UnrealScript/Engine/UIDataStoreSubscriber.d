module UnrealScript.Engine.UIDataStoreSubscriber;

import ScriptClasses;
import UnrealScript.Core.UInterface;
import UnrealScript.Engine.UIDataStore;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataStoreSubscriber : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStoreSubscriber")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetDataStoreBinding;
			ScriptFunction mGetDataStoreBinding;
			ScriptFunction mRefreshSubscriberValue;
			ScriptFunction mNotifyDataStoreValueUpdated;
			ScriptFunction mGetBoundDataStores;
			ScriptFunction mClearBoundDataStores;
		}
		public @property static final
		{
			ScriptFunction SetDataStoreBinding() { return mSetDataStoreBinding ? mSetDataStoreBinding : (mSetDataStoreBinding = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStoreSubscriber.SetDataStoreBinding")); }
			ScriptFunction GetDataStoreBinding() { return mGetDataStoreBinding ? mGetDataStoreBinding : (mGetDataStoreBinding = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStoreSubscriber.GetDataStoreBinding")); }
			ScriptFunction RefreshSubscriberValue() { return mRefreshSubscriberValue ? mRefreshSubscriberValue : (mRefreshSubscriberValue = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStoreSubscriber.RefreshSubscriberValue")); }
			ScriptFunction NotifyDataStoreValueUpdated() { return mNotifyDataStoreValueUpdated ? mNotifyDataStoreValueUpdated : (mNotifyDataStoreValueUpdated = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStoreSubscriber.NotifyDataStoreValueUpdated")); }
			ScriptFunction GetBoundDataStores() { return mGetBoundDataStores ? mGetBoundDataStores : (mGetBoundDataStores = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStoreSubscriber.GetBoundDataStores")); }
			ScriptFunction ClearBoundDataStores() { return mClearBoundDataStores ? mClearBoundDataStores : (mClearBoundDataStores = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStoreSubscriber.ClearBoundDataStores")); }
		}
	}
final:
	void SetDataStoreBinding(ScriptString MarkupText, int BindingIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MarkupText;
		*cast(int*)&params[12] = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDataStoreBinding, params.ptr, cast(void*)0);
	}
	ScriptString GetDataStoreBinding(int BindingIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDataStoreBinding, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool RefreshSubscriberValue(int BindingIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshSubscriberValue, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void NotifyDataStoreValueUpdated(UIDataStore SourceDataStore, bool bValuesInvalidated, ScriptName PropertyTag, UIDataProvider SourceProvider, int ArrayIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UIDataStore*)params.ptr = SourceDataStore;
		*cast(bool*)&params[4] = bValuesInvalidated;
		*cast(ScriptName*)&params[8] = PropertyTag;
		*cast(UIDataProvider*)&params[16] = SourceProvider;
		*cast(int*)&params[20] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyDataStoreValueUpdated, params.ptr, cast(void*)0);
	}
	void GetBoundDataStores(ScriptArray!(UIDataStore)* out_BoundDataStores)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(UIDataStore)*)params.ptr = *out_BoundDataStores;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoundDataStores, params.ptr, cast(void*)0);
		*out_BoundDataStores = *cast(ScriptArray!(UIDataStore)*)params.ptr;
	}
	void ClearBoundDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearBoundDataStores, cast(void*)0, cast(void*)0);
	}
}
