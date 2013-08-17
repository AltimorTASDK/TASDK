module UnrealScript.OnlineSubsystemMcts.OnlineGameInterfaceMcts;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class OnlineSubsystemMcts.OnlineGameInterfaceMcts")()); }
	private static __gshared OnlineGameInterfaceMcts mDefaultProperties;
	@property final static OnlineGameInterfaceMcts DefaultProperties() { mixin(MGDPC!(OnlineGameInterfaceMcts, "OnlineGameInterfaceMcts OnlineSubsystemMcts.Default__OnlineGameInterfaceMcts")()); }
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
			ScriptFunction OnGameInviteAccepted() { mixin(MGF!("mOnGameInviteAccepted", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.OnGameInviteAccepted")()); }
			ScriptFunction OnRegisterPlayerComplete() { mixin(MGF!("mOnRegisterPlayerComplete", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.OnRegisterPlayerComplete")()); }
			ScriptFunction OnUnregisterPlayerComplete() { mixin(MGF!("mOnUnregisterPlayerComplete", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.OnUnregisterPlayerComplete")()); }
			ScriptFunction SealMatch() { mixin(MGF!("mSealMatch", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.SealMatch")()); }
			ScriptFunction HoldInvites() { mixin(MGF!("mHoldInvites", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.HoldInvites")()); }
			ScriptFunction EndGame() { mixin(MGF!("mEndGame", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.EndGame")()); }
			ScriptFunction MatchQueueJoin() { mixin(MGF!("mMatchQueueJoin", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchQueueJoin")()); }
			ScriptFunction MatchQueueLeave() { mixin(MGF!("mMatchQueueLeave", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchQueueLeave")()); }
			ScriptFunction MatchChooseClass() { mixin(MGF!("mMatchChooseClass", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchChooseClass")()); }
			ScriptFunction MatchChooseSkin() { mixin(MGF!("mMatchChooseSkin", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchChooseSkin")()); }
			ScriptFunction MatchAcceptInvite() { mixin(MGF!("mMatchAcceptInvite", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchAcceptInvite")()); }
			ScriptFunction MatchLockIn() { mixin(MGF!("mMatchLockIn", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchLockIn")()); }
			ScriptFunction MatchLobbyEquipItems() { mixin(MGF!("mMatchLobbyEquipItems", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.MatchLobbyEquipItems")()); }
			ScriptFunction UpdateOnlineGame() { mixin(MGF!("mUpdateOnlineGame", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.UpdateOnlineGame")()); }
			ScriptFunction GetGameSettings() { mixin(MGF!("mGetGameSettings", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.GetGameSettings")()); }
			ScriptFunction AddGameInviteAcceptedDelegate() { mixin(MGF!("mAddGameInviteAcceptedDelegate", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.AddGameInviteAcceptedDelegate")()); }
			ScriptFunction ClearGameInviteAcceptedDelegate() { mixin(MGF!("mClearGameInviteAcceptedDelegate", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.ClearGameInviteAcceptedDelegate")()); }
			ScriptFunction AcceptGameInvite() { mixin(MGF!("mAcceptGameInvite", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.AcceptGameInvite")()); }
			ScriptFunction RegisterPlayer() { mixin(MGF!("mRegisterPlayer", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.RegisterPlayer")()); }
			ScriptFunction AddRegisterPlayerCompleteDelegate() { mixin(MGF!("mAddRegisterPlayerCompleteDelegate", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.AddRegisterPlayerCompleteDelegate")()); }
			ScriptFunction ClearRegisterPlayerCompleteDelegate() { mixin(MGF!("mClearRegisterPlayerCompleteDelegate", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.ClearRegisterPlayerCompleteDelegate")()); }
			ScriptFunction UnregisterPlayer() { mixin(MGF!("mUnregisterPlayer", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.UnregisterPlayer")()); }
			ScriptFunction AddUnregisterPlayerCompleteDelegate() { mixin(MGF!("mAddUnregisterPlayerCompleteDelegate", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.AddUnregisterPlayerCompleteDelegate")()); }
			ScriptFunction ClearUnregisterPlayerCompleteDelegate() { mixin(MGF!("mClearUnregisterPlayerCompleteDelegate", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.ClearUnregisterPlayerCompleteDelegate")()); }
			ScriptFunction QueryNonAdvertisedData() { mixin(MGF!("mQueryNonAdvertisedData", "Function OnlineSubsystemMcts.OnlineGameInterfaceMcts.QueryNonAdvertisedData")()); }
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
void*) GameInviteAcceptedDelegates() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)", 444)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) RegisterPlayerCompleteDelegates() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)", 460)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) UnregisterPlayerCompleteDelegates() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)", 472)()); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnUnregisterPlayerComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnRegisterPlayerComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnGameInviteAccepted__Delegate'!
		OnlineGameSearch InviteGameSearch() { mixin(MGPC!("OnlineGameSearch", 456)()); }
		OnlineVoiceInterfaceMcts MctsVoiceInt() { mixin(MGPC!("OnlineVoiceInterfaceMcts", 440)()); }
		MctsOnlineSettings MctsSettings() { mixin(MGPC!("MctsOnlineSettings", 436)()); }
	}
final:
	void OnGameInviteAccepted(ref in OnlineGameSearch.OnlineGameSearchResult InviteResult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = cast(OnlineGameSearch.OnlineGameSearchResult)InviteResult;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameInviteAccepted, params.ptr, cast(void*)0);
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
	void SealMatch(bool* bSeal = null, bool* bLateSeal = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bSeal !is null)
			*cast(bool*)params.ptr = *bSeal;
		if (bLateSeal !is null)
			*cast(bool*)&params[4] = *bLateSeal;
		(cast(ScriptObject)this).ProcessEvent(Functions.SealMatch, params.ptr, cast(void*)0);
	}
	void HoldInvites(bool* bHold = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bHold !is null)
			*cast(bool*)params.ptr = *bHold;
		(cast(ScriptObject)this).ProcessEvent(Functions.HoldInvites, params.ptr, cast(void*)0);
	}
	void EndGame(int* nWaitSeconds = null)
	{
		ubyte params[4];
		params[] = 0;
		if (nWaitSeconds !is null)
			*cast(int*)params.ptr = *nWaitSeconds;
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
	bool MatchQueueLeave(int* nQueueId = null)
	{
		ubyte params[8];
		params[] = 0;
		if (nQueueId !is null)
			*cast(int*)params.ptr = *nQueueId;
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
	bool UpdateOnlineGame(ScriptName SessionName, OnlineGameSettings UpdatedGameSettings, bool* bShouldRefreshOnlineData = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineGameSettings*)&params[8] = UpdatedGameSettings;
		if (bShouldRefreshOnlineData !is null)
			*cast(bool*)&params[12] = *bShouldRefreshOnlineData;
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
