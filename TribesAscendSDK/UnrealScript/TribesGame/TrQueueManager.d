module UnrealScript.TribesGame.TrQueueManager;

import ScriptClasses;
import UnrealScript.OnlineSubsystemMcts.OnlineGameInterfaceMcts;
import UnrealScript.Core.UObject;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.GFxTrMenuMoviePlayer;

extern(C++) interface TrQueueManager : UObject
{
public extern(D):
	struct ServerInfo
	{
		private ubyte __buffer__[80];
	public extern(D):
		@property final
		{
			auto ref
			{
				int PlayerCount() { return *cast(int*)(cast(size_t)&this + 20); }
				int PlayerMax() { return *cast(int*)(cast(size_t)&this + 16); }
				ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)&this + 56); }
				ScriptString ServerName() { return *cast(ScriptString*)(cast(size_t)&this + 32); }
				int queueId() { return *cast(int*)(cast(size_t)&this + 4); }
				int Ping() { return *cast(int*)(cast(size_t)&this + 0); }
				ScriptString Ruleset() { return *cast(ScriptString*)(cast(size_t)&this + 68); }
				int MinLevel() { return *cast(int*)(cast(size_t)&this + 8); }
				int MaxLevel() { return *cast(int*)(cast(size_t)&this + 12); }
				ScriptString ServerDesc() { return *cast(ScriptString*)(cast(size_t)&this + 44); }
				int GameType() { return *cast(int*)(cast(size_t)&this + 28); }
			}
			bool bFavorite() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
			bool bFavorite(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
			bool bPrivate() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bPrivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	struct RentalItem
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final auto ref
		{
			ScriptString RentalName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			int Price() { return *cast(int*)(cast(size_t)&this + 0); }
			int LootId() { return *cast(int*)(cast(size_t)&this + 4); }
			int SortOrder() { return *cast(int*)(cast(size_t)&this + 8); }
		}
	}
	struct ServerConfig
	{
		private ubyte __buffer__[40];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(TrQueueManager.ProfileConfig) Profiles() { return *cast(ScriptArray!(TrQueueManager.ProfileConfig)*)(cast(size_t)&this + 28); }
				ScriptString ServerName() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
				int MinutesRented() { return *cast(int*)(cast(size_t)&this + 8); }
				int MatchQueueId() { return *cast(int*)(cast(size_t)&this + 4); }
				int ActiveConfig() { return *cast(int*)(cast(size_t)&this + 0); }
			}
			bool bCanExpire() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x8) != 0; }
			bool bCanExpire(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x8; } return val; }
			bool bActive() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x4) != 0; }
			bool bActive(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x4; } return val; }
			bool bOwner() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x2) != 0; }
			bool bOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x2; } return val; }
			bool bOpen() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	struct ProfileConfig
	{
		private ubyte __buffer__[60];
	public extern(D):
		@property final auto ref
		{
			ScriptString PasswordPublic() { return *cast(ScriptString*)(cast(size_t)&this + 48); }
			ScriptString PasswordAdmin() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
			ScriptString ProfileDesc() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
			ScriptString ProfileName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			int QueueCaseId() { return *cast(int*)(cast(size_t)&this + 8); }
			int GameCaseId() { return *cast(int*)(cast(size_t)&this + 4); }
			int Slots() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(int) RegionFilter() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 116); }
			ScriptString QueueFriend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
			ScriptArray!(TrQueueManager.ServerInfo) ServerInfoList() { return *cast(ScriptArray!(TrQueueManager.ServerInfo)*)(cast(size_t)cast(void*)this + 152); }
			int GameTypeId() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
			ScriptArray!(TrQueueManager.ServerConfig) RentedServers() { return *cast(ScriptArray!(TrQueueManager.ServerConfig)*)(cast(size_t)cast(void*)this + 164); }
			int ServerIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
			int MapSlots() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			ScriptArray!(TrQueueManager.RentalItem) RentalItems() { return *cast(ScriptArray!(TrQueueManager.RentalItem)*)(cast(size_t)cast(void*)this + 176); }
			ScriptArray!(TgPlayerProfile.PropertyPair) FilteredGameTypes() { return *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)(cast(size_t)cast(void*)this + 188); }
			GFxTrMenuMoviePlayer TrOuter() { return *cast(GFxTrMenuMoviePlayer*)(cast(size_t)cast(void*)this + 148); }
			OnlineGameInterfaceMcts OnlineGameMcts() { return *cast(OnlineGameInterfaceMcts*)(cast(size_t)cast(void*)this + 144); }
			int PasswordQueue() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			int PasswordIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
			int ProfileIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
			int queueId() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bQueued() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
		bool bQueued(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
		bool bJoiningCustom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4) != 0; }
		bool bJoiningCustom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4; } return val; }
		bool bFilterOwner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8) != 0; }
		bool bFilterOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8; } return val; }
		bool bNeedPassword() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2) != 0; }
		bool bNeedPassword(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2; } return val; }
		bool bFavoriteSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1000) != 0; }
		bool bFavoriteSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1000; } return val; }
		bool bPasswordSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x800) != 0; }
		bool bPasswordSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x800; } return val; }
		bool bSlotsSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x400) != 0; }
		bool bSlotsSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x400; } return val; }
		bool bRangeSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x200) != 0; }
		bool bRangeSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x200; } return val; }
		bool bRulesSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x100) != 0; }
		bool bRulesSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x100; } return val; }
		bool bTypeSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x80) != 0; }
		bool bTypeSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x80; } return val; }
		bool bPingSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x40) != 0; }
		bool bPingSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x40; } return val; }
		bool bNameSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x20) != 0; }
		bool bNameSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x20; } return val; }
		bool bMapSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x10) != 0; }
		bool bMapSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x10; } return val; }
	}
