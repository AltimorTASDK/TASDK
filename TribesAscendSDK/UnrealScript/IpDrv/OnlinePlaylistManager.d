module UnrealScript.IpDrv.OnlinePlaylistManager;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;

extern(C++) interface OnlinePlaylistManager : UObject
{
	struct Playlist
	{
		public @property final auto ref ScriptArray!(OnlinePlaylistManager.ConfiguredGameSetting) ConfiguredGames() { return *cast(ScriptArray!(OnlinePlaylistManager.ConfiguredGameSetting)*)(cast(size_t)&this + 0); }
		private ubyte __ConfiguredGames[12];
		public @property final auto ref ScriptArray!(int) ContentIds() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 32); }
		private ubyte __ContentIds[12];
		public @property final auto ref ScriptArray!(ScriptName) MapCycle() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 84); }
		private ubyte __MapCycle[12];
		public @property final auto ref ScriptArray!(OnlinePlaylistManager.InventorySwap) InventorySwaps() { return *cast(ScriptArray!(OnlinePlaylistManager.InventorySwap)*)(cast(size_t)&this + 96); }
		private ubyte __InventorySwaps[12];
		public @property final bool bDisableDedicatedServerSearches() { return (*cast(uint*)(cast(size_t)&this + 80) & 0x2) != 0; }
		public @property final bool bDisableDedicatedServerSearches(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 80) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 80) &= ~0x2; } return val; }
		private ubyte __bDisableDedicatedServerSearches[4];
		public @property final bool bIsArbitrated() { return (*cast(uint*)(cast(size_t)&this + 80) & 0x1) != 0; }
		public @property final bool bIsArbitrated(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 80) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 80) &= ~0x1; } return val; }
		private ubyte __bIsArbitrated[4];
		// WARNING: Property 'URL' has the same name as a defined type!
		public @property final auto ref ScriptString Name() { return *cast(ScriptString*)(cast(size_t)&this + 56); }
		private ubyte __Name[12];
		public @property final auto ref int MaxPartySize() { return *cast(int*)(cast(size_t)&this + 52); }
		private ubyte __MaxPartySize[4];
		public @property final auto ref int TeamCount() { return *cast(int*)(cast(size_t)&this + 48); }
		private ubyte __TeamCount[4];
		public @property final auto ref int TeamSize() { return *cast(int*)(cast(size_t)&this + 44); }
		private ubyte __TeamSize[4];
		public @property final auto ref ScriptString LocalizationString() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
		private ubyte __LocalizationString[12];
		public @property final auto ref int LoadBalanceId() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __LoadBalanceId[4];
		public @property final auto ref int PlaylistId() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __PlaylistId[4];
	}
	struct PlaylistPopulation
	{
		public @property final auto ref int RegionTotal() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __RegionTotal[4];
		public @property final auto ref int WorldwideTotal() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __WorldwideTotal[4];
		public @property final auto ref int PlaylistId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __PlaylistId[4];
	}
	struct ConfiguredGameSetting
	{
		public @property final auto ref OnlineGameSettings GameSettings() { return *cast(OnlineGameSettings*)(cast(size_t)&this + 28); }
		private ubyte __GameSettings[4];
		// WARNING: Property 'URL' has the same name as a defined type!
		public @property final auto ref ScriptString GameSettingsClassName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __GameSettingsClassName[12];
		public @property final auto ref int GameSettingId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __GameSettingId[4];
	}
	struct InventorySwap
	{
		public @property final auto ref ScriptString SwapTo() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __SwapTo[12];
		public @property final auto ref ScriptName Original() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __Original[8];
	}
	public @property final auto ref ScriptArray!(OnlinePlaylistManager.Playlist) Playlists() { return *cast(ScriptArray!(OnlinePlaylistManager.Playlist)*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptArray!(ScriptString) PlaylistFileNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptArray!(ScriptName) DatastoresToRefresh() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref ScriptArray!(OnlinePlaylistManager.PlaylistPopulation) PopulationData() { return *cast(ScriptArray!(OnlinePlaylistManager.PlaylistPopulation)*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptString DataCenterFileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref int DataCenterId() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptName EventsInterfaceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref int CurrentPlaylistId() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref int MinPlaylistIdToReport() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float PlaylistPopulationUpdateInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float NextPlaylistPopulationUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptString PopulationFileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref int RegionTotalPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref int WorldwideTotalPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref int VersionNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int SuccessfulCount() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref int DownloadCount() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	final void OnPlaylistPopulationDataUpdated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33686], cast(void*)0, cast(void*)0);
	}
	final void OnReadPlaylistComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33688], cast(void*)0, cast(void*)0);
	}
	final void DownloadPlaylist()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33733], cast(void*)0, cast(void*)0);
	}
	final void DetermineFilesToDownload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33736], cast(void*)0, cast(void*)0);
	}
	final void OnReadTitleFileComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33737], params.ptr, cast(void*)0);
	}
	final void FinalizePlaylistObjects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33742], cast(void*)0, cast(void*)0);
	}
	final OnlineGameSettings GetGameSettings(int PlaylistId, int GameSettingsId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = GameSettingsId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33743], params.ptr, cast(void*)0);
		return *cast(OnlineGameSettings*)&params[8];
	}
	final bool HasAnyGameSettings(int PlaylistId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33749], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool PlaylistSupportsDedicatedServers(int PlaylistId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33754], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void GetTeamInfoFromPlaylist(int PlaylistId, int* TeamSize, int* TeamCount, int* MaxPartySize)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = *TeamSize;
		*cast(int*)&params[8] = *TeamCount;
		*cast(int*)&params[12] = *MaxPartySize;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33758], params.ptr, cast(void*)0);
		*TeamSize = *cast(int*)&params[4];
		*TeamCount = *cast(int*)&params[8];
		*MaxPartySize = *cast(int*)&params[12];
	}
	final void GetLoadBalanceIdFromPlaylist(int PlaylistId, int* LoadBalanceId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = *LoadBalanceId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33764], params.ptr, cast(void*)0);
		*LoadBalanceId = *cast(int*)&params[4];
	}
	final bool IsPlaylistArbitrated(int PlaylistId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33768], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ScriptString GetUrlFromPlaylist(int PlaylistId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33772], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void GetMapCycleFromPlaylist(int PlaylistId, ScriptArray!(ScriptName)* MapCycle)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(ScriptArray!(ScriptName)*)&params[4] = *MapCycle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33776], params.ptr, cast(void*)0);
		*MapCycle = *cast(ScriptArray!(ScriptName)*)&params[4];
	}
	final ScriptClass GetInventorySwapFromPlaylist(int PlaylistId, ScriptClass SourceInventory)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(ScriptClass*)&params[4] = SourceInventory;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33781], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[8];
	}
	final void GetContentIdsFromPlaylist(int PlaylistId, ScriptArray!(int)* ContentIds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(ScriptArray!(int)*)&params[4] = *ContentIds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33787], params.ptr, cast(void*)0);
		*ContentIds = *cast(ScriptArray!(int)*)&params[4];
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33792], cast(void*)0, cast(void*)0);
	}
	final void ReadPlaylistPopulation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33794], cast(void*)0, cast(void*)0);
	}
	final void OnReadPlaylistPopulationComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33796], params.ptr, cast(void*)0);
	}
	final void ParsePlaylistPopulationData(ScriptArray!(ubyte)* Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33801], params.ptr, cast(void*)0);
		*Data = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
	final void GetPopulationInfoFromPlaylist(int PlaylistId, int* WorldwideTotal, int* RegionTotal)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = *WorldwideTotal;
		*cast(int*)&params[8] = *RegionTotal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33804], params.ptr, cast(void*)0);
		*WorldwideTotal = *cast(int*)&params[4];
		*RegionTotal = *cast(int*)&params[8];
	}
	final void SendPlaylistPopulationUpdate(int NumPlayers)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NumPlayers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33809], params.ptr, cast(void*)0);
	}
	final void ReadDataCenterId()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33813], cast(void*)0, cast(void*)0);
	}
	final void OnReadDataCenterIdComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33815], params.ptr, cast(void*)0);
	}
	final void ParseDataCenterId(ScriptArray!(ubyte)* Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33820], params.ptr, cast(void*)0);
		*Data = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
}
