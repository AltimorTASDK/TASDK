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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class OnlineSubsystemMcts.OnlineSubsystemMcts")); }
	private static __gshared OnlineSubsystemMcts mDefaultProperties;
	@property final static OnlineSubsystemMcts DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlineSubsystemMcts)("OnlineSubsystemMcts OnlineSubsystemMcts.Default__OnlineSubsystemMcts")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnConnectionStatusChange;
			ScriptFunction mOnLoginChange;
			ScriptFunction mOnLoginFailed;
			ScriptFunction mOnLogoutCompleted;
			ScriptFunction mOnLinkStatusChange;
			ScriptFunction mOnChatMessage;
			ScriptFunction mOnKeyboardInputComplete;
			ScriptFunction mOnReadAchievementsComplete;
			ScriptFunction mOnUnlockAchievementComplete;
			ScriptFunction mOnFriendMessageReceived;
			ScriptFunction mOnJoinFriendGameComplete;
			ScriptFunction mOnReceivedGameInvite;
			ScriptFunction mOnFriendInviteReceived;
			ScriptFunction mOnAddFriendByNameComplete;
			ScriptFunction mOnReadFriendsComplete;
			ScriptFunction mOnFriendsChange;
			ScriptFunction mOnWritePlayerStorageComplete;
			ScriptFunction mOnReadPlayerStorageForNetIdComplete;
			ScriptFunction mOnReadPlayerStorageComplete;
			ScriptFunction mOnWriteProfileSettingsComplete;
			ScriptFunction mOnReadProfileSettingsComplete;
			ScriptFunction mOnMutingChange;
			ScriptFunction mOnLoginCancelled;
			ScriptFunction mOnLoginStatusChange;
			ScriptFunction mOnStorageDeviceChange;
			ScriptFunction mOnControllerChange;
			ScriptFunction mOnExternalUIChange;
			ScriptFunction mInit;
			ScriptFunction mLogin;
			ScriptFunction mRequestNewPlayer;
			ScriptFunction mAutoLogin;
			ScriptFunction mAddLoginFailedDelegate;
			ScriptFunction mClearLoginFailedDelegate;
			ScriptFunction mLogout;
			ScriptFunction mAddLogoutCompletedDelegate;
			ScriptFunction mClearLogoutCompletedDelegate;
			ScriptFunction mGetLoginStatus;
			ScriptFunction mIsGuestLogin;
			ScriptFunction mIsLocalLogin;
			ScriptFunction mGetUniquePlayerId;
			ScriptFunction mGetPlayerNickname;
			ScriptFunction mCanPlayOnline;
			ScriptFunction mCanDownloadUserContent;
			ScriptFunction mCanPurchaseContent;
			ScriptFunction mCanViewPlayerProfiles;
			ScriptFunction mCanShowPresenceInformation;
			ScriptFunction mIsFriend;
			ScriptFunction mAreAnyFriends;
			ScriptFunction mGetPlayerMctsName;
			ScriptFunction mAddLoginChangeDelegate;
			ScriptFunction mClearLoginChangeDelegate;
			ScriptFunction mNeedEULA;
			ScriptFunction mGetPlayerNicknameFromIndex;
			ScriptFunction mGetPlayerUniqueNetIdFromIndex;
			ScriptFunction mHasLinkConnection;
			ScriptFunction mAddLinkStatusChangeDelegate;
			ScriptFunction mClearLinkStatusChangeDelegate;
			ScriptFunction mAddExternalUIChangeDelegate;
			ScriptFunction mClearExternalUIChangeDelegate;
			ScriptFunction mGetNetworkNotificationPosition;
			ScriptFunction mAddControllerChangeDelegate;
			ScriptFunction mClearControllerChangeDelegate;
			ScriptFunction mIsControllerConnected;
			ScriptFunction mAddConnectionStatusChangeDelegate;
			ScriptFunction mClearConnectionStatusChangeDelegate;
			ScriptFunction mGetNATType;
			ScriptFunction mAddStorageDeviceChangeDelegate;
			ScriptFunction mClearStorageDeviceChangeDelegate;
			ScriptFunction mAddChatMessageDelegate;
			ScriptFunction mClearChatMessageDelegate;
			ScriptFunction mSendChatMessage;
			ScriptFunction mSendPrivateChatMessage;
			ScriptFunction mWriteActiveCharacterClass;
			ScriptFunction mReadCharacterClasses;
			ScriptFunction mReadActiveCharacterClass;
			ScriptFunction mWritePlayerProfileData;
			ScriptFunction mReadPlayerProfileData;
			ScriptFunction mNotifyTeamChange;
			ScriptFunction mGetCharacterIdFromClassId;
			ScriptFunction mIsMuted;
			ScriptFunction mCanCommunicate;
			ScriptFunction mAddLoginStatusChangeDelegate;
			ScriptFunction mClearLoginStatusChangeDelegate;
			ScriptFunction mAddLoginCancelledDelegate;
			ScriptFunction mClearLoginCancelledDelegate;
			ScriptFunction mReadProfileSettings;
			ScriptFunction mWriteProfileSettings;
			ScriptFunction mGetProfileSettings;
			ScriptFunction mAddMutingChangeDelegate;
			ScriptFunction mClearMutingChangeDelegate;
			ScriptFunction mAddReadProfileSettingsCompleteDelegate;
			ScriptFunction mClearReadProfileSettingsCompleteDelegate;
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
			ScriptFunction mAddFriendsChangeDelegate;
			ScriptFunction mClearFriendsChangeDelegate;
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
			ScriptFunction mUnlockAchievement;
			ScriptFunction mReadAchievements;
			ScriptFunction mGetAchievements;
			ScriptFunction mAddUnlockAchievementCompleteDelegate;
			ScriptFunction mClearUnlockAchievementCompleteDelegate;
			ScriptFunction mAddReadAchievementsCompleteDelegate;
			ScriptFunction mClearReadAchievementsCompleteDelegate;
			ScriptFunction mDeleteMessage;
			ScriptFunction mShowFriendsUI;
			ScriptFunction mShowLoginUI;
			ScriptFunction mSetNetworkNotificationPosition;
			ScriptFunction mGetLocale;
		}
		public @property static final
		{
			ScriptFunction OnConnectionStatusChange() { return mOnConnectionStatusChange ? mOnConnectionStatusChange : (mOnConnectionStatusChange = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnConnectionStatusChange")); }
			ScriptFunction OnLoginChange() { return mOnLoginChange ? mOnLoginChange : (mOnLoginChange = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLoginChange")); }
			ScriptFunction OnLoginFailed() { return mOnLoginFailed ? mOnLoginFailed : (mOnLoginFailed = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLoginFailed")); }
			ScriptFunction OnLogoutCompleted() { return mOnLogoutCompleted ? mOnLogoutCompleted : (mOnLogoutCompleted = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLogoutCompleted")); }
			ScriptFunction OnLinkStatusChange() { return mOnLinkStatusChange ? mOnLinkStatusChange : (mOnLinkStatusChange = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLinkStatusChange")); }
			ScriptFunction OnChatMessage() { return mOnChatMessage ? mOnChatMessage : (mOnChatMessage = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnChatMessage")); }
			ScriptFunction OnKeyboardInputComplete() { return mOnKeyboardInputComplete ? mOnKeyboardInputComplete : (mOnKeyboardInputComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnKeyboardInputComplete")); }
			ScriptFunction OnReadAchievementsComplete() { return mOnReadAchievementsComplete ? mOnReadAchievementsComplete : (mOnReadAchievementsComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReadAchievementsComplete")); }
			ScriptFunction OnUnlockAchievementComplete() { return mOnUnlockAchievementComplete ? mOnUnlockAchievementComplete : (mOnUnlockAchievementComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnUnlockAchievementComplete")); }
			ScriptFunction OnFriendMessageReceived() { return mOnFriendMessageReceived ? mOnFriendMessageReceived : (mOnFriendMessageReceived = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnFriendMessageReceived")); }
			ScriptFunction OnJoinFriendGameComplete() { return mOnJoinFriendGameComplete ? mOnJoinFriendGameComplete : (mOnJoinFriendGameComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnJoinFriendGameComplete")); }
			ScriptFunction OnReceivedGameInvite() { return mOnReceivedGameInvite ? mOnReceivedGameInvite : (mOnReceivedGameInvite = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReceivedGameInvite")); }
			ScriptFunction OnFriendInviteReceived() { return mOnFriendInviteReceived ? mOnFriendInviteReceived : (mOnFriendInviteReceived = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnFriendInviteReceived")); }
			ScriptFunction OnAddFriendByNameComplete() { return mOnAddFriendByNameComplete ? mOnAddFriendByNameComplete : (mOnAddFriendByNameComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnAddFriendByNameComplete")); }
			ScriptFunction OnReadFriendsComplete() { return mOnReadFriendsComplete ? mOnReadFriendsComplete : (mOnReadFriendsComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReadFriendsComplete")); }
			ScriptFunction OnFriendsChange() { return mOnFriendsChange ? mOnFriendsChange : (mOnFriendsChange = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnFriendsChange")); }
			ScriptFunction OnWritePlayerStorageComplete() { return mOnWritePlayerStorageComplete ? mOnWritePlayerStorageComplete : (mOnWritePlayerStorageComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnWritePlayerStorageComplete")); }
			ScriptFunction OnReadPlayerStorageForNetIdComplete() { return mOnReadPlayerStorageForNetIdComplete ? mOnReadPlayerStorageForNetIdComplete : (mOnReadPlayerStorageForNetIdComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReadPlayerStorageForNetIdComplete")); }
			ScriptFunction OnReadPlayerStorageComplete() { return mOnReadPlayerStorageComplete ? mOnReadPlayerStorageComplete : (mOnReadPlayerStorageComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReadPlayerStorageComplete")); }
			ScriptFunction OnWriteProfileSettingsComplete() { return mOnWriteProfileSettingsComplete ? mOnWriteProfileSettingsComplete : (mOnWriteProfileSettingsComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnWriteProfileSettingsComplete")); }
			ScriptFunction OnReadProfileSettingsComplete() { return mOnReadProfileSettingsComplete ? mOnReadProfileSettingsComplete : (mOnReadProfileSettingsComplete = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReadProfileSettingsComplete")); }
			ScriptFunction OnMutingChange() { return mOnMutingChange ? mOnMutingChange : (mOnMutingChange = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnMutingChange")); }
			ScriptFunction OnLoginCancelled() { return mOnLoginCancelled ? mOnLoginCancelled : (mOnLoginCancelled = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLoginCancelled")); }
			ScriptFunction OnLoginStatusChange() { return mOnLoginStatusChange ? mOnLoginStatusChange : (mOnLoginStatusChange = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLoginStatusChange")); }
			ScriptFunction OnStorageDeviceChange() { return mOnStorageDeviceChange ? mOnStorageDeviceChange : (mOnStorageDeviceChange = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnStorageDeviceChange")); }
			ScriptFunction OnControllerChange() { return mOnControllerChange ? mOnControllerChange : (mOnControllerChange = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnControllerChange")); }
			ScriptFunction OnExternalUIChange() { return mOnExternalUIChange ? mOnExternalUIChange : (mOnExternalUIChange = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnExternalUIChange")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.Init")); }
			ScriptFunction Login() { return mLogin ? mLogin : (mLogin = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.Login")); }
			ScriptFunction RequestNewPlayer() { return mRequestNewPlayer ? mRequestNewPlayer : (mRequestNewPlayer = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.RequestNewPlayer")); }
			ScriptFunction AutoLogin() { return mAutoLogin ? mAutoLogin : (mAutoLogin = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AutoLogin")); }
			ScriptFunction AddLoginFailedDelegate() { return mAddLoginFailedDelegate ? mAddLoginFailedDelegate : (mAddLoginFailedDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLoginFailedDelegate")); }
			ScriptFunction ClearLoginFailedDelegate() { return mClearLoginFailedDelegate ? mClearLoginFailedDelegate : (mClearLoginFailedDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLoginFailedDelegate")); }
			ScriptFunction Logout() { return mLogout ? mLogout : (mLogout = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.Logout")); }
			ScriptFunction AddLogoutCompletedDelegate() { return mAddLogoutCompletedDelegate ? mAddLogoutCompletedDelegate : (mAddLogoutCompletedDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLogoutCompletedDelegate")); }
			ScriptFunction ClearLogoutCompletedDelegate() { return mClearLogoutCompletedDelegate ? mClearLogoutCompletedDelegate : (mClearLogoutCompletedDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLogoutCompletedDelegate")); }
			ScriptFunction GetLoginStatus() { return mGetLoginStatus ? mGetLoginStatus : (mGetLoginStatus = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetLoginStatus")); }
			ScriptFunction IsGuestLogin() { return mIsGuestLogin ? mIsGuestLogin : (mIsGuestLogin = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.IsGuestLogin")); }
			ScriptFunction IsLocalLogin() { return mIsLocalLogin ? mIsLocalLogin : (mIsLocalLogin = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.IsLocalLogin")); }
			ScriptFunction GetUniquePlayerId() { return mGetUniquePlayerId ? mGetUniquePlayerId : (mGetUniquePlayerId = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetUniquePlayerId")); }
			ScriptFunction GetPlayerNickname() { return mGetPlayerNickname ? mGetPlayerNickname : (mGetPlayerNickname = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetPlayerNickname")); }
			ScriptFunction CanPlayOnline() { return mCanPlayOnline ? mCanPlayOnline : (mCanPlayOnline = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanPlayOnline")); }
			ScriptFunction CanDownloadUserContent() { return mCanDownloadUserContent ? mCanDownloadUserContent : (mCanDownloadUserContent = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanDownloadUserContent")); }
			ScriptFunction CanPurchaseContent() { return mCanPurchaseContent ? mCanPurchaseContent : (mCanPurchaseContent = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanPurchaseContent")); }
			ScriptFunction CanViewPlayerProfiles() { return mCanViewPlayerProfiles ? mCanViewPlayerProfiles : (mCanViewPlayerProfiles = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanViewPlayerProfiles")); }
			ScriptFunction CanShowPresenceInformation() { return mCanShowPresenceInformation ? mCanShowPresenceInformation : (mCanShowPresenceInformation = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanShowPresenceInformation")); }
			ScriptFunction IsFriend() { return mIsFriend ? mIsFriend : (mIsFriend = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.IsFriend")); }
			ScriptFunction AreAnyFriends() { return mAreAnyFriends ? mAreAnyFriends : (mAreAnyFriends = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AreAnyFriends")); }
			ScriptFunction GetPlayerMctsName() { return mGetPlayerMctsName ? mGetPlayerMctsName : (mGetPlayerMctsName = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetPlayerMctsName")); }
			ScriptFunction AddLoginChangeDelegate() { return mAddLoginChangeDelegate ? mAddLoginChangeDelegate : (mAddLoginChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLoginChangeDelegate")); }
			ScriptFunction ClearLoginChangeDelegate() { return mClearLoginChangeDelegate ? mClearLoginChangeDelegate : (mClearLoginChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLoginChangeDelegate")); }
			ScriptFunction NeedEULA() { return mNeedEULA ? mNeedEULA : (mNeedEULA = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.NeedEULA")); }
			ScriptFunction GetPlayerNicknameFromIndex() { return mGetPlayerNicknameFromIndex ? mGetPlayerNicknameFromIndex : (mGetPlayerNicknameFromIndex = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetPlayerNicknameFromIndex")); }
			ScriptFunction GetPlayerUniqueNetIdFromIndex() { return mGetPlayerUniqueNetIdFromIndex ? mGetPlayerUniqueNetIdFromIndex : (mGetPlayerUniqueNetIdFromIndex = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetPlayerUniqueNetIdFromIndex")); }
			ScriptFunction HasLinkConnection() { return mHasLinkConnection ? mHasLinkConnection : (mHasLinkConnection = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.HasLinkConnection")); }
			ScriptFunction AddLinkStatusChangeDelegate() { return mAddLinkStatusChangeDelegate ? mAddLinkStatusChangeDelegate : (mAddLinkStatusChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLinkStatusChangeDelegate")); }
			ScriptFunction ClearLinkStatusChangeDelegate() { return mClearLinkStatusChangeDelegate ? mClearLinkStatusChangeDelegate : (mClearLinkStatusChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLinkStatusChangeDelegate")); }
			ScriptFunction AddExternalUIChangeDelegate() { return mAddExternalUIChangeDelegate ? mAddExternalUIChangeDelegate : (mAddExternalUIChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddExternalUIChangeDelegate")); }
			ScriptFunction ClearExternalUIChangeDelegate() { return mClearExternalUIChangeDelegate ? mClearExternalUIChangeDelegate : (mClearExternalUIChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearExternalUIChangeDelegate")); }
			ScriptFunction GetNetworkNotificationPosition() { return mGetNetworkNotificationPosition ? mGetNetworkNotificationPosition : (mGetNetworkNotificationPosition = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetNetworkNotificationPosition")); }
			ScriptFunction AddControllerChangeDelegate() { return mAddControllerChangeDelegate ? mAddControllerChangeDelegate : (mAddControllerChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddControllerChangeDelegate")); }
			ScriptFunction ClearControllerChangeDelegate() { return mClearControllerChangeDelegate ? mClearControllerChangeDelegate : (mClearControllerChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearControllerChangeDelegate")); }
			ScriptFunction IsControllerConnected() { return mIsControllerConnected ? mIsControllerConnected : (mIsControllerConnected = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.IsControllerConnected")); }
			ScriptFunction AddConnectionStatusChangeDelegate() { return mAddConnectionStatusChangeDelegate ? mAddConnectionStatusChangeDelegate : (mAddConnectionStatusChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddConnectionStatusChangeDelegate")); }
			ScriptFunction ClearConnectionStatusChangeDelegate() { return mClearConnectionStatusChangeDelegate ? mClearConnectionStatusChangeDelegate : (mClearConnectionStatusChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearConnectionStatusChangeDelegate")); }
			ScriptFunction GetNATType() { return mGetNATType ? mGetNATType : (mGetNATType = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetNATType")); }
			ScriptFunction AddStorageDeviceChangeDelegate() { return mAddStorageDeviceChangeDelegate ? mAddStorageDeviceChangeDelegate : (mAddStorageDeviceChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddStorageDeviceChangeDelegate")); }
			ScriptFunction ClearStorageDeviceChangeDelegate() { return mClearStorageDeviceChangeDelegate ? mClearStorageDeviceChangeDelegate : (mClearStorageDeviceChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearStorageDeviceChangeDelegate")); }
			ScriptFunction AddChatMessageDelegate() { return mAddChatMessageDelegate ? mAddChatMessageDelegate : (mAddChatMessageDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddChatMessageDelegate")); }
			ScriptFunction ClearChatMessageDelegate() { return mClearChatMessageDelegate ? mClearChatMessageDelegate : (mClearChatMessageDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearChatMessageDelegate")); }
			ScriptFunction SendChatMessage() { return mSendChatMessage ? mSendChatMessage : (mSendChatMessage = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.SendChatMessage")); }
			ScriptFunction SendPrivateChatMessage() { return mSendPrivateChatMessage ? mSendPrivateChatMessage : (mSendPrivateChatMessage = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.SendPrivateChatMessage")); }
			ScriptFunction WriteActiveCharacterClass() { return mWriteActiveCharacterClass ? mWriteActiveCharacterClass : (mWriteActiveCharacterClass = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.WriteActiveCharacterClass")); }
			ScriptFunction ReadCharacterClasses() { return mReadCharacterClasses ? mReadCharacterClasses : (mReadCharacterClasses = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadCharacterClasses")); }
			ScriptFunction ReadActiveCharacterClass() { return mReadActiveCharacterClass ? mReadActiveCharacterClass : (mReadActiveCharacterClass = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadActiveCharacterClass")); }
			ScriptFunction WritePlayerProfileData() { return mWritePlayerProfileData ? mWritePlayerProfileData : (mWritePlayerProfileData = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.WritePlayerProfileData")); }
			ScriptFunction ReadPlayerProfileData() { return mReadPlayerProfileData ? mReadPlayerProfileData : (mReadPlayerProfileData = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadPlayerProfileData")); }
			ScriptFunction NotifyTeamChange() { return mNotifyTeamChange ? mNotifyTeamChange : (mNotifyTeamChange = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.NotifyTeamChange")); }
			ScriptFunction GetCharacterIdFromClassId() { return mGetCharacterIdFromClassId ? mGetCharacterIdFromClassId : (mGetCharacterIdFromClassId = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetCharacterIdFromClassId")); }
			ScriptFunction IsMuted() { return mIsMuted ? mIsMuted : (mIsMuted = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.IsMuted")); }
			ScriptFunction CanCommunicate() { return mCanCommunicate ? mCanCommunicate : (mCanCommunicate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanCommunicate")); }
			ScriptFunction AddLoginStatusChangeDelegate() { return mAddLoginStatusChangeDelegate ? mAddLoginStatusChangeDelegate : (mAddLoginStatusChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLoginStatusChangeDelegate")); }
			ScriptFunction ClearLoginStatusChangeDelegate() { return mClearLoginStatusChangeDelegate ? mClearLoginStatusChangeDelegate : (mClearLoginStatusChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLoginStatusChangeDelegate")); }
			ScriptFunction AddLoginCancelledDelegate() { return mAddLoginCancelledDelegate ? mAddLoginCancelledDelegate : (mAddLoginCancelledDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLoginCancelledDelegate")); }
			ScriptFunction ClearLoginCancelledDelegate() { return mClearLoginCancelledDelegate ? mClearLoginCancelledDelegate : (mClearLoginCancelledDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLoginCancelledDelegate")); }
			ScriptFunction ReadProfileSettings() { return mReadProfileSettings ? mReadProfileSettings : (mReadProfileSettings = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadProfileSettings")); }
			ScriptFunction WriteProfileSettings() { return mWriteProfileSettings ? mWriteProfileSettings : (mWriteProfileSettings = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.WriteProfileSettings")); }
			ScriptFunction GetProfileSettings() { return mGetProfileSettings ? mGetProfileSettings : (mGetProfileSettings = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetProfileSettings")); }
			ScriptFunction AddMutingChangeDelegate() { return mAddMutingChangeDelegate ? mAddMutingChangeDelegate : (mAddMutingChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddMutingChangeDelegate")); }
			ScriptFunction ClearMutingChangeDelegate() { return mClearMutingChangeDelegate ? mClearMutingChangeDelegate : (mClearMutingChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearMutingChangeDelegate")); }
			ScriptFunction AddReadProfileSettingsCompleteDelegate() { return mAddReadProfileSettingsCompleteDelegate ? mAddReadProfileSettingsCompleteDelegate : (mAddReadProfileSettingsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReadProfileSettingsCompleteDelegate")); }
			ScriptFunction ClearReadProfileSettingsCompleteDelegate() { return mClearReadProfileSettingsCompleteDelegate ? mClearReadProfileSettingsCompleteDelegate : (mClearReadProfileSettingsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReadProfileSettingsCompleteDelegate")); }
			ScriptFunction AddWriteProfileSettingsCompleteDelegate() { return mAddWriteProfileSettingsCompleteDelegate ? mAddWriteProfileSettingsCompleteDelegate : (mAddWriteProfileSettingsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddWriteProfileSettingsCompleteDelegate")); }
			ScriptFunction ClearWriteProfileSettingsCompleteDelegate() { return mClearWriteProfileSettingsCompleteDelegate ? mClearWriteProfileSettingsCompleteDelegate : (mClearWriteProfileSettingsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearWriteProfileSettingsCompleteDelegate")); }
			ScriptFunction ReadPlayerStorage() { return mReadPlayerStorage ? mReadPlayerStorage : (mReadPlayerStorage = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadPlayerStorage")); }
			ScriptFunction AddReadPlayerStorageCompleteDelegate() { return mAddReadPlayerStorageCompleteDelegate ? mAddReadPlayerStorageCompleteDelegate : (mAddReadPlayerStorageCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReadPlayerStorageCompleteDelegate")); }
			ScriptFunction ClearReadPlayerStorageCompleteDelegate() { return mClearReadPlayerStorageCompleteDelegate ? mClearReadPlayerStorageCompleteDelegate : (mClearReadPlayerStorageCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReadPlayerStorageCompleteDelegate")); }
			ScriptFunction ReadPlayerStorageForNetId() { return mReadPlayerStorageForNetId ? mReadPlayerStorageForNetId : (mReadPlayerStorageForNetId = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadPlayerStorageForNetId")); }
			ScriptFunction AddReadPlayerStorageForNetIdCompleteDelegate() { return mAddReadPlayerStorageForNetIdCompleteDelegate ? mAddReadPlayerStorageForNetIdCompleteDelegate : (mAddReadPlayerStorageForNetIdCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReadPlayerStorageForNetIdCompleteDelegate")); }
			ScriptFunction ClearReadPlayerStorageForNetIdCompleteDelegate() { return mClearReadPlayerStorageForNetIdCompleteDelegate ? mClearReadPlayerStorageForNetIdCompleteDelegate : (mClearReadPlayerStorageForNetIdCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReadPlayerStorageForNetIdCompleteDelegate")); }
			ScriptFunction GetPlayerStorage() { return mGetPlayerStorage ? mGetPlayerStorage : (mGetPlayerStorage = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetPlayerStorage")); }
			ScriptFunction WritePlayerStorage() { return mWritePlayerStorage ? mWritePlayerStorage : (mWritePlayerStorage = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.WritePlayerStorage")); }
			ScriptFunction AddWritePlayerStorageCompleteDelegate() { return mAddWritePlayerStorageCompleteDelegate ? mAddWritePlayerStorageCompleteDelegate : (mAddWritePlayerStorageCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddWritePlayerStorageCompleteDelegate")); }
			ScriptFunction ClearWritePlayerStorageCompleteDelegate() { return mClearWritePlayerStorageCompleteDelegate ? mClearWritePlayerStorageCompleteDelegate : (mClearWritePlayerStorageCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearWritePlayerStorageCompleteDelegate")); }
			ScriptFunction AddFriendsChangeDelegate() { return mAddFriendsChangeDelegate ? mAddFriendsChangeDelegate : (mAddFriendsChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddFriendsChangeDelegate")); }
			ScriptFunction ClearFriendsChangeDelegate() { return mClearFriendsChangeDelegate ? mClearFriendsChangeDelegate : (mClearFriendsChangeDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearFriendsChangeDelegate")); }
			ScriptFunction ReadFriendsList() { return mReadFriendsList ? mReadFriendsList : (mReadFriendsList = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadFriendsList")); }
			ScriptFunction AddReadFriendsCompleteDelegate() { return mAddReadFriendsCompleteDelegate ? mAddReadFriendsCompleteDelegate : (mAddReadFriendsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReadFriendsCompleteDelegate")); }
			ScriptFunction ClearReadFriendsCompleteDelegate() { return mClearReadFriendsCompleteDelegate ? mClearReadFriendsCompleteDelegate : (mClearReadFriendsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReadFriendsCompleteDelegate")); }
			ScriptFunction GetFriendsList() { return mGetFriendsList ? mGetFriendsList : (mGetFriendsList = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetFriendsList")); }
			ScriptFunction SetOnlineStatus() { return mSetOnlineStatus ? mSetOnlineStatus : (mSetOnlineStatus = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.SetOnlineStatus")); }
			ScriptFunction ShowKeyboardUI() { return mShowKeyboardUI ? mShowKeyboardUI : (mShowKeyboardUI = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ShowKeyboardUI")); }
			ScriptFunction AddKeyboardInputDoneDelegate() { return mAddKeyboardInputDoneDelegate ? mAddKeyboardInputDoneDelegate : (mAddKeyboardInputDoneDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddKeyboardInputDoneDelegate")); }
			ScriptFunction ClearKeyboardInputDoneDelegate() { return mClearKeyboardInputDoneDelegate ? mClearKeyboardInputDoneDelegate : (mClearKeyboardInputDoneDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearKeyboardInputDoneDelegate")); }
			ScriptFunction GetKeyboardInputResults() { return mGetKeyboardInputResults ? mGetKeyboardInputResults : (mGetKeyboardInputResults = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetKeyboardInputResults")); }
			ScriptFunction AddFriend() { return mAddFriend ? mAddFriend : (mAddFriend = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddFriend")); }
			ScriptFunction AddFriendByName() { return mAddFriendByName ? mAddFriendByName : (mAddFriendByName = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddFriendByName")); }
			ScriptFunction AddAddFriendByNameCompleteDelegate() { return mAddAddFriendByNameCompleteDelegate ? mAddAddFriendByNameCompleteDelegate : (mAddAddFriendByNameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddAddFriendByNameCompleteDelegate")); }
			ScriptFunction ClearAddFriendByNameCompleteDelegate() { return mClearAddFriendByNameCompleteDelegate ? mClearAddFriendByNameCompleteDelegate : (mClearAddFriendByNameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearAddFriendByNameCompleteDelegate")); }
			ScriptFunction AcceptFriendInvite() { return mAcceptFriendInvite ? mAcceptFriendInvite : (mAcceptFriendInvite = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AcceptFriendInvite")); }
			ScriptFunction DenyFriendInvite() { return mDenyFriendInvite ? mDenyFriendInvite : (mDenyFriendInvite = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.DenyFriendInvite")); }
			ScriptFunction RemoveFriend() { return mRemoveFriend ? mRemoveFriend : (mRemoveFriend = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.RemoveFriend")); }
			ScriptFunction AddFriendInviteReceivedDelegate() { return mAddFriendInviteReceivedDelegate ? mAddFriendInviteReceivedDelegate : (mAddFriendInviteReceivedDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddFriendInviteReceivedDelegate")); }
			ScriptFunction ClearFriendInviteReceivedDelegate() { return mClearFriendInviteReceivedDelegate ? mClearFriendInviteReceivedDelegate : (mClearFriendInviteReceivedDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearFriendInviteReceivedDelegate")); }
			ScriptFunction SendMessageToFriend() { return mSendMessageToFriend ? mSendMessageToFriend : (mSendMessageToFriend = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.SendMessageToFriend")); }
			ScriptFunction SendGameInviteToFriend() { return mSendGameInviteToFriend ? mSendGameInviteToFriend : (mSendGameInviteToFriend = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.SendGameInviteToFriend")); }
			ScriptFunction SendGameInviteToFriends() { return mSendGameInviteToFriends ? mSendGameInviteToFriends : (mSendGameInviteToFriends = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.SendGameInviteToFriends")); }
			ScriptFunction AddReceivedGameInviteDelegate() { return mAddReceivedGameInviteDelegate ? mAddReceivedGameInviteDelegate : (mAddReceivedGameInviteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReceivedGameInviteDelegate")); }
			ScriptFunction ClearReceivedGameInviteDelegate() { return mClearReceivedGameInviteDelegate ? mClearReceivedGameInviteDelegate : (mClearReceivedGameInviteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReceivedGameInviteDelegate")); }
			ScriptFunction JoinFriendGame() { return mJoinFriendGame ? mJoinFriendGame : (mJoinFriendGame = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.JoinFriendGame")); }
			ScriptFunction AddJoinFriendGameCompleteDelegate() { return mAddJoinFriendGameCompleteDelegate ? mAddJoinFriendGameCompleteDelegate : (mAddJoinFriendGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddJoinFriendGameCompleteDelegate")); }
			ScriptFunction ClearJoinFriendGameCompleteDelegate() { return mClearJoinFriendGameCompleteDelegate ? mClearJoinFriendGameCompleteDelegate : (mClearJoinFriendGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearJoinFriendGameCompleteDelegate")); }
			ScriptFunction GetFriendMessages() { return mGetFriendMessages ? mGetFriendMessages : (mGetFriendMessages = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetFriendMessages")); }
			ScriptFunction AddFriendMessageReceivedDelegate() { return mAddFriendMessageReceivedDelegate ? mAddFriendMessageReceivedDelegate : (mAddFriendMessageReceivedDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddFriendMessageReceivedDelegate")); }
			ScriptFunction ClearFriendMessageReceivedDelegate() { return mClearFriendMessageReceivedDelegate ? mClearFriendMessageReceivedDelegate : (mClearFriendMessageReceivedDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearFriendMessageReceivedDelegate")); }
			ScriptFunction UnlockAchievement() { return mUnlockAchievement ? mUnlockAchievement : (mUnlockAchievement = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.UnlockAchievement")); }
			ScriptFunction ReadAchievements() { return mReadAchievements ? mReadAchievements : (mReadAchievements = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadAchievements")); }
			ScriptFunction GetAchievements() { return mGetAchievements ? mGetAchievements : (mGetAchievements = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetAchievements")); }
			ScriptFunction AddUnlockAchievementCompleteDelegate() { return mAddUnlockAchievementCompleteDelegate ? mAddUnlockAchievementCompleteDelegate : (mAddUnlockAchievementCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddUnlockAchievementCompleteDelegate")); }
			ScriptFunction ClearUnlockAchievementCompleteDelegate() { return mClearUnlockAchievementCompleteDelegate ? mClearUnlockAchievementCompleteDelegate : (mClearUnlockAchievementCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearUnlockAchievementCompleteDelegate")); }
			ScriptFunction AddReadAchievementsCompleteDelegate() { return mAddReadAchievementsCompleteDelegate ? mAddReadAchievementsCompleteDelegate : (mAddReadAchievementsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReadAchievementsCompleteDelegate")); }
			ScriptFunction ClearReadAchievementsCompleteDelegate() { return mClearReadAchievementsCompleteDelegate ? mClearReadAchievementsCompleteDelegate : (mClearReadAchievementsCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReadAchievementsCompleteDelegate")); }
			ScriptFunction DeleteMessage() { return mDeleteMessage ? mDeleteMessage : (mDeleteMessage = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.DeleteMessage")); }
			ScriptFunction ShowFriendsUI() { return mShowFriendsUI ? mShowFriendsUI : (mShowFriendsUI = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ShowFriendsUI")); }
			ScriptFunction ShowLoginUI() { return mShowLoginUI ? mShowLoginUI : (mShowLoginUI = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.ShowLoginUI")); }
			ScriptFunction SetNetworkNotificationPosition() { return mSetNetworkNotificationPosition ? mSetNetworkNotificationPosition : (mSetNetworkNotificationPosition = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.SetNetworkNotificationPosition")); }
			ScriptFunction GetLocale() { return mGetLocale ? mGetLocale : (mGetLocale = ScriptObject.Find!(ScriptFunction)("Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetLocale")); }
		}
	}
	struct ControllerConnectionState
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct OnlineSubsystemMcts.OnlineSubsystemMcts.ControllerConnectionState")); }
		@property final auto ref
		{
			int bLastIsControllerConnected() { return *cast(int*)(cast(size_t)&this + 4); }
			int bIsControllerConnected() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ConnectionStatusChangeDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 316); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) LoginChangeDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 328); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) LoginFailedDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 340); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) LogoutCompletedDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 352); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) LinkStatusDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 364); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ChatMessageDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 376); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) KeyboardInputDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 404); }
			float ConnectionPresenceElapsedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 452); }
			float ConnectionPresenceTimeInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 448); }
			OnlineSubsystemMcts.ControllerConnectionState ControllerStates() { return *cast(OnlineSubsystemMcts.ControllerConnectionState*)(cast(size_t)cast(void*)this + 416); }
			ScriptString KeyboardResultsString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 388); }
			ScriptString ProfileDataExtension() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 304); }
			ScriptString ProfileDataDirectory() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 292); }
			OnlineSubsystem.ENetworkNotificationPosition CurrentNotificationPosition() { return *cast(OnlineSubsystem.ENetworkNotificationPosition*)(cast(size_t)cast(void*)this + 290); }
			ubyte bWasKeyboardInputCanceled() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 289); }
			OnlineSubsystem.ELoginStatus LoggedInStatus() { return *cast(OnlineSubsystem.ELoginStatus*)(cast(size_t)cast(void*)this + 288); }
			int LoggedInPlayerNum() { return *cast(int*)(cast(size_t)cast(void*)this + 284); }
			OnlineSubsystem.UniqueNetId LoggedInPlayerId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)cast(void*)this + 276); }
			ScriptString LoggedInPlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
			ScriptString LocalProfileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 252); }
			OnlineVoiceInterfaceMcts MctsVoiceInt() { return *cast(OnlineVoiceInterfaceMcts*)(cast(size_t)cast(void*)this + 248); }
			OnlineGameInterfaceMcts MctsGameInt() { return *cast(OnlineGameInterfaceMcts*)(cast(size_t)cast(void*)this + 244); }
		}
		bool bShouldUseMcp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 400) & 0x4) != 0; }
		bool bShouldUseMcp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 400) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 400) &= ~0x4; } return val; }
		bool bLastHasConnection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 400) & 0x2) != 0; }
		bool bLastHasConnection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 400) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 400) &= ~0x2; } return val; }
		bool bNeedsKeyboardTicking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 400) & 0x1) != 0; }
		bool bNeedsKeyboardTicking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 400) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 400) &= ~0x1; } return val; }
	}
final:
	void OnConnectionStatusChange(OnlineSubsystem.EOnlineServerConnectionStatus ConnectionStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)params.ptr = ConnectionStatus;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnConnectionStatusChange, params.ptr, cast(void*)0);
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginChange, params.ptr, cast(void*)0);
	}
	void OnLoginFailed(ubyte LocalUserNum, OnlineSubsystem.EOnlineServerConnectionStatus ErrorCode)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)&params[1] = ErrorCode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginFailed, params.ptr, cast(void*)0);
	}
	void OnLogoutCompleted(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLogoutCompleted, params.ptr, cast(void*)0);
	}
	void OnLinkStatusChange(bool bIsConnected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLinkStatusChange, params.ptr, cast(void*)0);
	}
	void OnChatMessage(int pChannel, ScriptString Sender, ScriptString Message)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = pChannel;
		*cast(ScriptString*)&params[4] = Sender;
		*cast(ScriptString*)&params[16] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnChatMessage, params.ptr, cast(void*)0);
	}
	void OnKeyboardInputComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnKeyboardInputComplete, params.ptr, cast(void*)0);
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
	void OnReadFriendsComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadFriendsComplete, params.ptr, cast(void*)0);
	}
	void OnFriendsChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFriendsChange, cast(void*)0, cast(void*)0);
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
	void OnMutingChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMutingChange, cast(void*)0, cast(void*)0);
	}
	void OnLoginCancelled()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginCancelled, cast(void*)0, cast(void*)0);
	}
	void OnLoginStatusChange(OnlineSubsystem.ELoginStatus NewStatus, OnlineSubsystem.UniqueNetId NewId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.ELoginStatus*)params.ptr = NewStatus;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = NewId;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginStatusChange, params.ptr, cast(void*)0);
	}
	void OnStorageDeviceChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStorageDeviceChange, cast(void*)0, cast(void*)0);
	}
	void OnControllerChange(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnControllerChange, params.ptr, cast(void*)0);
	}
	void OnExternalUIChange(bool bIsOpening)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsOpening;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnExternalUIChange, params.ptr, cast(void*)0);
	}
	bool Init()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	bool RequestNewPlayer(ubyte LocalUserNum, ScriptString LoginName, ScriptString Password, ScriptString DesiredPlayerName)
	{
		ubyte params[44];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = LoginName;
		*cast(ScriptString*)&params[16] = Password;
		*cast(ScriptString*)&params[28] = DesiredPlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestNewPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	bool AutoLogin()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AutoLogin, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void AddLoginFailedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LoginFailedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = LoginFailedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddLoginFailedDelegate, params.ptr, cast(void*)0);
	}
	void ClearLoginFailedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LoginFailedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = LoginFailedDelegate;
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
	OnlineSubsystem.ELoginStatus GetLoginStatus(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLoginStatus, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ELoginStatus*)&params[1];
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
	ScriptString GetPlayerMctsName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerMctsName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
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
	bool NeedEULA()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedEULA, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptString GetPlayerNicknameFromIndex(int UserIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = UserIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerNicknameFromIndex, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	OnlineSubsystem.UniqueNetId GetPlayerUniqueNetIdFromIndex(int UserIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = UserIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerUniqueNetIdFromIndex, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.UniqueNetId*)&params[4];
	}
	bool HasLinkConnection()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasLinkConnection, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void AddLinkStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LinkStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = LinkStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddLinkStatusChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearLinkStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LinkStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = LinkStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearLinkStatusChangeDelegate, params.ptr, cast(void*)0);
	}
	void AddExternalUIChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ExternalUIDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ExternalUIDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddExternalUIChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearExternalUIChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ExternalUIDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ExternalUIDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearExternalUIChangeDelegate, params.ptr, cast(void*)0);
	}
	OnlineSubsystem.ENetworkNotificationPosition GetNetworkNotificationPosition()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNetworkNotificationPosition, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ENetworkNotificationPosition*)params.ptr;
	}
	void AddControllerChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ControllerChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ControllerChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddControllerChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearControllerChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ControllerChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ControllerChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearControllerChangeDelegate, params.ptr, cast(void*)0);
	}
	bool IsControllerConnected(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsControllerConnected, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AddConnectionStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ConnectionStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ConnectionStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddConnectionStatusChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearConnectionStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ConnectionStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ConnectionStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearConnectionStatusChangeDelegate, params.ptr, cast(void*)0);
	}
	OnlineSubsystem.ENATType GetNATType()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNATType, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ENATType*)params.ptr;
	}
	void AddStorageDeviceChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* StorageDeviceChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = StorageDeviceChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddStorageDeviceChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearStorageDeviceChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* StorageDeviceChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = StorageDeviceChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearStorageDeviceChangeDelegate, params.ptr, cast(void*)0);
	}
	void AddChatMessageDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ChatDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ChatDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddChatMessageDelegate, params.ptr, cast(void*)0);
	}
	void ClearChatMessageDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ChatDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ChatDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearChatMessageDelegate, params.ptr, cast(void*)0);
	}
	void SendChatMessage(int pChannel, ScriptString Message)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = pChannel;
		*cast(ScriptString*)&params[4] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendChatMessage, params.ptr, cast(void*)0);
	}
	void SendPrivateChatMessage(ScriptString PlayerName, ScriptString Message)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendPrivateChatMessage, params.ptr, cast(void*)0);
	}
	void WriteActiveCharacterClass(int ClassId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteActiveCharacterClass, params.ptr, cast(void*)0);
	}
	void ReadCharacterClasses(ScriptArray!(int)* CharList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = *CharList;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadCharacterClasses, params.ptr, cast(void*)0);
		*CharList = *cast(ScriptArray!(int)*)params.ptr;
	}
	int ReadActiveCharacterClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadActiveCharacterClass, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool WritePlayerProfileData(QWord UniqueId, TgPlayerProfile Profile)
	{
		ubyte params[16];
		params[] = 0;
		*cast(QWord*)params.ptr = UniqueId;
		*cast(TgPlayerProfile*)&params[8] = Profile;
		(cast(ScriptObject)this).ProcessEvent(Functions.WritePlayerProfileData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ReadPlayerProfileData(QWord UniqueId, TgPlayerProfile Profile)
	{
		ubyte params[16];
		params[] = 0;
		*cast(QWord*)params.ptr = UniqueId;
		*cast(TgPlayerProfile*)&params[8] = Profile;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadPlayerProfileData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void NotifyTeamChange(QWord PlayerUid, ubyte TeamID)
	{
		ubyte params[9];
		params[] = 0;
		*cast(QWord*)params.ptr = PlayerUid;
		params[8] = TeamID;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyTeamChange, params.ptr, cast(void*)0);
	}
	int GetCharacterIdFromClassId(QWord UniqueId, int nClassId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(QWord*)params.ptr = UniqueId;
		*cast(int*)&params[8] = nClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCharacterIdFromClassId, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
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
	OnlineSubsystem.EFeaturePrivilegeLevel CanCommunicate(ubyte LocalUserNum)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanCommunicate, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EFeaturePrivilegeLevel*)&params[1];
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
	bool ReadProfileSettings(ubyte LocalUserNum, OnlineProfileSettings ProfileSettings)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineProfileSettings*)&params[4] = ProfileSettings;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadProfileSettings, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
	OnlineProfileSettings GetProfileSettings(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettings, params.ptr, cast(void*)0);
		return *cast(OnlineProfileSettings*)&params[4];
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
	bool UnlockAchievement(ubyte LocalUserNum, int AchievementId)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = AchievementId;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnlockAchievement, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
	bool DeleteMessage(ubyte LocalUserNum, int MessageIndex)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.DeleteMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool ShowFriendsUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowFriendsUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowLoginUI(bool bShowOnlineOnly)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bShowOnlineOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowLoginUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetNetworkNotificationPosition(OnlineSubsystem.ENetworkNotificationPosition NewPos)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.ENetworkNotificationPosition*)params.ptr = NewPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNetworkNotificationPosition, params.ptr, cast(void*)0);
	}
	int GetLocale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocale, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
