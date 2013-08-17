module UnrealScript.Engine.OnlinePlayerInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineProfileSettings;
import UnrealScript.Core.UInterface;
import UnrealScript.Engine.OnlinePlayerStorage;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlinePlayerInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.OnlinePlayerInterface")); }
	private static __gshared OnlinePlayerInterface mDefaultProperties;
	@property final static OnlinePlayerInterface DefaultProperties() { mixin(MGDPC("OnlinePlayerInterface", "OnlinePlayerInterface Engine.Default__OnlinePlayerInterface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetUniquePlayerId;
			ScriptFunction mGetLoginStatus;
			ScriptFunction mGetPlayerNickname;
			ScriptFunction mCanPlayOnline;
			ScriptFunction mCanDownloadUserContent;
			ScriptFunction mAutoLogin;
			ScriptFunction mOnLoginChange;
			ScriptFunction mOnReadAchievementsComplete;
			ScriptFunction mOnUnlockAchievementComplete;
			ScriptFunction mOnFriendMessageReceived;
			ScriptFunction mOnJoinFriendGameComplete;
			ScriptFunction mOnReceivedGameInvite;
			ScriptFunction mOnFriendInviteReceived;
			ScriptFunction mOnAddFriendByNameComplete;
			ScriptFunction mOnKeyboardInputComplete;
			ScriptFunction mOnReadFriendsComplete;
			ScriptFunction mOnWritePlayerStorageComplete;
			ScriptFunction mOnReadPlayerStorageForNetIdComplete;
			ScriptFunction mOnReadPlayerStorageComplete;
			ScriptFunction mOnWriteProfileSettingsComplete;
			ScriptFunction mOnReadProfileSettingsComplete;
			ScriptFunction mOnLoginStatusChange;
			ScriptFunction mOnLogoutCompleted;
			ScriptFunction mOnLoginFailed;
			ScriptFunction mOnFriendsChange;
			ScriptFunction mOnMutingChange;
			ScriptFunction mOnLoginCancelled;
			ScriptFunction mShowLoginUI;
			ScriptFunction mLogin;
			ScriptFunction mAddLoginFailedDelegate;
			ScriptFunction mClearLoginFailedDelegate;
			ScriptFunction mLogout;
			ScriptFunction mAddLogoutCompletedDelegate;
			ScriptFunction mClearLogoutCompletedDelegate;
			ScriptFunction mIsGuestLogin;
			ScriptFunction mIsLocalLogin;
			ScriptFunction mCanCommunicate;
			ScriptFunction mCanPurchaseContent;
			ScriptFunction mCanViewPlayerProfiles;
			ScriptFunction mCanShowPresenceInformation;
			ScriptFunction mIsFriend;
			ScriptFunction mAreAnyFriends;
			ScriptFunction mIsMuted;
			ScriptFunction mShowFriendsUI;
			ScriptFunction mAddLoginChangeDelegate;
			ScriptFunction mClearLoginChangeDelegate;
			ScriptFunction mAddLoginStatusChangeDelegate;
			ScriptFunction mClearLoginStatusChangeDelegate;
			ScriptFunction mAddLoginCancelledDelegate;
			ScriptFunction mClearLoginCancelledDelegate;
			ScriptFunction mAddMutingChangeDelegate;
			ScriptFunction mClearMutingChangeDelegate;
			ScriptFunction mAddFriendsChangeDelegate;
			ScriptFunction mClearFriendsChangeDelegate;
			ScriptFunction mReadProfileSettings;
			ScriptFunction mAddReadProfileSettingsCompleteDelegate;
			ScriptFunction mClearReadProfileSettingsCompleteDelegate;
			ScriptFunction mGetProfileSettings;
			ScriptFunction mWriteProfileSettings;
			ScriptFunction mAddWriteProfileSettingsCompleteDelegate;
			ScriptFunction mClearWriteProfileSettingsCompleteDelegate;
			ScriptFunction mReadPlayerStorage;
			ScriptFunction mAddReadPlayerStorageCompleteDelegate;
			ScriptFunction mClearReadPlayerStorageCompleteDelegate;
			ScriptFunction mReadPlayerStorageForNetId;
			ScriptFunction mAddReadPlayerStorageForNetIdCompleteDelegate;
			ScriptFunction mClearReadPlayerStorageForNetIdCompleteDelegate;
			ScriptFunction mGetPlayerStorage;
			ScriptFunction mWritePlayerStorage;
			ScriptFunction mAddWritePlayerStorageCompleteDelegate;
			ScriptFunction mClearWritePlayerStorageCompleteDelegate;
			ScriptFunction mReadFriendsList;
			ScriptFunction mAddReadFriendsCompleteDelegate;
			ScriptFunction mClearReadFriendsCompleteDelegate;
			ScriptFunction mGetFriendsList;
			ScriptFunction mSetOnlineStatus;
			ScriptFunction mShowKeyboardUI;
			ScriptFunction mAddKeyboardInputDoneDelegate;
			ScriptFunction mClearKeyboardInputDoneDelegate;
			ScriptFunction mGetKeyboardInputResults;
			ScriptFunction mAddFriend;
			ScriptFunction mAddFriendByName;
			ScriptFunction mAddAddFriendByNameCompleteDelegate;
			ScriptFunction mClearAddFriendByNameCompleteDelegate;
			ScriptFunction mAcceptFriendInvite;
			ScriptFunction mDenyFriendInvite;
			ScriptFunction mRemoveFriend;
			ScriptFunction mAddFriendInviteReceivedDelegate;
			ScriptFunction mClearFriendInviteReceivedDelegate;
			ScriptFunction mSendMessageToFriend;
			ScriptFunction mSendGameInviteToFriend;
			ScriptFunction mSendGameInviteToFriends;
			ScriptFunction mAddReceivedGameInviteDelegate;
			ScriptFunction mClearReceivedGameInviteDelegate;
			ScriptFunction mJoinFriendGame;
			ScriptFunction mAddJoinFriendGameCompleteDelegate;
			ScriptFunction mClearJoinFriendGameCompleteDelegate;
			ScriptFunction mGetFriendMessages;
			ScriptFunction mAddFriendMessageReceivedDelegate;
			ScriptFunction mClearFriendMessageReceivedDelegate;
			ScriptFunction mDeleteMessage;
			ScriptFunction mUnlockAchievement;
			ScriptFunction mAddUnlockAchievementCompleteDelegate;
			ScriptFunction mClearUnlockAchievementCompleteDelegate;
			ScriptFunction mReadAchievements;
			ScriptFunction mAddReadAchievementsCompleteDelegate;
			ScriptFunction mClearReadAchievementsCompleteDelegate;
			ScriptFunction mGetAchievements;
		}
		public @property static final
		{
			ScriptFunction GetUniquePlayerId() { mixin(MGF("mGetUniquePlayerId", "Function Engine.OnlinePlayerInterface.GetUniquePlayerId")); }
			ScriptFunction GetLoginStatus() { mixin(MGF("mGetLoginStatus", "Function Engine.OnlinePlayerInterface.GetLoginStatus")); }
			ScriptFunction GetPlayerNickname() { mixin(MGF("mGetPlayerNickname", "Function Engine.OnlinePlayerInterface.GetPlayerNickname")); }
			ScriptFunction CanPlayOnline() { mixin(MGF("mCanPlayOnline", "Function Engine.OnlinePlayerInterface.CanPlayOnline")); }
			ScriptFunction CanDownloadUserContent() { mixin(MGF("mCanDownloadUserContent", "Function Engine.OnlinePlayerInterface.CanDownloadUserContent")); }
			ScriptFunction AutoLogin() { mixin(MGF("mAutoLogin", "Function Engine.OnlinePlayerInterface.AutoLogin")); }
			ScriptFunction OnLoginChange() { mixin(MGF("mOnLoginChange", "Function Engine.OnlinePlayerInterface.OnLoginChange")); }
			ScriptFunction OnReadAchievementsComplete() { mixin(MGF("mOnReadAchievementsComplete", "Function Engine.OnlinePlayerInterface.OnReadAchievementsComplete")); }
			ScriptFunction OnUnlockAchievementComplete() { mixin(MGF("mOnUnlockAchievementComplete", "Function Engine.OnlinePlayerInterface.OnUnlockAchievementComplete")); }
			ScriptFunction OnFriendMessageReceived() { mixin(MGF("mOnFriendMessageReceived", "Function Engine.OnlinePlayerInterface.OnFriendMessageReceived")); }
			ScriptFunction OnJoinFriendGameComplete() { mixin(MGF("mOnJoinFriendGameComplete", "Function Engine.OnlinePlayerInterface.OnJoinFriendGameComplete")); }
			ScriptFunction OnReceivedGameInvite() { mixin(MGF("mOnReceivedGameInvite", "Function Engine.OnlinePlayerInterface.OnReceivedGameInvite")); }
			ScriptFunction OnFriendInviteReceived() { mixin(MGF("mOnFriendInviteReceived", "Function Engine.OnlinePlayerInterface.OnFriendInviteReceived")); }
			ScriptFunction OnAddFriendByNameComplete() { mixin(MGF("mOnAddFriendByNameComplete", "Function Engine.OnlinePlayerInterface.OnAddFriendByNameComplete")); }
			ScriptFunction OnKeyboardInputComplete() { mixin(MGF("mOnKeyboardInputComplete", "Function Engine.OnlinePlayerInterface.OnKeyboardInputComplete")); }
			ScriptFunction OnReadFriendsComplete() { mixin(MGF("mOnReadFriendsComplete", "Function Engine.OnlinePlayerInterface.OnReadFriendsComplete")); }
			ScriptFunction OnWritePlayerStorageComplete() { mixin(MGF("mOnWritePlayerStorageComplete", "Function Engine.OnlinePlayerInterface.OnWritePlayerStorageComplete")); }
			ScriptFunction OnReadPlayerStorageForNetIdComplete() { mixin(MGF("mOnReadPlayerStorageForNetIdComplete", "Function Engine.OnlinePlayerInterface.OnReadPlayerStorageForNetIdComplete")); }
			ScriptFunction OnReadPlayerStorageComplete() { mixin(MGF("mOnReadPlayerStorageComplete", "Function Engine.OnlinePlayerInterface.OnReadPlayerStorageComplete")); }
			ScriptFunction OnWriteProfileSettingsComplete() { mixin(MGF("mOnWriteProfileSettingsComplete", "Function Engine.OnlinePlayerInterface.OnWriteProfileSettingsComplete")); }
			ScriptFunction OnReadProfileSettingsComplete() { mixin(MGF("mOnReadProfileSettingsComplete", "Function Engine.OnlinePlayerInterface.OnReadProfileSettingsComplete")); }
			ScriptFunction OnLoginStatusChange() { mixin(MGF("mOnLoginStatusChange", "Function Engine.OnlinePlayerInterface.OnLoginStatusChange")); }
			ScriptFunction OnLogoutCompleted() { mixin(MGF("mOnLogoutCompleted", "Function Engine.OnlinePlayerInterface.OnLogoutCompleted")); }
			ScriptFunction OnLoginFailed() { mixin(MGF("mOnLoginFailed", "Function Engine.OnlinePlayerInterface.OnLoginFailed")); }
			ScriptFunction OnFriendsChange() { mixin(MGF("mOnFriendsChange", "Function Engine.OnlinePlayerInterface.OnFriendsChange")); }
			ScriptFunction OnMutingChange() { mixin(MGF("mOnMutingChange", "Function Engine.OnlinePlayerInterface.OnMutingChange")); }
			ScriptFunction OnLoginCancelled() { mixin(MGF("mOnLoginCancelled", "Function Engine.OnlinePlayerInterface.OnLoginCancelled")); }
			ScriptFunction ShowLoginUI() { mixin(MGF("mShowLoginUI", "Function Engine.OnlinePlayerInterface.ShowLoginUI")); }
			ScriptFunction Login() { mixin(MGF("mLogin", "Function Engine.OnlinePlayerInterface.Login")); }
			ScriptFunction AddLoginFailedDelegate() { mixin(MGF("mAddLoginFailedDelegate", "Function Engine.OnlinePlayerInterface.AddLoginFailedDelegate")); }
			ScriptFunction ClearLoginFailedDelegate() { mixin(MGF("mClearLoginFailedDelegate", "Function Engine.OnlinePlayerInterface.ClearLoginFailedDelegate")); }
			ScriptFunction Logout() { mixin(MGF("mLogout", "Function Engine.OnlinePlayerInterface.Logout")); }
			ScriptFunction AddLogoutCompletedDelegate() { mixin(MGF("mAddLogoutCompletedDelegate", "Function Engine.OnlinePlayerInterface.AddLogoutCompletedDelegate")); }
			ScriptFunction ClearLogoutCompletedDelegate() { mixin(MGF("mClearLogoutCompletedDelegate", "Function Engine.OnlinePlayerInterface.ClearLogoutCompletedDelegate")); }
			ScriptFunction IsGuestLogin() { mixin(MGF("mIsGuestLogin", "Function Engine.OnlinePlayerInterface.IsGuestLogin")); }
			ScriptFunction IsLocalLogin() { mixin(MGF("mIsLocalLogin", "Function Engine.OnlinePlayerInterface.IsLocalLogin")); }
			ScriptFunction CanCommunicate() { mixin(MGF("mCanCommunicate", "Function Engine.OnlinePlayerInterface.CanCommunicate")); }
			ScriptFunction CanPurchaseContent() { mixin(MGF("mCanPurchaseContent", "Function Engine.OnlinePlayerInterface.CanPurchaseContent")); }
			ScriptFunction CanViewPlayerProfiles() { mixin(MGF("mCanViewPlayerProfiles", "Function Engine.OnlinePlayerInterface.CanViewPlayerProfiles")); }
			ScriptFunction CanShowPresenceInformation() { mixin(MGF("mCanShowPresenceInformation", "Function Engine.OnlinePlayerInterface.CanShowPresenceInformation")); }
			ScriptFunction IsFriend() { mixin(MGF("mIsFriend", "Function Engine.OnlinePlayerInterface.IsFriend")); }
			ScriptFunction AreAnyFriends() { mixin(MGF("mAreAnyFriends", "Function Engine.OnlinePlayerInterface.AreAnyFriends")); }
			ScriptFunction IsMuted() { mixin(MGF("mIsMuted", "Function Engine.OnlinePlayerInterface.IsMuted")); }
			ScriptFunction ShowFriendsUI() { mixin(MGF("mShowFriendsUI", "Function Engine.OnlinePlayerInterface.ShowFriendsUI")); }
			ScriptFunction AddLoginChangeDelegate() { mixin(MGF("mAddLoginChangeDelegate", "Function Engine.OnlinePlayerInterface.AddLoginChangeDelegate")); }
			ScriptFunction ClearLoginChangeDelegate() { mixin(MGF("mClearLoginChangeDelegate", "Function Engine.OnlinePlayerInterface.ClearLoginChangeDelegate")); }
			ScriptFunction AddLoginStatusChangeDelegate() { mixin(MGF("mAddLoginStatusChangeDelegate", "Function Engine.OnlinePlayerInterface.AddLoginStatusChangeDelegate")); }
			ScriptFunction ClearLoginStatusChangeDelegate() { mixin(MGF("mClearLoginStatusChangeDelegate", "Function Engine.OnlinePlayerInterface.ClearLoginStatusChangeDelegate")); }
			ScriptFunction AddLoginCancelledDelegate() { mixin(MGF("mAddLoginCancelledDelegate", "Function Engine.OnlinePlayerInterface.AddLoginCancelledDelegate")); }
			ScriptFunction ClearLoginCancelledDelegate() { mixin(MGF("mClearLoginCancelledDelegate", "Function Engine.OnlinePlayerInterface.ClearLoginCancelledDelegate")); }
			ScriptFunction AddMutingChangeDelegate() { mixin(MGF("mAddMutingChangeDelegate", "Function Engine.OnlinePlayerInterface.AddMutingChangeDelegate")); }
			ScriptFunction ClearMutingChangeDelegate() { mixin(MGF("mClearMutingChangeDelegate", "Function Engine.OnlinePlayerInterface.ClearMutingChangeDelegate")); }
			ScriptFunction AddFriendsChangeDelegate() { mixin(MGF("mAddFriendsChangeDelegate", "Function Engine.OnlinePlayerInterface.AddFriendsChangeDelegate")); }
			ScriptFunction ClearFriendsChangeDelegate() { mixin(MGF("mClearFriendsChangeDelegate", "Function Engine.OnlinePlayerInterface.ClearFriendsChangeDelegate")); }
			ScriptFunction ReadProfileSettings() { mixin(MGF("mReadProfileSettings", "Function Engine.OnlinePlayerInterface.ReadProfileSettings")); }
			ScriptFunction AddReadProfileSettingsCompleteDelegate() { mixin(MGF("mAddReadProfileSettingsCompleteDelegate", "Function Engine.OnlinePlayerInterface.AddReadProfileSettingsCompleteDelegate")); }
			ScriptFunction ClearReadProfileSettingsCompleteDelegate() { mixin(MGF("mClearReadProfileSettingsCompleteDelegate", "Function Engine.OnlinePlayerInterface.ClearReadProfileSettingsCompleteDelegate")); }
			ScriptFunction GetProfileSettings() { mixin(MGF("mGetProfileSettings", "Function Engine.OnlinePlayerInterface.GetProfileSettings")); }
			ScriptFunction WriteProfileSettings() { mixin(MGF("mWriteProfileSettings", "Function Engine.OnlinePlayerInterface.WriteProfileSettings")); }
			ScriptFunction AddWriteProfileSettingsCompleteDelegate() { mixin(MGF("mAddWriteProfileSettingsCompleteDelegate", "Function Engine.OnlinePlayerInterface.AddWriteProfileSettingsCompleteDelegate")); }
			ScriptFunction ClearWriteProfileSettingsCompleteDelegate() { mixin(MGF("mClearWriteProfileSettingsCompleteDelegate", "Function Engine.OnlinePlayerInterface.ClearWriteProfileSettingsCompleteDelegate")); }
			ScriptFunction ReadPlayerStorage() { mixin(MGF("mReadPlayerStorage", "Function Engine.OnlinePlayerInterface.ReadPlayerStorage")); }
			ScriptFunction AddReadPlayerStorageCompleteDelegate() { mixin(MGF("mAddReadPlayerStorageCompleteDelegate", "Function Engine.OnlinePlayerInterface.AddReadPlayerStorageCompleteDelegate")); }
			ScriptFunction ClearReadPlayerStorageCompleteDelegate() { mixin(MGF("mClearReadPlayerStorageCompleteDelegate", "Function Engine.OnlinePlayerInterface.ClearReadPlayerStorageCompleteDelegate")); }
			ScriptFunction ReadPlayerStorageForNetId() { mixin(MGF("mReadPlayerStorageForNetId", "Function Engine.OnlinePlayerInterface.ReadPlayerStorageForNetId")); }
			ScriptFunction AddReadPlayerStorageForNetIdCompleteDelegate() { mixin(MGF("mAddReadPlayerStorageForNetIdCompleteDelegate", "Function Engine.OnlinePlayerInterface.AddReadPlayerStorageForNetIdCompleteDelegate")); }
			ScriptFunction ClearReadPlayerStorageForNetIdCompleteDelegate() { mixin(MGF("mClearReadPlayerStorageForNetIdCompleteDelegate", "Function Engine.OnlinePlayerInterface.ClearReadPlayerStorageForNetIdCompleteDelegate")); }
			ScriptFunction GetPlayerStorage() { mixin(MGF("mGetPlayerStorage", "Function Engine.OnlinePlayerInterface.GetPlayerStorage")); }
			ScriptFunction WritePlayerStorage() { mixin(MGF("mWritePlayerStorage", "Function Engine.OnlinePlayerInterface.WritePlayerStorage")); }
			ScriptFunction AddWritePlayerStorageCompleteDelegate() { mixin(MGF("mAddWritePlayerStorageCompleteDelegate", "Function Engine.OnlinePlayerInterface.AddWritePlayerStorageCompleteDelegate")); }
			ScriptFunction ClearWritePlayerStorageCompleteDelegate() { mixin(MGF("mClearWritePlayerStorageCompleteDelegate", "Function Engine.OnlinePlayerInterface.ClearWritePlayerStorageCompleteDelegate")); }
			ScriptFunction ReadFriendsList() { mixin(MGF("mReadFriendsList", "Function Engine.OnlinePlayerInterface.ReadFriendsList")); }
			ScriptFunction AddReadFriendsCompleteDelegate() { mixin(MGF("mAddReadFriendsCompleteDelegate", "Function Engine.OnlinePlayerInterface.AddReadFriendsCompleteDelegate")); }
			ScriptFunction ClearReadFriendsCompleteDelegate() { mixin(MGF("mClearReadFriendsCompleteDelegate", "Function Engine.OnlinePlayerInterface.ClearReadFriendsCompleteDelegate")); }
			ScriptFunction GetFriendsList() { mixin(MGF("mGetFriendsList", "Function Engine.OnlinePlayerInterface.GetFriendsList")); }
			ScriptFunction SetOnlineStatus() { mixin(MGF("mSetOnlineStatus", "Function Engine.OnlinePlayerInterface.SetOnlineStatus")); }
			ScriptFunction ShowKeyboardUI() { mixin(MGF("mShowKeyboardUI", "Function Engine.OnlinePlayerInterface.ShowKeyboardUI")); }
			ScriptFunction AddKeyboardInputDoneDelegate() { mixin(MGF("mAddKeyboardInputDoneDelegate", "Function Engine.OnlinePlayerInterface.AddKeyboardInputDoneDelegate")); }
			ScriptFunction ClearKeyboardInputDoneDelegate() { mixin(MGF("mClearKeyboardInputDoneDelegate", "Function Engine.OnlinePlayerInterface.ClearKeyboardInputDoneDelegate")); }
			ScriptFunction GetKeyboardInputResults() { mixin(MGF("mGetKeyboardInputResults", "Function Engine.OnlinePlayerInterface.GetKeyboardInputResults")); }
			ScriptFunction AddFriend() { mixin(MGF("mAddFriend", "Function Engine.OnlinePlayerInterface.AddFriend")); }
			ScriptFunction AddFriendByName() { mixin(MGF("mAddFriendByName", "Function Engine.OnlinePlayerInterface.AddFriendByName")); }
			ScriptFunction AddAddFriendByNameCompleteDelegate() { mixin(MGF("mAddAddFriendByNameCompleteDelegate", "Function Engine.OnlinePlayerInterface.AddAddFriendByNameCompleteDelegate")); }
			ScriptFunction ClearAddFriendByNameCompleteDelegate() { mixin(MGF("mClearAddFriendByNameCompleteDelegate", "Function Engine.OnlinePlayerInterface.ClearAddFriendByNameCompleteDelegate")); }
			ScriptFunction AcceptFriendInvite() { mixin(MGF("mAcceptFriendInvite", "Function Engine.OnlinePlayerInterface.AcceptFriendInvite")); }
			ScriptFunction DenyFriendInvite() { mixin(MGF("mDenyFriendInvite", "Function Engine.OnlinePlayerInterface.DenyFriendInvite")); }
			ScriptFunction RemoveFriend() { mixin(MGF("mRemoveFriend", "Function Engine.OnlinePlayerInterface.RemoveFriend")); }
			ScriptFunction AddFriendInviteReceivedDelegate() { mixin(MGF("mAddFriendInviteReceivedDelegate", "Function Engine.OnlinePlayerInterface.AddFriendInviteReceivedDelegate")); }
			ScriptFunction ClearFriendInviteReceivedDelegate() { mixin(MGF("mClearFriendInviteReceivedDelegate", "Function Engine.OnlinePlayerInterface.ClearFriendInviteReceivedDelegate")); }
			ScriptFunction SendMessageToFriend() { mixin(MGF("mSendMessageToFriend", "Function Engine.OnlinePlayerInterface.SendMessageToFriend")); }
			ScriptFunction SendGameInviteToFriend() { mixin(MGF("mSendGameInviteToFriend", "Function Engine.OnlinePlayerInterface.SendGameInviteToFriend")); }
			ScriptFunction SendGameInviteToFriends() { mixin(MGF("mSendGameInviteToFriends", "Function Engine.OnlinePlayerInterface.SendGameInviteToFriends")); }
			ScriptFunction AddReceivedGameInviteDelegate() { mixin(MGF("mAddReceivedGameInviteDelegate", "Function Engine.OnlinePlayerInterface.AddReceivedGameInviteDelegate")); }
			ScriptFunction ClearReceivedGameInviteDelegate() { mixin(MGF("mClearReceivedGameInviteDelegate", "Function Engine.OnlinePlayerInterface.ClearReceivedGameInviteDelegate")); }
			ScriptFunction JoinFriendGame() { mixin(MGF("mJoinFriendGame", "Function Engine.OnlinePlayerInterface.JoinFriendGame")); }
			ScriptFunction AddJoinFriendGameCompleteDelegate() { mixin(MGF("mAddJoinFriendGameCompleteDelegate", "Function Engine.OnlinePlayerInterface.AddJoinFriendGameCompleteDelegate")); }
			ScriptFunction ClearJoinFriendGameCompleteDelegate() { mixin(MGF("mClearJoinFriendGameCompleteDelegate", "Function Engine.OnlinePlayerInterface.ClearJoinFriendGameCompleteDelegate")); }
			ScriptFunction GetFriendMessages() { mixin(MGF("mGetFriendMessages", "Function Engine.OnlinePlayerInterface.GetFriendMessages")); }
			ScriptFunction AddFriendMessageReceivedDelegate() { mixin(MGF("mAddFriendMessageReceivedDelegate", "Function Engine.OnlinePlayerInterface.AddFriendMessageReceivedDelegate")); }
			ScriptFunction ClearFriendMessageReceivedDelegate() { mixin(MGF("mClearFriendMessageReceivedDelegate", "Function Engine.OnlinePlayerInterface.ClearFriendMessageReceivedDelegate")); }
			ScriptFunction DeleteMessage() { mixin(MGF("mDeleteMessage", "Function Engine.OnlinePlayerInterface.DeleteMessage")); }
			ScriptFunction UnlockAchievement() { mixin(MGF("mUnlockAchievement", "Function Engine.OnlinePlayerInterface.UnlockAchievement")); }
			ScriptFunction AddUnlockAchievementCompleteDelegate() { mixin(MGF("mAddUnlockAchievementCompleteDelegate", "Function Engine.OnlinePlayerInterface.AddUnlockAchievementCompleteDelegate")); }
			ScriptFunction ClearUnlockAchievementCompleteDelegate() { mixin(MGF("mClearUnlockAchievementCompleteDelegate", "Function Engine.OnlinePlayerInterface.ClearUnlockAchievementCompleteDelegate")); }
			ScriptFunction ReadAchievements() { mixin(MGF("mReadAchievements", "Function Engine.OnlinePlayerInterface.ReadAchievements")); }
			ScriptFunction AddReadAchievementsCompleteDelegate() { mixin(MGF("mAddReadAchievementsCompleteDelegate", "Function Engine.OnlinePlayerInterface.AddReadAchievementsCompleteDelegate")); }
			ScriptFunction ClearReadAchievementsCompleteDelegate() { mixin(MGF("mClearReadAchievementsCompleteDelegate", "Function Engine.OnlinePlayerInterface.ClearReadAchievementsCompleteDelegate")); }
			ScriptFunction GetAchievements() { mixin(MGF("mGetAchievements", "Function Engine.OnlinePlayerInterface.GetAchievements")); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadAchievementsComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnUnlockAchievementComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnFriendMessageReceived__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnJoinFriendGameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReceivedGameInvite__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnFriendInviteReceived__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnAddFriendByNameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnKeyboardInputComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadFriendsComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnWritePlayerStorageComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadPlayerStorageForNetIdComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadPlayerStorageComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnWriteProfileSettingsComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadProfileSettingsComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLoginStatusChange__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLogoutCompleted__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLoginFailed__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnFriendsChange__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnMutingChange__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLoginCancelled__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLoginChange__Delegate'!
	}
final:
	bool GetUniquePlayerId(ubyte LocalUserNum, ref OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUniquePlayerId, params.ptr, cast(void*)0);
		PlayerID = *cast(OnlineSubsystem.UniqueNetId*)&params[4];
		return *cast(bool*)&params[12];
	}
	OnlineSubsystem.ELoginStatus GetLoginStatus(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLoginStatus, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ELoginStatus*)&params[1];
	}
	ScriptString GetPlayerNickname(ubyte LocalUserNum)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerNickname, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	OnlineSubsystem.EFeaturePrivilegeLevel CanPlayOnline(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanPlayOnline, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	OnlineSubsystem.EFeaturePrivilegeLevel CanDownloadUserContent(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanDownloadUserContent, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	bool AutoLogin()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AutoLogin, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginChange, params.ptr, cast(void*)0);
	}
	void OnReadAchievementsComplete(int TitleId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TitleId;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadAchievementsComplete, params.ptr, cast(void*)0);
	}
	void OnUnlockAchievementComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUnlockAchievementComplete, params.ptr, cast(void*)0);
	}
	void OnFriendMessageReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId SendingPlayer, ScriptString SendingNick, ScriptString Message)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = SendingPlayer;
		*cast(ScriptString*)&params[12] = SendingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFriendMessageReceived, params.ptr, cast(void*)0);
	}
	void OnJoinFriendGameComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnJoinFriendGameComplete, params.ptr, cast(void*)0);
	}
	void OnReceivedGameInvite(ubyte LocalUserNum, ScriptString InviterName)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = InviterName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReceivedGameInvite, params.ptr, cast(void*)0);
	}
	void OnFriendInviteReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer, ScriptString RequestingNick, ScriptString Message)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		*cast(ScriptString*)&params[12] = RequestingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFriendInviteReceived, params.ptr, cast(void*)0);
	}
	void OnAddFriendByNameComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAddFriendByNameComplete, params.ptr, cast(void*)0);
	}
	void OnKeyboardInputComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnKeyboardInputComplete, params.ptr, cast(void*)0);
	}
	void OnReadFriendsComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadFriendsComplete, params.ptr, cast(void*)0);
	}
	void OnWritePlayerStorageComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnWritePlayerStorageComplete, params.ptr, cast(void*)0);
	}
	void OnReadPlayerStorageForNetIdComplete(OnlineSubsystem.UniqueNetId NetId, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = NetId;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadPlayerStorageForNetIdComplete, params.ptr, cast(void*)0);
	}
	void OnReadPlayerStorageComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadPlayerStorageComplete, params.ptr, cast(void*)0);
	}
	void OnWriteProfileSettingsComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnWriteProfileSettingsComplete, params.ptr, cast(void*)0);
	}
	void OnReadProfileSettingsComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadProfileSettingsComplete, params.ptr, cast(void*)0);
	}
	void OnLoginStatusChange(OnlineSubsystem.ELoginStatus NewStatus, OnlineSubsystem.UniqueNetId NewId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.ELoginStatus*)params.ptr = NewStatus;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = NewId;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginStatusChange, params.ptr, cast(void*)0);
	}
	void OnLogoutCompleted(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLogoutCompleted, params.ptr, cast(void*)0);
	}
	void OnLoginFailed(ubyte LocalUserNum, OnlineSubsystem.EOnlineServerConnectionStatus ErrorCode)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)&params[1] = ErrorCode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginFailed, params.ptr, cast(void*)0);
	}
	void OnFriendsChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFriendsChange, cast(void*)0, cast(void*)0);
	}
	void OnMutingChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMutingChange, cast(void*)0, cast(void*)0);
	}
	void OnLoginCancelled()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginCancelled, cast(void*)0, cast(void*)0);
	}
	bool ShowLoginUI(bool* bShowOnlineOnly = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bShowOnlineOnly !is null)
			*cast(bool*)params.ptr = *bShowOnlineOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowLoginUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool Login(ubyte LocalUserNum, ScriptString LoginName, ScriptString Password, bool* bWantsLocalOnly = null)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = LoginName;
		*cast(ScriptString*)&params[16] = Password;
		if (bWantsLocalOnly !is null)
			*cast(bool*)&params[28] = *bWantsLocalOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.Login, params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	void AddLoginFailedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LoginDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = LoginDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddLoginFailedDelegate, params.ptr, cast(void*)0);
	}
	void ClearLoginFailedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LoginDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = LoginDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearLoginFailedDelegate, params.ptr, cast(void*)0);
	}
	bool Logout(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.Logout, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AddLogoutCompletedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LogoutDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = LogoutDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddLogoutCompletedDelegate, params.ptr, cast(void*)0);
	}
	void ClearLogoutCompletedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LogoutDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = LogoutDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearLogoutCompletedDelegate, params.ptr, cast(void*)0);
	}
	bool IsGuestLogin(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsGuestLogin, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsLocalLogin(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLocalLogin, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	OnlineSubsystem.EFeaturePrivilegeLevel CanCommunicate(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanCommunicate, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	OnlineSubsystem.EFeaturePrivilegeLevel CanPurchaseContent(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanPurchaseContent, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	OnlineSubsystem.EFeaturePrivilegeLevel CanViewPlayerProfiles(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanViewPlayerProfiles, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	OnlineSubsystem.EFeaturePrivilegeLevel CanShowPresenceInformation(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanShowPresenceInformation, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
	}
	bool IsFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFriend, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool AreAnyFriends(ubyte LocalUserNum, ref ScriptArray!(OnlineSubsystem.FriendsQuery) Query)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.FriendsQuery)*)&params[4] = Query;
		(cast(ScriptObject)this).ProcessEvent(Functions.AreAnyFriends, params.ptr, cast(void*)0);
		Query = *cast(ScriptArray!(OnlineSubsystem.FriendsQuery)*)&params[4];
		return *cast(bool*)&params[16];
	}
	bool IsMuted(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsMuted, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ShowFriendsUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowFriendsUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AddLoginChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LoginDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = LoginDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddLoginChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearLoginChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LoginDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = LoginDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearLoginChangeDelegate, params.ptr, cast(void*)0);
	}
	void AddLoginStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LoginStatusDelegate, ubyte LocalUserNum)
	{
		ubyte params[13];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = LoginStatusDelegate;
		params[12] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddLoginStatusChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearLoginStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LoginStatusDelegate, ubyte LocalUserNum)
	{
		ubyte params[13];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = LoginStatusDelegate;
		params[12] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearLoginStatusChangeDelegate, params.ptr, cast(void*)0);
	}
	void AddLoginCancelledDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* CancelledDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = CancelledDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddLoginCancelledDelegate, params.ptr, cast(void*)0);
	}
	void ClearLoginCancelledDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* CancelledDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = CancelledDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearLoginCancelledDelegate, params.ptr, cast(void*)0);
	}
	void AddMutingChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* MutingDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = MutingDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMutingChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearMutingChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* MutingDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = MutingDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearMutingChangeDelegate, params.ptr, cast(void*)0);
	}
	void AddFriendsChangeDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* FriendsDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = FriendsDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFriendsChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearFriendsChangeDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* FriendsDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = FriendsDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFriendsChangeDelegate, params.ptr, cast(void*)0);
	}
	bool ReadProfileSettings(ubyte LocalUserNum, OnlineProfileSettings ProfileSettings)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineProfileSettings*)&params[4] = ProfileSettings;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadProfileSettings, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void AddReadProfileSettingsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadProfileSettingsCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadProfileSettingsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadProfileSettingsCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadProfileSettingsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadProfileSettingsCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadProfileSettingsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadProfileSettingsCompleteDelegate, params.ptr, cast(void*)0);
	}
	OnlineProfileSettings GetProfileSettings(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettings, params.ptr, cast(void*)0);
		return *cast(OnlineProfileSettings*)&params[4];
	}
	bool WriteProfileSettings(ubyte LocalUserNum, OnlineProfileSettings ProfileSettings)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineProfileSettings*)&params[4] = ProfileSettings;
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteProfileSettings, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void AddWriteProfileSettingsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* WriteProfileSettingsCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = WriteProfileSettingsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddWriteProfileSettingsCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearWriteProfileSettingsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* WriteProfileSettingsCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = WriteProfileSettingsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearWriteProfileSettingsCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool ReadPlayerStorage(ubyte LocalUserNum, OnlinePlayerStorage PlayerStorage, int* DeviceID = null)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlinePlayerStorage*)&params[4] = PlayerStorage;
		if (DeviceID !is null)
			*cast(int*)&params[8] = *DeviceID;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadPlayerStorage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AddReadPlayerStorageCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadPlayerStorageCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadPlayerStorageCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadPlayerStorageCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadPlayerStorageCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadPlayerStorageCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadPlayerStorageCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadPlayerStorageCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool ReadPlayerStorageForNetId(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId NetId, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = NetId;
		*cast(OnlinePlayerStorage*)&params[12] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadPlayerStorageForNetId, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void AddReadPlayerStorageForNetIdCompleteDelegate(OnlineSubsystem.UniqueNetId NetId, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadPlayerStorageForNetIdCompleteDelegate)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = NetId;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[8] = ReadPlayerStorageForNetIdCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadPlayerStorageForNetIdCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadPlayerStorageForNetIdCompleteDelegate(OnlineSubsystem.UniqueNetId NetId, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadPlayerStorageForNetIdCompleteDelegate)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = NetId;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[8] = ReadPlayerStorageForNetIdCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadPlayerStorageForNetIdCompleteDelegate, params.ptr, cast(void*)0);
	}
	OnlinePlayerStorage GetPlayerStorage(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerStorage, params.ptr, cast(void*)0);
		return *cast(OnlinePlayerStorage*)&params[4];
	}
	bool WritePlayerStorage(ubyte LocalUserNum, OnlinePlayerStorage PlayerStorage, int* DeviceID = null)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlinePlayerStorage*)&params[4] = PlayerStorage;
		if (DeviceID !is null)
			*cast(int*)&params[8] = *DeviceID;
		(cast(ScriptObject)this).ProcessEvent(Functions.WritePlayerStorage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AddWritePlayerStorageCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* WritePlayerStorageCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = WritePlayerStorageCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddWritePlayerStorageCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearWritePlayerStorageCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* WritePlayerStorageCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = WritePlayerStorageCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearWritePlayerStorageCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool ReadFriendsList(ubyte LocalUserNum, int* Count = null, int* StartingAt = null)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		if (Count !is null)
			*cast(int*)&params[4] = *Count;
		if (StartingAt !is null)
			*cast(int*)&params[8] = *StartingAt;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadFriendsList, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AddReadFriendsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadFriendsCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadFriendsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadFriendsCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadFriendsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadFriendsCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadFriendsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadFriendsCompleteDelegate, params.ptr, cast(void*)0);
	}
	OnlineSubsystem.EOnlineEnumerationReadState GetFriendsList(ubyte LocalUserNum, ref ScriptArray!(OnlineSubsystem.OnlineFriend) Friends, int* Count = null, int* StartingAt = null)
	{
		ubyte params[25];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4] = Friends;
		if (Count !is null)
			*cast(int*)&params[16] = *Count;
		if (StartingAt !is null)
			*cast(int*)&params[20] = *StartingAt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFriendsList, params.ptr, cast(void*)0);
		Friends = *cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4];
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[24];
	}
	void SetOnlineStatus(ubyte LocalUserNum, int StatusId, ref in ScriptArray!(Settings.LocalizedStringSetting) LocalizedStringSettings, ref in ScriptArray!(Settings.SettingsProperty) Properties)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = StatusId;
		*cast(ScriptArray!(Settings.LocalizedStringSetting)*)&params[8] = cast(ScriptArray!(Settings.LocalizedStringSetting))LocalizedStringSettings;
		*cast(ScriptArray!(Settings.SettingsProperty)*)&params[20] = cast(ScriptArray!(Settings.SettingsProperty))Properties;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOnlineStatus, params.ptr, cast(void*)0);
	}
	bool ShowKeyboardUI(ubyte LocalUserNum, ScriptString TitleText, ScriptString DescriptionText, bool* bIsPassword = null, bool* bShouldValidate = null, ScriptString* DefaultText = null, int* MaxResultLength = null)
	{
		ubyte params[56];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = TitleText;
		*cast(ScriptString*)&params[16] = DescriptionText;
		if (bIsPassword !is null)
			*cast(bool*)&params[28] = *bIsPassword;
		if (bShouldValidate !is null)
			*cast(bool*)&params[32] = *bShouldValidate;
		if (DefaultText !is null)
			*cast(ScriptString*)&params[36] = *DefaultText;
		if (MaxResultLength !is null)
			*cast(int*)&params[48] = *MaxResultLength;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowKeyboardUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[52];
	}
	void AddKeyboardInputDoneDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InputDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InputDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddKeyboardInputDoneDelegate, params.ptr, cast(void*)0);
	}
	void ClearKeyboardInputDoneDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InputDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InputDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearKeyboardInputDoneDelegate, params.ptr, cast(void*)0);
	}
	ScriptString GetKeyboardInputResults(ref ubyte bWasCanceled)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = bWasCanceled;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetKeyboardInputResults, params.ptr, cast(void*)0);
		bWasCanceled = params[0];
		return *cast(ScriptString*)&params[4];
	}
	bool AddFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId NewFriend, ScriptString* Message = null)
	{
		ubyte params[28];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = NewFriend;
		if (Message !is null)
			*cast(ScriptString*)&params[12] = *Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFriend, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool AddFriendByName(ubyte LocalUserNum, ScriptString FriendName, ScriptString* Message = null)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = FriendName;
		if (Message !is null)
			*cast(ScriptString*)&params[16] = *Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFriendByName, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void AddAddFriendByNameCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* FriendDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = FriendDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAddFriendByNameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearAddFriendByNameCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* FriendDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = FriendDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAddFriendByNameCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool AcceptFriendInvite(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.AcceptFriendInvite, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool DenyFriendInvite(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.DenyFriendInvite, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool RemoveFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId FormerFriend)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = FormerFriend;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFriend, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AddFriendInviteReceivedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InviteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = InviteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFriendInviteReceivedDelegate, params.ptr, cast(void*)0);
	}
	void ClearFriendInviteReceivedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InviteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = InviteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFriendInviteReceivedDelegate, params.ptr, cast(void*)0);
	}
	bool SendMessageToFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId Friend, ScriptString Message)
	{
		ubyte params[28];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = Friend;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMessageToFriend, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool SendGameInviteToFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId Friend, ScriptString* Text = null)
	{
		ubyte params[28];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = Friend;
		if (Text !is null)
			*cast(ScriptString*)&params[12] = *Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendGameInviteToFriend, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool SendGameInviteToFriends(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.UniqueNetId) Friends, ScriptString* Text = null)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4] = Friends;
		if (Text !is null)
			*cast(ScriptString*)&params[16] = *Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendGameInviteToFriends, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void AddReceivedGameInviteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReceivedGameInviteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReceivedGameInviteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReceivedGameInviteDelegate, params.ptr, cast(void*)0);
	}
	void ClearReceivedGameInviteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReceivedGameInviteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReceivedGameInviteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReceivedGameInviteDelegate, params.ptr, cast(void*)0);
	}
	bool JoinFriendGame(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId Friend)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = Friend;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinFriendGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AddJoinFriendGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* JoinFriendGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = JoinFriendGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddJoinFriendGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearJoinFriendGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* JoinFriendGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = JoinFriendGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearJoinFriendGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void GetFriendMessages(ubyte LocalUserNum, ref ScriptArray!(OnlineSubsystem.OnlineFriendMessage) FriendMessages)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriendMessage)*)&params[4] = FriendMessages;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFriendMessages, params.ptr, cast(void*)0);
		FriendMessages = *cast(ScriptArray!(OnlineSubsystem.OnlineFriendMessage)*)&params[4];
	}
	void AddFriendMessageReceivedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* MessageDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = MessageDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFriendMessageReceivedDelegate, params.ptr, cast(void*)0);
	}
	void ClearFriendMessageReceivedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* MessageDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = MessageDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFriendMessageReceivedDelegate, params.ptr, cast(void*)0);
	}
	bool DeleteMessage(ubyte LocalUserNum, int MessageIndex)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.DeleteMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool UnlockAchievement(ubyte LocalUserNum, int AchievementId)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = AchievementId;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnlockAchievement, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void AddUnlockAchievementCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* UnlockAchievementCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = UnlockAchievementCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddUnlockAchievementCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearUnlockAchievementCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* UnlockAchievementCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = UnlockAchievementCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearUnlockAchievementCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool ReadAchievements(ubyte LocalUserNum, int* TitleId = null, bool* bShouldReadText = null, bool* bShouldReadImages = null)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		if (TitleId !is null)
			*cast(int*)&params[4] = *TitleId;
		if (bShouldReadText !is null)
			*cast(bool*)&params[8] = *bShouldReadText;
		if (bShouldReadImages !is null)
			*cast(bool*)&params[12] = *bShouldReadImages;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadAchievements, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void AddReadAchievementsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadAchievementsCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadAchievementsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadAchievementsCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadAchievementsCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadAchievementsCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadAchievementsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadAchievementsCompleteDelegate, params.ptr, cast(void*)0);
	}
	OnlineSubsystem.EOnlineEnumerationReadState GetAchievements(ubyte LocalUserNum, ref ScriptArray!(OnlineSubsystem.AchievementDetails) Achievements, int* TitleId = null)
	{
		ubyte params[21];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.AchievementDetails)*)&params[4] = Achievements;
		if (TitleId !is null)
			*cast(int*)&params[16] = *TitleId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAchievements, params.ptr, cast(void*)0);
		Achievements = *cast(ScriptArray!(OnlineSubsystem.AchievementDetails)*)&params[4];
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[20];
	}
}
