module UnrealScript.IpDrv.OnlinePlaylistManager;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;

extern(C++) interface OnlinePlaylistManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.OnlinePlaylistManager")); }
	private static __gshared OnlinePlaylistManager mDefaultProperties;
	@property final static OnlinePlaylistManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlinePlaylistManager)("OnlinePlaylistManager IpDrv.Default__OnlinePlaylistManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnPlaylistPopulationDataUpdated;
			ScriptFunction mOnReadPlaylistComplete;
			ScriptFunction mDownloadPlaylist;
			ScriptFunction mDetermineFilesToDownload;
			ScriptFunction mOnReadTitleFileComplete;
			ScriptFunction mFinalizePlaylistObjects;
			ScriptFunction mGetGameSettings;
			ScriptFunction mHasAnyGameSettings;
			ScriptFunction mPlaylistSupportsDedicatedServers;
			ScriptFunction mGetTeamInfoFromPlaylist;
			ScriptFunction mGetLoadBalanceIdFromPlaylist;
			ScriptFunction mIsPlaylistArbitrated;
			ScriptFunction mGetUrlFromPlaylist;
			ScriptFunction mGetMapCycleFromPlaylist;
			ScriptFunction mGetInventorySwapFromPlaylist;
			ScriptFunction mGetContentIdsFromPlaylist;
			ScriptFunction mReset;
			ScriptFunction mReadPlaylistPopulation;
			ScriptFunction mOnReadPlaylistPopulationComplete;
			ScriptFunction mParsePlaylistPopulationData;
			ScriptFunction mGetPopulationInfoFromPlaylist;
			ScriptFunction mSendPlaylistPopulationUpdate;
			ScriptFunction mReadDataCenterId;
			ScriptFunction mOnReadDataCenterIdComplete;
			ScriptFunction mParseDataCenterId;
		}
		public @property static final
		{
			ScriptFunction OnPlaylistPopulationDataUpdated() { return mOnPlaylistPopulationDataUpdated ? mOnPlaylistPopulationDataUpdated : (mOnPlaylistPopulationDataUpdated = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.OnPlaylistPopulationDataUpdated")); }
			ScriptFunction OnReadPlaylistComplete() { return mOnReadPlaylistComplete ? mOnReadPlaylistComplete : (mOnReadPlaylistComplete = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.OnReadPlaylistComplete")); }
			ScriptFunction DownloadPlaylist() { return mDownloadPlaylist ? mDownloadPlaylist : (mDownloadPlaylist = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.DownloadPlaylist")); }
			ScriptFunction DetermineFilesToDownload() { return mDetermineFilesToDownload ? mDetermineFilesToDownload : (mDetermineFilesToDownload = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.DetermineFilesToDownload")); }
			ScriptFunction OnReadTitleFileComplete() { return mOnReadTitleFileComplete ? mOnReadTitleFileComplete : (mOnReadTitleFileComplete = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.OnReadTitleFileComplete")); }
			ScriptFunction FinalizePlaylistObjects() { return mFinalizePlaylistObjects ? mFinalizePlaylistObjects : (mFinalizePlaylistObjects = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.FinalizePlaylistObjects")); }
			ScriptFunction GetGameSettings() { return mGetGameSettings ? mGetGameSettings : (mGetGameSettings = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.GetGameSettings")); }
			ScriptFunction HasAnyGameSettings() { return mHasAnyGameSettings ? mHasAnyGameSettings : (mHasAnyGameSettings = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.HasAnyGameSettings")); }
			ScriptFunction PlaylistSupportsDedicatedServers() { return mPlaylistSupportsDedicatedServers ? mPlaylistSupportsDedicatedServers : (mPlaylistSupportsDedicatedServers = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.PlaylistSupportsDedicatedServers")); }
			ScriptFunction GetTeamInfoFromPlaylist() { return mGetTeamInfoFromPlaylist ? mGetTeamInfoFromPlaylist : (mGetTeamInfoFromPlaylist = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.GetTeamInfoFromPlaylist")); }
			ScriptFunction GetLoadBalanceIdFromPlaylist() { return mGetLoadBalanceIdFromPlaylist ? mGetLoadBalanceIdFromPlaylist : (mGetLoadBalanceIdFromPlaylist = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.GetLoadBalanceIdFromPlaylist")); }
			ScriptFunction IsPlaylistArbitrated() { return mIsPlaylistArbitrated ? mIsPlaylistArbitrated : (mIsPlaylistArbitrated = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.IsPlaylistArbitrated")); }
			ScriptFunction GetUrlFromPlaylist() { return mGetUrlFromPlaylist ? mGetUrlFromPlaylist : (mGetUrlFromPlaylist = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.GetUrlFromPlaylist")); }
			ScriptFunction GetMapCycleFromPlaylist() { return mGetMapCycleFromPlaylist ? mGetMapCycleFromPlaylist : (mGetMapCycleFromPlaylist = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.GetMapCycleFromPlaylist")); }
			ScriptFunction GetInventorySwapFromPlaylist() { return mGetInventorySwapFromPlaylist ? mGetInventorySwapFromPlaylist : (mGetInventorySwapFromPlaylist = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.GetInventorySwapFromPlaylist")); }
			ScriptFunction GetContentIdsFromPlaylist() { return mGetContentIdsFromPlaylist ? mGetContentIdsFromPlaylist : (mGetContentIdsFromPlaylist = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.GetContentIdsFromPlaylist")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.Reset")); }
			ScriptFunction ReadPlaylistPopulation() { return mReadPlaylistPopulation ? mReadPlaylistPopulation : (mReadPlaylistPopulation = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.ReadPlaylistPopulation")); }
			ScriptFunction OnReadPlaylistPopulationComplete() { return mOnReadPlaylistPopulationComplete ? mOnReadPlaylistPopulationComplete : (mOnReadPlaylistPopulationComplete = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.OnReadPlaylistPopulationComplete")); }
			ScriptFunction ParsePlaylistPopulationData() { return mParsePlaylistPopulationData ? mParsePlaylistPopulationData : (mParsePlaylistPopulationData = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.ParsePlaylistPopulationData")); }
			ScriptFunction GetPopulationInfoFromPlaylist() { return mGetPopulationInfoFromPlaylist ? mGetPopulationInfoFromPlaylist : (mGetPopulationInfoFromPlaylist = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.GetPopulationInfoFromPlaylist")); }
			ScriptFunction SendPlaylistPopulationUpdate() { return mSendPlaylistPopulationUpdate ? mSendPlaylistPopulationUpdate : (mSendPlaylistPopulationUpdate = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.SendPlaylistPopulationUpdate")); }
			ScriptFunction ReadDataCenterId() { return mReadDataCenterId ? mReadDataCenterId : (mReadDataCenterId = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.ReadDataCenterId")); }
			ScriptFunction OnReadDataCenterIdComplete() { return mOnReadDataCenterIdComplete ? mOnReadDataCenterIdComplete : (mOnReadDataCenterIdComplete = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.OnReadDataCenterIdComplete")); }
			ScriptFunction ParseDataCenterId() { return mParseDataCenterId ? mParseDataCenterId : (mParseDataCenterId = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlinePlaylistManager.ParseDataCenterId")); }
		}
	}
	struct Playlist
	{
		private ubyte __buffer__[108];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.OnlinePlaylistManager.Playlist")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(OnlinePlaylistManager.ConfiguredGameSetting) ConfiguredGames() { return *cast(ScriptArray!(OnlinePlaylistManager.ConfiguredGameSetting)*)(cast(size_t)&this + 0); }
				ScriptArray!(int) ContentIds() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 32); }
				ScriptArray!(ScriptName) MapCycle() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 84); }
				ScriptArray!(OnlinePlaylistManager.InventorySwap) InventorySwaps() { return *cast(ScriptArray!(OnlinePlaylistManager.InventorySwap)*)(cast(size_t)&this + 96); }
				// WARNING: Property 'URL' has the same name as a defined type!
				ScriptString Name() { return *cast(ScriptString*)(cast(size_t)&this + 56); }
				int MaxPartySize() { return *cast(int*)(cast(size_t)&this + 52); }
				int TeamCount() { return *cast(int*)(cast(size_t)&this + 48); }
				int TeamSize() { return *cast(int*)(cast(size_t)&this + 44); }
				ScriptString LocalizationString() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
				int LoadBalanceId() { return *cast(int*)(cast(size_t)&this + 16); }
				int PlaylistId() { return *cast(int*)(cast(size_t)&this + 12); }
			}
			bool bDisableDedicatedServerSearches() { return (*cast(uint*)(cast(size_t)&this + 80) & 0x2) != 0; }
			bool bDisableDedicatedServerSearches(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 80) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 80) &= ~0x2; } return val; }
			bool bIsArbitrated() { return (*cast(uint*)(cast(size_t)&this + 80) & 0x1) != 0; }
			bool bIsArbitrated(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 80) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 80) &= ~0x1; } return val; }
		}
	}
	struct PlaylistPopulation
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.OnlinePlaylistManager.PlaylistPopulation")); }
		@property final auto ref
		{
			int RegionTotal() { return *cast(int*)(cast(size_t)&this + 8); }
			int WorldwideTotal() { return *cast(int*)(cast(size_t)&this + 4); }
			int PlaylistId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct ConfiguredGameSetting
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.OnlinePlaylistManager.ConfiguredGameSetting")); }
		@property final auto ref
		{
			OnlineGameSettings GameSettings() { return *cast(OnlineGameSettings*)(cast(size_t)&this + 28); }
			// WARNING: Property 'URL' has the same name as a defined type!
			ScriptString GameSettingsClassName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			int GameSettingId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct InventorySwap
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.OnlinePlaylistManager.InventorySwap")); }
		@property final auto ref
		{
			ScriptString SwapTo() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
			ScriptName Original() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlinePlaylistManager.Playlist) Playlists() { return *cast(ScriptArray!(OnlinePlaylistManager.Playlist)*)(cast(size_t)cast(void*)this + 64); }
		ScriptArray!(ScriptString) PlaylistFileNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 76); }
		ScriptArray!(ScriptName) DatastoresToRefresh() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 88); }
		ScriptArray!(OnlinePlaylistManager.PlaylistPopulation) PopulationData() { return *cast(ScriptArray!(OnlinePlaylistManager.PlaylistPopulation)*)(cast(size_t)cast(void*)this + 112); }
		ScriptString DataCenterFileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
		int DataCenterId() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
		ScriptName EventsInterfaceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 168); }
		int CurrentPlaylistId() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
		int MinPlaylistIdToReport() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
		float PlaylistPopulationUpdateInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
		float NextPlaylistPopulationUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
		ScriptString PopulationFileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
		int RegionTotalPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
		int WorldwideTotalPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
		int VersionNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
		int SuccessfulCount() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
		int DownloadCount() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
		UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void OnPlaylistPopulationDataUpdated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlaylistPopulationDataUpdated, cast(void*)0, cast(void*)0);
	}
	void OnReadPlaylistComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadPlaylistComplete, cast(void*)0, cast(void*)0);
	}
	void DownloadPlaylist()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DownloadPlaylist, cast(void*)0, cast(void*)0);
	}
	void DetermineFilesToDownload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DetermineFilesToDownload, cast(void*)0, cast(void*)0);
	}
	void OnReadTitleFileComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadTitleFileComplete, params.ptr, cast(void*)0);
	}
	void FinalizePlaylistObjects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FinalizePlaylistObjects, cast(void*)0, cast(void*)0);
	}
	OnlineGameSettings GetGameSettings(int PlaylistId, int GameSettingsId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = GameSettingsId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameSettings, params.ptr, cast(void*)0);
		return *cast(OnlineGameSettings*)&params[8];
	}
	bool HasAnyGameSettings(int PlaylistId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAnyGameSettings, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool PlaylistSupportsDedicatedServers(int PlaylistId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaylistSupportsDedicatedServers, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetTeamInfoFromPlaylist(int PlaylistId, int* TeamSize, int* TeamCount, int* MaxPartySize)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = *TeamSize;
		*cast(int*)&params[8] = *TeamCount;
		*cast(int*)&params[12] = *MaxPartySize;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamInfoFromPlaylist, params.ptr, cast(void*)0);
		*TeamSize = *cast(int*)&params[4];
		*TeamCount = *cast(int*)&params[8];
		*MaxPartySize = *cast(int*)&params[12];
	}
	void GetLoadBalanceIdFromPlaylist(int PlaylistId, int* LoadBalanceId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = *LoadBalanceId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLoadBalanceIdFromPlaylist, params.ptr, cast(void*)0);
		*LoadBalanceId = *cast(int*)&params[4];
	}
	bool IsPlaylistArbitrated(int PlaylistId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPlaylistArbitrated, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetUrlFromPlaylist(int PlaylistId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUrlFromPlaylist, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void GetMapCycleFromPlaylist(int PlaylistId, ScriptArray!(ScriptName)* MapCycle)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(ScriptArray!(ScriptName)*)&params[4] = *MapCycle;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMapCycleFromPlaylist, params.ptr, cast(void*)0);
		*MapCycle = *cast(ScriptArray!(ScriptName)*)&params[4];
	}
	ScriptClass GetInventorySwapFromPlaylist(int PlaylistId, ScriptClass SourceInventory)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(ScriptClass*)&params[4] = SourceInventory;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetInventorySwapFromPlaylist, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[8];
	}
	void GetContentIdsFromPlaylist(int PlaylistId, ScriptArray!(int)* ContentIds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(ScriptArray!(int)*)&params[4] = *ContentIds;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetContentIdsFromPlaylist, params.ptr, cast(void*)0);
		*ContentIds = *cast(ScriptArray!(int)*)&params[4];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void ReadPlaylistPopulation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadPlaylistPopulation, cast(void*)0, cast(void*)0);
	}
	void OnReadPlaylistPopulationComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadPlaylistPopulationComplete, params.ptr, cast(void*)0);
	}
	void ParsePlaylistPopulationData(ScriptArray!(ubyte)* Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParsePlaylistPopulationData, params.ptr, cast(void*)0);
		*Data = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
	void GetPopulationInfoFromPlaylist(int PlaylistId, int* WorldwideTotal, int* RegionTotal)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = *WorldwideTotal;
		*cast(int*)&params[8] = *RegionTotal;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPopulationInfoFromPlaylist, params.ptr, cast(void*)0);
		*WorldwideTotal = *cast(int*)&params[4];
		*RegionTotal = *cast(int*)&params[8];
	}
	void SendPlaylistPopulationUpdate(int NumPlayers)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NumPlayers;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendPlaylistPopulationUpdate, params.ptr, cast(void*)0);
	}
	void ReadDataCenterId()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadDataCenterId, cast(void*)0, cast(void*)0);
	}
	void OnReadDataCenterIdComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadDataCenterIdComplete, params.ptr, cast(void*)0);
	}
	void ParseDataCenterId(ScriptArray!(ubyte)* Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParseDataCenterId, params.ptr, cast(void*)0);
		*Data = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
}
