module UnrealScript.OnlineSubsystemMcts.OnlineGameInterfaceMcts;

import ScriptClasses;
import UnrealScript.OnlineSubsystemMcts.OnlineVoiceInterfaceMcts;
import UnrealScript.OnlineSubsystemMcts.MctsOnlineSettings;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.IpDrv.OnlineGameInterfaceImpl;

extern(C++) interface OnlineGameInterfaceMcts : OnlineGameInterfaceImpl
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class OnlineSubsystemMcts.OnlineGameInterfaceMcts")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnGameInviteAccepted;
			ScriptFunction mOnRegisterPlayerComplete;
			ScriptFunction mOnUnregisterPlayerComplete;
			ScriptFunction mSealMatch;
			ScriptFunction mHoldInvites;
			ScriptFunction mEndGame;
			ScriptFunction mMatchQueueJoin;
			ScriptFunction mMatchQueueLeave;
			ScriptFunction mMatchChooseClass;
			ScriptFunction mMatchChooseSkin;
			ScriptFunction mMatchAcceptInvite;
			ScriptFunction mMatchLockIn;
			ScriptFunction mMatchLobbyEquipItems;
			ScriptFunction mUpdateOnlineGame;
			ScriptFunction mGetGameSettings;
			ScriptFunction mAddGameInviteAcceptedDelegate;
			ScriptFunction mClearGameInviteAcceptedDelegate;
			ScriptFunction mAcceptGameInvite;
			ScriptFunction mRegisterPlayer;
			ScriptFunction mAddRegisterPlayerCompleteDelegate;
			ScriptFunction mClearRegisterPlayerCompleteDelegate;
			ScriptFunction mUnregisterPlayer;
			ScriptFunction mAddUnregisterPlayerCompleteDelegate;
			ScriptFunction mClearUnregisterPlayerCompleteDelegate;
			ScriptFunction mQueryNonAdvertisedData;
		}
		public @property static final
		{
			ScriptFunction OnGameInviteAccepted() { return mOnGameInviteAccepted ? mOnGameInviteAccepted : (mOnGameInviteAccepted = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.OnGameInviteAccepted")); }
			ScriptFunction OnRegisterPlayerComplete() { return mOnRegisterPlayerComplete ? mOnRegisterPlayerComplete : (mOnRegisterPlayerComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.OnRegisterPlayerComplete")); }
			ScriptFunction OnUnregisterPlayerComplete() { return mOnUnregisterPlayerComplete ? mOnUnregisterPlayerComplete : (mOnUnregisterPlayerComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.OnUnregisterPlayerComplete")); }
			ScriptFunction SealMatch() { return mSealMatch ? mSealMatch : (mSealMatch = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.SealMatch")); }
			ScriptFunction HoldInvites() { return mHoldInvites ? mHoldInvites : (mHoldInvites = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.HoldInvites")); }
			ScriptFunction EndGame() { return mEndGame ? mEndGame : (mEndGame = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.EndGame")); }
			ScriptFunction MatchQueueJoin() { return mMatchQueueJoin ? mMatchQueueJoin : (mMatchQueueJoin = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchQueueJoin")); }
			ScriptFunction MatchQueueLeave() { return mMatchQueueLeave ? mMatchQueueLeave : (mMatchQueueLeave = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchQueueLeave")); }
			ScriptFunction MatchChooseClass() { return mMatchChooseClass ? mMatchChooseClass : (mMatchChooseClass = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchChooseClass")); }
			ScriptFunction MatchChooseSkin() { return mMatchChooseSkin ? mMatchChooseSkin : (mMatchChooseSkin = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchChooseSkin")); }
			ScriptFunction MatchAcceptInvite() { return mMatchAcceptInvite ? mMatchAcceptInvite : (mMatchAcceptInvite = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchAcceptInvite")); }
			ScriptFunction MatchLockIn() { return mMatchLockIn ? mMatchLockIn : (mMatchLockIn = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchLockIn")); }
			ScriptFunction MatchLobbyEquipItems() { return mMatchLobbyEquipItems ? mMatchLobbyEquipItems : (mMatchLobbyEquipItems = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchLobbyEquipItems")); }
			ScriptFunction UpdateOnlineGame() { return mUpdateOnlineGame ? mUpdateOnlineGame : (mUpdateOnlineGame = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.UpdateOnlineGame")); }
			ScriptFunction GetGameSettings() { return mGetGameSettings ? mGetGameSettings : (mGetGameSettings = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.GetGameSettings")); }
			ScriptFunction AddGameInviteAcceptedDelegate() { return mAddGameInviteAcceptedDelegate ? mAddGameInviteAcceptedDelegate : (mAddGameInviteAcceptedDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.AddGameInviteAcceptedDelegate")); }
			ScriptFunction ClearGameInviteAcceptedDelegate() { return mClearGameInviteAcceptedDelegate ? mClearGameInviteAcceptedDelegate : (mClearGameInviteAcceptedDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.ClearGameInviteAcceptedDelegate")); }
			ScriptFunction AcceptGameInvite() { return mAcceptGameInvite ? mAcceptGameInvite : (mAcceptGameInvite = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.AcceptGameInvite")); }
			ScriptFunction RegisterPlayer() { return mRegisterPlayer ? mRegisterPlayer : (mRegisterPlayer = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.RegisterPlayer")); }
			ScriptFunction AddRegisterPlayerCompleteDelegate() { return mAddRegisterPlayerCompleteDelegate ? mAddRegisterPlayerCompleteDelegate : (mAddRegisterPlayerCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.AddRegisterPlayerCompleteDelegate")); }
			ScriptFunction ClearRegisterPlayerCompleteDelegate() { return mClearRegisterPlayerCompleteDelegate ? mClearRegisterPlayerCompleteDelegate : (mClearRegisterPlayerCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.ClearRegisterPlayerCompleteDelegate")); }
			ScriptFunction UnregisterPlayer() { return mUnregisterPlayer ? mUnregisterPlayer : (mUnregisterPlayer = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.UnregisterPlayer")); }
			ScriptFunction AddUnregisterPlayerCompleteDelegate() { return mAddUnregisterPlayerCompleteDelegate ? mAddUnregisterPlayerCompleteDelegate : (mAddUnregisterPlayerCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.AddUnregisterPlayerCompleteDelegate")); }
			ScriptFunction ClearUnregisterPlayerCompleteDelegate() { return mClearUnregisterPlayerCompleteDelegate ? mClearUnregisterPlayerCompleteDelegate : (mClearUnregisterPlayerCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.ClearUnregisterPlayerCompleteDelegate")); }
			ScriptFunction QueryNonAdvertisedData() { return mQueryNonAdvertisedData ? mQueryNonAdvertisedData : (mQueryNonAdvertisedData = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.QueryNonAdvertisedData")); }
		}
	}
	enum EMctsMatchmakingType : ubyte
	{
		SMT_Invalid = 0,
		SMT_LAN = 1,
		SMT_Internet = 2,
		SMT_MAX = 3,
	}
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) GameInviteAcceptedDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 444); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) RegisterPlayerCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 460); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) UnregisterPlayerCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 472); }
		OnlineGameSearch InviteGameSearch() { return *cast(OnlineGameSearch*)(cast(size_t)cast(void*)this + 456); }
		OnlineVoiceInterfaceMcts MctsVoiceInt() { return *cast(OnlineVoiceInterfaceMcts*)(cast(size_t)cast(void*)this + 440); }
		MctsOnlineSettings MctsSettings() { return *cast(MctsOnlineSettings*)(cast(size_t)cast(void*)this + 436); }
	}
final:
	void OnGameInviteAccepted(OnlineGameSearch.OnlineGameSearchResult* InviteResult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *InviteResult;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameInviteAccepted, params.ptr, cast(void*)0);
		*InviteResult = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
	}
	void OnRegisterPlayerComplete(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRegisterPlayerComplete, params.ptr, cast(void*)0);
	}
	void OnUnregisterPlayerComplete(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUnregisterPlayerComplete, params.ptr, cast(void*)0);
	}
	void SealMatch(bool bSeal, bool bLateSeal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSeal;
		*cast(bool*)&params[4] = bLateSeal;
		(cast(ScriptObject)this).ProcessEvent(Functions.SealMatch, params.ptr, cast(void*)0);
	}
	void HoldInvites(bool bHold)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHold;
		(cast(ScriptObject)this).ProcessEvent(Functions.HoldInvites, params.ptr, cast(void*)0);
	}
	void EndGame(int nWaitSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nWaitSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndGame, params.ptr, cast(void*)0);
	}
	bool MatchQueueJoin(int nQueueId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nQueueId;
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchQueueJoin, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool MatchQueueLeave(int nQueueId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nQueueId;
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchQueueLeave, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool MatchChooseClass(int nClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchChooseClass, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool MatchChooseSkin(int nSkinId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nSkinId;
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchChooseSkin, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool MatchAcceptInvite()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchAcceptInvite, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool MatchLockIn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchLockIn, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool MatchLobbyEquipItems(int eType, int nItem1, int nItem2)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = eType;
		*cast(int*)&params[4] = nItem1;
		*cast(int*)&params[8] = nItem2;
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchLobbyEquipItems, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool UpdateOnlineGame(ScriptName SessionName, OnlineGameSettings UpdatedGameSettings, bool bShouldRefreshOnlineData)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineGameSettings*)&params[8] = UpdatedGameSettings;
		*cast(bool*)&params[12] = bShouldRefreshOnlineData;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateOnlineGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	OnlineGameSettings GetGameSettings(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameSettings, params.ptr, cast(void*)0);
		return *cast(OnlineGameSettings*)&params[8];
	}
	void AddGameInviteAcceptedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* GameInviteAcceptedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = GameInviteAcceptedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddGameInviteAcceptedDelegate, params.ptr, cast(void*)0);
	}
	void ClearGameInviteAcceptedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* GameInviteAcceptedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = GameInviteAcceptedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearGameInviteAcceptedDelegate, params.ptr, cast(void*)0);
	}
	bool AcceptGameInvite(ubyte LocalUserNum, ScriptName SessionName)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptName*)&params[4] = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AcceptGameInvite, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool RegisterPlayer(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasInvited)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasInvited;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void AddRegisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* RegisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = RegisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddRegisterPlayerCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearRegisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* RegisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = RegisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearRegisterPlayerCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool UnregisterPlayer(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void AddUnregisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* UnregisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = UnregisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddUnregisterPlayerCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearUnregisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* UnregisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = UnregisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearUnregisterPlayerCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool QueryNonAdvertisedData(int StartAt, int NumberToQuery)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StartAt;
		*cast(int*)&params[4] = NumberToQuery;
		(cast(ScriptObject)this).ProcessEvent(Functions.QueryNonAdvertisedData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
