module UnrealScript.GFxUI.GFxDataStoreSubscriber;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.UIDataStore;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface GFxDataStoreSubscriber : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GFxUI.GFxDataStoreSubscriber")()); }
	private static __gshared GFxDataStoreSubscriber mDefaultProperties;
	@property final static GFxDataStoreSubscriber DefaultProperties() { mixin(MGDPC!(GFxDataStoreSubscriber, "GFxDataStoreSubscriber GFxUI.Default__GFxDataStoreSubscriber")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPublishValues;
			ScriptFunction mSetDataStoreBinding;
			ScriptFunction mGetDataStoreBinding;
			ScriptFunction mRefreshSubscriberValue;
			ScriptFunction mNotifyDataStoreValueUpdated;
			ScriptFunction mGetBoundDataStores;
			ScriptFunction mClearBoundDataStores;
			ScriptFunction mSaveSubscriberValue;
		}
		public @property static final
		{
			ScriptFunction PublishValues() { mixin(MGF!("mPublishValues", "Function GFxUI.GFxDataStoreSubscriber.PublishValues")()); }
			ScriptFunction SetDataStoreBinding() { mixin(MGF!("mSetDataStoreBinding", "Function GFxUI.GFxDataStoreSubscriber.SetDataStoreBinding")()); }
			ScriptFunction GetDataStoreBinding() { mixin(MGF!("mGetDataStoreBinding", "Function GFxUI.GFxDataStoreSubscriber.GetDataStoreBinding")()); }
			ScriptFunction RefreshSubscriberValue() { mixin(MGF!("mRefreshSubscriberValue", "Function GFxUI.GFxDataStoreSubscriber.RefreshSubscriberValue")()); }
			ScriptFunction NotifyDataStoreValueUpdated() { mixin(MGF!("mNotifyDataStoreValueUpdated", "Function GFxUI.GFxDataStoreSubscriber.NotifyDataStoreValueUpdated")()); }
			ScriptFunction GetBoundDataStores() { mixin(MGF!("mGetBoundDataStores", "Function GFxUI.GFxDataStoreSubscriber.GetBoundDataStores")()); }
			ScriptFunction ClearBoundDataStores() { mixin(MGF!("mClearBoundDataStores", "Function GFxUI.GFxDataStoreSubscriber.ClearBoundDataStores")()); }
			ScriptFunction SaveSubscriberValue() { mixin(MGF!("mSaveSubscriberValue", "Function GFxUI.GFxDataStoreSubscriber.SaveSubscriberValue")()); }
		}
	}
	@property final auto ref
	{
		GFxMoviePlayer Movie() { mixin(MGPC!("GFxMoviePlayer", 64)()); }
		UObject.Pointer VfTable_IUIDataStorePublisher() { mixin(MGPC!("UObject.Pointer", 60)()); }
	}
final:
	void PublishValues()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PublishValues, cast(void*)0, cast(void*)0);
	}
	void SetDataStoreBinding(ScriptString MarkupText, int* BindingIndex = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MarkupText;
		if (BindingIndex !is null)
			*cast(int*)&params[12] = *BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDataStoreBinding, params.ptr, cast(void*)0);
	}
	ScriptString GetDataStoreBinding(int* BindingIndex = null)
	{
		ubyte params[16];
		params[] = 0;
		if (BindingIndex !is null)
			*cast(int*)params.ptr = *BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDataStoreBinding, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool RefreshSubscriberValue(int* BindingIndex = null)
	{
		ubyte params[8];
		params[] = 0;
		if (BindingIndex !is null)
			*cast(int*)params.ptr = *BindingIndex;
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
	void GetBoundDataStores(ref ScriptArray!(UIDataStore) out_BoundDataStores)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(UIDataStore)*)params.ptr = out_BoundDataStores;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoundDataStores, params.ptr, cast(void*)0);
		out_BoundDataStores = *cast(ScriptArray!(UIDataStore)*)params.ptr;
	}
	void ClearBoundDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearBoundDataStores, cast(void*)0, cast(void*)0);
	}
	bool SaveSubscriberValue(ref ScriptArray!(UIDataStore) out_BoundDataStores, int* BindingIndex = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(UIDataStore)*)params.ptr = out_BoundDataStores;
		if (BindingIndex !is null)
			*cast(int*)&params[12] = *BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveSubscriberValue, params.ptr, cast(void*)0);
		out_BoundDataStores = *cast(ScriptArray!(UIDataStore)*)params.ptr;
		return *cast(bool*)&params[16];
	}
}
