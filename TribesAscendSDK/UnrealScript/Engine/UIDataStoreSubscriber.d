module UnrealScript.Engine.UIDataStoreSubscriber;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UInterface;
import UnrealScript.Engine.UIDataStore;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataStoreSubscriber : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataStoreSubscriber")); }
	private static __gshared UIDataStoreSubscriber mDefaultProperties;
	@property final static UIDataStoreSubscriber DefaultProperties() { mixin(MGDPC("UIDataStoreSubscriber", "UIDataStoreSubscriber Engine.Default__UIDataStoreSubscriber")); }
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
			ScriptFunction SetDataStoreBinding() { mixin(MGF("mSetDataStoreBinding", "Function Engine.UIDataStoreSubscriber.SetDataStoreBinding")); }
			ScriptFunction GetDataStoreBinding() { mixin(MGF("mGetDataStoreBinding", "Function Engine.UIDataStoreSubscriber.GetDataStoreBinding")); }
			ScriptFunction RefreshSubscriberValue() { mixin(MGF("mRefreshSubscriberValue", "Function Engine.UIDataStoreSubscriber.RefreshSubscriberValue")); }
			ScriptFunction NotifyDataStoreValueUpdated() { mixin(MGF("mNotifyDataStoreValueUpdated", "Function Engine.UIDataStoreSubscriber.NotifyDataStoreValueUpdated")); }
			ScriptFunction GetBoundDataStores() { mixin(MGF("mGetBoundDataStores", "Function Engine.UIDataStoreSubscriber.GetBoundDataStores")); }
			ScriptFunction ClearBoundDataStores() { mixin(MGF("mClearBoundDataStores", "Function Engine.UIDataStoreSubscriber.ClearBoundDataStores")); }
		}
	}
final:
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
}
