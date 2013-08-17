module UnrealScript.IpDrv.OnlinePlaylistManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;

extern(C++) interface OnlinePlaylistManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.OnlinePlaylistManager")()); }
	private static __gshared OnlinePlaylistManager mDefaultProperties;
	@property final static OnlinePlaylistManager DefaultProperties() { mixin(MGDPC!(OnlinePlaylistManager, "OnlinePlaylistManager IpDrv.Default__OnlinePlaylistManager")()); }
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
			ScriptFunction OnPlaylistPopulationDataUpdated() { mixin(MGF!("mOnPlaylistPopulationDataUpdated", "Function IpDrv.OnlinePlaylistManager.OnPlaylistPopulationDataUpdated")()); }
			ScriptFunction OnReadPlaylistComplete() { mixin(MGF!("mOnReadPlaylistComplete", "Function IpDrv.OnlinePlaylistManager.OnReadPlaylistComplete")()); }
			ScriptFunction DownloadPlaylist() { mixin(MGF!("mDownloadPlaylist", "Function IpDrv.OnlinePlaylistManager.DownloadPlaylist")()); }
			ScriptFunction DetermineFilesToDownload() { mixin(MGF!("mDetermineFilesToDownload", "Function IpDrv.OnlinePlaylistManager.DetermineFilesToDownload")()); }
			ScriptFunction OnReadTitleFileComplete() { mixin(MGF!("mOnReadTitleFileComplete", "Function IpDrv.OnlinePlaylistManager.OnReadTitleFileComplete")()); }
			ScriptFunction FinalizePlaylistObjects() { mixin(MGF!("mFinalizePlaylistObjects", "Function IpDrv.OnlinePlaylistManager.FinalizePlaylistObjects")()); }
			ScriptFunction GetGameSettings() { mixin(MGF!("mGetGameSettings", "Function IpDrv.OnlinePlaylistManager.GetGameSettings")()); }
			ScriptFunction HasAnyGameSettings() { mixin(MGF!("mHasAnyGameSettings", "Function IpDrv.OnlinePlaylistManager.HasAnyGameSettings")()); }
			ScriptFunction PlaylistSupportsDedicatedServers() { mixin(MGF!("mPlaylistSupportsDedicatedServers", "Function IpDrv.OnlinePlaylistManager.PlaylistSupportsDedicatedServers")()); }
			ScriptFunction GetTeamInfoFromPlaylist() { mixin(MGF!("mGetTeamInfoFromPlaylist", "Function IpDrv.OnlinePlaylistManager.GetTeamInfoFromPlaylist")()); }
			ScriptFunction GetLoadBalanceIdFromPlaylist() { mixin(MGF!("mGetLoadBalanceIdFromPlaylist", "Function IpDrv.OnlinePlaylistManager.GetLoadBalanceIdFromPlaylist")()); }
			ScriptFunction IsPlaylistArbitrated() { mixin(MGF!("mIsPlaylistArbitrated", "Function IpDrv.OnlinePlaylistManager.IsPlaylistArbitrated")()); }
			ScriptFunction GetUrlFromPlaylist() { mixin(MGF!("mGetUrlFromPlaylist", "Function IpDrv.OnlinePlaylistManager.GetUrlFromPlaylist")()); }
			ScriptFunction GetMapCycleFromPlaylist() { mixin(MGF!("mGetMapCycleFromPlaylist", "Function IpDrv.OnlinePlaylistManager.GetMapCycleFromPlaylist")()); }
			ScriptFunction GetInventorySwapFromPlaylist() { mixin(MGF!("mGetInventorySwapFromPlaylist", "Function IpDrv.OnlinePlaylistManager.GetInventorySwapFromPlaylist")()); }
			ScriptFunction GetContentIdsFromPlaylist() { mixin(MGF!("mGetContentIdsFromPlaylist", "Function IpDrv.OnlinePlaylistManager.GetContentIdsFromPlaylist")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function IpDrv.OnlinePlaylistManager.Reset")()); }
			ScriptFunction ReadPlaylistPopulation() { mixin(MGF!("mReadPlaylistPopulation", "Function IpDrv.OnlinePlaylistManager.ReadPlaylistPopulation")()); }
			ScriptFunction OnReadPlaylistPopulationComplete() { mixin(MGF!("mOnReadPlaylistPopulationComplete", "Function IpDrv.OnlinePlaylistManager.OnReadPlaylistPopulationComplete")()); }
			ScriptFunction ParsePlaylistPopulationData() { mixin(MGF!("mParsePlaylistPopulationData", "Function IpDrv.OnlinePlaylistManager.ParsePlaylistPopulationData")()); }
			ScriptFunction GetPopulationInfoFromPlaylist() { mixin(MGF!("mGetPopulationInfoFromPlaylist", "Function IpDrv.OnlinePlaylistManager.GetPopulationInfoFromPlaylist")()); }
			ScriptFunction SendPlaylistPopulationUpdate() { mixin(MGF!("mSendPlaylistPopulationUpdate", "Function IpDrv.OnlinePlaylistManager.SendPlaylistPopulationUpdate")()); }
			ScriptFunction ReadDataCenterId() { mixin(MGF!("mReadDataCenterId", "Function IpDrv.OnlinePlaylistManager.ReadDataCenterId")()); }
			ScriptFunction OnReadDataCenterIdComplete() { mixin(MGF!("mOnReadDataCenterIdComplete", "Function IpDrv.OnlinePlaylistManager.OnReadDataCenterIdComplete")()); }
			ScriptFunction ParseDataCenterId() { mixin(MGF!("mParseDataCenterId", "Function IpDrv.OnlinePlaylistManager.ParseDataCenterId")()); }
		}
	}
	struct Playlist
	{
		private ubyte __buffer__[108];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct IpDrv.OnlinePlaylistManager.Playlist")()); }
		@property final
		{
			auto ref
			{
				ScriptArray!(OnlinePlaylistManager.ConfiguredGameSetting) ConfiguredGames() { mixin(MGPS!(ScriptArray!(OnlinePlaylistManager.ConfiguredGameSetting), 0)()); }
				ScriptArray!(int) ContentIds() { mixin(MGPS!(ScriptArray!(int), 32)()); }
				ScriptArray!(ScriptName) MapCycle() { mixin(MGPS!(ScriptArray!(ScriptName), 84)()); }
				ScriptArray!(OnlinePlaylistManager.InventorySwap) InventorySwaps() { mixin(MGPS!(ScriptArray!(OnlinePlaylistManager.InventorySwap), 96)()); }
				// WARNING: Property 'URL' has the same name as a defined type!
				ScriptString Name() { mixin(MGPS!(ScriptString, 56)()); }
				int MaxPartySize() { mixin(MGPS!(int, 52)()); }
				int TeamCount() { mixin(MGPS!(int, 48)()); }
				int TeamSize() { mixin(MGPS!(int, 44)()); }
				ScriptString LocalizationString() { mixin(MGPS!(ScriptString, 20)()); }
				int LoadBalanceId() { mixin(MGPS!(int, 16)()); }
				int PlaylistId() { mixin(MGPS!(int, 12)()); }
			}
			bool bDisableDedicatedServerSearches() { mixin(MGBPS!(80, 0x2)()); }
			bool bDisableDedicatedServerSearches(bool val) { mixin(MSBPS!(80, 0x2)()); }
			bool bIsArbitrated() { mixin(MGBPS!(80, 0x1)()); }
			bool bIsArbitrated(bool val) { mixin(MSBPS!(80, 0x1)()); }
		}
	}
	struct PlaylistPopulation
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct IpDrv.OnlinePlaylistManager.PlaylistPopulation")()); }
		@property final auto ref
		{
			int RegionTotal() { mixin(MGPS!(int, 8)()); }
			int WorldwideTotal() { mixin(MGPS!(int, 4)()); }
			int PlaylistId() { mixin(MGPS!(int, 0)()); }
		}
	}
	struct ConfiguredGameSetting
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct IpDrv.OnlinePlaylistManager.ConfiguredGameSetting")()); }
		@property final auto ref
		{
			OnlineGameSettings GameSettings() { mixin(MGPS!(OnlineGameSettings, 28)()); }
			// WARNING: Property 'URL' has the same name as a defined type!
			ScriptString GameSettingsClassName() { mixin(MGPS!(ScriptString, 4)()); }
			int GameSettingId() { mixin(MGPS!(int, 0)()); }
		}
	}
	struct InventorySwap
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct IpDrv.OnlinePlaylistManager.InventorySwap")()); }
		@property final auto ref
		{
			ScriptString SwapTo() { mixin(MGPS!(ScriptString, 8)()); }
			ScriptName Original() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlinePlaylistManager.Playlist) Playlists() { mixin(MGPC!(ScriptArray!(OnlinePlaylistManager.Playlist), 64)()); }
		ScriptArray!(ScriptString) PlaylistFileNames() { mixin(MGPC!(ScriptArray!(ScriptString), 76)()); }
		ScriptArray!(ScriptName) DatastoresToRefresh() { mixin(MGPC!(ScriptArray!(ScriptName), 88)()); }
		ScriptArray!(OnlinePlaylistManager.PlaylistPopulation) PopulationData() { mixin(MGPC!(ScriptArray!(OnlinePlaylistManager.PlaylistPopulation), 112)()); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnPlaylistPopulationDataUpdated__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadPlaylistComplete__Delegate'!
		ScriptString DataCenterFileName() { mixin(MGPC!(ScriptString, 180)()); }
		int DataCenterId() { mixin(MGPC!(int, 176)()); }
		ScriptName EventsInterfaceName() { mixin(MGPC!(ScriptName, 168)()); }
		int CurrentPlaylistId() { mixin(MGPC!(int, 164)()); }
		int MinPlaylistIdToReport() { mixin(MGPC!(int, 160)()); }
		float PlaylistPopulationUpdateInterval() { mixin(MGPC!(float, 156)()); }
		float NextPlaylistPopulationUpdateTime() { mixin(MGPC!(float, 152)()); }
		ScriptString PopulationFileName() { mixin(MGPC!(ScriptString, 140)()); }
		// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'TitleFileInterface'!
		int RegionTotalPlayers() { mixin(MGPC!(int, 128)()); }
		int WorldwideTotalPlayers() { mixin(MGPC!(int, 124)()); }
		int VersionNumber() { mixin(MGPC!(int, 108)()); }
		int SuccessfulCount() { mixin(MGPC!(int, 104)()); }
		int DownloadCount() { mixin(MGPC!(int, 100)()); }
		UObject.Pointer VfTable_FTickableObject() { mixin(MGPC!(UObject.Pointer, 60)()); }
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
	void GetTeamInfoFromPlaylist(int PlaylistId, ref int TeamSize, ref int TeamCount, ref int MaxPartySize)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = TeamSize;
		*cast(int*)&params[8] = TeamCount;
		*cast(int*)&params[12] = MaxPartySize;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamInfoFromPlaylist, params.ptr, cast(void*)0);
		*TeamSize = *cast(int*)&params[4];
		*TeamCount = *cast(int*)&params[8];
		*MaxPartySize = *cast(int*)&params[12];
	}
	void GetLoadBalanceIdFromPlaylist(int PlaylistId, ref int LoadBalanceId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = LoadBalanceId;
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
	void GetMapCycleFromPlaylist(int PlaylistId, ref ScriptArray!(ScriptName) MapCycle)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(ScriptArray!(ScriptName)*)&params[4] = MapCycle;
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
	void GetContentIdsFromPlaylist(int PlaylistId, ref ScriptArray!(int) ContentIds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(ScriptArray!(int)*)&params[4] = ContentIds;
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
	void ParsePlaylistPopulationData(ref const ScriptArray!(ubyte) Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParsePlaylistPopulationData, params.ptr, cast(void*)0);
		*Data = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
	void GetPopulationInfoFromPlaylist(int PlaylistId, ref int WorldwideTotal, ref int RegionTotal)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = WorldwideTotal;
		*cast(int*)&params[8] = RegionTotal;
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
	void ParseDataCenterId(ref const ScriptArray!(ubyte) Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParseDataCenterId, params.ptr, cast(void*)0);
		*Data = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
}
