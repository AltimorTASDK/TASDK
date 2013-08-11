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
	enum EMctsMatchmakingType : ubyte
	{
		SMT_Invalid = 0,
		SMT_LAN = 1,
		SMT_Internet = 2,
		SMT_MAX = 3,
	}
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) GameInviteAcceptedDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) RegisterPlayerCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 460); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) UnregisterPlayerCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 472); }
	public @property final auto ref OnlineGameSearch InviteGameSearch() { return *cast(OnlineGameSearch*)(cast(size_t)cast(void*)this + 456); }
	public @property final auto ref OnlineVoiceInterfaceMcts MctsVoiceInt() { return *cast(OnlineVoiceInterfaceMcts*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref MctsOnlineSettings MctsSettings() { return *cast(MctsOnlineSettings*)(cast(size_t)cast(void*)this + 436); }
	final void OnGameInviteAccepted(OnlineGameSearch.OnlineGameSearchResult* InviteResult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *InviteResult;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156413], params.ptr, cast(void*)0);
		*InviteResult = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
	}
	final void OnRegisterPlayerComplete(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156416], params.ptr, cast(void*)0);
	}
	final void OnUnregisterPlayerComplete(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156419], params.ptr, cast(void*)0);
	}
	final void SealMatch(bool bSeal, bool bLateSeal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSeal;
		*cast(bool*)&params[4] = bLateSeal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156427], params.ptr, cast(void*)0);
	}
	final void HoldInvites(bool bHold)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHold;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156430], params.ptr, cast(void*)0);
	}
	final void EndGame(int nWaitSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nWaitSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156432], params.ptr, cast(void*)0);
	}
	final bool MatchQueueJoin(int nQueueId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nQueueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156434], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool MatchQueueLeave(int nQueueId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nQueueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156437], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool MatchChooseClass(int nClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156440], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool MatchChooseSkin(int nSkinId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nSkinId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156443], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool MatchAcceptInvite()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156446], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool MatchLockIn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156448], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool MatchLobbyEquipItems(int eType, int nItem1, int nItem2)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = eType;
		*cast(int*)&params[4] = nItem1;
		*cast(int*)&params[8] = nItem2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156450], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool UpdateOnlineGame(ScriptName SessionName, OnlineGameSettings UpdatedGameSettings, bool bShouldRefreshOnlineData)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineGameSettings*)&params[8] = UpdatedGameSettings;
		*cast(bool*)&params[12] = bShouldRefreshOnlineData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156455], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final OnlineGameSettings GetGameSettings(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156460], params.ptr, cast(void*)0);
		return *cast(OnlineGameSettings*)&params[8];
	}
	final void AddGameInviteAcceptedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* GameInviteAcceptedDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = GameInviteAcceptedDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156464], params.ptr, cast(void*)0);
	}
	final void ClearGameInviteAcceptedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* GameInviteAcceptedDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = GameInviteAcceptedDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156467], params.ptr, cast(void*)0);
	}
	final bool AcceptGameInvite(ubyte LocalUserNum, ScriptName SessionName)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptName*)&params[4] = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156472], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool RegisterPlayer(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasInvited)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasInvited;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156476], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final void AddRegisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* RegisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = RegisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156484], params.ptr, cast(void*)0);
	}
	final void ClearRegisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* RegisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = RegisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156486], params.ptr, cast(void*)0);
	}
	final bool UnregisterPlayer(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156489], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void AddUnregisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* UnregisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = UnregisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156496], params.ptr, cast(void*)0);
	}
	final void ClearUnregisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* UnregisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = UnregisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156498], params.ptr, cast(void*)0);
	}
	final bool QueryNonAdvertisedData(int StartAt, int NumberToQuery)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StartAt;
		*cast(int*)&params[4] = NumberToQuery;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156501], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
