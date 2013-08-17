module UnrealScript.TribesGame.TrQueueManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.OnlineSubsystemMcts.OnlineGameInterfaceMcts;
import UnrealScript.Core.UObject;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.GFxTrMenuMoviePlayer;

extern(C++) interface TrQueueManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrQueueManager")); }
	private static __gshared TrQueueManager mDefaultProperties;
	@property final static TrQueueManager DefaultProperties() { mixin(MGDPC("TrQueueManager", "TrQueueManager TribesGame.Default__TrQueueManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetStatus;
			ScriptFunction mSetPropNumber;
			ScriptFunction mGetNextMapId;
			ScriptFunction mGetMapName;
			ScriptFunction mGetProfileName;
			ScriptFunction mGetProfileDesc;
			ScriptFunction mGetServerGameTypeName;
			ScriptFunction mGetProfileGameType;
			ScriptFunction mGetServerRotationName;
			ScriptFunction mIsGameTypeFiltered;
			ScriptFunction mAmServerOwner;
			ScriptFunction mGetPropNumber;
			ScriptFunction mGetServerTimeFormat;
			ScriptFunction mGetQueueCaseId;
			ScriptFunction mGetServerOnline;
			ScriptFunction mGetServerName;
			ScriptFunction mAddCustomServer;
			ScriptFunction mGetProfileRotation;
			ScriptFunction mGetServerExpired;
			ScriptFunction mGetServerTime;
			ScriptFunction mCustomStart;
			ScriptFunction mCustomStop;
			ScriptFunction mCustomShutdown;
			ScriptFunction mCustomNextMap;
			ScriptFunction mCustomKick;
			ScriptFunction mCustomBan;
			ScriptFunction mAddCustomServerTime;
			ScriptFunction mGetPropMin;
			ScriptFunction mGetPropMax;
			ScriptFunction mGetAdminPassword;
			ScriptFunction mGetPublicPassword;
			ScriptFunction mCustomSetName;
			ScriptFunction mSetPropString;
			ScriptFunction mGetProfileRegion;
			ScriptFunction mCustomLogin;
			ScriptFunction mFavoriteSortB;
			ScriptFunction mPasswordSortB;
			ScriptFunction mSlotsSortB;
			ScriptFunction mRangeSortB;
			ScriptFunction mRulesSortB;
			ScriptFunction mTypeSortB;
			ScriptFunction mPingSortB;
			ScriptFunction mNameSortB;
			ScriptFunction mMapSortB;
			ScriptFunction mFavoriteSortA;
			ScriptFunction mPasswordSortA;
			ScriptFunction mSlotsSortA;
			ScriptFunction mRangeSortA;
			ScriptFunction mRulesSortA;
			ScriptFunction mTypeSortA;
			ScriptFunction mPingSortA;
			ScriptFunction mNameSortA;
			ScriptFunction mMapSortA;
			ScriptFunction mForceGoHome;
			ScriptFunction mOpenLocal;
			ScriptFunction mGetCustomServers;
			ScriptFunction mRequestCustomServers;
			ScriptFunction mRefreshRentedServers;
			ScriptFunction mGetPropString;
			ScriptFunction mSetLocalName;
			ScriptFunction mMatchQueueJoin;
			ScriptFunction mInitialize;
			ScriptFunction mLeaveMatchmaking;
			ScriptFunction mJoinQueue;
			ScriptFunction mSetPlayerQueued;
			ScriptFunction mJoinFriend;
			ScriptFunction mExitGameInProgress;
			ScriptFunction mServerInfoLoaded;
			ScriptFunction mJoinCustomServer;
			ScriptFunction mJoinProtectedServer;
			ScriptFunction mFavoriteServer;
			ScriptFunction mPasswordServer;
			ScriptFunction mSetActiveServer;
			ScriptFunction mServerPage;
			ScriptFunction mServerSort;
			ScriptFunction mSortOn;
			ScriptFunction mGetSlots;
			ScriptFunction mGetGameCaseId;
			ScriptFunction mAddServerConfig;
			ScriptFunction mAddProfileConfig;
			ScriptFunction mResetRotation;
			ScriptFunction mGetDefaultMapId;
			ScriptFunction mMarkFavorite;
			ScriptFunction mFilterGameType;
		}
		public @property static final
		{
			ScriptFunction GetStatus() { mixin(MGF("mGetStatus", "Function TribesGame.TrQueueManager.GetStatus")); }
			ScriptFunction SetPropNumber() { mixin(MGF("mSetPropNumber", "Function TribesGame.TrQueueManager.SetPropNumber")); }
			ScriptFunction GetNextMapId() { mixin(MGF("mGetNextMapId", "Function TribesGame.TrQueueManager.GetNextMapId")); }
			ScriptFunction GetMapName() { mixin(MGF("mGetMapName", "Function TribesGame.TrQueueManager.GetMapName")); }
			ScriptFunction GetProfileName() { mixin(MGF("mGetProfileName", "Function TribesGame.TrQueueManager.GetProfileName")); }
			ScriptFunction GetProfileDesc() { mixin(MGF("mGetProfileDesc", "Function TribesGame.TrQueueManager.GetProfileDesc")); }
			ScriptFunction GetServerGameTypeName() { mixin(MGF("mGetServerGameTypeName", "Function TribesGame.TrQueueManager.GetServerGameTypeName")); }
			ScriptFunction GetProfileGameType() { mixin(MGF("mGetProfileGameType", "Function TribesGame.TrQueueManager.GetProfileGameType")); }
			ScriptFunction GetServerRotationName() { mixin(MGF("mGetServerRotationName", "Function TribesGame.TrQueueManager.GetServerRotationName")); }
			ScriptFunction IsGameTypeFiltered() { mixin(MGF("mIsGameTypeFiltered", "Function TribesGame.TrQueueManager.IsGameTypeFiltered")); }
			ScriptFunction AmServerOwner() { mixin(MGF("mAmServerOwner", "Function TribesGame.TrQueueManager.AmServerOwner")); }
			ScriptFunction GetPropNumber() { mixin(MGF("mGetPropNumber", "Function TribesGame.TrQueueManager.GetPropNumber")); }
			ScriptFunction GetServerTimeFormat() { mixin(MGF("mGetServerTimeFormat", "Function TribesGame.TrQueueManager.GetServerTimeFormat")); }
			ScriptFunction GetQueueCaseId() { mixin(MGF("mGetQueueCaseId", "Function TribesGame.TrQueueManager.GetQueueCaseId")); }
			ScriptFunction GetServerOnline() { mixin(MGF("mGetServerOnline", "Function TribesGame.TrQueueManager.GetServerOnline")); }
			ScriptFunction GetServerName() { mixin(MGF("mGetServerName", "Function TribesGame.TrQueueManager.GetServerName")); }
			ScriptFunction AddCustomServer() { mixin(MGF("mAddCustomServer", "Function TribesGame.TrQueueManager.AddCustomServer")); }
			ScriptFunction GetProfileRotation() { mixin(MGF("mGetProfileRotation", "Function TribesGame.TrQueueManager.GetProfileRotation")); }
			ScriptFunction GetServerExpired() { mixin(MGF("mGetServerExpired", "Function TribesGame.TrQueueManager.GetServerExpired")); }
			ScriptFunction GetServerTime() { mixin(MGF("mGetServerTime", "Function TribesGame.TrQueueManager.GetServerTime")); }
			ScriptFunction CustomStart() { mixin(MGF("mCustomStart", "Function TribesGame.TrQueueManager.CustomStart")); }
			ScriptFunction CustomStop() { mixin(MGF("mCustomStop", "Function TribesGame.TrQueueManager.CustomStop")); }
			ScriptFunction CustomShutdown() { mixin(MGF("mCustomShutdown", "Function TribesGame.TrQueueManager.CustomShutdown")); }
			ScriptFunction CustomNextMap() { mixin(MGF("mCustomNextMap", "Function TribesGame.TrQueueManager.CustomNextMap")); }
			ScriptFunction CustomKick() { mixin(MGF("mCustomKick", "Function TribesGame.TrQueueManager.CustomKick")); }
			ScriptFunction CustomBan() { mixin(MGF("mCustomBan", "Function TribesGame.TrQueueManager.CustomBan")); }
			ScriptFunction AddCustomServerTime() { mixin(MGF("mAddCustomServerTime", "Function TribesGame.TrQueueManager.AddCustomServerTime")); }
			ScriptFunction GetPropMin() { mixin(MGF("mGetPropMin", "Function TribesGame.TrQueueManager.GetPropMin")); }
			ScriptFunction GetPropMax() { mixin(MGF("mGetPropMax", "Function TribesGame.TrQueueManager.GetPropMax")); }
			ScriptFunction GetAdminPassword() { mixin(MGF("mGetAdminPassword", "Function TribesGame.TrQueueManager.GetAdminPassword")); }
			ScriptFunction GetPublicPassword() { mixin(MGF("mGetPublicPassword", "Function TribesGame.TrQueueManager.GetPublicPassword")); }
			ScriptFunction CustomSetName() { mixin(MGF("mCustomSetName", "Function TribesGame.TrQueueManager.CustomSetName")); }
			ScriptFunction SetPropString() { mixin(MGF("mSetPropString", "Function TribesGame.TrQueueManager.SetPropString")); }
			ScriptFunction GetProfileRegion() { mixin(MGF("mGetProfileRegion", "Function TribesGame.TrQueueManager.GetProfileRegion")); }
			ScriptFunction CustomLogin() { mixin(MGF("mCustomLogin", "Function TribesGame.TrQueueManager.CustomLogin")); }
			ScriptFunction FavoriteSortB() { mixin(MGF("mFavoriteSortB", "Function TribesGame.TrQueueManager.FavoriteSortB")); }
			ScriptFunction PasswordSortB() { mixin(MGF("mPasswordSortB", "Function TribesGame.TrQueueManager.PasswordSortB")); }
			ScriptFunction SlotsSortB() { mixin(MGF("mSlotsSortB", "Function TribesGame.TrQueueManager.SlotsSortB")); }
			ScriptFunction RangeSortB() { mixin(MGF("mRangeSortB", "Function TribesGame.TrQueueManager.RangeSortB")); }
			ScriptFunction RulesSortB() { mixin(MGF("mRulesSortB", "Function TribesGame.TrQueueManager.RulesSortB")); }
			ScriptFunction TypeSortB() { mixin(MGF("mTypeSortB", "Function TribesGame.TrQueueManager.TypeSortB")); }
			ScriptFunction PingSortB() { mixin(MGF("mPingSortB", "Function TribesGame.TrQueueManager.PingSortB")); }
			ScriptFunction NameSortB() { mixin(MGF("mNameSortB", "Function TribesGame.TrQueueManager.NameSortB")); }
			ScriptFunction MapSortB() { mixin(MGF("mMapSortB", "Function TribesGame.TrQueueManager.MapSortB")); }
			ScriptFunction FavoriteSortA() { mixin(MGF("mFavoriteSortA", "Function TribesGame.TrQueueManager.FavoriteSortA")); }
			ScriptFunction PasswordSortA() { mixin(MGF("mPasswordSortA", "Function TribesGame.TrQueueManager.PasswordSortA")); }
			ScriptFunction SlotsSortA() { mixin(MGF("mSlotsSortA", "Function TribesGame.TrQueueManager.SlotsSortA")); }
			ScriptFunction RangeSortA() { mixin(MGF("mRangeSortA", "Function TribesGame.TrQueueManager.RangeSortA")); }
			ScriptFunction RulesSortA() { mixin(MGF("mRulesSortA", "Function TribesGame.TrQueueManager.RulesSortA")); }
			ScriptFunction TypeSortA() { mixin(MGF("mTypeSortA", "Function TribesGame.TrQueueManager.TypeSortA")); }
			ScriptFunction PingSortA() { mixin(MGF("mPingSortA", "Function TribesGame.TrQueueManager.PingSortA")); }
			ScriptFunction NameSortA() { mixin(MGF("mNameSortA", "Function TribesGame.TrQueueManager.NameSortA")); }
			ScriptFunction MapSortA() { mixin(MGF("mMapSortA", "Function TribesGame.TrQueueManager.MapSortA")); }
			ScriptFunction ForceGoHome() { mixin(MGF("mForceGoHome", "Function TribesGame.TrQueueManager.ForceGoHome")); }
			ScriptFunction OpenLocal() { mixin(MGF("mOpenLocal", "Function TribesGame.TrQueueManager.OpenLocal")); }
			ScriptFunction GetCustomServers() { mixin(MGF("mGetCustomServers", "Function TribesGame.TrQueueManager.GetCustomServers")); }
			ScriptFunction RequestCustomServers() { mixin(MGF("mRequestCustomServers", "Function TribesGame.TrQueueManager.RequestCustomServers")); }
			ScriptFunction RefreshRentedServers() { mixin(MGF("mRefreshRentedServers", "Function TribesGame.TrQueueManager.RefreshRentedServers")); }
			ScriptFunction GetPropString() { mixin(MGF("mGetPropString", "Function TribesGame.TrQueueManager.GetPropString")); }
			ScriptFunction SetLocalName() { mixin(MGF("mSetLocalName", "Function TribesGame.TrQueueManager.SetLocalName")); }
			ScriptFunction MatchQueueJoin() { mixin(MGF("mMatchQueueJoin", "Function TribesGame.TrQueueManager.MatchQueueJoin")); }
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.TrQueueManager.Initialize")); }
			ScriptFunction LeaveMatchmaking() { mixin(MGF("mLeaveMatchmaking", "Function TribesGame.TrQueueManager.LeaveMatchmaking")); }
			ScriptFunction JoinQueue() { mixin(MGF("mJoinQueue", "Function TribesGame.TrQueueManager.JoinQueue")); }
			ScriptFunction SetPlayerQueued() { mixin(MGF("mSetPlayerQueued", "Function TribesGame.TrQueueManager.SetPlayerQueued")); }
			ScriptFunction JoinFriend() { mixin(MGF("mJoinFriend", "Function TribesGame.TrQueueManager.JoinFriend")); }
			ScriptFunction ExitGameInProgress() { mixin(MGF("mExitGameInProgress", "Function TribesGame.TrQueueManager.ExitGameInProgress")); }
			ScriptFunction ServerInfoLoaded() { mixin(MGF("mServerInfoLoaded", "Function TribesGame.TrQueueManager.ServerInfoLoaded")); }
			ScriptFunction JoinCustomServer() { mixin(MGF("mJoinCustomServer", "Function TribesGame.TrQueueManager.JoinCustomServer")); }
			ScriptFunction JoinProtectedServer() { mixin(MGF("mJoinProtectedServer", "Function TribesGame.TrQueueManager.JoinProtectedServer")); }
			ScriptFunction FavoriteServer() { mixin(MGF("mFavoriteServer", "Function TribesGame.TrQueueManager.FavoriteServer")); }
			ScriptFunction PasswordServer() { mixin(MGF("mPasswordServer", "Function TribesGame.TrQueueManager.PasswordServer")); }
			ScriptFunction SetActiveServer() { mixin(MGF("mSetActiveServer", "Function TribesGame.TrQueueManager.SetActiveServer")); }
			ScriptFunction ServerPage() { mixin(MGF("mServerPage", "Function TribesGame.TrQueueManager.ServerPage")); }
			ScriptFunction ServerSort() { mixin(MGF("mServerSort", "Function TribesGame.TrQueueManager.ServerSort")); }
			ScriptFunction SortOn() { mixin(MGF("mSortOn", "Function TribesGame.TrQueueManager.SortOn")); }
			ScriptFunction GetSlots() { mixin(MGF("mGetSlots", "Function TribesGame.TrQueueManager.GetSlots")); }
			ScriptFunction GetGameCaseId() { mixin(MGF("mGetGameCaseId", "Function TribesGame.TrQueueManager.GetGameCaseId")); }
			ScriptFunction AddServerConfig() { mixin(MGF("mAddServerConfig", "Function TribesGame.TrQueueManager.AddServerConfig")); }
			ScriptFunction AddProfileConfig() { mixin(MGF("mAddProfileConfig", "Function TribesGame.TrQueueManager.AddProfileConfig")); }
			ScriptFunction ResetRotation() { mixin(MGF("mResetRotation", "Function TribesGame.TrQueueManager.ResetRotation")); }
			ScriptFunction GetDefaultMapId() { mixin(MGF("mGetDefaultMapId", "Function TribesGame.TrQueueManager.GetDefaultMapId")); }
			ScriptFunction MarkFavorite() { mixin(MGF("mMarkFavorite", "Function TribesGame.TrQueueManager.MarkFavorite")); }
			ScriptFunction FilterGameType() { mixin(MGF("mFilterGameType", "Function TribesGame.TrQueueManager.FilterGameType")); }
		}
	}
	struct ServerInfo
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrQueueManager.ServerInfo")); }
		@property final
		{
			auto ref
			{
				int PlayerCount() { mixin(MGPS("int", 20)); }
				int PlayerMax() { mixin(MGPS("int", 16)); }
				ScriptString MapName() { mixin(MGPS("ScriptString", 56)); }
				ScriptString ServerName() { mixin(MGPS("ScriptString", 32)); }
				int queueId() { mixin(MGPS("int", 4)); }
				int Ping() { mixin(MGPS("int", 0)); }
				ScriptString Ruleset() { mixin(MGPS("ScriptString", 68)); }
				int MinLevel() { mixin(MGPS("int", 8)); }
				int MaxLevel() { mixin(MGPS("int", 12)); }
				ScriptString ServerDesc() { mixin(MGPS("ScriptString", 44)); }
				int GameType() { mixin(MGPS("int", 28)); }
			}
			bool bFavorite() { mixin(MGBPS(24, 0x2)); }
			bool bFavorite(bool val) { mixin(MSBPS(24, 0x2)); }
			bool bPrivate() { mixin(MGBPS(24, 0x1)); }
			bool bPrivate(bool val) { mixin(MSBPS(24, 0x1)); }
		}
	}
	struct RentalItem
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrQueueManager.RentalItem")); }
		@property final auto ref
		{
			ScriptString RentalName() { mixin(MGPS("ScriptString", 12)); }
			int Price() { mixin(MGPS("int", 0)); }
			int LootId() { mixin(MGPS("int", 4)); }
			int SortOrder() { mixin(MGPS("int", 8)); }
		}
	}
	struct ServerConfig
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrQueueManager.ServerConfig")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(TrQueueManager.ProfileConfig) Profiles() { mixin(MGPS("ScriptArray!(TrQueueManager.ProfileConfig)", 28)); }
				ScriptString ServerName() { mixin(MGPS("ScriptString", 16)); }
				int MinutesRented() { mixin(MGPS("int", 8)); }
				int MatchQueueId() { mixin(MGPS("int", 4)); }
				int ActiveConfig() { mixin(MGPS("int", 0)); }
			}
			bool bCanExpire() { mixin(MGBPS(12, 0x8)); }
			bool bCanExpire(bool val) { mixin(MSBPS(12, 0x8)); }
			bool bActive() { mixin(MGBPS(12, 0x4)); }
			bool bActive(bool val) { mixin(MSBPS(12, 0x4)); }
			bool bOwner() { mixin(MGBPS(12, 0x2)); }
			bool bOwner(bool val) { mixin(MSBPS(12, 0x2)); }
			bool bOpen() { mixin(MGBPS(12, 0x1)); }
			bool bOpen(bool val) { mixin(MSBPS(12, 0x1)); }
		}
	}
	struct ProfileConfig
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrQueueManager.ProfileConfig")); }
		@property final auto ref
		{
			ScriptString PasswordPublic() { mixin(MGPS("ScriptString", 48)); }
			ScriptString PasswordAdmin() { mixin(MGPS("ScriptString", 36)); }
			ScriptString ProfileDesc() { mixin(MGPS("ScriptString", 24)); }
			ScriptString ProfileName() { mixin(MGPS("ScriptString", 12)); }
			int QueueCaseId() { mixin(MGPS("int", 8)); }
			int GameCaseId() { mixin(MGPS("int", 4)); }
			int Slots() { mixin(MGPS("int", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(int) RegionFilter() { mixin(MGPC("ScriptArray!(int)", 116)); }
			ScriptString QueueFriend() { mixin(MGPC("ScriptString", 132)); }
			ScriptArray!(TrQueueManager.ServerInfo) ServerInfoList() { mixin(MGPC("ScriptArray!(TrQueueManager.ServerInfo)", 152)); }
			int GameTypeId() { mixin(MGPC("int", 96)); }
			ScriptArray!(TrQueueManager.ServerConfig) RentedServers() { mixin(MGPC("ScriptArray!(TrQueueManager.ServerConfig)", 164)); }
			int ServerIndex() { mixin(MGPC("int", 104)); }
			int MapSlots() { mixin(MGPC("int", 64)); }
			ScriptArray!(TrQueueManager.RentalItem) RentalItems() { mixin(MGPC("ScriptArray!(TrQueueManager.RentalItem)", 176)); }
			ScriptArray!(TgPlayerProfile.PropertyPair) FilteredGameTypes() { mixin(MGPC("ScriptArray!(TgPlayerProfile.PropertyPair)", 188)); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__FavoriteSortB__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__PasswordSortB__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__SlotsSortB__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__RangeSortB__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__RulesSortB__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__TypeSortB__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__PingSortB__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__NameSortB__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__MapSortB__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__FavoriteSortA__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__PasswordSortA__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__SlotsSortA__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__RangeSortA__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__RulesSortA__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__TypeSortA__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__PingSortA__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__NameSortA__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__MapSortA__Delegate'!
			GFxTrMenuMoviePlayer TrOuter() { mixin(MGPC("GFxTrMenuMoviePlayer", 148)); }
			OnlineGameInterfaceMcts OnlineGameMcts() { mixin(MGPC("OnlineGameInterfaceMcts", 144)); }
			int PasswordQueue() { mixin(MGPC("int", 112)); }
			int PasswordIndex() { mixin(MGPC("int", 108)); }
			int ProfileIndex() { mixin(MGPC("int", 100)); }
			int queueId() { mixin(MGPC("int", 60)); }
		}
		bool bQueued() { mixin(MGBPC(128, 0x1)); }
		bool bQueued(bool val) { mixin(MSBPC(128, 0x1)); }
		bool bJoiningCustom() { mixin(MGBPC(128, 0x4)); }
		bool bJoiningCustom(bool val) { mixin(MSBPC(128, 0x4)); }
		bool bFilterOwner() { mixin(MGBPC(128, 0x8)); }
		bool bFilterOwner(bool val) { mixin(MSBPC(128, 0x8)); }
		bool bNeedPassword() { mixin(MGBPC(128, 0x2)); }
		bool bNeedPassword(bool val) { mixin(MSBPC(128, 0x2)); }
		bool bFavoriteSort() { mixin(MGBPC(128, 0x1000)); }
		bool bFavoriteSort(bool val) { mixin(MSBPC(128, 0x1000)); }
		bool bPasswordSort() { mixin(MGBPC(128, 0x800)); }
		bool bPasswordSort(bool val) { mixin(MSBPC(128, 0x800)); }
		bool bSlotsSort() { mixin(MGBPC(128, 0x400)); }
		bool bSlotsSort(bool val) { mixin(MSBPC(128, 0x400)); }
		bool bRangeSort() { mixin(MGBPC(128, 0x200)); }
		bool bRangeSort(bool val) { mixin(MSBPC(128, 0x200)); }
		bool bRulesSort() { mixin(MGBPC(128, 0x100)); }
		bool bRulesSort(bool val) { mixin(MSBPC(128, 0x100)); }
		bool bTypeSort() { mixin(MGBPC(128, 0x80)); }
		bool bTypeSort(bool val) { mixin(MSBPC(128, 0x80)); }
		bool bPingSort() { mixin(MGBPC(128, 0x40)); }
		bool bPingSort(bool val) { mixin(MSBPC(128, 0x40)); }
		bool bNameSort() { mixin(MGBPC(128, 0x20)); }
		bool bNameSort(bool val) { mixin(MSBPC(128, 0x20)); }
		bool bMapSort() { mixin(MGBPC(128, 0x10)); }
		bool bMapSort(bool val) { mixin(MSBPC(128, 0x10)); }
	}
final:
	ScriptString GetStatus()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStatus, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool SetPropNumber(int PropId, int val, int PropType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = val;
		*cast(int*)&params[8] = PropType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPropNumber, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool GetNextMapId(bool bStart, ref int MapId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bStart;
		*cast(int*)&params[4] = MapId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNextMapId, params.ptr, cast(void*)0);
		MapId = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	ScriptString GetMapName(int MapId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MapId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMapName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString GetProfileName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetProfileDesc()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileDesc, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetServerGameTypeName(int* Index = null)
	{
		ubyte params[16];
		params[] = 0;
		if (Index !is null)
			*cast(int*)params.ptr = *Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerGameTypeName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	int GetProfileGameType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileGameType, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptString GetServerRotationName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerRotationName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool IsGameTypeFiltered(int Id)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Id;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsGameTypeFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AmServerOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AmServerOwner, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetPropNumber(int PropId, int PropType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropNumber, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	ScriptString GetServerTimeFormat()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerTimeFormat, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	int GetQueueCaseId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetQueueCaseId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool GetServerOnline(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerOnline, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetServerName(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool AddCustomServer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCustomServer, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetProfileRotation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileRotation, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool GetServerExpired()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerExpired, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetServerTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerTime, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool CustomStart()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomStart, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CustomStop()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomStop, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CustomShutdown()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomShutdown, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CustomNextMap(int MapId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = MapId;
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomNextMap, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CustomKick(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomKick, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool CustomBan(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomBan, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool AddCustomServerTime(int LootId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LootId;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCustomServerTime, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GetPropMin(int PropId, int PropType, ref int val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		*cast(int*)&params[8] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropMin, params.ptr, cast(void*)0);
		val = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetPropMax(int PropId, int PropType, ref int val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		*cast(int*)&params[8] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropMax, params.ptr, cast(void*)0);
		val = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	ScriptString GetAdminPassword()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAdminPassword, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetPublicPassword()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPublicPassword, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool CustomSetName(ScriptString QueueName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = QueueName;
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomSetName, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool SetPropString(int PropId, ScriptString val, int PropType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(ScriptString*)&params[4] = val;
		*cast(int*)&params[16] = PropType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPropString, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	int GetProfileRegion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileRegion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool CustomLogin(ScriptString Password)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomLogin, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	int FavoriteSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.FavoriteSortB, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int PasswordSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.PasswordSortB, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int SlotsSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SlotsSortB, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int RangeSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.RangeSortB, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int RulesSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.RulesSortB, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int TypeSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.TypeSortB, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int PingSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.PingSortB, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int NameSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.NameSortB, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int MapSortB(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.MapSortB, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int FavoriteSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.FavoriteSortA, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int PasswordSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.PasswordSortA, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int SlotsSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SlotsSortA, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int RangeSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.RangeSortA, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int RulesSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.RulesSortA, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int TypeSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.TypeSortA, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int PingSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.PingSortA, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int NameSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.NameSortA, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	int MapSortA(TrQueueManager.ServerInfo A, TrQueueManager.ServerInfo B)
	{
		ubyte params[164];
		params[] = 0;
		*cast(TrQueueManager.ServerInfo*)params.ptr = A;
		*cast(TrQueueManager.ServerInfo*)&params[80] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.MapSortA, params.ptr, cast(void*)0);
		return *cast(int*)&params[160];
	}
	void ForceGoHome()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceGoHome, cast(void*)0, cast(void*)0);
	}
	void OpenLocal(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenLocal, params.ptr, cast(void*)0);
	}
	void GetCustomServers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCustomServers, cast(void*)0, cast(void*)0);
	}
	void RequestCustomServers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestCustomServers, cast(void*)0, cast(void*)0);
	}
	void RefreshRentedServers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshRentedServers, cast(void*)0, cast(void*)0);
	}
	ScriptString GetPropString(int PropId, int PropType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	bool SetLocalName(ScriptString val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLocalName, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool MatchQueueJoin(int Queue, ScriptString Password)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Queue;
		*cast(ScriptString*)&params[4] = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchQueueJoin, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void LeaveMatchmaking(bool* bForced = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bForced !is null)
			*cast(bool*)params.ptr = *bForced;
		(cast(ScriptObject)this).ProcessEvent(Functions.LeaveMatchmaking, params.ptr, cast(void*)0);
	}
	void JoinQueue(int nQueueId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nQueueId;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinQueue, params.ptr, cast(void*)0);
	}
	void SetPlayerQueued()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerQueued, cast(void*)0, cast(void*)0);
	}
	void JoinFriend(ScriptString PlayerName, ScriptString* Password = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		if (Password !is null)
			*cast(ScriptString*)&params[12] = *Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinFriend, params.ptr, cast(void*)0);
	}
	void ExitGameInProgress(bool* bForceDrop = null, bool* bKicked = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bForceDrop !is null)
			*cast(bool*)params.ptr = *bForceDrop;
		if (bKicked !is null)
			*cast(bool*)&params[4] = *bKicked;
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitGameInProgress, params.ptr, cast(void*)0);
	}
	void ServerInfoLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerInfoLoaded, cast(void*)0, cast(void*)0);
	}
	void JoinCustomServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinCustomServer, params.ptr, cast(void*)0);
	}
	void JoinProtectedServer(ScriptString Password)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinProtectedServer, params.ptr, cast(void*)0);
	}
	void FavoriteServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.FavoriteServer, params.ptr, cast(void*)0);
	}
	void PasswordServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.PasswordServer, params.ptr, cast(void*)0);
	}
	void SetActiveServer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveServer, params.ptr, cast(void*)0);
	}
	void ServerPage(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerPage, params.ptr, cast(void*)0);
	}
	void ServerSort(ScriptString SortName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SortName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSort, params.ptr, cast(void*)0);
	}
	void SortOn(ScriptString SortName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SortName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SortOn, params.ptr, cast(void*)0);
	}
	int GetSlots()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSlots, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetGameCaseId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameCaseId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void AddServerConfig(int MatchQueueId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = MatchQueueId;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddServerConfig, params.ptr, cast(void*)0);
	}
	void AddProfileConfig(int Index, TrQueueManager.ProfileConfig Data)
	{
		ubyte params[64];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(TrQueueManager.ProfileConfig*)&params[4] = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddProfileConfig, params.ptr, cast(void*)0);
	}
	void ResetRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetRotation, cast(void*)0, cast(void*)0);
	}
	int GetDefaultMapId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDefaultMapId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void MarkFavorite(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.MarkFavorite, params.ptr, cast(void*)0);
	}
	void FilterGameType(int Id, bool bFilter)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Id;
		*cast(bool*)&params[4] = bFilter;
		(cast(ScriptObject)this).ProcessEvent(Functions.FilterGameType, params.ptr, cast(void*)0);
	}
}
