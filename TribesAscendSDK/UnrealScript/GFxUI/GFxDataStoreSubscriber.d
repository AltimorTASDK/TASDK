module UnrealScript.GFxUI.GFxDataStoreSubscriber;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.UIDataStore;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface GFxDataStoreSubscriber : UObject
{
public extern(D):
	@property final auto ref
	{
		GFxMoviePlayer Movie() { return *cast(GFxMoviePlayer*)(cast(size_t)cast(void*)this + 64); }
		UObject.Pointer VfTable_IUIDataStorePublisher() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void PublishValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30255], cast(void*)0, cast(void*)0);
	}
	void SetDataStoreBinding(ScriptString MarkupText, int BindingIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MarkupText;
		*cast(int*)&params[12] = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30256], params.ptr, cast(void*)0);
	}
	ScriptString GetDataStoreBinding(int BindingIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30259], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool RefreshSubscriberValue(int BindingIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30262], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30265], params.ptr, cast(void*)0);
	}
	void GetBoundDataStores(ScriptArray!(UIDataStore)* out_BoundDataStores)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(UIDataStore)*)params.ptr = *out_BoundDataStores;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30271], params.ptr, cast(void*)0);
		*out_BoundDataStores = *cast(ScriptArray!(UIDataStore)*)params.ptr;
	}
	void ClearBoundDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30274], cast(void*)0, cast(void*)0);
	}
	bool SaveSubscriberValue(ScriptArray!(UIDataStore)* out_BoundDataStores, int BindingIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(UIDataStore)*)params.ptr = *out_BoundDataStores;
		*cast(int*)&params[12] = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30275], params.ptr, cast(void*)0);
		*out_BoundDataStores = *cast(ScriptArray!(UIDataStore)*)params.ptr;
		return *cast(bool*)&params[16];
	}
}
