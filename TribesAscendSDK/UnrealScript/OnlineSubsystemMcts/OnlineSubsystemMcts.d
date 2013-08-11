module UnrealScript.OnlineSubsystemMcts.OnlineSubsystemMcts;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.OnlineSubsystemMcts.OnlineVoiceInterfaceMcts;
import UnrealScript.OnlineSubsystemMcts.OnlineGameInterfaceMcts;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.Engine.OnlineProfileSettings;
import UnrealScript.IpDrv.OnlineSubsystemCommonImpl;
import UnrealScript.Engine.OnlinePlayerStorage;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineSubsystemMcts : OnlineSubsystemCommonImpl
{
	struct ControllerConnectionState
	{
		public @property final auto ref int bLastIsControllerConnected() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __bLastIsControllerConnected[4];
		public @property final auto ref int bIsControllerConnected() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __bIsControllerConnected[4];
	}
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) ConnectionStatusChangeDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) LoginChangeDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) LoginFailedDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) LogoutCompletedDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) LinkStatusDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) ChatMessageDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) KeyboardInputDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref float ConnectionPresenceElapsedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 452); }
	public @property final auto ref float ConnectionPresenceTimeInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 448); }
	public @property final auto ref OnlineSubsystemMcts.ControllerConnectionState ControllerStates() { return *cast(OnlineSubsystemMcts.ControllerConnectionState*)(cast(size_t)cast(void*)this + 416); }
	public @property final bool bShouldUseMcp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 400) & 0x4) != 0; }
	public @property final bool bShouldUseMcp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 400) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 400) &= ~0x4; } return val; }
	public @property final bool bLastHasConnection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 400) & 0x2) != 0; }
	public @property final bool bLastHasConnection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 400) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 400) &= ~0x2; } return val; }
	public @property final bool bNeedsKeyboardTicking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 400) & 0x1) != 0; }
	public @property final bool bNeedsKeyboardTicking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 400) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 400) &= ~0x1; } return val; }
	public @property final auto ref ScriptString KeyboardResultsString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref ScriptString ProfileDataExtension() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref ScriptString ProfileDataDirectory() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref OnlineSubsystem.ENetworkNotificationPosition CurrentNotificationPosition() { return *cast(OnlineSubsystem.ENetworkNotificationPosition*)(cast(size_t)cast(void*)this + 290); }
	public @property final auto ref ubyte bWasKeyboardInputCanceled() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 289); }
	public @property final auto ref OnlineSubsystem.ELoginStatus LoggedInStatus() { return *cast(OnlineSubsystem.ELoginStatus*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref int LoggedInPlayerNum() { return *cast(int*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref OnlineSubsystem.UniqueNetId LoggedInPlayerId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref ScriptString LoggedInPlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref ScriptString LocalProfileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref OnlineVoiceInterfaceMcts MctsVoiceInt() { return *cast(OnlineVoiceInterfaceMcts*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref OnlineGameInterfaceMcts MctsGameInt() { return *cast(OnlineGameInterfaceMcts*)(cast(size_t)cast(void*)this + 244); }
	final void OnConnectionStatusChange(OnlineSubsystem.EOnlineServerConnectionStatus ConnectionStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)params.ptr = ConnectionStatus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156507], params.ptr, cast(void*)0);
	}
	final void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156510], params.ptr, cast(void*)0);
	}
	final void OnLoginFailed(ubyte LocalUserNum, OnlineSubsystem.EOnlineServerConnectionStatus ErrorCode)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)&params[1] = ErrorCode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156513], params.ptr, cast(void*)0);
	}
	final void OnLogoutCompleted(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156516], params.ptr, cast(void*)0);
	}
	final void OnLinkStatusChange(bool bIsConnected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156519], params.ptr, cast(void*)0);
	}
	final void OnChatMessage(int Channel, ScriptString Sender, ScriptString Message)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Channel;
		*cast(ScriptString*)&params[4] = Sender;
		*cast(ScriptString*)&params[16] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156522], params.ptr, cast(void*)0);
	}
	final void OnKeyboardInputComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156525], params.ptr, cast(void*)0);
	}
	final void OnReadAchievementsComplete(int TitleId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TitleId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156527], params.ptr, cast(void*)0);
	}
	final void OnUnlockAchievementComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156529], params.ptr, cast(void*)0);
	}
	final void OnFriendMessageReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId SendingPlayer, ScriptString SendingNick, ScriptString Message)
	{
		ubyte params[33];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = SendingPlayer;
		*cast(ScriptString*)&params[12] = SendingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156531], params.ptr, cast(void*)0);
	}
	final void OnJoinFriendGameComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156533], params.ptr, cast(void*)0);
	}
	final void OnReceivedGameInvite(ubyte LocalUserNum, ScriptString InviterName)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = InviterName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156535], params.ptr, cast(void*)0);
	}
	final void OnFriendInviteReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer, ScriptString RequestingNick, ScriptString Message)
	{
		ubyte params[33];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		*cast(ScriptString*)&params[12] = RequestingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156537], params.ptr, cast(void*)0);
	}
	final void OnAddFriendByNameComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156539], params.ptr, cast(void*)0);
	}
	final void OnReadFriendsComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156542], params.ptr, cast(void*)0);
	}
	final void OnFriendsChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156544], cast(void*)0, cast(void*)0);
	}
	final void OnWritePlayerStorageComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156546], params.ptr, cast(void*)0);
	}
	final void OnReadPlayerStorageForNetIdComplete(OnlineSubsystem.UniqueNetId NetId, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = NetId;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156548], params.ptr, cast(void*)0);
	}
	final void OnReadPlayerStorageComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156550], params.ptr, cast(void*)0);
	}
	final void OnWriteProfileSettingsComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156552], params.ptr, cast(void*)0);
	}
	final void OnReadProfileSettingsComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156554], params.ptr, cast(void*)0);
	}
	final void OnMutingChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156556], cast(void*)0, cast(void*)0);
	}
	final void OnLoginCancelled()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156558], cast(void*)0, cast(void*)0);
	}
	final void OnLoginStatusChange(OnlineSubsystem.ELoginStatus NewStatus, OnlineSubsystem.UniqueNetId NewId)
	{
		ubyte params[9];
		params[] = 0;
		*cast(OnlineSubsystem.ELoginStatus*)params.ptr = NewStatus;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = NewId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156560], params.ptr, cast(void*)0);
	}
	final void OnStorageDeviceChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156563], cast(void*)0, cast(void*)0);
	}
	final void OnControllerChange(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156566], params.ptr, cast(void*)0);
	}
	final void OnExternalUIChange(bool bIsOpening)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsOpening;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156568], params.ptr, cast(void*)0);
	}
	final bool Init()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156594], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool Login(ubyte LocalUserNum, ScriptString LoginName, ScriptString Password, bool bWantsLocalOnly)
	{
		ubyte params[33];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = LoginName;
		*cast(ScriptString*)&params[16] = Password;
		*cast(bool*)&params[28] = bWantsLocalOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156597], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	final bool RequestNewPlayer(ubyte LocalUserNum, ScriptString LoginName, ScriptString Password, ScriptString DesiredPlayerName)
	{
		ubyte params[41];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = LoginName;
		*cast(ScriptString*)&params[16] = Password;
		*cast(ScriptString*)&params[28] = DesiredPlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156603], params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	final bool AutoLogin()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156609], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void AddLoginFailedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LoginFailedDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = LoginFailedDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156613], params.ptr, cast(void*)0);
	}
	final void ClearLoginFailedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LoginFailedDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = LoginFailedDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156616], params.ptr, cast(void*)0);
	}
	final bool Logout(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156620], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void AddLogoutCompletedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LogoutDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = LogoutDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156624], params.ptr, cast(void*)0);
	}
	final void ClearLogoutCompletedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LogoutDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = LogoutDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156627], params.ptr, cast(void*)0);
	}
	final OnlineSubsystem.ELoginStatus GetLoginStatus(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156631], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ELoginStatus*)&params[1];
	}
	final bool IsGuestLogin(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156634], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsLocalLogin(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156637], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool GetUniquePlayerId(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId* PlayerID)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = *PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156640], params.ptr, cast(void*)0);
		*PlayerID = *cast(OnlineSubsystem.UniqueNetId*)&params[4];
		return *cast(bool*)&params[12];
	}
	final ScriptString GetPlayerNickname(ubyte LocalUserNum)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156644], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanPlayOnline(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156647], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanDownloadUserContent(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156650], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanPurchaseContent(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156653], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanViewPlayerProfiles(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156656], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanShowPresenceInformation(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156659], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final bool IsFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156662], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool AreAnyFriends(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.FriendsQuery)* Query)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.FriendsQuery)*)&params[4] = *Query;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156666], params.ptr, cast(void*)0);
		*Query = *cast(ScriptArray!(OnlineSubsystem.FriendsQuery)*)&params[4];
		return *cast(bool*)&params[16];
	}
	final ScriptString GetPlayerMctsName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156671], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void AddLoginChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LoginDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = LoginDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156673], params.ptr, cast(void*)0);
	}
	final void ClearLoginChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LoginDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = LoginDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156675], params.ptr, cast(void*)0);
	}
	final bool NeedEULA()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156678], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final ScriptString GetPlayerNicknameFromIndex(int UserIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = UserIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156680], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final OnlineSubsystem.UniqueNetId GetPlayerUniqueNetIdFromIndex(int UserIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = UserIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156683], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.UniqueNetId*)&params[4];
	}
	final bool HasLinkConnection()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156687], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void AddLinkStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LinkStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = LinkStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156690], params.ptr, cast(void*)0);
	}
	final void ClearLinkStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LinkStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = LinkStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156692], params.ptr, cast(void*)0);
	}
	final void AddExternalUIChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ExternalUIDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ExternalUIDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156696], params.ptr, cast(void*)0);
	}
	final void ClearExternalUIChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ExternalUIDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ExternalUIDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156698], params.ptr, cast(void*)0);
	}
	final OnlineSubsystem.ENetworkNotificationPosition GetNetworkNotificationPosition()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156700], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ENetworkNotificationPosition*)params.ptr;
	}
	final void AddControllerChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ControllerChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ControllerChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156704], params.ptr, cast(void*)0);
	}
	final void ClearControllerChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ControllerChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ControllerChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156706], params.ptr, cast(void*)0);
	}
	final bool IsControllerConnected(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156708], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void AddConnectionStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ConnectionStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ConnectionStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156712], params.ptr, cast(void*)0);
	}
	final void ClearConnectionStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ConnectionStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ConnectionStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156714], params.ptr, cast(void*)0);
	}
	final OnlineSubsystem.ENATType GetNATType()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156717], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ENATType*)params.ptr;
	}
	final void AddStorageDeviceChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* StorageDeviceChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = StorageDeviceChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156719], params.ptr, cast(void*)0);
	}
	final void ClearStorageDeviceChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* StorageDeviceChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = StorageDeviceChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156721], params.ptr, cast(void*)0);
	}
	final void AddChatMessageDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ChatDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ChatDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156726], params.ptr, cast(void*)0);
	}
	final void ClearChatMessageDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ChatDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ChatDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156728], params.ptr, cast(void*)0);
	}
	final void SendChatMessage(int Channel, ScriptString Message)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Channel;
		*cast(ScriptString*)&params[4] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156731], params.ptr, cast(void*)0);
	}
	final void SendPrivateChatMessage(ScriptString PlayerName, ScriptString Message)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156734], params.ptr, cast(void*)0);
	}
	final void WriteActiveCharacterClass(int ClassId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156737], params.ptr, cast(void*)0);
	}
	final void ReadCharacterClasses(ScriptArray!(int)* CharList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = *CharList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156739], params.ptr, cast(void*)0);
		*CharList = *cast(ScriptArray!(int)*)params.ptr;
	}
	final int ReadActiveCharacterClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156742], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool WritePlayerProfileData(QWord UniqueId, TgPlayerProfile Profile)
	{
		ubyte params[16];
		params[] = 0;
		*cast(QWord*)params.ptr = UniqueId;
		*cast(TgPlayerProfile*)&params[8] = Profile;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156744], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool ReadPlayerProfileData(QWord UniqueId, TgPlayerProfile Profile)
	{
		ubyte params[16];
		params[] = 0;
		*cast(QWord*)params.ptr = UniqueId;
		*cast(TgPlayerProfile*)&params[8] = Profile;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156748], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void NotifyTeamChange(QWord PlayerUid, ubyte TeamID)
	{
		ubyte params[9];
		params[] = 0;
		*cast(QWord*)params.ptr = PlayerUid;
		params[8] = TeamID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156752], params.ptr, cast(void*)0);
	}
	final int GetCharacterIdFromClassId(QWord UniqueId, int nClassId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(QWord*)params.ptr = UniqueId;
		*cast(int*)&params[8] = nClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156755], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final bool IsMuted(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156759], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanCommunicate(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156763], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final void AddLoginStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LoginStatusDelegate, ubyte LocalUserNum)
	{
		ubyte params[13];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = LoginStatusDelegate;
		params[12] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156768], params.ptr, cast(void*)0);
	}
	final void ClearLoginStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LoginStatusDelegate, ubyte LocalUserNum)
	{
		ubyte params[13];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = LoginStatusDelegate;
		params[12] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156771], params.ptr, cast(void*)0);
	}
	final void AddLoginCancelledDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* CancelledDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = CancelledDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156774], params.ptr, cast(void*)0);
	}
	final void ClearLoginCancelledDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* CancelledDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = CancelledDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156776], params.ptr, cast(void*)0);
	}
	final bool ReadProfileSettings(ubyte LocalUserNum, OnlineProfileSettings ProfileSettings)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineProfileSettings*)&params[4] = ProfileSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156778], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool WriteProfileSettings(ubyte LocalUserNum, OnlineProfileSettings ProfileSettings)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineProfileSettings*)&params[4] = ProfileSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156782], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final OnlineProfileSettings GetProfileSettings(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156786], params.ptr, cast(void*)0);
		return *cast(OnlineProfileSettings*)&params[4];
	}
	final void AddMutingChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* MutingDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = MutingDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156789], params.ptr, cast(void*)0);
	}
	final void ClearMutingChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* MutingDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = MutingDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156791], params.ptr, cast(void*)0);
	}
	final void AddReadProfileSettingsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadProfileSettingsCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = ReadProfileSettingsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156795], params.ptr, cast(void*)0);
	}
	final void ClearReadProfileSettingsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadProfileSettingsCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = ReadProfileSettingsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156798], params.ptr, cast(void*)0);
	}
	final void AddWriteProfileSettingsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* WriteProfileSettingsCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = WriteProfileSettingsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156803], params.ptr, cast(void*)0);
	}
	final void ClearWriteProfileSettingsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* WriteProfileSettingsCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = WriteProfileSettingsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156806], params.ptr, cast(void*)0);
	}
	final bool ReadPlayerStorage(ubyte LocalUserNum, OnlinePlayerStorage PlayerStorage, int DeviceID)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlinePlayerStorage*)&params[4] = PlayerStorage;
		*cast(int*)&params[8] = DeviceID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156809], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void AddReadPlayerStorageCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadPlayerStorageCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = ReadPlayerStorageCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156816], params.ptr, cast(void*)0);
	}
	final void ClearReadPlayerStorageCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadPlayerStorageCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = ReadPlayerStorageCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156819], params.ptr, cast(void*)0);
	}
	final bool ReadPlayerStorageForNetId(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId NetId, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = NetId;
		*cast(OnlinePlayerStorage*)&params[12] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156822], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void AddReadPlayerStorageForNetIdCompleteDelegate(OnlineSubsystem.UniqueNetId NetId, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadPlayerStorageForNetIdCompleteDelegate)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = NetId;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[8] = ReadPlayerStorageForNetIdCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156829], params.ptr, cast(void*)0);
	}
	final void ClearReadPlayerStorageForNetIdCompleteDelegate(OnlineSubsystem.UniqueNetId NetId, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadPlayerStorageForNetIdCompleteDelegate)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = NetId;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[8] = ReadPlayerStorageForNetIdCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156832], params.ptr, cast(void*)0);
	}
	final OnlinePlayerStorage GetPlayerStorage(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156835], params.ptr, cast(void*)0);
		return *cast(OnlinePlayerStorage*)&params[4];
	}
	final bool WritePlayerStorage(ubyte LocalUserNum, OnlinePlayerStorage PlayerStorage, int DeviceID)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlinePlayerStorage*)&params[4] = PlayerStorage;
		*cast(int*)&params[8] = DeviceID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156838], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void AddWritePlayerStorageCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* WritePlayerStorageCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = WritePlayerStorageCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156845], params.ptr, cast(void*)0);
	}
	final void ClearWritePlayerStorageCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* WritePlayerStorageCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = WritePlayerStorageCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156848], params.ptr, cast(void*)0);
	}
	final void AddFriendsChangeDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* FriendsDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = FriendsDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156851], params.ptr, cast(void*)0);
	}
	final void ClearFriendsChangeDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* FriendsDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = FriendsDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156854], params.ptr, cast(void*)0);
	}
	final bool ReadFriendsList(ubyte LocalUserNum, int Count, int StartingAt)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = Count;
		*cast(int*)&params[8] = StartingAt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156857], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void AddReadFriendsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadFriendsCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = ReadFriendsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156863], params.ptr, cast(void*)0);
	}
	final void ClearReadFriendsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadFriendsCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = ReadFriendsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156866], params.ptr, cast(void*)0);
	}
	final OnlineSubsystem.EOnlineEnumerationReadState GetFriendsList(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.OnlineFriend)* Friends, int Count, int StartingAt)
	{
		ubyte params[28];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4] = *Friends;
		*cast(int*)&params[16] = Count;
		*cast(int*)&params[20] = StartingAt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156869], params.ptr, cast(void*)0);
		*Friends = *cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4];
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[24];
	}
	final void SetOnlineStatus(ubyte LocalUserNum, int StatusId, ScriptArray!(Settings.LocalizedStringSetting)* LocalizedStringSettings, ScriptArray!(Settings.SettingsProperty)* Properties)
	{
		ubyte params[29];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = StatusId;
		*cast(ScriptArray!(Settings.LocalizedStringSetting)*)&params[8] = *LocalizedStringSettings;
		*cast(ScriptArray!(Settings.SettingsProperty)*)&params[20] = *Properties;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156876], params.ptr, cast(void*)0);
		*LocalizedStringSettings = *cast(ScriptArray!(Settings.LocalizedStringSetting)*)&params[8];
		*Properties = *cast(ScriptArray!(Settings.SettingsProperty)*)&params[20];
	}
	final bool ShowKeyboardUI(ubyte LocalUserNum, ScriptString TitleText, ScriptString DescriptionText, bool bIsPassword, bool bShouldValidate, ScriptString DefaultText, int MaxResultLength)
	{
		ubyte params[53];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = TitleText;
		*cast(ScriptString*)&params[16] = DescriptionText;
		*cast(bool*)&params[28] = bIsPassword;
		*cast(bool*)&params[32] = bShouldValidate;
		*cast(ScriptString*)&params[36] = DefaultText;
		*cast(int*)&params[48] = MaxResultLength;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156883], params.ptr, cast(void*)0);
		return *cast(bool*)&params[52];
	}
	final void AddKeyboardInputDoneDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* InputDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = InputDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156893], params.ptr, cast(void*)0);
	}
	final void ClearKeyboardInputDoneDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* InputDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = InputDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156895], params.ptr, cast(void*)0);
	}
	final ScriptString GetKeyboardInputResults(ubyte* bWasCanceled)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = *bWasCanceled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156897], params.ptr, cast(void*)0);
		*bWasCanceled = params[0];
		return *cast(ScriptString*)&params[4];
	}
	final bool AddFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId NewFriend, ScriptString Message)
	{
		ubyte params[25];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = NewFriend;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156900], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool AddFriendByName(ubyte LocalUserNum, ScriptString FriendName, ScriptString Message)
	{
		ubyte params[29];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = FriendName;
		*cast(ScriptString*)&params[16] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156905], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final void AddAddFriendByNameCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* FriendDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = FriendDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156911], params.ptr, cast(void*)0);
	}
	final void ClearAddFriendByNameCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* FriendDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = FriendDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156914], params.ptr, cast(void*)0);
	}
	final bool AcceptFriendInvite(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156917], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool DenyFriendInvite(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156921], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool RemoveFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId FormerFriend)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = FormerFriend;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156925], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void AddFriendInviteReceivedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* InviteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = InviteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156933], params.ptr, cast(void*)0);
	}
	final void ClearFriendInviteReceivedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* InviteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = InviteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156936], params.ptr, cast(void*)0);
	}
	final bool SendMessageToFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId Friend, ScriptString Message)
	{
		ubyte params[25];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = Friend;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156939], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool SendGameInviteToFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId Friend, ScriptString Text)
	{
		ubyte params[25];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = Friend;
		*cast(ScriptString*)&params[12] = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156944], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool SendGameInviteToFriends(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.UniqueNetId) Friends, ScriptString Text)
	{
		ubyte params[29];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4] = Friends;
		*cast(ScriptString*)&params[16] = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156949], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final void AddReceivedGameInviteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReceivedGameInviteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = ReceivedGameInviteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156957], params.ptr, cast(void*)0);
	}
	final void ClearReceivedGameInviteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReceivedGameInviteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = ReceivedGameInviteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156960], params.ptr, cast(void*)0);
	}
	final bool JoinFriendGame(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId Friend)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = Friend;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156963], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void AddJoinFriendGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* JoinFriendGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = JoinFriendGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156968], params.ptr, cast(void*)0);
	}
	final void ClearJoinFriendGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* JoinFriendGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = JoinFriendGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156970], params.ptr, cast(void*)0);
	}
	final void GetFriendMessages(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.OnlineFriendMessage)* FriendMessages)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriendMessage)*)&params[4] = *FriendMessages;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156972], params.ptr, cast(void*)0);
		*FriendMessages = *cast(ScriptArray!(OnlineSubsystem.OnlineFriendMessage)*)&params[4];
	}
	final void AddFriendMessageReceivedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* MessageDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = MessageDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156980], params.ptr, cast(void*)0);
	}
	final void ClearFriendMessageReceivedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* MessageDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = MessageDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156983], params.ptr, cast(void*)0);
	}
	final bool UnlockAchievement(ubyte LocalUserNum, int AchievementId)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = AchievementId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156986], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool ReadAchievements(ubyte LocalUserNum, int TitleId, bool bShouldReadText, bool bShouldReadImages)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = TitleId;
		*cast(bool*)&params[8] = bShouldReadText;
		*cast(bool*)&params[12] = bShouldReadImages;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156990], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final OnlineSubsystem.EOnlineEnumerationReadState GetAchievements(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.AchievementDetails)* Achievements, int TitleId)
	{
		ubyte params[24];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.AchievementDetails)*)&params[4] = *Achievements;
		*cast(int*)&params[16] = TitleId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[156996], params.ptr, cast(void*)0);
		*Achievements = *cast(ScriptArray!(OnlineSubsystem.AchievementDetails)*)&params[4];
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[20];
	}
	final void AddUnlockAchievementCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* UnlockAchievementCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = UnlockAchievementCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157003], params.ptr, cast(void*)0);
	}
	final void ClearUnlockAchievementCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* UnlockAchievementCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = UnlockAchievementCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157006], params.ptr, cast(void*)0);
	}
	final void AddReadAchievementsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadAchievementsCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = ReadAchievementsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157010], params.ptr, cast(void*)0);
	}
	final void ClearReadAchievementsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadAchievementsCompleteDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = ReadAchievementsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157013], params.ptr, cast(void*)0);
	}
	final bool DeleteMessage(ubyte LocalUserNum, int MessageIndex)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157016], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool ShowFriendsUI(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157020], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool ShowLoginUI(bool bShowOnlineOnly)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bShowOnlineOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157023], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SetNetworkNotificationPosition(OnlineSubsystem.ENetworkNotificationPosition NewPos)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.ENetworkNotificationPosition*)params.ptr = NewPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157026], params.ptr, cast(void*)0);
	}
	final int GetLocale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157028], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
