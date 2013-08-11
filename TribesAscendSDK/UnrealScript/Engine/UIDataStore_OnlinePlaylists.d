module UnrealScript.Engine.UIDataStore_OnlinePlaylists;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.OnlinePlaylistProvider;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_OnlinePlaylists : UIDataStore
{
public extern(D):
	enum
	{
		RANKEDPROVIDERTAG = "PlaylistsRanked",
		UNRANKEDPROVIDERTAG = "PlaylistsUnranked",
	}
	@property final auto ref
	{
		ScriptArray!(UIResourceDataProvider) RankedDataProviders() { return *cast(ScriptArray!(UIResourceDataProvider)*)(cast(size_t)cast(void*)this + 140); }
		ScriptArray!(UIResourceDataProvider) UnRankedDataProviders() { return *cast(ScriptArray!(UIResourceDataProvider)*)(cast(size_t)cast(void*)this + 152); }
		ScriptClass ProviderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 136); }
		ScriptString ProviderClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
	}
final:
	int GetProviderCount(ScriptName ProviderTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28789], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool GetResourceProviders(ScriptName ProviderTag, ScriptArray!(UIResourceDataProvider)* out_Providers)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptArray!(UIResourceDataProvider)*)&params[8] = *out_Providers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28792], params.ptr, cast(void*)0);
		*out_Providers = *cast(ScriptArray!(UIResourceDataProvider)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetResourceProviderFields(ScriptName ProviderTag, ScriptArray!(ScriptName)* ProviderFieldTags)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptArray!(ScriptName)*)&params[8] = *ProviderFieldTags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28797], params.ptr, cast(void*)0);
		*ProviderFieldTags = *cast(ScriptArray!(ScriptName)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetProviderFieldValue(ScriptName ProviderTag, ScriptName SearchField, int ProviderIndex, UIRoot.UIProviderScriptFieldValue* out_FieldValue)
	{
		ubyte params[108];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptName*)&params[8] = SearchField;
		*cast(int*)&params[16] = ProviderIndex;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[20] = *out_FieldValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28802], params.ptr, cast(void*)0);
		*out_FieldValue = *cast(UIRoot.UIProviderScriptFieldValue*)&params[20];
		return *cast(bool*)&params[104];
	}
	int FindProviderIndexByFieldValue(ScriptName ProviderTag, ScriptName SearchField, UIRoot.UIProviderScriptFieldValue* ValueToSearchFor)
	{
		ubyte params[104];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptName*)&params[8] = SearchField;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[16] = *ValueToSearchFor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28808], params.ptr, cast(void*)0);
		*ValueToSearchFor = *cast(UIRoot.UIProviderScriptFieldValue*)&params[16];
		return *cast(int*)&params[100];
	}
	bool GetPlaylistProvider(ScriptName ProviderTag, int ProviderIndex, UIResourceDataProvider* out_Provider)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(int*)&params[8] = ProviderIndex;
		*cast(UIResourceDataProvider*)&params[12] = *out_Provider;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28813], params.ptr, cast(void*)0);
		*out_Provider = *cast(UIResourceDataProvider*)&params[12];
		return *cast(bool*)&params[16];
	}
	OnlinePlaylistProvider GetOnlinePlaylistProvider(ScriptName ProviderTag, int PlaylistId, int* ProviderIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(int*)&params[8] = PlaylistId;
		*cast(int*)&params[12] = *ProviderIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28818], params.ptr, cast(void*)0);
		*ProviderIndex = *cast(int*)&params[12];
		return *cast(OnlinePlaylistProvider*)&params[16];
	}
}
