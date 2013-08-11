module UnrealScript.IpDrv.OnlinePlaylistManager;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;

extern(C++) interface OnlinePlaylistManager : UObject
{
public extern(D):
	struct Playlist
	{
		private ubyte __buffer__[108];
	public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33686], cast(void*)0, cast(void*)0);
	}
	void OnReadPlaylistComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33688], cast(void*)0, cast(void*)0);
	}
	void DownloadPlaylist()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33733], cast(void*)0, cast(void*)0);
	}
	void DetermineFilesToDownload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33736], cast(void*)0, cast(void*)0);
	}
	void OnReadTitleFileComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33737], params.ptr, cast(void*)0);
	}
	void FinalizePlaylistObjects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33742], cast(void*)0, cast(void*)0);
	}
	OnlineGameSettings GetGameSettings(int PlaylistId, int GameSettingsId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = GameSettingsId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33743], params.ptr, cast(void*)0);
		return *cast(OnlineGameSettings*)&params[8];
	}
	bool HasAnyGameSettings(int PlaylistId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33749], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool PlaylistSupportsDedicatedServers(int PlaylistId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33754], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33758], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33764], params.ptr, cast(void*)0);
		*LoadBalanceId = *cast(int*)&params[4];
	}
	bool IsPlaylistArbitrated(int PlaylistId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33768], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetUrlFromPlaylist(int PlaylistId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33772], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void GetMapCycleFromPlaylist(int PlaylistId, ScriptArray!(ScriptName)* MapCycle)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(ScriptArray!(ScriptName)*)&params[4] = *MapCycle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33776], params.ptr, cast(void*)0);
		*MapCycle = *cast(ScriptArray!(ScriptName)*)&params[4];
	}
	ScriptClass GetInventorySwapFromPlaylist(int PlaylistId, ScriptClass SourceInventory)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(ScriptClass*)&params[4] = SourceInventory;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33781], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[8];
	}
	void GetContentIdsFromPlaylist(int PlaylistId, ScriptArray!(int)* ContentIds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(ScriptArray!(int)*)&params[4] = *ContentIds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33787], params.ptr, cast(void*)0);
		*ContentIds = *cast(ScriptArray!(int)*)&params[4];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33792], cast(void*)0, cast(void*)0);
	}
	void ReadPlaylistPopulation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33794], cast(void*)0, cast(void*)0);
	}
	void OnReadPlaylistPopulationComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33796], params.ptr, cast(void*)0);
	}
	void ParsePlaylistPopulationData(ScriptArray!(ubyte)* Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33801], params.ptr, cast(void*)0);
		*Data = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
	void GetPopulationInfoFromPlaylist(int PlaylistId, int* WorldwideTotal, int* RegionTotal)
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
	void SendPlaylistPopulationUpdate(int NumPlayers)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NumPlayers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33809], params.ptr, cast(void*)0);
	}
	void ReadDataCenterId()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33813], cast(void*)0, cast(void*)0);
	}
	void OnReadDataCenterIdComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33815], params.ptr, cast(void*)0);
	}
	void ParseDataCenterId(ScriptArray!(ubyte)* Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33820], params.ptr, cast(void*)0);
		*Data = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
}
