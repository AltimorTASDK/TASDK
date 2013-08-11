module UnrealScript.Engine.UIDataStore_DynamicResource;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_GameResource;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlineProfileSettings;
import UnrealScript.Engine.UIResourceCombinationProvider;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_DynamicResource : UIDataStore
{
	struct DynamicResourceProviderDefinition
	{
		public @property final auto ref ScriptClass ProviderClass() { return *cast(ScriptClass*)(cast(size_t)&this + 20); }
		private ubyte __ProviderClass[4];
		public @property final auto ref ScriptString ProviderClassName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __ProviderClassName[12];
		public @property final auto ref ScriptName ProviderTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ProviderTag[8];
	}
	public @property final auto ref ScriptArray!(UIDataStore_DynamicResource.DynamicResourceProviderDefinition) ResourceProviderDefinitions() { return *cast(ScriptArray!(UIDataStore_DynamicResource.DynamicResourceProviderDefinition)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref UObject.MultiMap_Mirror ResourceProviders() { return *cast(UObject.MultiMap_Mirror*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref UIDataStore_GameResource GameResourceDataStore() { return *cast(UIDataStore_GameResource*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref UIDataProvider_OnlineProfileSettings ProfileProvider() { return *cast(UIDataProvider_OnlineProfileSettings*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
	final int FindProviderTypeIndex(ScriptName ProviderTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28471], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final ScriptName GenerateProviderAccessTag(int ProviderIndex, int InstanceIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ProviderIndex;
		*cast(int*)&params[4] = InstanceIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28474], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	final int GetProviderCount(ScriptName ProviderTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28478], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool GetResourceProviders(ScriptName ProviderTag, ScriptArray!(UIResourceCombinationProvider)* out_Providers)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptArray!(UIResourceCombinationProvider)*)&params[8] = *out_Providers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28481], params.ptr, cast(void*)0);
		*out_Providers = *cast(ScriptArray!(UIResourceCombinationProvider)*)&params[8];
		return *cast(bool*)&params[20];
	}
	final bool GetResourceProviderFields(ScriptName ProviderTag, ScriptArray!(ScriptName)* ProviderFieldTags)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptArray!(ScriptName)*)&params[8] = *ProviderFieldTags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28486], params.ptr, cast(void*)0);
		*ProviderFieldTags = *cast(ScriptArray!(ScriptName)*)&params[8];
		return *cast(bool*)&params[20];
	}
	final bool GetProviderFieldValue(ScriptName ProviderTag, ScriptName SearchField, int ProviderIndex, UIRoot.UIProviderScriptFieldValue* out_FieldValue)
	{
		ubyte params[108];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptName*)&params[8] = SearchField;
		*cast(int*)&params[16] = ProviderIndex;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[20] = *out_FieldValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28491], params.ptr, cast(void*)0);
		*out_FieldValue = *cast(UIRoot.UIProviderScriptFieldValue*)&params[20];
		return *cast(bool*)&params[104];
	}
	final int FindProviderIndexByFieldValue(ScriptName ProviderTag, ScriptName SearchField, UIRoot.UIProviderScriptFieldValue* ValueToSearchFor)
	{
		ubyte params[104];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptName*)&params[8] = SearchField;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[16] = *ValueToSearchFor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28497], params.ptr, cast(void*)0);
		*ValueToSearchFor = *cast(UIRoot.UIProviderScriptFieldValue*)&params[16];
		return *cast(int*)&params[100];
	}
	final void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28502], params.ptr, cast(void*)0);
	}
	final void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28504], params.ptr, cast(void*)0);
	}
	final void Unregistered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28509], params.ptr, cast(void*)0);
	}
}