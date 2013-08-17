module UnrealScript.Engine.UIDataStore_OnlinePlaylists;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIResourceDataProvider;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.OnlinePlaylistProvider;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_OnlinePlaylists : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataStore_OnlinePlaylists")()); }
	private static __gshared UIDataStore_OnlinePlaylists mDefaultProperties;
	@property final static UIDataStore_OnlinePlaylists DefaultProperties() { mixin(MGDPC!(UIDataStore_OnlinePlaylists, "UIDataStore_OnlinePlaylists Engine.Default__UIDataStore_OnlinePlaylists")()); }
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
			ScriptFunction GetProviderCount() { mixin(MGF!("mGetProviderCount", "Function Engine.UIDataStore_OnlinePlaylists.GetProviderCount")()); }
			ScriptFunction GetResourceProviders() { mixin(MGF!("mGetResourceProviders", "Function Engine.UIDataStore_OnlinePlaylists.GetResourceProviders")()); }
			ScriptFunction GetResourceProviderFields() { mixin(MGF!("mGetResourceProviderFields", "Function Engine.UIDataStore_OnlinePlaylists.GetResourceProviderFields")()); }
			ScriptFunction GetProviderFieldValue() { mixin(MGF!("mGetProviderFieldValue", "Function Engine.UIDataStore_OnlinePlaylists.GetProviderFieldValue")()); }
			ScriptFunction FindProviderIndexByFieldValue() { mixin(MGF!("mFindProviderIndexByFieldValue", "Function Engine.UIDataStore_OnlinePlaylists.FindProviderIndexByFieldValue")()); }
			ScriptFunction GetPlaylistProvider() { mixin(MGF!("mGetPlaylistProvider", "Function Engine.UIDataStore_OnlinePlaylists.GetPlaylistProvider")()); }
			ScriptFunction GetOnlinePlaylistProvider() { mixin(MGF!("mGetOnlinePlaylistProvider", "Function Engine.UIDataStore_OnlinePlaylists.GetOnlinePlaylistProvider")()); }
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
		ScriptArray!(UIResourceDataProvider) RankedDataProviders() { mixin(MGPC!("ScriptArray!(UIResourceDataProvider)", 140)()); }
		ScriptArray!(UIResourceDataProvider) UnRankedDataProviders() { mixin(MGPC!("ScriptArray!(UIResourceDataProvider)", 152)()); }
		ScriptClass ProviderClass() { mixin(MGPC!("ScriptClass", 136)()); }
		ScriptString ProviderClassName() { mixin(MGPC!("ScriptString", 124)()); }
		UObject.Pointer VfTable_IUIListElementProvider() { mixin(MGPC!("UObject.Pointer", 120)()); }
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
	bool GetResourceProviders(ScriptName ProviderTag, ref ScriptArray!(UIResourceDataProvider) out_Providers)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptArray!(UIResourceDataProvider)*)&params[8] = out_Providers;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResourceProviders, params.ptr, cast(void*)0);
		out_Providers = *cast(ScriptArray!(UIResourceDataProvider)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetResourceProviderFields(ScriptName ProviderTag, ref ScriptArray!(ScriptName) ProviderFieldTags)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptArray!(ScriptName)*)&params[8] = ProviderFieldTags;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResourceProviderFields, params.ptr, cast(void*)0);
		ProviderFieldTags = *cast(ScriptArray!(ScriptName)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetProviderFieldValue(ScriptName ProviderTag, ScriptName SearchField, int ProviderIndex, ref UIRoot.UIProviderScriptFieldValue out_FieldValue)
	{
		ubyte params[108];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptName*)&params[8] = SearchField;
		*cast(int*)&params[16] = ProviderIndex;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[20] = out_FieldValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProviderFieldValue, params.ptr, cast(void*)0);
		out_FieldValue = *cast(UIRoot.UIProviderScriptFieldValue*)&params[20];
		return *cast(bool*)&params[104];
	}
	int FindProviderIndexByFieldValue(ScriptName ProviderTag, ScriptName SearchField, ref in UIRoot.UIProviderScriptFieldValue ValueToSearchFor)
	{
		ubyte params[104];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptName*)&params[8] = SearchField;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[16] = cast(UIRoot.UIProviderScriptFieldValue)ValueToSearchFor;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindProviderIndexByFieldValue, params.ptr, cast(void*)0);
		return *cast(int*)&params[100];
	}
	bool GetPlaylistProvider(ScriptName ProviderTag, int ProviderIndex, ref UIResourceDataProvider out_Provider)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(int*)&params[8] = ProviderIndex;
		*cast(UIResourceDataProvider*)&params[12] = out_Provider;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlaylistProvider, params.ptr, cast(void*)0);
		out_Provider = *cast(UIResourceDataProvider*)&params[12];
		return *cast(bool*)&params[16];
	}
	static OnlinePlaylistProvider GetOnlinePlaylistProvider(ScriptName ProviderTag, int PlaylistId, int* ProviderIndex = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(int*)&params[8] = PlaylistId;
		if (ProviderIndex !is null)
			*cast(int*)&params[12] = *ProviderIndex;
		StaticClass.ProcessEvent(Functions.GetOnlinePlaylistProvider, params.ptr, cast(void*)0);
		if (ProviderIndex !is null)
			*ProviderIndex = *cast(int*)&params[12];
		return *cast(OnlinePlaylistProvider*)&params[16];
	}
}