final:
	ScriptString GetStatus()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54699], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool SetPropNumber(int PropId, int val, int PropType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = val;
		*cast(int*)&params[8] = PropType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58002], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool GetNextMapId(bool bStart, int* MapId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bStart;
		*cast(int*)&params[4] = *MapId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58012], params.ptr, cast(void*)0);
		*MapId = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	ScriptString GetMapName(int MapId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MapId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58021], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString GetProfileName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58031], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetProfileDesc()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58033], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetServerGameTypeName(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58560], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	int GetProfileGameType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59097], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptString GetServerRotationName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59103], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool IsGameTypeFiltered(int Id)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Id;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59174], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AmServerOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59650], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetPropNumber(int PropId, int PropType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59655], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	ScriptString GetServerTimeFormat()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59661], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	int GetQueueCaseId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59690], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool GetServerOnline(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59697], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetServerName(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59699], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool AddCustomServer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59711], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetProfileRotation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60518], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool GetServerExpired()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60547], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetServerTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60551], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool CustomStart()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60569], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CustomStop()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60571], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CustomShutdown()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60573], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CustomNextMap(int MapId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = MapId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60575], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CustomKick(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60577], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool CustomBan(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60579], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool AddCustomServerTime(int LootId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LootId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60615], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GetPropMin(int PropId, int PropType, int* val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		*cast(int*)&params[8] = *val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60746], params.ptr, cast(void*)0);
		*val = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetPropMax(int PropId, int PropType, int* val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		*cast(int*)&params[8] = *val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60748], params.ptr, cast(void*)0);
		*val = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	ScriptString GetAdminPassword()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60942], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetPublicPassword()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60945], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool CustomSetName(ScriptString QueueName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = QueueName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60951], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool SetPropString(int PropId, ScriptString val, int PropType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(ScriptString*)&params[4] = val;
		*cast(int*)&params[16] = PropType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60953], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	int GetProfileRegion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60961], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool CustomLogin(ScriptString Password)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100339], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	int FavoriteSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109504], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int PasswordSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109506], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int SlotsSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109508], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int RangeSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109510], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int RulesSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109512], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int TypeSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109514], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int PingSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109516], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int NameSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109518], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int MapSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109520], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int FavoriteSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109522], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int PasswordSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109524], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int SlotsSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109526], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int RangeSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109528], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int RulesSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109530], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int TypeSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109532], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int PingSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109534], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int NameSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109536], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int MapSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109538], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	void ForceGoHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109574], cast(void*)0, cast(void*)0);
	}
	void OpenLocal(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109575], params.ptr, cast(void*)0);
	}
	void GetCustomServers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109577], cast(void*)0, cast(void*)0);
	}
	void RequestCustomServers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109578], cast(void*)0, cast(void*)0);
	}
	void RefreshRentedServers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109579], cast(void*)0, cast(void*)0);
	}
	ScriptString GetPropString(int PropId, int PropType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109585], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	bool SetLocalName(ScriptString val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109595], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool MatchQueueJoin(int Queue, ScriptString Password)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Queue;
		*cast(ScriptString*)&params[4] = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109610], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109614], cast(void*)0, cast(void*)0);
	}
	void LeaveMatchmaking(bool bForced)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForced;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109616], params.ptr, cast(void*)0);
	}
	void JoinQueue(int nQueueId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nQueueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109618], params.ptr, cast(void*)0);
	}
	void SetPlayerQueued()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109620], cast(void*)0, cast(void*)0);
	}
	void JoinFriend(ScriptString PlayerName, ScriptString Password)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109621], params.ptr, cast(void*)0);
	}
	void ExitGameInProgress(bool bForceDrop, bool bKicked)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceDrop;
		*cast(bool*)&params[4] = bKicked;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109624], params.ptr, cast(void*)0);
	}
	void ServerInfoLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109628], cast(void*)0, cast(void*)0);
	}
	void JoinCustomServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109629], params.ptr, cast(void*)0);
	}
	void JoinProtectedServer(ScriptString Password)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109631], params.ptr, cast(void*)0);
	}
	void FavoriteServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109633], params.ptr, cast(void*)0);
	}
	void PasswordServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109635], params.ptr, cast(void*)0);
	}
	void SetActiveServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109637], params.ptr, cast(void*)0);
	}
	void ServerPage(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109639], params.ptr, cast(void*)0);
	}
	void ServerSort(ScriptString SortName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SortName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109641], params.ptr, cast(void*)0);
	}
	void SortOn(ScriptString SortName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SortName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109643], params.ptr, cast(void*)0);
	}
	int GetSlots()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109699], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetGameCaseId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109701], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void AddServerConfig(int MatchQueueId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = MatchQueueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109713], params.ptr, cast(void*)0);
	}
	void AddProfileConfig(int Index, TrQueueManager.ProfileConfig Data)
	{
		ubyte params[64];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(TrQueueManager.ProfileConfig*)&params[4] = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109716], params.ptr, cast(void*)0);
	}
	void ResetRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109719], cast(void*)0, cast(void*)0);
	}
	int GetDefaultMapId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109721], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void MarkFavorite(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109723], params.ptr, cast(void*)0);
	}
	void FilterGameType(int Id, bool bFilter)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Id;
		*cast(bool*)&params[4] = bFilter;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109725], params.ptr, cast(void*)0);
	}
}
