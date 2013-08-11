module UnrealScript.TribesGame.TrQueueManager;

import ScriptClasses;
import UnrealScript.OnlineSubsystemMcts.OnlineGameInterfaceMcts;
import UnrealScript.Core.UObject;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.GFxTrMenuMoviePlayer;

extern(C++) interface TrQueueManager : UObject
{
	struct ServerInfo
	{
		public @property final auto ref int PlayerCount() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __PlayerCount[4];
		public @property final auto ref int PlayerMax() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __PlayerMax[4];
		public @property final auto ref ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)&this + 56); }
		private ubyte __MapName[12];
		public @property final auto ref ScriptString ServerName() { return *cast(ScriptString*)(cast(size_t)&this + 32); }
		private ubyte __ServerName[12];
		public @property final bool bFavorite() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
		public @property final bool bFavorite(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
		private ubyte __bFavorite[4];
		public @property final auto ref int queueId() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __queueId[4];
		public @property final auto ref int Ping() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Ping[4];
		public @property final bool bPrivate() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bPrivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bPrivate[4];
		public @property final auto ref ScriptString Ruleset() { return *cast(ScriptString*)(cast(size_t)&this + 68); }
		private ubyte __Ruleset[12];
		public @property final auto ref int MinLevel() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __MinLevel[4];
		public @property final auto ref int MaxLevel() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __MaxLevel[4];
		public @property final auto ref ScriptString ServerDesc() { return *cast(ScriptString*)(cast(size_t)&this + 44); }
		private ubyte __ServerDesc[12];
		public @property final auto ref int GameType() { return *cast(int*)(cast(size_t)&this + 28); }
		private ubyte __GameType[4];
	}
	struct RentalItem
	{
		public @property final auto ref ScriptString RentalName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __RentalName[12];
		public @property final auto ref int Price() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Price[4];
		public @property final auto ref int LootId() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __LootId[4];
		public @property final auto ref int SortOrder() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __SortOrder[4];
	}
	struct ServerConfig
	{
		public @property final auto ref ScriptArray!(TrQueueManager.ProfileConfig) Profiles() { return *cast(ScriptArray!(TrQueueManager.ProfileConfig)*)(cast(size_t)&this + 28); }
		private ubyte __Profiles[12];
		public @property final auto ref ScriptString ServerName() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
		private ubyte __ServerName[12];
		public @property final bool bCanExpire() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x8) != 0; }
		public @property final bool bCanExpire(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x8; } return val; }
		private ubyte __bCanExpire[4];
		public @property final bool bActive() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x4) != 0; }
		public @property final bool bActive(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x4; } return val; }
		private ubyte __bActive[4];
		public @property final bool bOwner() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x2) != 0; }
		public @property final bool bOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x2; } return val; }
		private ubyte __bOwner[4];
		public @property final bool bOpen() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bOpen[4];
		public @property final auto ref int MinutesRented() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __MinutesRented[4];
		public @property final auto ref int MatchQueueId() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __MatchQueueId[4];
		public @property final auto ref int ActiveConfig() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ActiveConfig[4];
	}
	struct ProfileConfig
	{
		public @property final auto ref ScriptString PasswordPublic() { return *cast(ScriptString*)(cast(size_t)&this + 48); }
		private ubyte __PasswordPublic[12];
		public @property final auto ref ScriptString PasswordAdmin() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
		private ubyte __PasswordAdmin[12];
		public @property final auto ref ScriptString ProfileDesc() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
		private ubyte __ProfileDesc[12];
		public @property final auto ref ScriptString ProfileName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __ProfileName[12];
		public @property final auto ref int QueueCaseId() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __QueueCaseId[4];
		public @property final auto ref int GameCaseId() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __GameCaseId[4];
		public @property final auto ref int Slots() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Slots[4];
	}
	public @property final bool bQueued() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
	public @property final bool bQueued(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	public @property final bool bJoiningCustom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4) != 0; }
	public @property final bool bJoiningCustom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4; } return val; }
	public @property final auto ref ScriptArray!(int) RegionFilter() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref ScriptString QueueFriend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final bool bFilterOwner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8) != 0; }
	public @property final bool bFilterOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8; } return val; }
	public @property final auto ref ScriptArray!(TrQueueManager.ServerInfo) ServerInfoList() { return *cast(ScriptArray!(TrQueueManager.ServerInfo)*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref int GameTypeId() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptArray!(TrQueueManager.ServerConfig) RentedServers() { return *cast(ScriptArray!(TrQueueManager.ServerConfig)*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref int ServerIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref int MapSlots() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptArray!(TrQueueManager.RentalItem) RentalItems() { return *cast(ScriptArray!(TrQueueManager.RentalItem)*)(cast(size_t)cast(void*)this + 176); }
	public @property final bool bNeedPassword() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2) != 0; }
	public @property final bool bNeedPassword(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2; } return val; }
	public @property final auto ref ScriptArray!(TgPlayerProfile.PropertyPair) FilteredGameTypes() { return *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref GFxTrMenuMoviePlayer TrOuter() { return *cast(GFxTrMenuMoviePlayer*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref OnlineGameInterfaceMcts OnlineGameMcts() { return *cast(OnlineGameInterfaceMcts*)(cast(size_t)cast(void*)this + 144); }
	public @property final bool bFavoriteSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1000) != 0; }
	public @property final bool bFavoriteSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1000; } return val; }
	public @property final bool bPasswordSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x800) != 0; }
	public @property final bool bPasswordSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x800; } return val; }
	public @property final bool bSlotsSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x400) != 0; }
	public @property final bool bSlotsSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x400; } return val; }
	public @property final bool bRangeSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x200) != 0; }
	public @property final bool bRangeSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x200; } return val; }
	public @property final bool bRulesSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x100) != 0; }
	public @property final bool bRulesSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x100; } return val; }
	public @property final bool bTypeSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x80) != 0; }
	public @property final bool bTypeSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x80; } return val; }
	public @property final bool bPingSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x40) != 0; }
	public @property final bool bPingSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x40; } return val; }
	public @property final bool bNameSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x20) != 0; }
	public @property final bool bNameSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x20; } return val; }
	public @property final bool bMapSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x10) != 0; }
	public @property final bool bMapSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x10; } return val; }
	public @property final auto ref int PasswordQueue() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref int PasswordIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int ProfileIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref int queueId() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	final ScriptString GetStatus()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54699], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final bool SetPropNumber(int PropId, int val, int PropType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = val;
		*cast(int*)&params[8] = PropType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58002], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool GetNextMapId(bool bStart, int* MapId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bStart;
		*cast(int*)&params[4] = *MapId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58012], params.ptr, cast(void*)0);
		*MapId = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	final ScriptString GetMapName(int MapId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MapId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58021], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final ScriptString GetProfileName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58031], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final ScriptString GetProfileDesc()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58033], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final ScriptString GetServerGameTypeName(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58560], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final int GetProfileGameType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59097], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final ScriptString GetServerRotationName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59103], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final bool IsGameTypeFiltered(int Id)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Id;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59174], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool AmServerOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59650], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int GetPropNumber(int PropId, int PropType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59655], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final ScriptString GetServerTimeFormat()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59661], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final int GetQueueCaseId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59690], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool GetServerOnline(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59697], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ScriptString GetServerName(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59699], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final bool AddCustomServer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59711], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int GetProfileRotation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60518], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool GetServerExpired()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60547], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int GetServerTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60551], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool CustomStart()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60569], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CustomStop()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60571], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CustomShutdown()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60573], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CustomNextMap(int MapId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = MapId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60575], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CustomKick(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60577], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool CustomBan(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60579], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool AddCustomServerTime(int LootId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LootId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60615], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool GetPropMin(int PropId, int PropType, int* val)
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
	final bool GetPropMax(int PropId, int PropType, int* val)
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
	final ScriptString GetAdminPassword()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60942], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final ScriptString GetPublicPassword()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60945], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final bool CustomSetName(ScriptString QueueName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = QueueName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60951], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool SetPropString(int PropId, ScriptString val, int PropType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(ScriptString*)&params[4] = val;
		*cast(int*)&params[16] = PropType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60953], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final int GetProfileRegion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60961], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool CustomLogin(ScriptString Password)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100339], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final int FavoriteSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109504], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int PasswordSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109506], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int SlotsSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109508], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int RangeSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109510], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int RulesSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109512], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int TypeSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109514], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int PingSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109516], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int NameSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109518], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int MapSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109520], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int FavoriteSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109522], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int PasswordSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109524], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int SlotsSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109526], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int RangeSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109528], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int RulesSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109530], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int TypeSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109532], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int PingSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109534], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int NameSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109536], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final int MapSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109538], params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	final void ForceGoHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109574], cast(void*)0, cast(void*)0);
	}
	final void OpenLocal(ScriptString URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109575], params.ptr, cast(void*)0);
	}
	final void GetCustomServers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109577], cast(void*)0, cast(void*)0);
	}
	final void RequestCustomServers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109578], cast(void*)0, cast(void*)0);
	}
	final void RefreshRentedServers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109579], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetPropString(int PropId, int PropType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109585], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	final bool SetLocalName(ScriptString val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109595], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool MatchQueueJoin(int Queue, ScriptString Password)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Queue;
		*cast(ScriptString*)&params[4] = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109610], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109614], cast(void*)0, cast(void*)0);
	}
	final void LeaveMatchmaking(bool bForced)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForced;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109616], params.ptr, cast(void*)0);
	}
	final void JoinQueue(int nQueueId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nQueueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109618], params.ptr, cast(void*)0);
	}
	final void SetPlayerQueued()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109620], cast(void*)0, cast(void*)0);
	}
	final void JoinFriend(ScriptString PlayerName, ScriptString Password)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109621], params.ptr, cast(void*)0);
	}
	final void ExitGameInProgress(bool bForceDrop, bool bKicked)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceDrop;
		*cast(bool*)&params[4] = bKicked;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109624], params.ptr, cast(void*)0);
	}
	final void ServerInfoLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109628], cast(void*)0, cast(void*)0);
	}
	final void JoinCustomServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109629], params.ptr, cast(void*)0);
	}
	final void JoinProtectedServer(ScriptString Password)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109631], params.ptr, cast(void*)0);
	}
	final void FavoriteServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109633], params.ptr, cast(void*)0);
	}
	final void PasswordServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109635], params.ptr, cast(void*)0);
	}
	final void SetActiveServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109637], params.ptr, cast(void*)0);
	}
	final void ServerPage(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109639], params.ptr, cast(void*)0);
	}
	final void ServerSort(ScriptString SortName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SortName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109641], params.ptr, cast(void*)0);
	}
	final void SortOn(ScriptString SortName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SortName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109643], params.ptr, cast(void*)0);
	}
	final int GetSlots()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109699], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetGameCaseId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109701], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void AddServerConfig(int MatchQueueId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = MatchQueueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109713], params.ptr, cast(void*)0);
	}
	final void AddProfileConfig(int Index, TrQueueManager.ProfileConfig Data)
	{
		ubyte params[64];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(TrQueueManager.ProfileConfig*)&params[4] = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109716], params.ptr, cast(void*)0);
	}
	final void ResetRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109719], cast(void*)0, cast(void*)0);
	}
	final int GetDefaultMapId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109721], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void MarkFavorite(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109723], params.ptr, cast(void*)0);
	}
	final void FilterGameType(int Id, bool bFilter)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Id;
		*cast(bool*)&params[4] = bFilter;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109725], params.ptr, cast(void*)0);
	}
}
