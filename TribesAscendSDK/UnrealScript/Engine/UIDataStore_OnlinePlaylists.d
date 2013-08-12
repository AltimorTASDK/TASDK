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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore_OnlinePlaylists")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetProviderCount;
			ScriptFunction mGetResourceProviders;
			ScriptFunction mGetResourceProviderFields;
			ScriptFunction mGetProviderFieldValue;
			ScriptFunction mFindProviderIndexByFieldValue;
			ScriptFunction mGetPlaylistProvider;
			ScriptFunction mGetOnlinePlaylistProvider;
		}
		public @property static final
		{
			ScriptFunction GetProviderCount() { return mGetProviderCount ? mGetProviderCount : (mGetProviderCount = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlaylists.GetProviderCount")); }
			ScriptFunction GetResourceProviders() { return mGetResourceProviders ? mGetResourceProviders : (mGetResourceProviders = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlaylists.GetResourceProviders")); }
			ScriptFunction GetResourceProviderFields() { return mGetResourceProviderFields ? mGetResourceProviderFields : (mGetResourceProviderFields = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlaylists.GetResourceProviderFields")); }
			ScriptFunction GetProviderFieldValue() { return mGetProviderFieldValue ? mGetProviderFieldValue : (mGetProviderFieldValue = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlaylists.GetProviderFieldValue")); }
			ScriptFunction FindProviderIndexByFieldValue() { return mFindProviderIndexByFieldValue ? mFindProviderIndexByFieldValue : (mFindProviderIndexByFieldValue = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlaylists.FindProviderIndexByFieldValue")); }
			ScriptFunction GetPlaylistProvider() { return mGetPlaylistProvider ? mGetPlaylistProvider : (mGetPlaylistProvider = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlaylists.GetPlaylistProvider")); }
			ScriptFunction GetOnlinePlaylistProvider() { return mGetOnlinePlaylistProvider ? mGetOnlinePlaylistProvider : (mGetOnlinePlaylistProvider = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlaylists.GetOnlinePlaylistProvider")); }
		}
	}
	static struct Constants
	{
		enum
		{
			RANKEDPROVIDERTAG = "PlaylistsRanked",
			UNRANKEDPROVIDERTAG = "PlaylistsUnranked",
		}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProviderCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool GetResourceProviders(ScriptName ProviderTag, ScriptArray!(UIResourceDataProvider)* out_Providers)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptArray!(UIResourceDataProvider)*)&params[8] = *out_Providers;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResourceProviders, params.ptr, cast(void*)0);
		*out_Providers = *cast(ScriptArray!(UIResourceDataProvider)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetResourceProviderFields(ScriptName ProviderTag, ScriptArray!(ScriptName)* ProviderFieldTags)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptArray!(ScriptName)*)&params[8] = *ProviderFieldTags;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResourceProviderFields, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProviderFieldValue, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.FindProviderIndexByFieldValue, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlaylistProvider, params.ptr, cast(void*)0);
		*out_Provider = *cast(UIResourceDataProvider*)&params[12];
		return *cast(bool*)&params[16];
	}
	static OnlinePlaylistProvider GetOnlinePlaylistProvider(ScriptName ProviderTag, int PlaylistId, int* ProviderIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(int*)&params[8] = PlaylistId;
		*cast(int*)&params[12] = *ProviderIndex;
		StaticClass.ProcessEvent(Functions.GetOnlinePlaylistProvider, params.ptr, cast(void*)0);
		*ProviderIndex = *cast(int*)&params[12];
		return *cast(OnlinePlaylistProvider*)&params[16];
	}
}
