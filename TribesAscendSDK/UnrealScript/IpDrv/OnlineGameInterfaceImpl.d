module UnrealScript.IpDrv.OnlineGameInterfaceImpl;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.IpDrv.OnlineSubsystemCommonImpl;

extern(C++) interface OnlineGameInterfaceImpl : UObject
{
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) CreateOnlineGameCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) UpdateOnlineGameCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) DestroyOnlineGameCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) JoinOnlineGameCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) MigrateOnlineGameCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) JoinMigratedOnlineGameCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) RecalculateSkillRatingCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) StartOnlineGameCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) EndOnlineGameCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) FindOnlineGamesCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) CancelFindOnlineGamesCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref UObject.Pointer SessionInfo() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref UObject.Pointer LanBeacon() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float LanQueryTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref float LanQueryTimeLeft() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref int LanPacketPlatformMask() { return *cast(int*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref int LanGameUniqueId() { return *cast(int*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref int LanAnnouncePort() { return *cast(int*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ubyte LanNonce() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 74); }
	public @property final auto ref OnlineSubsystem.ELanBeaconState LanBeaconState() { return *cast(OnlineSubsystem.ELanBeaconState*)(cast(size_t)cast(void*)this + 73); }
	public @property final auto ref OnlineSubsystem.EOnlineGameState CurrentGameState() { return *cast(OnlineSubsystem.EOnlineGameState*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref OnlineGameSearch GameSearch() { return *cast(OnlineGameSearch*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref OnlineGameSettings GameSettings() { return *cast(OnlineGameSettings*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref OnlineSubsystemCommonImpl OwningSubsystem() { return *cast(OnlineSubsystemCommonImpl*)(cast(size_t)cast(void*)this + 60); }
	final void OnCreateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33378], params.ptr, cast(void*)0);
	}
	final void OnUpdateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33381], params.ptr, cast(void*)0);
	}
	final void OnDestroyOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33384], params.ptr, cast(void*)0);
	}
	final void OnJoinOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33387], params.ptr, cast(void*)0);
	}
	final void OnMigrateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33390], params.ptr, cast(void*)0);
	}
	final void OnJoinMigratedOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33393], params.ptr, cast(void*)0);
	}
	final void OnRecalculateSkillRatingComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33396], params.ptr, cast(void*)0);
	}
	final void OnStartOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33399], params.ptr, cast(void*)0);
	}
	final void OnEndOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33402], params.ptr, cast(void*)0);
	}
	final void OnFindOnlineGamesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33405], params.ptr, cast(void*)0);
	}
	final void OnCancelFindOnlineGamesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33408], params.ptr, cast(void*)0);
	}
	final void OnQosStatusChanged(int NumComplete, int NumTotal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = NumComplete;
		*cast(int*)&params[4] = NumTotal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33410], params.ptr, cast(void*)0);
	}
	final void OnGameInviteAccepted(OnlineGameSearch.OnlineGameSearchResult* InviteResult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *InviteResult;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33415], params.ptr, cast(void*)0);
		*InviteResult = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
	}
	final void OnArbitrationRegistrationComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33417], params.ptr, cast(void*)0);
	}
	final void OnUnregisterPlayerComplete(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33421], params.ptr, cast(void*)0);
	}
	final void OnRegisterPlayerComplete(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33423], params.ptr, cast(void*)0);
	}
	final OnlineGameSettings GetGameSettings(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33444], params.ptr, cast(void*)0);
		return *cast(OnlineGameSettings*)&params[8];
	}
	final OnlineGameSearch GetGameSearch()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33447], params.ptr, cast(void*)0);
		return *cast(OnlineGameSearch*)params.ptr;
	}
	final bool CreateOnlineGame(ubyte HostingPlayerNum, ScriptName SessionName, OnlineGameSettings NewGameSettings)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = HostingPlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(OnlineGameSettings*)&params[12] = NewGameSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33449], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33456], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33458], params.ptr, cast(void*)0);
	}
	final bool UpdateOnlineGame(ScriptName SessionName, OnlineGameSettings UpdatedGameSettings, bool bShouldRefreshOnlineData)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineGameSettings*)&params[8] = UpdatedGameSettings;
		*cast(bool*)&params[12] = bShouldRefreshOnlineData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33461], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33468], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33470], params.ptr, cast(void*)0);
	}
	final bool DestroyOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33473], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33478], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33480], params.ptr, cast(void*)0);
	}
	final bool FindOnlineGames(ubyte SearchingPlayerNum, OnlineGameSearch SearchSettings)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = SearchingPlayerNum;
		*cast(OnlineGameSearch*)&params[4] = SearchSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33483], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33487], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33489], params.ptr, cast(void*)0);
	}
	final bool CancelFindOnlineGames()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33492], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33495], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33497], params.ptr, cast(void*)0);
	}
	final bool FreeSearchResults(OnlineGameSearch Search)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch*)params.ptr = Search;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33500], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool JoinOnlineGame(ubyte PlayerNum, ScriptName SessionName, OnlineGameSearch.OnlineGameSearchResult* DesiredGame)
	{
		ubyte params[21];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12] = *DesiredGame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33503], params.ptr, cast(void*)0);
		*DesiredGame = *cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12];
		return *cast(bool*)&params[20];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33510], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33512], params.ptr, cast(void*)0);
	}
	final bool GetResolvedConnectString(ScriptName SessionName, ScriptString* ConnectInfo)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptString*)&params[8] = *ConnectInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33515], params.ptr, cast(void*)0);
		*ConnectInfo = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	final bool RegisterPlayer(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasInvited)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasInvited;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33519], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33527], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33529], params.ptr, cast(void*)0);
	}
	final bool UnregisterPlayer(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33531], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33538], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33540], params.ptr, cast(void*)0);
	}
	final bool StartOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33542], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33547], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33549], params.ptr, cast(void*)0);
	}
	final bool EndOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33552], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33557], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33559], params.ptr, cast(void*)0);
	}
	final bool RegisterForArbitration(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33562], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33567], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33569], params.ptr, cast(void*)0);
	}
	final ScriptArray!(OnlineSubsystem.OnlineArbitrationRegistrant) GetArbitratedPlayers(ScriptName SessionName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33571], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33576], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33579], params.ptr, cast(void*)0);
	}
	final bool AcceptGameInvite(ubyte LocalUserNum, ScriptName SessionName)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptName*)&params[4] = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33582], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool RecalculateSkillRating(ScriptName SessionName, ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33586], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
		return *cast(bool*)&params[20];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33593], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33595], params.ptr, cast(void*)0);
	}
	final bool MigrateOnlineGame(ubyte HostingPlayerNum, ScriptName SessionName)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = HostingPlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33598], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33604], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33606], params.ptr, cast(void*)0);
	}
	final bool JoinMigratedOnlineGame(ubyte PlayerNum, ScriptName SessionName, OnlineGameSearch.OnlineGameSearchResult* DesiredGame)
	{
		ubyte params[21];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12] = *DesiredGame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33609], params.ptr, cast(void*)0);
		*DesiredGame = *cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12];
		return *cast(bool*)&params[20];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33616], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33618], params.ptr, cast(void*)0);
	}
	final bool QueryNonAdvertisedData(int StartAt, int NumberToQuery)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StartAt;
		*cast(int*)&params[4] = NumberToQuery;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33621], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool ReadPlatformSpecificSessionInfo(OnlineGameSearch.OnlineGameSearchResult* DesiredGame, ubyte* PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *DesiredGame;
		params[8] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33625], params.ptr, cast(void*)0);
		*DesiredGame = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
		*PlatformSpecificInfo = params[8];
		return *cast(bool*)&params[88];
	}
	final bool ReadPlatformSpecificSessionInfoBySessionName(ScriptName SessionName, ubyte* PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		params[8] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33629], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33633], params.ptr, cast(void*)0);
		return *cast(bool*)&params[88];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33640], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33642], params.ptr, cast(void*)0);
	}
}
