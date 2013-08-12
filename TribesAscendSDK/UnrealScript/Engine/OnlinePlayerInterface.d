module UnrealScript.Engine.OnlinePlayerInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineProfileSettings;
import UnrealScript.Core.UInterface;
import UnrealScript.Engine.OnlinePlayerStorage;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlinePlayerInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlinePlayerInterface")); }
	private static __gshared OnlinePlayerInterface mDefaultProperties;
	@property final static OnlinePlayerInterface DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlinePlayerInterface)("OnlinePlayerInterface Engine.Default__OnlinePlayerInterface")); }
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
			ScriptFunction GetUniquePlayerId() { return mGetUniquePlayerId ? mGetUniquePlayerId : (mGetUniquePlayerId = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.GetUniquePlayerId")); }
			ScriptFunction GetLoginStatus() { return mGetLoginStatus ? mGetLoginStatus : (mGetLoginStatus = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.GetLoginStatus")); }
			ScriptFunction GetPlayerNickname() { return mGetPlayerNickname ? mGetPlayerNickname : (mGetPlayerNickname = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.GetPlayerNickname")); }
			ScriptFunction CanPlayOnline() { return mCanPlayOnline ? mCanPlayOnline : (mCanPlayOnline = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.CanPlayOnline")); }
			ScriptFunction CanDownloadUserContent() { return mCanDownloadUserContent ? mCanDownloadUserContent : (mCanDownloadUserContent = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.CanDownloadUserContent")); }
			ScriptFunction AutoLogin() { return mAutoLogin ? mAutoLogin : (mAutoLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AutoLogin")); }
			ScriptFunction OnLoginChange() { return mOnLoginChange ? mOnLoginChange : (mOnLoginChange = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnLoginChange")); }
			ScriptFunction OnReadAchievementsComplete() { return mOnReadAchievementsComplete ? mOnReadAchievementsComplete : (mOnReadAchievementsComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnReadAchievementsComplete")); }
			ScriptFunction OnUnlockAchievementComplete() { return mOnUnlockAchievementComplete ? mOnUnlockAchievementComplete : (mOnUnlockAchievementComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnUnlockAchievementComplete")); }
			ScriptFunction OnFriendMessageReceived() { return mOnFriendMessageReceived ? mOnFriendMessageReceived : (mOnFriendMessageReceived = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnFriendMessageReceived")); }
			ScriptFunction OnJoinFriendGameComplete() { return mOnJoinFriendGameComplete ? mOnJoinFriendGameComplete : (mOnJoinFriendGameComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnJoinFriendGameComplete")); }
			ScriptFunction OnReceivedGameInvite() { return mOnReceivedGameInvite ? mOnReceivedGameInvite : (mOnReceivedGameInvite = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnReceivedGameInvite")); }
			ScriptFunction OnFriendInviteReceived() { return mOnFriendInviteReceived ? mOnFriendInviteReceived : (mOnFriendInviteReceived = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnFriendInviteReceived")); }
			ScriptFunction OnAddFriendByNameComplete() { return mOnAddFriendByNameComplete ? mOnAddFriendByNameComplete : (mOnAddFriendByNameComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnAddFriendByNameComplete")); }
			ScriptFunction OnKeyboardInputComplete() { return mOnKeyboardInputComplete ? mOnKeyboardInputComplete : (mOnKeyboardInputComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnKeyboardInputComplete")); }
			ScriptFunction OnReadFriendsComplete() { return mOnReadFriendsComplete ? mOnReadFriendsComplete : (mOnReadFriendsComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnReadFriendsComplete")); }
			ScriptFunction OnWritePlayerStorageComplete() { return mOnWritePlayerStorageComplete ? mOnWritePlayerStorageComplete : (mOnWritePlayerStorageComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnWritePlayerStorageComplete")); }
			ScriptFunction OnReadPlayerStorageForNetIdComplete() { return mOnReadPlayerStorageForNetIdComplete ? mOnReadPlayerStorageForNetIdComplete : (mOnReadPlayerStorageForNetIdComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnReadPlayerStorageForNetIdComplete")); }
			ScriptFunction OnReadPlayerStorageComplete() { return mOnReadPlayerStorageComplete ? mOnReadPlayerStorageComplete : (mOnReadPlayerStorageComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnReadPlayerStorageComplete")); }
			ScriptFunction OnWriteProfileSettingsComplete() { return mOnWriteProfileSettingsComplete ? mOnWriteProfileSettingsComplete : (mOnWriteProfileSettingsComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnWriteProfileSettingsComplete")); }
			ScriptFunction OnReadProfileSettingsComplete() { return mOnReadProfileSettingsComplete ? mOnReadProfileSettingsComplete : (mOnReadProfileSettingsComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnReadProfileSettingsComplete")); }
			ScriptFunction OnLoginStatusChange() { return mOnLoginStatusChange ? mOnLoginStatusChange : (mOnLoginStatusChange = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnLoginStatusChange")); }
			ScriptFunction OnLogoutCompleted() { return mOnLogoutCompleted ? mOnLogoutCompleted : (mOnLogoutCompleted = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnLogoutCompleted")); }
			ScriptFunction OnLoginFailed() { return mOnLoginFailed ? mOnLoginFailed : (mOnLoginFailed = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnLoginFailed")); }
			ScriptFunction OnFriendsChange() { return mOnFriendsChange ? mOnFriendsChange : (mOnFriendsChange = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnFriendsChange")); }
			ScriptFunction OnMutingChange() { return mOnMutingChange ? mOnMutingChange : (mOnMutingChange = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnMutingChange")); }
			ScriptFunction OnLoginCancelled() { return mOnLoginCancelled ? mOnLoginCancelled : (mOnLoginCancelled = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.OnLoginCancelled")); }
			ScriptFunction ShowLoginUI() { return mShowLoginUI ? mShowLoginUI : (mShowLoginUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ShowLoginUI")); }
			ScriptFunction Login() { return mLogin ? mLogin : (mLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.Login")); }
			ScriptFunction AddLoginFailedDelegate() { return mAddLoginFailedDelegate ? mAddLoginFailedDelegate : (mAddLoginFailedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddLoginFailedDelegate")); }
			ScriptFunction ClearLoginFailedDelegate() { return mClearLoginFailedDelegate ? mClearLoginFailedDelegate : (mClearLoginFailedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearLoginFailedDelegate")); }
			ScriptFunction Logout() { return mLogout ? mLogout : (mLogout = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.Logout")); }
			ScriptFunction AddLogoutCompletedDelegate() { return mAddLogoutCompletedDelegate ? mAddLogoutCompletedDelegate : (mAddLogoutCompletedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddLogoutCompletedDelegate")); }
			ScriptFunction ClearLogoutCompletedDelegate() { return mClearLogoutCompletedDelegate ? mClearLogoutCompletedDelegate : (mClearLogoutCompletedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearLogoutCompletedDelegate")); }
			ScriptFunction IsGuestLogin() { return mIsGuestLogin ? mIsGuestLogin : (mIsGuestLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.IsGuestLogin")); }
			ScriptFunction IsLocalLogin() { return mIsLocalLogin ? mIsLocalLogin : (mIsLocalLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.IsLocalLogin")); }
			ScriptFunction CanCommunicate() { return mCanCommunicate ? mCanCommunicate : (mCanCommunicate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.CanCommunicate")); }
			ScriptFunction CanPurchaseContent() { return mCanPurchaseContent ? mCanPurchaseContent : (mCanPurchaseContent = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.CanPurchaseContent")); }
			ScriptFunction CanViewPlayerProfiles() { return mCanViewPlayerProfiles ? mCanViewPlayerProfiles : (mCanViewPlayerProfiles = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.CanViewPlayerProfiles")); }
			ScriptFunction CanShowPresenceInformation() { return mCanShowPresenceInformation ? mCanShowPresenceInformation : (mCanShowPresenceInformation = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.CanShowPresenceInformation")); }
			ScriptFunction IsFriend() { return mIsFriend ? mIsFriend : (mIsFriend = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.IsFriend")); }
			ScriptFunction AreAnyFriends() { return mAreAnyFriends ? mAreAnyFriends : (mAreAnyFriends = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AreAnyFriends")); }
			ScriptFunction IsMuted() { return mIsMuted ? mIsMuted : (mIsMuted = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.IsMuted")); }
			ScriptFunction ShowFriendsUI() { return mShowFriendsUI ? mShowFriendsUI : (mShowFriendsUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ShowFriendsUI")); }
			ScriptFunction AddLoginChangeDelegate() { return mAddLoginChangeDelegate ? mAddLoginChangeDelegate : (mAddLoginChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddLoginChangeDelegate")); }
			ScriptFunction ClearLoginChangeDelegate() { return mClearLoginChangeDelegate ? mClearLoginChangeDelegate : (mClearLoginChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearLoginChangeDelegate")); }
			ScriptFunction AddLoginStatusChangeDelegate() { return mAddLoginStatusChangeDelegate ? mAddLoginStatusChangeDelegate : (mAddLoginStatusChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddLoginStatusChangeDelegate")); }
			ScriptFunction ClearLoginStatusChangeDelegate() { return mClearLoginStatusChangeDelegate ? mClearLoginStatusChangeDelegate : (mClearLoginStatusChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearLoginStatusChangeDelegate")); }
			ScriptFunction AddLoginCancelledDelegate() { return mAddLoginCancelledDelegate ? mAddLoginCancelledDelegate : (mAddLoginCancelledDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddLoginCancelledDelegate")); }
			ScriptFunction ClearLoginCancelledDelegate() { return mClearLoginCancelledDelegate ? mClearLoginCancelledDelegate : (mClearLoginCancelledDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearLoginCancelledDelegate")); }
			ScriptFunction AddMutingChangeDelegate() { return mAddMutingChangeDelegate ? mAddMutingChangeDelegate : (mAddMutingChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddMutingChangeDelegate")); }
			ScriptFunction ClearMutingChangeDelegate() { return mClearMutingChangeDelegate ? mClearMutingChangeDelegate : (mClearMutingChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearMutingChangeDelegate")); }
			ScriptFunction AddFriendsChangeDelegate() { return mAddFriendsChangeDelegate ? mAddFriendsChangeDelegate : (mAddFriendsChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddFriendsChangeDelegate")); }
			ScriptFunction ClearFriendsChangeDelegate() { return mClearFriendsChangeDelegate ? mClearFriendsChangeDelegate : (mClearFriendsChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearFriendsChangeDelegate")); }
			ScriptFunction ReadProfileSettings() { return mReadProfileSettings ? mReadProfileSettings : (mReadProfileSettings = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ReadProfileSettings")); }
			ScriptFunction AddReadProfileSettingsCompleteDelegate() { return mAddReadProfileSettingsCompleteDelegate ? mAddReadProfileSettingsCompleteDelegate : (mAddReadProfileSettingsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddReadProfileSettingsCompleteDelegate")); }
			ScriptFunction ClearReadProfileSettingsCompleteDelegate() { return mClearReadProfileSettingsCompleteDelegate ? mClearReadProfileSettingsCompleteDelegate : (mClearReadProfileSettingsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearReadProfileSettingsCompleteDelegate")); }
			ScriptFunction GetProfileSettings() { return mGetProfileSettings ? mGetProfileSettings : (mGetProfileSettings = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.GetProfileSettings")); }
			ScriptFunction WriteProfileSettings() { return mWriteProfileSettings ? mWriteProfileSettings : (mWriteProfileSettings = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.WriteProfileSettings")); }
			ScriptFunction AddWriteProfileSettingsCompleteDelegate() { return mAddWriteProfileSettingsCompleteDelegate ? mAddWriteProfileSettingsCompleteDelegate : (mAddWriteProfileSettingsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddWriteProfileSettingsCompleteDelegate")); }
			ScriptFunction ClearWriteProfileSettingsCompleteDelegate() { return mClearWriteProfileSettingsCompleteDelegate ? mClearWriteProfileSettingsCompleteDelegate : (mClearWriteProfileSettingsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearWriteProfileSettingsCompleteDelegate")); }
			ScriptFunction ReadPlayerStorage() { return mReadPlayerStorage ? mReadPlayerStorage : (mReadPlayerStorage = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ReadPlayerStorage")); }
			ScriptFunction AddReadPlayerStorageCompleteDelegate() { return mAddReadPlayerStorageCompleteDelegate ? mAddReadPlayerStorageCompleteDelegate : (mAddReadPlayerStorageCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddReadPlayerStorageCompleteDelegate")); }
			ScriptFunction ClearReadPlayerStorageCompleteDelegate() { return mClearReadPlayerStorageCompleteDelegate ? mClearReadPlayerStorageCompleteDelegate : (mClearReadPlayerStorageCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearReadPlayerStorageCompleteDelegate")); }
			ScriptFunction ReadPlayerStorageForNetId() { return mReadPlayerStorageForNetId ? mReadPlayerStorageForNetId : (mReadPlayerStorageForNetId = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ReadPlayerStorageForNetId")); }
			ScriptFunction AddReadPlayerStorageForNetIdCompleteDelegate() { return mAddReadPlayerStorageForNetIdCompleteDelegate ? mAddReadPlayerStorageForNetIdCompleteDelegate : (mAddReadPlayerStorageForNetIdCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddReadPlayerStorageForNetIdCompleteDelegate")); }
			ScriptFunction ClearReadPlayerStorageForNetIdCompleteDelegate() { return mClearReadPlayerStorageForNetIdCompleteDelegate ? mClearReadPlayerStorageForNetIdCompleteDelegate : (mClearReadPlayerStorageForNetIdCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearReadPlayerStorageForNetIdCompleteDelegate")); }
			ScriptFunction GetPlayerStorage() { return mGetPlayerStorage ? mGetPlayerStorage : (mGetPlayerStorage = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.GetPlayerStorage")); }
			ScriptFunction WritePlayerStorage() { return mWritePlayerStorage ? mWritePlayerStorage : (mWritePlayerStorage = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.WritePlayerStorage")); }
			ScriptFunction AddWritePlayerStorageCompleteDelegate() { return mAddWritePlayerStorageCompleteDelegate ? mAddWritePlayerStorageCompleteDelegate : (mAddWritePlayerStorageCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddWritePlayerStorageCompleteDelegate")); }
			ScriptFunction ClearWritePlayerStorageCompleteDelegate() { return mClearWritePlayerStorageCompleteDelegate ? mClearWritePlayerStorageCompleteDelegate : (mClearWritePlayerStorageCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearWritePlayerStorageCompleteDelegate")); }
			ScriptFunction ReadFriendsList() { return mReadFriendsList ? mReadFriendsList : (mReadFriendsList = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ReadFriendsList")); }
			ScriptFunction AddReadFriendsCompleteDelegate() { return mAddReadFriendsCompleteDelegate ? mAddReadFriendsCompleteDelegate : (mAddReadFriendsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddReadFriendsCompleteDelegate")); }
			ScriptFunction ClearReadFriendsCompleteDelegate() { return mClearReadFriendsCompleteDelegate ? mClearReadFriendsCompleteDelegate : (mClearReadFriendsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearReadFriendsCompleteDelegate")); }
			ScriptFunction GetFriendsList() { return mGetFriendsList ? mGetFriendsList : (mGetFriendsList = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.GetFriendsList")); }
			ScriptFunction SetOnlineStatus() { return mSetOnlineStatus ? mSetOnlineStatus : (mSetOnlineStatus = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.SetOnlineStatus")); }
			ScriptFunction ShowKeyboardUI() { return mShowKeyboardUI ? mShowKeyboardUI : (mShowKeyboardUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ShowKeyboardUI")); }
			ScriptFunction AddKeyboardInputDoneDelegate() { return mAddKeyboardInputDoneDelegate ? mAddKeyboardInputDoneDelegate : (mAddKeyboardInputDoneDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddKeyboardInputDoneDelegate")); }
			ScriptFunction ClearKeyboardInputDoneDelegate() { return mClearKeyboardInputDoneDelegate ? mClearKeyboardInputDoneDelegate : (mClearKeyboardInputDoneDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearKeyboardInputDoneDelegate")); }
			ScriptFunction GetKeyboardInputResults() { return mGetKeyboardInputResults ? mGetKeyboardInputResults : (mGetKeyboardInputResults = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.GetKeyboardInputResults")); }
			ScriptFunction AddFriend() { return mAddFriend ? mAddFriend : (mAddFriend = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddFriend")); }
			ScriptFunction AddFriendByName() { return mAddFriendByName ? mAddFriendByName : (mAddFriendByName = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddFriendByName")); }
			ScriptFunction AddAddFriendByNameCompleteDelegate() { return mAddAddFriendByNameCompleteDelegate ? mAddAddFriendByNameCompleteDelegate : (mAddAddFriendByNameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddAddFriendByNameCompleteDelegate")); }
			ScriptFunction ClearAddFriendByNameCompleteDelegate() { return mClearAddFriendByNameCompleteDelegate ? mClearAddFriendByNameCompleteDelegate : (mClearAddFriendByNameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearAddFriendByNameCompleteDelegate")); }
			ScriptFunction AcceptFriendInvite() { return mAcceptFriendInvite ? mAcceptFriendInvite : (mAcceptFriendInvite = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AcceptFriendInvite")); }
			ScriptFunction DenyFriendInvite() { return mDenyFriendInvite ? mDenyFriendInvite : (mDenyFriendInvite = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.DenyFriendInvite")); }
			ScriptFunction RemoveFriend() { return mRemoveFriend ? mRemoveFriend : (mRemoveFriend = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.RemoveFriend")); }
			ScriptFunction AddFriendInviteReceivedDelegate() { return mAddFriendInviteReceivedDelegate ? mAddFriendInviteReceivedDelegate : (mAddFriendInviteReceivedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddFriendInviteReceivedDelegate")); }
			ScriptFunction ClearFriendInviteReceivedDelegate() { return mClearFriendInviteReceivedDelegate ? mClearFriendInviteReceivedDelegate : (mClearFriendInviteReceivedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearFriendInviteReceivedDelegate")); }
			ScriptFunction SendMessageToFriend() { return mSendMessageToFriend ? mSendMessageToFriend : (mSendMessageToFriend = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.SendMessageToFriend")); }
			ScriptFunction SendGameInviteToFriend() { return mSendGameInviteToFriend ? mSendGameInviteToFriend : (mSendGameInviteToFriend = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.SendGameInviteToFriend")); }
			ScriptFunction SendGameInviteToFriends() { return mSendGameInviteToFriends ? mSendGameInviteToFriends : (mSendGameInviteToFriends = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.SendGameInviteToFriends")); }
			ScriptFunction AddReceivedGameInviteDelegate() { return mAddReceivedGameInviteDelegate ? mAddReceivedGameInviteDelegate : (mAddReceivedGameInviteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddReceivedGameInviteDelegate")); }
			ScriptFunction ClearReceivedGameInviteDelegate() { return mClearReceivedGameInviteDelegate ? mClearReceivedGameInviteDelegate : (mClearReceivedGameInviteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearReceivedGameInviteDelegate")); }
			ScriptFunction JoinFriendGame() { return mJoinFriendGame ? mJoinFriendGame : (mJoinFriendGame = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.JoinFriendGame")); }
			ScriptFunction AddJoinFriendGameCompleteDelegate() { return mAddJoinFriendGameCompleteDelegate ? mAddJoinFriendGameCompleteDelegate : (mAddJoinFriendGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddJoinFriendGameCompleteDelegate")); }
			ScriptFunction ClearJoinFriendGameCompleteDelegate() { return mClearJoinFriendGameCompleteDelegate ? mClearJoinFriendGameCompleteDelegate : (mClearJoinFriendGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearJoinFriendGameCompleteDelegate")); }
			ScriptFunction GetFriendMessages() { return mGetFriendMessages ? mGetFriendMessages : (mGetFriendMessages = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.GetFriendMessages")); }
			ScriptFunction AddFriendMessageReceivedDelegate() { return mAddFriendMessageReceivedDelegate ? mAddFriendMessageReceivedDelegate : (mAddFriendMessageReceivedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddFriendMessageReceivedDelegate")); }
			ScriptFunction ClearFriendMessageReceivedDelegate() { return mClearFriendMessageReceivedDelegate ? mClearFriendMessageReceivedDelegate : (mClearFriendMessageReceivedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearFriendMessageReceivedDelegate")); }
			ScriptFunction DeleteMessage() { return mDeleteMessage ? mDeleteMessage : (mDeleteMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.DeleteMessage")); }
			ScriptFunction UnlockAchievement() { return mUnlockAchievement ? mUnlockAchievement : (mUnlockAchievement = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.UnlockAchievement")); }
			ScriptFunction AddUnlockAchievementCompleteDelegate() { return mAddUnlockAchievementCompleteDelegate ? mAddUnlockAchievementCompleteDelegate : (mAddUnlockAchievementCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddUnlockAchievementCompleteDelegate")); }
			ScriptFunction ClearUnlockAchievementCompleteDelegate() { return mClearUnlockAchievementCompleteDelegate ? mClearUnlockAchievementCompleteDelegate : (mClearUnlockAchievementCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearUnlockAchievementCompleteDelegate")); }
			ScriptFunction ReadAchievements() { return mReadAchievements ? mReadAchievements : (mReadAchievements = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ReadAchievements")); }
			ScriptFunction AddReadAchievementsCompleteDelegate() { return mAddReadAchievementsCompleteDelegate ? mAddReadAchievementsCompleteDelegate : (mAddReadAchievementsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.AddReadAchievementsCompleteDelegate")); }
			ScriptFunction ClearReadAchievementsCompleteDelegate() { return mClearReadAchievementsCompleteDelegate ? mClearReadAchievementsCompleteDelegate : (mClearReadAchievementsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.ClearReadAchievementsCompleteDelegate")); }
			ScriptFunction GetAchievements() { return mGetAchievements ? mGetAchievements : (mGetAchievements = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterface.GetAchievements")); }
		}
	}
final:
	bool GetUniquePlayerId(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId* PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = *PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUniquePlayerId, params.ptr, cast(void*)0);
		*PlayerID = *cast(OnlineSubsystem.UniqueNetId*)&params[4];
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
	bool ShowLoginUI(bool bShowOnlineOnly)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bShowOnlineOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowLoginUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool Login(ubyte LocalUserNum, ScriptString LoginName, ScriptString Password, bool bWantsLocalOnly)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = LoginName;
		*cast(ScriptString*)&params[16] = Password;
		*cast(bool*)&params[28] = bWantsLocalOnly;
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
	bool AreAnyFriends(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.FriendsQuery)* Query)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.FriendsQuery)*)&params[4] = *Query;
		(cast(ScriptObject)this).ProcessEvent(Functions.AreAnyFriends, params.ptr, cast(void*)0);
		*Query = *cast(ScriptArray!(OnlineSubsystem.FriendsQuery)*)&params[4];
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
	bool ReadPlayerStorage(ubyte LocalUserNum, OnlinePlayerStorage PlayerStorage, int DeviceID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlinePlayerStorage*)&params[4] = PlayerStorage;
		*cast(int*)&params[8] = DeviceID;
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
	bool WritePlayerStorage(ubyte LocalUserNum, OnlinePlayerStorage PlayerStorage, int DeviceID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlinePlayerStorage*)&params[4] = PlayerStorage;
		*cast(int*)&params[8] = DeviceID;
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
	bool ReadFriendsList(ubyte LocalUserNum, int Count, int StartingAt)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = Count;
		*cast(int*)&params[8] = StartingAt;
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
	OnlineSubsystem.EOnlineEnumerationReadState GetFriendsList(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.OnlineFriend)* Friends, int Count, int StartingAt)
	{
		ubyte params[25];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4] = *Friends;
		*cast(int*)&params[16] = Count;
		*cast(int*)&params[20] = StartingAt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFriendsList, params.ptr, cast(void*)0);
		*Friends = *cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4];
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[24];
	}
	void SetOnlineStatus(ubyte LocalUserNum, int StatusId, ScriptArray!(Settings.LocalizedStringSetting)* LocalizedStringSettings, ScriptArray!(Settings.SettingsProperty)* Properties)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = StatusId;
		*cast(ScriptArray!(Settings.LocalizedStringSetting)*)&params[8] = *LocalizedStringSettings;
		*cast(ScriptArray!(Settings.SettingsProperty)*)&params[20] = *Properties;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOnlineStatus, params.ptr, cast(void*)0);
		*LocalizedStringSettings = *cast(ScriptArray!(Settings.LocalizedStringSetting)*)&params[8];
		*Properties = *cast(ScriptArray!(Settings.SettingsProperty)*)&params[20];
	}
	bool ShowKeyboardUI(ubyte LocalUserNum, ScriptString TitleText, ScriptString DescriptionText, bool bIsPassword, bool bShouldValidate, ScriptString DefaultText, int MaxResultLength)
	{
		ubyte params[56];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = TitleText;
		*cast(ScriptString*)&params[16] = DescriptionText;
		*cast(bool*)&params[28] = bIsPassword;
		*cast(bool*)&params[32] = bShouldValidate;
		*cast(ScriptString*)&params[36] = DefaultText;
		*cast(int*)&params[48] = MaxResultLength;
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
	ScriptString GetKeyboardInputResults(ubyte* bWasCanceled)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = *bWasCanceled;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetKeyboardInputResults, params.ptr, cast(void*)0);
		*bWasCanceled = params[0];
		return *cast(ScriptString*)&params[4];
	}
	bool AddFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId NewFriend, ScriptString Message)
	{
		ubyte params[28];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = NewFriend;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFriend, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool AddFriendByName(ubyte LocalUserNum, ScriptString FriendName, ScriptString Message)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = FriendName;
		*cast(ScriptString*)&params[16] = Message;
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
	bool SendGameInviteToFriend(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId Friend, ScriptString Text)
	{
		ubyte params[28];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = Friend;
		*cast(ScriptString*)&params[12] = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendGameInviteToFriend, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool SendGameInviteToFriends(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.UniqueNetId) Friends, ScriptString Text)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4] = Friends;
		*cast(ScriptString*)&params[16] = Text;
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
	void GetFriendMessages(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.OnlineFriendMessage)* FriendMessages)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriendMessage)*)&params[4] = *FriendMessages;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFriendMessages, params.ptr, cast(void*)0);
		*FriendMessages = *cast(ScriptArray!(OnlineSubsystem.OnlineFriendMessage)*)&params[4];
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
	bool ReadAchievements(ubyte LocalUserNum, int TitleId, bool bShouldReadText, bool bShouldReadImages)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = TitleId;
		*cast(bool*)&params[8] = bShouldReadText;
		*cast(bool*)&params[12] = bShouldReadImages;
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
	OnlineSubsystem.EOnlineEnumerationReadState GetAchievements(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.AchievementDetails)* Achievements, int TitleId)
	{
		ubyte params[21];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.AchievementDetails)*)&params[4] = *Achievements;
		*cast(int*)&params[16] = TitleId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAchievements, params.ptr, cast(void*)0);
		*Achievements = *cast(ScriptArray!(OnlineSubsystem.AchievementDetails)*)&params[4];
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[20];
	}
}
