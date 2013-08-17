module UnrealScript.OnlineSubsystemMcts.OnlineSubsystemMcts;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class OnlineSubsystemMcts.OnlineSubsystemMcts")()); }
	private static __gshared OnlineSubsystemMcts mDefaultProperties;
	@property final static OnlineSubsystemMcts DefaultProperties() { mixin(MGDPC!(OnlineSubsystemMcts, "OnlineSubsystemMcts OnlineSubsystemMcts.Default__OnlineSubsystemMcts")()); }
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
			ScriptFunction OnConnectionStatusChange() { mixin(MGF!("mOnConnectionStatusChange", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnConnectionStatusChange")()); }
			ScriptFunction OnLoginChange() { mixin(MGF!("mOnLoginChange", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLoginChange")()); }
			ScriptFunction OnLoginFailed() { mixin(MGF!("mOnLoginFailed", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLoginFailed")()); }
			ScriptFunction OnLogoutCompleted() { mixin(MGF!("mOnLogoutCompleted", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLogoutCompleted")()); }
			ScriptFunction OnLinkStatusChange() { mixin(MGF!("mOnLinkStatusChange", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLinkStatusChange")()); }
			ScriptFunction OnChatMessage() { mixin(MGF!("mOnChatMessage", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnChatMessage")()); }
			ScriptFunction OnKeyboardInputComplete() { mixin(MGF!("mOnKeyboardInputComplete", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnKeyboardInputComplete")()); }
			ScriptFunction OnReadAchievementsComplete() { mixin(MGF!("mOnReadAchievementsComplete", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReadAchievementsComplete")()); }
			ScriptFunction OnUnlockAchievementComplete() { mixin(MGF!("mOnUnlockAchievementComplete", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnUnlockAchievementComplete")()); }
			ScriptFunction OnFriendMessageReceived() { mixin(MGF!("mOnFriendMessageReceived", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnFriendMessageReceived")()); }
			ScriptFunction OnJoinFriendGameComplete() { mixin(MGF!("mOnJoinFriendGameComplete", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnJoinFriendGameComplete")()); }
			ScriptFunction OnReceivedGameInvite() { mixin(MGF!("mOnReceivedGameInvite", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReceivedGameInvite")()); }
			ScriptFunction OnFriendInviteReceived() { mixin(MGF!("mOnFriendInviteReceived", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnFriendInviteReceived")()); }
			ScriptFunction OnAddFriendByNameComplete() { mixin(MGF!("mOnAddFriendByNameComplete", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnAddFriendByNameComplete")()); }
			ScriptFunction OnReadFriendsComplete() { mixin(MGF!("mOnReadFriendsComplete", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReadFriendsComplete")()); }
			ScriptFunction OnFriendsChange() { mixin(MGF!("mOnFriendsChange", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnFriendsChange")()); }
			ScriptFunction OnWritePlayerStorageComplete() { mixin(MGF!("mOnWritePlayerStorageComplete", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnWritePlayerStorageComplete")()); }
			ScriptFunction OnReadPlayerStorageForNetIdComplete() { mixin(MGF!("mOnReadPlayerStorageForNetIdComplete", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReadPlayerStorageForNetIdComplete")()); }
			ScriptFunction OnReadPlayerStorageComplete() { mixin(MGF!("mOnReadPlayerStorageComplete", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReadPlayerStorageComplete")()); }
			ScriptFunction OnWriteProfileSettingsComplete() { mixin(MGF!("mOnWriteProfileSettingsComplete", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnWriteProfileSettingsComplete")()); }
			ScriptFunction OnReadProfileSettingsComplete() { mixin(MGF!("mOnReadProfileSettingsComplete", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnReadProfileSettingsComplete")()); }
			ScriptFunction OnMutingChange() { mixin(MGF!("mOnMutingChange", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnMutingChange")()); }
			ScriptFunction OnLoginCancelled() { mixin(MGF!("mOnLoginCancelled", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLoginCancelled")()); }
			ScriptFunction OnLoginStatusChange() { mixin(MGF!("mOnLoginStatusChange", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnLoginStatusChange")()); }
			ScriptFunction OnStorageDeviceChange() { mixin(MGF!("mOnStorageDeviceChange", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnStorageDeviceChange")()); }
			ScriptFunction OnControllerChange() { mixin(MGF!("mOnControllerChange", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnControllerChange")()); }
			ScriptFunction OnExternalUIChange() { mixin(MGF!("mOnExternalUIChange", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.OnExternalUIChange")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.Init")()); }
			ScriptFunction Login() { mixin(MGF!("mLogin", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.Login")()); }
			ScriptFunction RequestNewPlayer() { mixin(MGF!("mRequestNewPlayer", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.RequestNewPlayer")()); }
			ScriptFunction AutoLogin() { mixin(MGF!("mAutoLogin", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AutoLogin")()); }
			ScriptFunction AddLoginFailedDelegate() { mixin(MGF!("mAddLoginFailedDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLoginFailedDelegate")()); }
			ScriptFunction ClearLoginFailedDelegate() { mixin(MGF!("mClearLoginFailedDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLoginFailedDelegate")()); }
			ScriptFunction Logout() { mixin(MGF!("mLogout", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.Logout")()); }
			ScriptFunction AddLogoutCompletedDelegate() { mixin(MGF!("mAddLogoutCompletedDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLogoutCompletedDelegate")()); }
			ScriptFunction ClearLogoutCompletedDelegate() { mixin(MGF!("mClearLogoutCompletedDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLogoutCompletedDelegate")()); }
			ScriptFunction GetLoginStatus() { mixin(MGF!("mGetLoginStatus", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetLoginStatus")()); }
			ScriptFunction IsGuestLogin() { mixin(MGF!("mIsGuestLogin", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.IsGuestLogin")()); }
			ScriptFunction IsLocalLogin() { mixin(MGF!("mIsLocalLogin", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.IsLocalLogin")()); }
			ScriptFunction GetUniquePlayerId() { mixin(MGF!("mGetUniquePlayerId", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetUniquePlayerId")()); }
			ScriptFunction GetPlayerNickname() { mixin(MGF!("mGetPlayerNickname", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetPlayerNickname")()); }
			ScriptFunction CanPlayOnline() { mixin(MGF!("mCanPlayOnline", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanPlayOnline")()); }
			ScriptFunction CanDownloadUserContent() { mixin(MGF!("mCanDownloadUserContent", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanDownloadUserContent")()); }
			ScriptFunction CanPurchaseContent() { mixin(MGF!("mCanPurchaseContent", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanPurchaseContent")()); }
			ScriptFunction CanViewPlayerProfiles() { mixin(MGF!("mCanViewPlayerProfiles", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanViewPlayerProfiles")()); }
			ScriptFunction CanShowPresenceInformation() { mixin(MGF!("mCanShowPresenceInformation", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanShowPresenceInformation")()); }
			ScriptFunction IsFriend() { mixin(MGF!("mIsFriend", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.IsFriend")()); }
			ScriptFunction AreAnyFriends() { mixin(MGF!("mAreAnyFriends", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AreAnyFriends")()); }
			ScriptFunction GetPlayerMctsName() { mixin(MGF!("mGetPlayerMctsName", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetPlayerMctsName")()); }
			ScriptFunction AddLoginChangeDelegate() { mixin(MGF!("mAddLoginChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLoginChangeDelegate")()); }
			ScriptFunction ClearLoginChangeDelegate() { mixin(MGF!("mClearLoginChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLoginChangeDelegate")()); }
			ScriptFunction NeedEULA() { mixin(MGF!("mNeedEULA", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.NeedEULA")()); }
			ScriptFunction GetPlayerNicknameFromIndex() { mixin(MGF!("mGetPlayerNicknameFromIndex", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetPlayerNicknameFromIndex")()); }
			ScriptFunction GetPlayerUniqueNetIdFromIndex() { mixin(MGF!("mGetPlayerUniqueNetIdFromIndex", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetPlayerUniqueNetIdFromIndex")()); }
			ScriptFunction HasLinkConnection() { mixin(MGF!("mHasLinkConnection", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.HasLinkConnection")()); }
			ScriptFunction AddLinkStatusChangeDelegate() { mixin(MGF!("mAddLinkStatusChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLinkStatusChangeDelegate")()); }
			ScriptFunction ClearLinkStatusChangeDelegate() { mixin(MGF!("mClearLinkStatusChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLinkStatusChangeDelegate")()); }
			ScriptFunction AddExternalUIChangeDelegate() { mixin(MGF!("mAddExternalUIChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddExternalUIChangeDelegate")()); }
			ScriptFunction ClearExternalUIChangeDelegate() { mixin(MGF!("mClearExternalUIChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearExternalUIChangeDelegate")()); }
			ScriptFunction GetNetworkNotificationPosition() { mixin(MGF!("mGetNetworkNotificationPosition", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetNetworkNotificationPosition")()); }
			ScriptFunction AddControllerChangeDelegate() { mixin(MGF!("mAddControllerChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddControllerChangeDelegate")()); }
			ScriptFunction ClearControllerChangeDelegate() { mixin(MGF!("mClearControllerChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearControllerChangeDelegate")()); }
			ScriptFunction IsControllerConnected() { mixin(MGF!("mIsControllerConnected", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.IsControllerConnected")()); }
			ScriptFunction AddConnectionStatusChangeDelegate() { mixin(MGF!("mAddConnectionStatusChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddConnectionStatusChangeDelegate")()); }
			ScriptFunction ClearConnectionStatusChangeDelegate() { mixin(MGF!("mClearConnectionStatusChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearConnectionStatusChangeDelegate")()); }
			ScriptFunction GetNATType() { mixin(MGF!("mGetNATType", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetNATType")()); }
			ScriptFunction AddStorageDeviceChangeDelegate() { mixin(MGF!("mAddStorageDeviceChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddStorageDeviceChangeDelegate")()); }
			ScriptFunction ClearStorageDeviceChangeDelegate() { mixin(MGF!("mClearStorageDeviceChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearStorageDeviceChangeDelegate")()); }
			ScriptFunction AddChatMessageDelegate() { mixin(MGF!("mAddChatMessageDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddChatMessageDelegate")()); }
			ScriptFunction ClearChatMessageDelegate() { mixin(MGF!("mClearChatMessageDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearChatMessageDelegate")()); }
			ScriptFunction SendChatMessage() { mixin(MGF!("mSendChatMessage", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.SendChatMessage")()); }
			ScriptFunction SendPrivateChatMessage() { mixin(MGF!("mSendPrivateChatMessage", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.SendPrivateChatMessage")()); }
			ScriptFunction WriteActiveCharacterClass() { mixin(MGF!("mWriteActiveCharacterClass", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.WriteActiveCharacterClass")()); }
			ScriptFunction ReadCharacterClasses() { mixin(MGF!("mReadCharacterClasses", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadCharacterClasses")()); }
			ScriptFunction ReadActiveCharacterClass() { mixin(MGF!("mReadActiveCharacterClass", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadActiveCharacterClass")()); }
			ScriptFunction WritePlayerProfileData() { mixin(MGF!("mWritePlayerProfileData", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.WritePlayerProfileData")()); }
			ScriptFunction ReadPlayerProfileData() { mixin(MGF!("mReadPlayerProfileData", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadPlayerProfileData")()); }
			ScriptFunction NotifyTeamChange() { mixin(MGF!("mNotifyTeamChange", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.NotifyTeamChange")()); }
			ScriptFunction GetCharacterIdFromClassId() { mixin(MGF!("mGetCharacterIdFromClassId", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetCharacterIdFromClassId")()); }
			ScriptFunction IsMuted() { mixin(MGF!("mIsMuted", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.IsMuted")()); }
			ScriptFunction CanCommunicate() { mixin(MGF!("mCanCommunicate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.CanCommunicate")()); }
			ScriptFunction AddLoginStatusChangeDelegate() { mixin(MGF!("mAddLoginStatusChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLoginStatusChangeDelegate")()); }
			ScriptFunction ClearLoginStatusChangeDelegate() { mixin(MGF!("mClearLoginStatusChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLoginStatusChangeDelegate")()); }
			ScriptFunction AddLoginCancelledDelegate() { mixin(MGF!("mAddLoginCancelledDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddLoginCancelledDelegate")()); }
			ScriptFunction ClearLoginCancelledDelegate() { mixin(MGF!("mClearLoginCancelledDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearLoginCancelledDelegate")()); }
			ScriptFunction ReadProfileSettings() { mixin(MGF!("mReadProfileSettings", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadProfileSettings")()); }
			ScriptFunction WriteProfileSettings() { mixin(MGF!("mWriteProfileSettings", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.WriteProfileSettings")()); }
			ScriptFunction GetProfileSettings() { mixin(MGF!("mGetProfileSettings", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetProfileSettings")()); }
			ScriptFunction AddMutingChangeDelegate() { mixin(MGF!("mAddMutingChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddMutingChangeDelegate")()); }
			ScriptFunction ClearMutingChangeDelegate() { mixin(MGF!("mClearMutingChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearMutingChangeDelegate")()); }
			ScriptFunction AddReadProfileSettingsCompleteDelegate() { mixin(MGF!("mAddReadProfileSettingsCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReadProfileSettingsCompleteDelegate")()); }
			ScriptFunction ClearReadProfileSettingsCompleteDelegate() { mixin(MGF!("mClearReadProfileSettingsCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReadProfileSettingsCompleteDelegate")()); }
			ScriptFunction AddWriteProfileSettingsCompleteDelegate() { mixin(MGF!("mAddWriteProfileSettingsCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddWriteProfileSettingsCompleteDelegate")()); }
			ScriptFunction ClearWriteProfileSettingsCompleteDelegate() { mixin(MGF!("mClearWriteProfileSettingsCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearWriteProfileSettingsCompleteDelegate")()); }
			ScriptFunction ReadPlayerStorage() { mixin(MGF!("mReadPlayerStorage", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadPlayerStorage")()); }
			ScriptFunction AddReadPlayerStorageCompleteDelegate() { mixin(MGF!("mAddReadPlayerStorageCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReadPlayerStorageCompleteDelegate")()); }
			ScriptFunction ClearReadPlayerStorageCompleteDelegate() { mixin(MGF!("mClearReadPlayerStorageCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReadPlayerStorageCompleteDelegate")()); }
			ScriptFunction ReadPlayerStorageForNetId() { mixin(MGF!("mReadPlayerStorageForNetId", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadPlayerStorageForNetId")()); }
			ScriptFunction AddReadPlayerStorageForNetIdCompleteDelegate() { mixin(MGF!("mAddReadPlayerStorageForNetIdCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReadPlayerStorageForNetIdCompleteDelegate")()); }
			ScriptFunction ClearReadPlayerStorageForNetIdCompleteDelegate() { mixin(MGF!("mClearReadPlayerStorageForNetIdCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReadPlayerStorageForNetIdCompleteDelegate")()); }
			ScriptFunction GetPlayerStorage() { mixin(MGF!("mGetPlayerStorage", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetPlayerStorage")()); }
			ScriptFunction WritePlayerStorage() { mixin(MGF!("mWritePlayerStorage", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.WritePlayerStorage")()); }
			ScriptFunction AddWritePlayerStorageCompleteDelegate() { mixin(MGF!("mAddWritePlayerStorageCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddWritePlayerStorageCompleteDelegate")()); }
			ScriptFunction ClearWritePlayerStorageCompleteDelegate() { mixin(MGF!("mClearWritePlayerStorageCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearWritePlayerStorageCompleteDelegate")()); }
			ScriptFunction AddFriendsChangeDelegate() { mixin(MGF!("mAddFriendsChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddFriendsChangeDelegate")()); }
			ScriptFunction ClearFriendsChangeDelegate() { mixin(MGF!("mClearFriendsChangeDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearFriendsChangeDelegate")()); }
			ScriptFunction ReadFriendsList() { mixin(MGF!("mReadFriendsList", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadFriendsList")()); }
			ScriptFunction AddReadFriendsCompleteDelegate() { mixin(MGF!("mAddReadFriendsCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReadFriendsCompleteDelegate")()); }
			ScriptFunction ClearReadFriendsCompleteDelegate() { mixin(MGF!("mClearReadFriendsCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReadFriendsCompleteDelegate")()); }
			ScriptFunction GetFriendsList() { mixin(MGF!("mGetFriendsList", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetFriendsList")()); }
			ScriptFunction SetOnlineStatus() { mixin(MGF!("mSetOnlineStatus", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.SetOnlineStatus")()); }
			ScriptFunction ShowKeyboardUI() { mixin(MGF!("mShowKeyboardUI", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ShowKeyboardUI")()); }
			ScriptFunction AddKeyboardInputDoneDelegate() { mixin(MGF!("mAddKeyboardInputDoneDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddKeyboardInputDoneDelegate")()); }
			ScriptFunction ClearKeyboardInputDoneDelegate() { mixin(MGF!("mClearKeyboardInputDoneDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearKeyboardInputDoneDelegate")()); }
			ScriptFunction GetKeyboardInputResults() { mixin(MGF!("mGetKeyboardInputResults", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetKeyboardInputResults")()); }
			ScriptFunction AddFriend() { mixin(MGF!("mAddFriend", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddFriend")()); }
			ScriptFunction AddFriendByName() { mixin(MGF!("mAddFriendByName", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddFriendByName")()); }
			ScriptFunction AddAddFriendByNameCompleteDelegate() { mixin(MGF!("mAddAddFriendByNameCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddAddFriendByNameCompleteDelegate")()); }
			ScriptFunction ClearAddFriendByNameCompleteDelegate() { mixin(MGF!("mClearAddFriendByNameCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearAddFriendByNameCompleteDelegate")()); }
			ScriptFunction AcceptFriendInvite() { mixin(MGF!("mAcceptFriendInvite", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AcceptFriendInvite")()); }
			ScriptFunction DenyFriendInvite() { mixin(MGF!("mDenyFriendInvite", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.DenyFriendInvite")()); }
			ScriptFunction RemoveFriend() { mixin(MGF!("mRemoveFriend", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.RemoveFriend")()); }
			ScriptFunction AddFriendInviteReceivedDelegate() { mixin(MGF!("mAddFriendInviteReceivedDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddFriendInviteReceivedDelegate")()); }
			ScriptFunction ClearFriendInviteReceivedDelegate() { mixin(MGF!("mClearFriendInviteReceivedDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearFriendInviteReceivedDelegate")()); }
			ScriptFunction SendMessageToFriend() { mixin(MGF!("mSendMessageToFriend", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.SendMessageToFriend")()); }
			ScriptFunction SendGameInviteToFriend() { mixin(MGF!("mSendGameInviteToFriend", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.SendGameInviteToFriend")()); }
			ScriptFunction SendGameInviteToFriends() { mixin(MGF!("mSendGameInviteToFriends", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.SendGameInviteToFriends")()); }
			ScriptFunction AddReceivedGameInviteDelegate() { mixin(MGF!("mAddReceivedGameInviteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReceivedGameInviteDelegate")()); }
			ScriptFunction ClearReceivedGameInviteDelegate() { mixin(MGF!("mClearReceivedGameInviteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReceivedGameInviteDelegate")()); }
			ScriptFunction JoinFriendGame() { mixin(MGF!("mJoinFriendGame", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.JoinFriendGame")()); }
			ScriptFunction AddJoinFriendGameCompleteDelegate() { mixin(MGF!("mAddJoinFriendGameCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddJoinFriendGameCompleteDelegate")()); }
			ScriptFunction ClearJoinFriendGameCompleteDelegate() { mixin(MGF!("mClearJoinFriendGameCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearJoinFriendGameCompleteDelegate")()); }
			ScriptFunction GetFriendMessages() { mixin(MGF!("mGetFriendMessages", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetFriendMessages")()); }
			ScriptFunction AddFriendMessageReceivedDelegate() { mixin(MGF!("mAddFriendMessageReceivedDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddFriendMessageReceivedDelegate")()); }
			ScriptFunction ClearFriendMessageReceivedDelegate() { mixin(MGF!("mClearFriendMessageReceivedDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearFriendMessageReceivedDelegate")()); }
			ScriptFunction UnlockAchievement() { mixin(MGF!("mUnlockAchievement", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.UnlockAchievement")()); }
			ScriptFunction ReadAchievements() { mixin(MGF!("mReadAchievements", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ReadAchievements")()); }
			ScriptFunction GetAchievements() { mixin(MGF!("mGetAchievements", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetAchievements")()); }
			ScriptFunction AddUnlockAchievementCompleteDelegate() { mixin(MGF!("mAddUnlockAchievementCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddUnlockAchievementCompleteDelegate")()); }
			ScriptFunction ClearUnlockAchievementCompleteDelegate() { mixin(MGF!("mClearUnlockAchievementCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearUnlockAchievementCompleteDelegate")()); }
			ScriptFunction AddReadAchievementsCompleteDelegate() { mixin(MGF!("mAddReadAchievementsCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.AddReadAchievementsCompleteDelegate")()); }
			ScriptFunction ClearReadAchievementsCompleteDelegate() { mixin(MGF!("mClearReadAchievementsCompleteDelegate", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ClearReadAchievementsCompleteDelegate")()); }
			ScriptFunction DeleteMessage() { mixin(MGF!("mDeleteMessage", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.DeleteMessage")()); }
			ScriptFunction ShowFriendsUI() { mixin(MGF!("mShowFriendsUI", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ShowFriendsUI")()); }
			ScriptFunction ShowLoginUI() { mixin(MGF!("mShowLoginUI", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.ShowLoginUI")()); }
			ScriptFunction SetNetworkNotificationPosition() { mixin(MGF!("mSetNetworkNotificationPosition", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.SetNetworkNotificationPosition")()); }
			ScriptFunction GetLocale() { mixin(MGF!("mGetLocale", "Function OnlineSubsystemMcts.OnlineSubsystemMcts.GetLocale")()); }
		}
	}
	struct ControllerConnectionState
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct OnlineSubsystemMcts.OnlineSubsystemMcts.ControllerConnectionState")()); }
		@property final auto ref
		{
			int bLastIsControllerConnected() { mixin(MGPS!(int, 4)()); }
			int bIsControllerConnected() { mixin(MGPS!(int, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ConnectionStatusChangeDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 316)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) LoginChangeDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 328)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) LoginFailedDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 340)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) LogoutCompletedDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 352)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) LinkStatusDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 364)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ChatMessageDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 376)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) KeyboardInputDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 404)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadAchievementsComplete__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnUnlockAchievementComplete__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnFriendMessageReceived__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnJoinFriendGameComplete__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReceivedGameInvite__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnFriendInviteReceived__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnAddFriendByNameComplete__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnKeyboardInputComplete__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadFriendsComplete__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnFriendsChange__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnWritePlayerStorageComplete__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadPlayerStorageForNetIdComplete__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadPlayerStorageComplete__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnWriteProfileSettingsComplete__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadProfileSettingsComplete__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnMutingChange__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLoginCancelled__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLoginStatusChange__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnChatMessage__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnStorageDeviceChange__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnConnectionStatusChange__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnControllerChange__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnExternalUIChange__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLinkStatusChange__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLogoutCompleted__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLoginFailed__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLoginChange__Delegate'!
			float ConnectionPresenceElapsedTime() { mixin(MGPC!(float, 452)()); }
			float ConnectionPresenceTimeInterval() { mixin(MGPC!(float, 448)()); }
			OnlineSubsystemMcts.ControllerConnectionState ControllerStates() { mixin(MGPC!(OnlineSubsystemMcts.ControllerConnectionState, 416)()); }
			ScriptString KeyboardResultsString() { mixin(MGPC!(ScriptString, 388)()); }
			ScriptString ProfileDataExtension() { mixin(MGPC!(ScriptString, 304)()); }
			ScriptString ProfileDataDirectory() { mixin(MGPC!(ScriptString, 292)()); }
			OnlineSubsystem.ENetworkNotificationPosition CurrentNotificationPosition() { mixin(MGPC!(OnlineSubsystem.ENetworkNotificationPosition, 290)()); }
			ubyte bWasKeyboardInputCanceled() { mixin(MGPC!(ubyte, 289)()); }
			OnlineSubsystem.ELoginStatus LoggedInStatus() { mixin(MGPC!(OnlineSubsystem.ELoginStatus, 288)()); }
			int LoggedInPlayerNum() { mixin(MGPC!(int, 284)()); }
			OnlineSubsystem.UniqueNetId LoggedInPlayerId() { mixin(MGPC!(OnlineSubsystem.UniqueNetId, 276)()); }
			ScriptString LoggedInPlayerName() { mixin(MGPC!(ScriptString, 264)()); }
			ScriptString LocalProfileName() { mixin(MGPC!(ScriptString, 252)()); }
			OnlineVoiceInterfaceMcts MctsVoiceInt() { mixin(MGPC!(OnlineVoiceInterfaceMcts, 248)()); }
			OnlineGameInterfaceMcts MctsGameInt() { mixin(MGPC!(OnlineGameInterfaceMcts, 244)()); }
		}
		bool bShouldUseMcp() { mixin(MGBPC!(400, 0x4)()); }
		bool bShouldUseMcp(bool val) { mixin(MSBPC!(400, 0x4)()); }
		bool bLastHasConnection() { mixin(MGBPC!(400, 0x2)()); }
		bool bLastHasConnection(bool val) { mixin(MSBPC!(400, 0x2)()); }
		bool bNeedsKeyboardTicking() { mixin(MGBPC!(400, 0x1)()); }
		bool bNeedsKeyboardTicking(bool val) { mixin(MSBPC!(400, 0x1)()); }
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
	bool GetUniquePlayerId(ubyte LocalUserNum, ref OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
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
	bool AreAnyFriends(ubyte LocalUserNum, ref ScriptArray!(OnlineSubsystem.FriendsQuery) Query)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.FriendsQuery)*)&params[4] = Query;
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
	void ReadCharacterClasses(ref ScriptArray!(int) CharList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = CharList;
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
	OnlineSubsystem.EOnlineEnumerationReadState GetFriendsList(ubyte LocalUserNum, ref ScriptArray!(OnlineSubsystem.OnlineFriend) Friends, int Count, int StartingAt)
	{
		ubyte params[25];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4] = Friends;
		*cast(int*)&params[16] = Count;
		*cast(int*)&params[20] = StartingAt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFriendsList, params.ptr, cast(void*)0);
		*Friends = *cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4];
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[24];
	}
	void SetOnlineStatus(ubyte LocalUserNum, int StatusId, ref const ScriptArray!(Settings.LocalizedStringSetting) LocalizedStringSettings, ref const ScriptArray!(Settings.SettingsProperty) Properties)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = StatusId;
		*cast(ScriptArray!(Settings.LocalizedStringSetting)*)&params[8] = LocalizedStringSettings;
		*cast(ScriptArray!(Settings.SettingsProperty)*)&params[20] = Properties;
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
	ScriptString GetKeyboardInputResults(ref ubyte bWasCanceled)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = bWasCanceled;
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
	void GetFriendMessages(ubyte LocalUserNum, ref ScriptArray!(OnlineSubsystem.OnlineFriendMessage) FriendMessages)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriendMessage)*)&params[4] = FriendMessages;
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
	OnlineSubsystem.EOnlineEnumerationReadState GetAchievements(ubyte LocalUserNum, ref ScriptArray!(OnlineSubsystem.AchievementDetails) Achievements, int TitleId)
	{
		ubyte params[21];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.AchievementDetails)*)&params[4] = Achievements;
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
