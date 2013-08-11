module UnrealScript.Engine.OnlinePlayerInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineProfileSettings;
import UnrealScript.Core.UInterface;
import UnrealScript.Engine.OnlinePlayerStorage;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlinePlayerInterface : UInterface
{
	final bool GetUniquePlayerId(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId* PlayerID)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = *PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7777], params.ptr, cast(void*)0);
		*PlayerID = *cast(OnlineSubsystem.UniqueNetId*)&params[4];
		return *cast(bool*)&params[12];
	}
	final OnlineSubsystem.ELoginStatus GetLoginStatus(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8383], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ELoginStatus*)&params[1];
	}
	final ScriptString GetPlayerNickname(ubyte LocalUserNum)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8385], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanPlayOnline(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9266], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanDownloadUserContent(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9381], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final bool AutoLogin()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17368], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21949], params.ptr, cast(void*)0);
	}
	final void OnReadAchievementsComplete(int TitleId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TitleId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21952], params.ptr, cast(void*)0);
	}
	final void OnUnlockAchievementComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21954], params.ptr, cast(void*)0);
	}
	final void OnFriendMessageReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId SendingPlayer, ScriptString SendingNick, ScriptString Message)
	{
		ubyte params[33];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = SendingPlayer;
		*cast(ScriptString*)&params[12] = SendingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21956], params.ptr, cast(void*)0);
	}
	final void OnJoinFriendGameComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21958], params.ptr, cast(void*)0);
	}
	final void OnReceivedGameInvite(ubyte LocalUserNum, ScriptString InviterName)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = InviterName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21960], params.ptr, cast(void*)0);
	}
	final void OnFriendInviteReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer, ScriptString RequestingNick, ScriptString Message)
	{
		ubyte params[33];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		*cast(ScriptString*)&params[12] = RequestingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21962], params.ptr, cast(void*)0);
	}
	final void OnAddFriendByNameComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21964], params.ptr, cast(void*)0);
	}
	final void OnKeyboardInputComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21966], params.ptr, cast(void*)0);
	}
	final void OnReadFriendsComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21968], params.ptr, cast(void*)0);
	}
	final void OnWritePlayerStorageComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21970], params.ptr, cast(void*)0);
	}
	final void OnReadPlayerStorageForNetIdComplete(OnlineSubsystem.UniqueNetId NetId, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = NetId;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21972], params.ptr, cast(void*)0);
	}
	final void OnReadPlayerStorageComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21974], params.ptr, cast(void*)0);
	}
	final void OnWriteProfileSettingsComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21976], params.ptr, cast(void*)0);
	}
	final void OnReadProfileSettingsComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21978], params.ptr, cast(void*)0);
	}
	final void OnLoginStatusChange(OnlineSubsystem.ELoginStatus NewStatus, OnlineSubsystem.UniqueNetId NewId)
	{
		ubyte params[9];
		params[] = 0;
		*cast(OnlineSubsystem.ELoginStatus*)params.ptr = NewStatus;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = NewId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21980], params.ptr, cast(void*)0);
	}
	final void OnLogoutCompleted(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21982], params.ptr, cast(void*)0);
	}
	final void OnLoginFailed(ubyte LocalUserNum, OnlineSubsystem.EOnlineServerConnectionStatus ErrorCode)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)&params[1] = ErrorCode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21984], params.ptr, cast(void*)0);
	}
	final void OnFriendsChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21986], cast(void*)0, cast(void*)0);
	}
	final void OnMutingChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21988], cast(void*)0, cast(void*)0);
	}
	final void OnLoginCancelled()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21990], cast(void*)0, cast(void*)0);
	}
	final bool ShowLoginUI(bool bShowOnlineOnly)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bShowOnlineOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21992], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool Login(ubyte LocalUserNum, ScriptString LoginName, ScriptString Password, bool bWantsLocalOnly)
	{
		ubyte params[33];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = LoginName;
		*cast(ScriptString*)&params[16] = Password;
		*cast(bool*)&params[28] = bWantsLocalOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21995], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	final void AddLoginFailedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LoginDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = LoginDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22003], params.ptr, cast(void*)0);
	}
	final void ClearLoginFailedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LoginDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = LoginDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22006], params.ptr, cast(void*)0);
	}
	final bool Logout(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22009], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22013], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22016], params.ptr, cast(void*)0);
	}
	final bool IsGuestLogin(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22023], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsLocalLogin(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22026], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanCommunicate(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22030], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanPurchaseContent(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22034], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanViewPlayerProfiles(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22037], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final OnlineSubsystem.EFeaturePrivilegeLevel CanShowPresenceInformation(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22040], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	final bool IsFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22043], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool AreAnyFriends(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.FriendsQuery)* Query)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.FriendsQuery)*)&params[4] = *Query;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22047], params.ptr, cast(void*)0);
		*Query = *cast(ScriptArray!(OnlineSubsystem.FriendsQuery)*)&params[4];
		return *cast(bool*)&params[16];
	}
	final bool IsMuted(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22052], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool ShowFriendsUI(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22056], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22059], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22061], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22065], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22068], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22071], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22073], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22075], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22077], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22079], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22082], params.ptr, cast(void*)0);
	}
	final bool ReadProfileSettings(ubyte LocalUserNum, OnlineProfileSettings ProfileSettings)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineProfileSettings*)&params[4] = ProfileSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22085], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22091], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22094], params.ptr, cast(void*)0);
	}
	final OnlineProfileSettings GetProfileSettings(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22097], params.ptr, cast(void*)0);
		return *cast(OnlineProfileSettings*)&params[4];
	}
	final bool WriteProfileSettings(ubyte LocalUserNum, OnlineProfileSettings ProfileSettings)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineProfileSettings*)&params[4] = ProfileSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22100], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22106], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22109], params.ptr, cast(void*)0);
	}
	final bool ReadPlayerStorage(ubyte LocalUserNum, OnlinePlayerStorage PlayerStorage, int DeviceID)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlinePlayerStorage*)&params[4] = PlayerStorage;
		*cast(int*)&params[8] = DeviceID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22112], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22119], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22122], params.ptr, cast(void*)0);
	}
	final bool ReadPlayerStorageForNetId(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId NetId, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = NetId;
		*cast(OnlinePlayerStorage*)&params[12] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22125], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22132], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22135], params.ptr, cast(void*)0);
	}
	final OnlinePlayerStorage GetPlayerStorage(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22138], params.ptr, cast(void*)0);
		return *cast(OnlinePlayerStorage*)&params[4];
	}
	final bool WritePlayerStorage(ubyte LocalUserNum, OnlinePlayerStorage PlayerStorage, int DeviceID)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlinePlayerStorage*)&params[4] = PlayerStorage;
		*cast(int*)&params[8] = DeviceID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22141], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22148], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22151], params.ptr, cast(void*)0);
	}
	final bool ReadFriendsList(ubyte LocalUserNum, int Count, int StartingAt)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = Count;
		*cast(int*)&params[8] = StartingAt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22154], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22160], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22163], params.ptr, cast(void*)0);
	}
	final OnlineSubsystem.EOnlineEnumerationReadState GetFriendsList(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.OnlineFriend)* Friends, int Count, int StartingAt)
	{
		ubyte params[28];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4] = *Friends;
		*cast(int*)&params[16] = Count;
		*cast(int*)&params[20] = StartingAt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22166], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22173], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22180], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22190], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22192], params.ptr, cast(void*)0);
	}
	final ScriptString GetKeyboardInputResults(ubyte* bWasCanceled)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = *bWasCanceled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22194], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22197], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool AddFriendByName(ubyte LocalUserNum, ScriptString FriendName, ScriptString Message)
	{
		ubyte params[29];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = FriendName;
		*cast(ScriptString*)&params[16] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22202], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22208], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22211], params.ptr, cast(void*)0);
	}
	final bool AcceptFriendInvite(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22214], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool DenyFriendInvite(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22218], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool RemoveFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId FormerFriend)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = FormerFriend;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22222], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22230], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22233], params.ptr, cast(void*)0);
	}
	final bool SendMessageToFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId Friend, ScriptString Message)
	{
		ubyte params[25];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = Friend;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22236], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool SendGameInviteToFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId Friend, ScriptString Text)
	{
		ubyte params[25];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = Friend;
		*cast(ScriptString*)&params[12] = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22241], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool SendGameInviteToFriends(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.UniqueNetId) Friends, ScriptString Text)
	{
		ubyte params[29];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4] = Friends;
		*cast(ScriptString*)&params[16] = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22246], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22254], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22257], params.ptr, cast(void*)0);
	}
	final bool JoinFriendGame(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId Friend)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = Friend;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22260], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22265], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22267], params.ptr, cast(void*)0);
	}
	final void GetFriendMessages(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.OnlineFriendMessage)* FriendMessages)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriendMessage)*)&params[4] = *FriendMessages;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22269], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22277], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22280], params.ptr, cast(void*)0);
	}
	final bool DeleteMessage(ubyte LocalUserNum, int MessageIndex)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22283], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool UnlockAchievement(ubyte LocalUserNum, int AchievementId)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = AchievementId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22287], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22292], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22295], params.ptr, cast(void*)0);
	}
	final bool ReadAchievements(ubyte LocalUserNum, int TitleId, bool bShouldReadText, bool bShouldReadImages)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = TitleId;
		*cast(bool*)&params[8] = bShouldReadText;
		*cast(bool*)&params[12] = bShouldReadImages;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22298], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22305], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22308], params.ptr, cast(void*)0);
	}
	final OnlineSubsystem.EOnlineEnumerationReadState GetAchievements(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.AchievementDetails)* Achievements, int TitleId)
	{
		ubyte params[24];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.AchievementDetails)*)&params[4] = *Achievements;
		*cast(int*)&params[16] = TitleId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22311], params.ptr, cast(void*)0);
		*Achievements = *cast(ScriptArray!(OnlineSubsystem.AchievementDetails)*)&params[4];
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[20];
	}
}
