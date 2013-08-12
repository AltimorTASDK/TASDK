module UnrealScript.TribesGame.TrQueueManager;

import ScriptClasses;
import UnrealScript.OnlineSubsystemMcts.OnlineGameInterfaceMcts;
import UnrealScript.Core.UObject;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.GFxTrMenuMoviePlayer;

extern(C++) interface TrQueueManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrQueueManager")); }
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
			ScriptFunction GetStatus() { return mGetStatus ? mGetStatus : (mGetStatus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetStatus")); }
			ScriptFunction SetPropNumber() { return mSetPropNumber ? mSetPropNumber : (mSetPropNumber = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.SetPropNumber")); }
			ScriptFunction GetNextMapId() { return mGetNextMapId ? mGetNextMapId : (mGetNextMapId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetNextMapId")); }
			ScriptFunction GetMapName() { return mGetMapName ? mGetMapName : (mGetMapName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetMapName")); }
			ScriptFunction GetProfileName() { return mGetProfileName ? mGetProfileName : (mGetProfileName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetProfileName")); }
			ScriptFunction GetProfileDesc() { return mGetProfileDesc ? mGetProfileDesc : (mGetProfileDesc = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetProfileDesc")); }
			ScriptFunction GetServerGameTypeName() { return mGetServerGameTypeName ? mGetServerGameTypeName : (mGetServerGameTypeName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetServerGameTypeName")); }
			ScriptFunction GetProfileGameType() { return mGetProfileGameType ? mGetProfileGameType : (mGetProfileGameType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetProfileGameType")); }
			ScriptFunction GetServerRotationName() { return mGetServerRotationName ? mGetServerRotationName : (mGetServerRotationName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetServerRotationName")); }
			ScriptFunction IsGameTypeFiltered() { return mIsGameTypeFiltered ? mIsGameTypeFiltered : (mIsGameTypeFiltered = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.IsGameTypeFiltered")); }
			ScriptFunction AmServerOwner() { return mAmServerOwner ? mAmServerOwner : (mAmServerOwner = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.AmServerOwner")); }
			ScriptFunction GetPropNumber() { return mGetPropNumber ? mGetPropNumber : (mGetPropNumber = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetPropNumber")); }
			ScriptFunction GetServerTimeFormat() { return mGetServerTimeFormat ? mGetServerTimeFormat : (mGetServerTimeFormat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetServerTimeFormat")); }
			ScriptFunction GetQueueCaseId() { return mGetQueueCaseId ? mGetQueueCaseId : (mGetQueueCaseId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetQueueCaseId")); }
			ScriptFunction GetServerOnline() { return mGetServerOnline ? mGetServerOnline : (mGetServerOnline = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetServerOnline")); }
			ScriptFunction GetServerName() { return mGetServerName ? mGetServerName : (mGetServerName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetServerName")); }
			ScriptFunction AddCustomServer() { return mAddCustomServer ? mAddCustomServer : (mAddCustomServer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.AddCustomServer")); }
			ScriptFunction GetProfileRotation() { return mGetProfileRotation ? mGetProfileRotation : (mGetProfileRotation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetProfileRotation")); }
			ScriptFunction GetServerExpired() { return mGetServerExpired ? mGetServerExpired : (mGetServerExpired = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetServerExpired")); }
			ScriptFunction GetServerTime() { return mGetServerTime ? mGetServerTime : (mGetServerTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetServerTime")); }
			ScriptFunction CustomStart() { return mCustomStart ? mCustomStart : (mCustomStart = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.CustomStart")); }
			ScriptFunction CustomStop() { return mCustomStop ? mCustomStop : (mCustomStop = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.CustomStop")); }
			ScriptFunction CustomShutdown() { return mCustomShutdown ? mCustomShutdown : (mCustomShutdown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.CustomShutdown")); }
			ScriptFunction CustomNextMap() { return mCustomNextMap ? mCustomNextMap : (mCustomNextMap = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.CustomNextMap")); }
			ScriptFunction CustomKick() { return mCustomKick ? mCustomKick : (mCustomKick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.CustomKick")); }
			ScriptFunction CustomBan() { return mCustomBan ? mCustomBan : (mCustomBan = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.CustomBan")); }
			ScriptFunction AddCustomServerTime() { return mAddCustomServerTime ? mAddCustomServerTime : (mAddCustomServerTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.AddCustomServerTime")); }
			ScriptFunction GetPropMin() { return mGetPropMin ? mGetPropMin : (mGetPropMin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetPropMin")); }
			ScriptFunction GetPropMax() { return mGetPropMax ? mGetPropMax : (mGetPropMax = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetPropMax")); }
			ScriptFunction GetAdminPassword() { return mGetAdminPassword ? mGetAdminPassword : (mGetAdminPassword = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetAdminPassword")); }
			ScriptFunction GetPublicPassword() { return mGetPublicPassword ? mGetPublicPassword : (mGetPublicPassword = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetPublicPassword")); }
			ScriptFunction CustomSetName() { return mCustomSetName ? mCustomSetName : (mCustomSetName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.CustomSetName")); }
			ScriptFunction SetPropString() { return mSetPropString ? mSetPropString : (mSetPropString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.SetPropString")); }
			ScriptFunction GetProfileRegion() { return mGetProfileRegion ? mGetProfileRegion : (mGetProfileRegion = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetProfileRegion")); }
			ScriptFunction CustomLogin() { return mCustomLogin ? mCustomLogin : (mCustomLogin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.CustomLogin")); }
			ScriptFunction FavoriteSortB() { return mFavoriteSortB ? mFavoriteSortB : (mFavoriteSortB = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.FavoriteSortB")); }
			ScriptFunction PasswordSortB() { return mPasswordSortB ? mPasswordSortB : (mPasswordSortB = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.PasswordSortB")); }
			ScriptFunction SlotsSortB() { return mSlotsSortB ? mSlotsSortB : (mSlotsSortB = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.SlotsSortB")); }
			ScriptFunction RangeSortB() { return mRangeSortB ? mRangeSortB : (mRangeSortB = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.RangeSortB")); }
			ScriptFunction RulesSortB() { return mRulesSortB ? mRulesSortB : (mRulesSortB = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.RulesSortB")); }
			ScriptFunction TypeSortB() { return mTypeSortB ? mTypeSortB : (mTypeSortB = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.TypeSortB")); }
			ScriptFunction PingSortB() { return mPingSortB ? mPingSortB : (mPingSortB = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.PingSortB")); }
			ScriptFunction NameSortB() { return mNameSortB ? mNameSortB : (mNameSortB = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.NameSortB")); }
			ScriptFunction MapSortB() { return mMapSortB ? mMapSortB : (mMapSortB = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.MapSortB")); }
			ScriptFunction FavoriteSortA() { return mFavoriteSortA ? mFavoriteSortA : (mFavoriteSortA = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.FavoriteSortA")); }
			ScriptFunction PasswordSortA() { return mPasswordSortA ? mPasswordSortA : (mPasswordSortA = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.PasswordSortA")); }
			ScriptFunction SlotsSortA() { return mSlotsSortA ? mSlotsSortA : (mSlotsSortA = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.SlotsSortA")); }
			ScriptFunction RangeSortA() { return mRangeSortA ? mRangeSortA : (mRangeSortA = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.RangeSortA")); }
			ScriptFunction RulesSortA() { return mRulesSortA ? mRulesSortA : (mRulesSortA = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.RulesSortA")); }
			ScriptFunction TypeSortA() { return mTypeSortA ? mTypeSortA : (mTypeSortA = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.TypeSortA")); }
			ScriptFunction PingSortA() { return mPingSortA ? mPingSortA : (mPingSortA = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.PingSortA")); }
			ScriptFunction NameSortA() { return mNameSortA ? mNameSortA : (mNameSortA = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.NameSortA")); }
			ScriptFunction MapSortA() { return mMapSortA ? mMapSortA : (mMapSortA = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.MapSortA")); }
			ScriptFunction ForceGoHome() { return mForceGoHome ? mForceGoHome : (mForceGoHome = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.ForceGoHome")); }
			ScriptFunction OpenLocal() { return mOpenLocal ? mOpenLocal : (mOpenLocal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.OpenLocal")); }
			ScriptFunction GetCustomServers() { return mGetCustomServers ? mGetCustomServers : (mGetCustomServers = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetCustomServers")); }
			ScriptFunction RequestCustomServers() { return mRequestCustomServers ? mRequestCustomServers : (mRequestCustomServers = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.RequestCustomServers")); }
			ScriptFunction RefreshRentedServers() { return mRefreshRentedServers ? mRefreshRentedServers : (mRefreshRentedServers = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.RefreshRentedServers")); }
			ScriptFunction GetPropString() { return mGetPropString ? mGetPropString : (mGetPropString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetPropString")); }
			ScriptFunction SetLocalName() { return mSetLocalName ? mSetLocalName : (mSetLocalName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.SetLocalName")); }
			ScriptFunction MatchQueueJoin() { return mMatchQueueJoin ? mMatchQueueJoin : (mMatchQueueJoin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.MatchQueueJoin")); }
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.Initialize")); }
			ScriptFunction LeaveMatchmaking() { return mLeaveMatchmaking ? mLeaveMatchmaking : (mLeaveMatchmaking = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.LeaveMatchmaking")); }
			ScriptFunction JoinQueue() { return mJoinQueue ? mJoinQueue : (mJoinQueue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.JoinQueue")); }
			ScriptFunction SetPlayerQueued() { return mSetPlayerQueued ? mSetPlayerQueued : (mSetPlayerQueued = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.SetPlayerQueued")); }
			ScriptFunction JoinFriend() { return mJoinFriend ? mJoinFriend : (mJoinFriend = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.JoinFriend")); }
			ScriptFunction ExitGameInProgress() { return mExitGameInProgress ? mExitGameInProgress : (mExitGameInProgress = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.ExitGameInProgress")); }
			ScriptFunction ServerInfoLoaded() { return mServerInfoLoaded ? mServerInfoLoaded : (mServerInfoLoaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.ServerInfoLoaded")); }
			ScriptFunction JoinCustomServer() { return mJoinCustomServer ? mJoinCustomServer : (mJoinCustomServer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.JoinCustomServer")); }
			ScriptFunction JoinProtectedServer() { return mJoinProtectedServer ? mJoinProtectedServer : (mJoinProtectedServer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.JoinProtectedServer")); }
			ScriptFunction FavoriteServer() { return mFavoriteServer ? mFavoriteServer : (mFavoriteServer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.FavoriteServer")); }
			ScriptFunction PasswordServer() { return mPasswordServer ? mPasswordServer : (mPasswordServer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.PasswordServer")); }
			ScriptFunction SetActiveServer() { return mSetActiveServer ? mSetActiveServer : (mSetActiveServer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.SetActiveServer")); }
			ScriptFunction ServerPage() { return mServerPage ? mServerPage : (mServerPage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.ServerPage")); }
			ScriptFunction ServerSort() { return mServerSort ? mServerSort : (mServerSort = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.ServerSort")); }
			ScriptFunction SortOn() { return mSortOn ? mSortOn : (mSortOn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.SortOn")); }
			ScriptFunction GetSlots() { return mGetSlots ? mGetSlots : (mGetSlots = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetSlots")); }
			ScriptFunction GetGameCaseId() { return mGetGameCaseId ? mGetGameCaseId : (mGetGameCaseId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetGameCaseId")); }
			ScriptFunction AddServerConfig() { return mAddServerConfig ? mAddServerConfig : (mAddServerConfig = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.AddServerConfig")); }
			ScriptFunction AddProfileConfig() { return mAddProfileConfig ? mAddProfileConfig : (mAddProfileConfig = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.AddProfileConfig")); }
			ScriptFunction ResetRotation() { return mResetRotation ? mResetRotation : (mResetRotation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.ResetRotation")); }
			ScriptFunction GetDefaultMapId() { return mGetDefaultMapId ? mGetDefaultMapId : (mGetDefaultMapId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.GetDefaultMapId")); }
			ScriptFunction MarkFavorite() { return mMarkFavorite ? mMarkFavorite : (mMarkFavorite = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.MarkFavorite")); }
			ScriptFunction FilterGameType() { return mFilterGameType ? mFilterGameType : (mFilterGameType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrQueueManager.FilterGameType")); }
		}
	}
	struct ServerInfo
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrQueueManager.ServerInfo")); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrQueueManager.RentalItem")); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrQueueManager.ServerConfig")); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrQueueManager.ProfileConfig")); }
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
	bool GetNextMapId(bool bStart, int* MapId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bStart;
		*cast(int*)&params[4] = *MapId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNextMapId, params.ptr, cast(void*)0);
		*MapId = *cast(int*)&params[4];
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
	ScriptString GetServerGameTypeName(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
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
	bool GetPropMin(int PropId, int PropType, int* val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		*cast(int*)&params[8] = *val;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropMin, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropMax, params.ptr, cast(void*)0);
		*val = *cast(int*)&params[8];
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
	void LeaveMatchmaking(bool bForced)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForced;
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
	void JoinFriend(ScriptString PlayerName, ScriptString Password)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinFriend, params.ptr, cast(void*)0);
	}
	void ExitGameInProgress(bool bForceDrop, bool bKicked)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceDrop;
		*cast(bool*)&params[4] = bKicked;
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
