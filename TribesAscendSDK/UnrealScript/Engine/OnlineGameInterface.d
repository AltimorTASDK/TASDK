module UnrealScript.Engine.OnlineGameInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineGameInterface : UInterface
{
	final OnlineGameSettings GetGameSettings(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7674], params.ptr, cast(void*)0);
		return *cast(OnlineGameSettings*)&params[8];
	}
	final bool EndOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7677], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool UnregisterPlayer(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7693], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool MigrateOnlineGame(ubyte HostingPlayerNum, ScriptName SessionName)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = HostingPlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7695], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool ReadPlatformSpecificSessionInfoBySessionName(ScriptName SessionName, ubyte* PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		params[8] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7711], params.ptr, cast(void*)0);
		*PlatformSpecificInfo = params[8];
		return *cast(bool*)&params[88];
	}
	final bool BindPlatformSpecificSessionToSearch(ubyte SearchingPlayerNum, OnlineGameSearch SearchSettings, ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		params[0] = SearchingPlayerNum;
		*cast(OnlineGameSearch*)&params[4] = SearchSettings;
		params[8] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7735], params.ptr, cast(void*)0);
		return *cast(bool*)&params[88];
	}
	final bool JoinMigratedOnlineGame(ubyte PlayerNum, ScriptName SessionName, OnlineGameSearch.OnlineGameSearchResult* DesiredGame)
	{
		ubyte params[21];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12] = *DesiredGame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7741], params.ptr, cast(void*)0);
		*DesiredGame = *cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12];
		return *cast(bool*)&params[20];
	}
	final bool GetResolvedConnectString(ScriptName SessionName, ScriptString* ConnectInfo)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptString*)&params[8] = *ConnectInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7747], params.ptr, cast(void*)0);
		*ConnectInfo = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	final bool RegisterForArbitration(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9241], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool AcceptGameInvite(ubyte LocalUserNum, ScriptName SessionName)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptName*)&params[4] = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9253], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool DestroyOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9272], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool StartOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9374], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool JoinOnlineGame(ubyte PlayerNum, ScriptName SessionName, OnlineGameSearch.OnlineGameSearchResult* DesiredGame)
	{
		ubyte params[21];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12] = *DesiredGame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9396], params.ptr, cast(void*)0);
		*DesiredGame = *cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12];
		return *cast(bool*)&params[20];
	}
	final bool RegisterPlayer(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasInvited)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasInvited;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16946], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final bool RecalculateSkillRating(ScriptName SessionName, ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17363], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
		return *cast(bool*)&params[20];
	}
	final bool CreateOnlineGame(ubyte HostingPlayerNum, ScriptName SessionName, OnlineGameSettings NewGameSettings)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = HostingPlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(OnlineGameSettings*)&params[12] = NewGameSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17379], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void OnCreateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21627], params.ptr, cast(void*)0);
	}
	final void OnJoinMigratedOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21631], params.ptr, cast(void*)0);
	}
	final void OnMigrateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21633], params.ptr, cast(void*)0);
	}
	final void OnRecalculateSkillRatingComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21635], params.ptr, cast(void*)0);
	}
	final void OnGameInviteAccepted(OnlineGameSearch.OnlineGameSearchResult* InviteResult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *InviteResult;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21637], params.ptr, cast(void*)0);
		*InviteResult = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
	}
	final void OnArbitrationRegistrationComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21639], params.ptr, cast(void*)0);
	}
	final void OnEndOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21641], params.ptr, cast(void*)0);
	}
	final void OnStartOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21643], params.ptr, cast(void*)0);
	}
	final void OnUnregisterPlayerComplete(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21645], params.ptr, cast(void*)0);
	}
	final void OnRegisterPlayerComplete(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21647], params.ptr, cast(void*)0);
	}
	final void OnJoinOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21649], params.ptr, cast(void*)0);
	}
	final void OnQosStatusChanged(int NumComplete, int NumTotal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = NumComplete;
		*cast(int*)&params[4] = NumTotal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21651], params.ptr, cast(void*)0);
	}
	final void OnCancelFindOnlineGamesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21653], params.ptr, cast(void*)0);
	}
	final void OnFindOnlineGamesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21655], params.ptr, cast(void*)0);
	}
	final void OnDestroyOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21657], params.ptr, cast(void*)0);
	}
	final void OnUpdateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21659], params.ptr, cast(void*)0);
	}
	final void AddCreateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* CreateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = CreateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21661], params.ptr, cast(void*)0);
	}
	final void ClearCreateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* CreateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = CreateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21663], params.ptr, cast(void*)0);
	}
	final bool UpdateOnlineGame(ScriptName SessionName, OnlineGameSettings UpdatedGameSettings, bool bShouldRefreshOnlineData)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineGameSettings*)&params[8] = UpdatedGameSettings;
		*cast(bool*)&params[12] = bShouldRefreshOnlineData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21665], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void AddUpdateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* UpdateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = UpdateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21672], params.ptr, cast(void*)0);
	}
	final void ClearUpdateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* UpdateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = UpdateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21674], params.ptr, cast(void*)0);
	}
	final void AddDestroyOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* DestroyOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = DestroyOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21680], params.ptr, cast(void*)0);
	}
	final void ClearDestroyOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* DestroyOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = DestroyOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21682], params.ptr, cast(void*)0);
	}
	final bool FindOnlineGames(ubyte SearchingPlayerNum, OnlineGameSearch SearchSettings)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = SearchingPlayerNum;
		*cast(OnlineGameSearch*)&params[4] = SearchSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21684], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void AddFindOnlineGamesCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* FindOnlineGamesCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = FindOnlineGamesCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21689], params.ptr, cast(void*)0);
	}
	final void ClearFindOnlineGamesCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* FindOnlineGamesCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = FindOnlineGamesCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21691], params.ptr, cast(void*)0);
	}
	final bool CancelFindOnlineGames()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21693], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void AddCancelFindOnlineGamesCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* CancelFindOnlineGamesCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = CancelFindOnlineGamesCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21696], params.ptr, cast(void*)0);
	}
	final void ClearCancelFindOnlineGamesCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* CancelFindOnlineGamesCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = CancelFindOnlineGamesCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21698], params.ptr, cast(void*)0);
	}
	final void AddQosStatusChangedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* QosStatusChangedDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = QosStatusChangedDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21702], params.ptr, cast(void*)0);
	}
	final void ClearQosStatusChangedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* QosStatusChangedDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = QosStatusChangedDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21704], params.ptr, cast(void*)0);
	}
	final bool ReadPlatformSpecificSessionInfo(OnlineGameSearch.OnlineGameSearchResult* DesiredGame, ubyte* PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *DesiredGame;
		params[8] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21706], params.ptr, cast(void*)0);
		*DesiredGame = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
		*PlatformSpecificInfo = params[8];
		return *cast(bool*)&params[88];
	}
	final OnlineGameSearch GetGameSearch()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21715], params.ptr, cast(void*)0);
		return *cast(OnlineGameSearch*)params.ptr;
	}
	final bool FreeSearchResults(OnlineGameSearch Search)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch*)params.ptr = Search;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21717], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool QueryNonAdvertisedData(int StartAt, int NumberToQuery)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StartAt;
		*cast(int*)&params[4] = NumberToQuery;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21720], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void AddJoinOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* JoinOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = JoinOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21729], params.ptr, cast(void*)0);
	}
	final void ClearJoinOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* JoinOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = JoinOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21731], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21741], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21743], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21750], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21752], params.ptr, cast(void*)0);
	}
	final void AddStartOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* StartOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = StartOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21757], params.ptr, cast(void*)0);
	}
	final void ClearStartOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* StartOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = StartOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21759], params.ptr, cast(void*)0);
	}
	final void AddEndOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* EndOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = EndOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21764], params.ptr, cast(void*)0);
	}
	final void ClearEndOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* EndOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = EndOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21766], params.ptr, cast(void*)0);
	}
	final void AddArbitrationRegistrationCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ArbitrationRegistrationCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ArbitrationRegistrationCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21771], params.ptr, cast(void*)0);
	}
	final void ClearArbitrationRegistrationCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ArbitrationRegistrationCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ArbitrationRegistrationCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21773], params.ptr, cast(void*)0);
	}
	final ScriptArray!(OnlineSubsystem.OnlineArbitrationRegistrant) GetArbitratedPlayers(ScriptName SessionName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21775], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(OnlineSubsystem.OnlineArbitrationRegistrant)*)&params[8];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21780], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21783], params.ptr, cast(void*)0);
	}
	final void AddRecalculateSkillRatingCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* RecalculateSkillRatingCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = RecalculateSkillRatingCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21793], params.ptr, cast(void*)0);
	}
	final void ClearRecalculateSkillRatingCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* RecalculateSkillRatingGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = RecalculateSkillRatingGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21795], params.ptr, cast(void*)0);
	}
	final void AddMigrateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* MigrateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = MigrateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21801], params.ptr, cast(void*)0);
	}
	final void ClearMigrateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* MigrateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = MigrateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21803], params.ptr, cast(void*)0);
	}
	final void AddJoinMigratedOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* JoinMigratedOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = JoinMigratedOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21810], params.ptr, cast(void*)0);
	}
	final void ClearJoinMigratedOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* JoinMigratedOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = JoinMigratedOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21812], params.ptr, cast(void*)0);
	}
}
