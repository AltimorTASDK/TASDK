module UnrealScript.UTGame.UTPlayerController;

import ScriptClasses;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTSeqAct_PlayCameraAnim;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTAnnouncer;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTTeamInfo;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.UTGame.UTMusicManager;
import UnrealScript.UTGame.UTUIDataStore_StringAliasBindingsMap;
import UnrealScript.Engine.SpeechRecognition;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.SavedMove;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.SoundCue;
import UnrealScript.UTGame.UTSeqAct_StopCameraAnim;
import UnrealScript.Engine.Weapon;
import UnrealScript.UTGame.UTPlayerReplicationInfo;

extern(C++) interface UTPlayerController : UDKPlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTPlayerController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mServerThrowWeapon;
			ScriptFunction mInitInputSystem;
			ScriptFunction mPulseTeamColor;
			ScriptFunction mServerSetCharacterClass;
			ScriptFunction mClearStringAliasBindingMapCache;
			ScriptFunction mRegisterCustomPlayerDataStores;
			ScriptFunction mUnregisterPlayerDataStores;
			ScriptFunction mAddOnlineDelegates;
			ScriptFunction mClearOnlineDelegates;
			ScriptFunction mClientSetOnlineStatus;
			ScriptFunction mOnConnectionStatusChange;
			ScriptFunction mOnLinkStatusChanged;
			ScriptFunction mOnReadProfileSettingsComplete;
			ScriptFunction mOnGameInviteReceived;
			ScriptFunction mOnFriendInviteReceived;
			ScriptFunction mOnFriendMessageReceived;
			ScriptFunction mNotifyInviteFailed;
			ScriptFunction mNotifyNotAllPlayersCanJoinInvite;
			ScriptFunction mNotifyNotEnoughSpaceInInvite;
			ScriptFunction mClientWasKicked;
			ScriptFunction mSetFrontEndErrorMessage;
			ScriptFunction mQuitToMainMenu;
			ScriptFunction mFinishQuitToMainMenu;
			ScriptFunction mCleanupOnlineSubsystemSession;
			ScriptFunction mOnEndOnlineGameComplete;
			ScriptFunction mOnDestroyOnlineGameComplete;
			ScriptFunction mClientSetSpeechRecognitionObject;
			ScriptFunction mSpeechRecognitionComplete;
			ScriptFunction mServerProcessSpeechRecognition;
			ScriptFunction mClientHearSound;
			ScriptFunction mAimingHelp;
			ScriptFunction mAimHelpModifier;
			ScriptFunction mGetAdjustedAimFor;
			ScriptFunction mFindVehicleToDrive;
			ScriptFunction mCheckPickedVehicle;
			ScriptFunction mClientSetRequestedEntryWithFlag;
			ScriptFunction mCheckVehicleToDrive;
			ScriptFunction mDropFlag;
			ScriptFunction mServerDropFlag;
			ScriptFunction mLandingShake;
			ScriptFunction mPlayBeepSound;
			ScriptFunction mReceiveWarning;
			ScriptFunction mReceiveProjectileWarning;
			ScriptFunction mProjectileWarningTimer;
			ScriptFunction mPlayWinMessage;
			ScriptFunction mTriggerInteracted;
			ScriptFunction mPlayVehicleHorn;
			ScriptFunction mServerPlayVehicleHorn;
			ScriptFunction mTyping;
			ScriptFunction mDestroyed;
			ScriptFunction mOnControllerChanged;
			ScriptFunction mSoakPause;
			ScriptFunction mDrawHUD;
			ScriptFunction mKickWarning;
			ScriptFunction mCheckJumpOrDuck;
			ScriptFunction mFOV;
			ScriptFunction mFixFOV;
			ScriptFunction mRestart;
			ScriptFunction mClientRestart;
			ScriptFunction mSetViewTarget;
			ScriptFunction mCheckAutoObjective;
			ScriptFunction mSetAutoObjective;
			ScriptFunction mClientSetAutoObjective;
			ScriptFunction mPossess;
			ScriptFunction mAcknowledgePossession;
			ScriptFunction mIdentifyTeamMessage;
			ScriptFunction mReceivedPlayer;
			ScriptFunction mServerPlayerPreferences;
			ScriptFunction mServerSetHand;
			ScriptFunction mSetHand;
			ScriptFunction mResetCameraMode;
			ScriptFunction mUsingFirstPersonCamera;
			ScriptFunction mServerSetAutoTaunt;
			ScriptFunction mSetAutoTaunt;
			ScriptFunction mToggleScreenShotMode;
			ScriptFunction mPlayStartupMessage;
			ScriptFunction mNotifyTakeHit;
			ScriptFunction mClientPlayTakeHit;
			ScriptFunction mServerUse;
			ScriptFunction mUse;
			ScriptFunction mPerformedUseAction;
			ScriptFunction mClearDoubleClick;
			ScriptFunction mShowScoreboard;
			ScriptFunction mDisplayDebug;
			ScriptFunction mReset;
			ScriptFunction mClientReset;
			ScriptFunction mBehindView;
			ScriptFunction mSetBehindView;
			ScriptFunction mClientSetBehindView;
			ScriptFunction mSetCameraMode;
			ScriptFunction mSpawnCamera;
			ScriptFunction mGetPlayerViewPoint;
			ScriptFunction mCalcCameraOnViewTarget;
			ScriptFunction mClientMusicEvent;
			ScriptFunction mAlreadyInActionMusic;
			ScriptFunction mClientPlayAnnouncement;
			ScriptFunction mPlayAnnouncement;
			ScriptFunction mDamageShake;
			ScriptFunction mStopViewShaking;
			ScriptFunction mPlayCameraAnim;
			ScriptFunction mStopCameraAnim;
			ScriptFunction mSetCameraAnimStrength;
			ScriptFunction mClientPlayCameraAnim;
			ScriptFunction mClientStopCameraAnim;
			ScriptFunction mOnPlayCameraAnim;
			ScriptFunction mOnStopCameraAnim;
			ScriptFunction mViewShake;
			ScriptFunction mToggleMelee;
			ScriptFunction mToggleTranslocator;
			ScriptFunction mCallServerMove;
			ScriptFunction mShortServerMove;
			ScriptFunction mLongClientAdjustPosition;
			ScriptFunction mViewNextBot;
			ScriptFunction mSwitchWeapon;
			ScriptFunction mServerViewSelf;
			ScriptFunction mViewPlayerByName;
			ScriptFunction mServerViewPlayerByName;
			ScriptFunction mViewObjective;
			ScriptFunction mServerViewObjective;
			ScriptFunction mPrevWeapon;
			ScriptFunction mNextWeapon;
			ScriptFunction mAdjustCameraScale;
			ScriptFunction mCanCommunicate;
			ScriptFunction mShowMidGameMenu;
			ScriptFunction mClientGameEnded;
			ScriptFunction mRoundHasEnded;
			ScriptFunction mClientRoundEnded;
			ScriptFunction mCheckBulletWhip;
			ScriptFunction mPawnDied;
			ScriptFunction mClientPawnDied;
			ScriptFunction mOnUpdatePropertyFOVAngle;
			ScriptFunction mAdjustFOV;
			ScriptFunction mStartZoom;
			ScriptFunction mStartZoomNonlinear;
			ScriptFunction mStopZoom;
			ScriptFunction mEndZoom;
			ScriptFunction mEndZoomNonlinear;
			ScriptFunction mClientEndZoom;
			ScriptFunction mUpdateRotation;
			ScriptFunction mCharacterProcessingComplete;
			ScriptFunction mCanRestartPlayer;
			ScriptFunction mSendMessage;
			ScriptFunction mReceiveBotVoiceMessage;
			ScriptFunction mServerSetNetSpeed;
			ScriptFunction mBullseyeMessage;
			ScriptFunction mServerChangeTeam;
			ScriptFunction mGetSeamlessTravelActorList;
			ScriptFunction mServerKickBan;
			ScriptFunction mAllowTTSMessageFrom;
			ScriptFunction mServerSay;
			ScriptFunction mServerTeamSay;
			ScriptFunction mAllowTextMessage;
			ScriptFunction mAdminCmdOk;
			ScriptFunction mAdminLogin;
			ScriptFunction mServerAdminLogin;
			ScriptFunction mAdminLogout;
			ScriptFunction mServerAdminLogOut;
			ScriptFunction mAdmin;
			ScriptFunction mServerAdmin;
			ScriptFunction mAdminKickBan;
			ScriptFunction mAdminKick;
			ScriptFunction mAdminPlayerList;
			ScriptFunction mAdminRestartMap;
			ScriptFunction mServerRestartMap;
			ScriptFunction mAdminChangeMap;
			ScriptFunction mServerChangeMap;
			ScriptFunction mAdminForceVoiceMute;
			ScriptFunction mServerForceVoiceMute;
			ScriptFunction mAdminForceVoiceUnMute;
			ScriptFunction mServerForceVoiceUnMute;
			ScriptFunction mAdminForceTextMute;
			ScriptFunction mServerForceTextMute;
			ScriptFunction mAdminForceTextUnMute;
			ScriptFunction mServerForceTextUnMute;
			ScriptFunction mDisconnect;
			ScriptFunction mOnScoreChanged;
		}
		public @property static final
		{
			ScriptFunction ServerThrowWeapon() { return mServerThrowWeapon ? mServerThrowWeapon : (mServerThrowWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerThrowWeapon")); }
			ScriptFunction InitInputSystem() { return mInitInputSystem ? mInitInputSystem : (mInitInputSystem = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.InitInputSystem")); }
			ScriptFunction PulseTeamColor() { return mPulseTeamColor ? mPulseTeamColor : (mPulseTeamColor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.PulseTeamColor")); }
			ScriptFunction ServerSetCharacterClass() { return mServerSetCharacterClass ? mServerSetCharacterClass : (mServerSetCharacterClass = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerSetCharacterClass")); }
			ScriptFunction ClearStringAliasBindingMapCache() { return mClearStringAliasBindingMapCache ? mClearStringAliasBindingMapCache : (mClearStringAliasBindingMapCache = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClearStringAliasBindingMapCache")); }
			ScriptFunction RegisterCustomPlayerDataStores() { return mRegisterCustomPlayerDataStores ? mRegisterCustomPlayerDataStores : (mRegisterCustomPlayerDataStores = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.RegisterCustomPlayerDataStores")); }
			ScriptFunction UnregisterPlayerDataStores() { return mUnregisterPlayerDataStores ? mUnregisterPlayerDataStores : (mUnregisterPlayerDataStores = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.UnregisterPlayerDataStores")); }
			ScriptFunction AddOnlineDelegates() { return mAddOnlineDelegates ? mAddOnlineDelegates : (mAddOnlineDelegates = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AddOnlineDelegates")); }
			ScriptFunction ClearOnlineDelegates() { return mClearOnlineDelegates ? mClearOnlineDelegates : (mClearOnlineDelegates = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClearOnlineDelegates")); }
			ScriptFunction ClientSetOnlineStatus() { return mClientSetOnlineStatus ? mClientSetOnlineStatus : (mClientSetOnlineStatus = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientSetOnlineStatus")); }
			ScriptFunction OnConnectionStatusChange() { return mOnConnectionStatusChange ? mOnConnectionStatusChange : (mOnConnectionStatusChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnConnectionStatusChange")); }
			ScriptFunction OnLinkStatusChanged() { return mOnLinkStatusChanged ? mOnLinkStatusChanged : (mOnLinkStatusChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnLinkStatusChanged")); }
			ScriptFunction OnReadProfileSettingsComplete() { return mOnReadProfileSettingsComplete ? mOnReadProfileSettingsComplete : (mOnReadProfileSettingsComplete = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnReadProfileSettingsComplete")); }
			ScriptFunction OnGameInviteReceived() { return mOnGameInviteReceived ? mOnGameInviteReceived : (mOnGameInviteReceived = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnGameInviteReceived")); }
			ScriptFunction OnFriendInviteReceived() { return mOnFriendInviteReceived ? mOnFriendInviteReceived : (mOnFriendInviteReceived = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnFriendInviteReceived")); }
			ScriptFunction OnFriendMessageReceived() { return mOnFriendMessageReceived ? mOnFriendMessageReceived : (mOnFriendMessageReceived = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnFriendMessageReceived")); }
			ScriptFunction NotifyInviteFailed() { return mNotifyInviteFailed ? mNotifyInviteFailed : (mNotifyInviteFailed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.NotifyInviteFailed")); }
			ScriptFunction NotifyNotAllPlayersCanJoinInvite() { return mNotifyNotAllPlayersCanJoinInvite ? mNotifyNotAllPlayersCanJoinInvite : (mNotifyNotAllPlayersCanJoinInvite = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.NotifyNotAllPlayersCanJoinInvite")); }
			ScriptFunction NotifyNotEnoughSpaceInInvite() { return mNotifyNotEnoughSpaceInInvite ? mNotifyNotEnoughSpaceInInvite : (mNotifyNotEnoughSpaceInInvite = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.NotifyNotEnoughSpaceInInvite")); }
			ScriptFunction ClientWasKicked() { return mClientWasKicked ? mClientWasKicked : (mClientWasKicked = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientWasKicked")); }
			ScriptFunction SetFrontEndErrorMessage() { return mSetFrontEndErrorMessage ? mSetFrontEndErrorMessage : (mSetFrontEndErrorMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SetFrontEndErrorMessage")); }
			ScriptFunction QuitToMainMenu() { return mQuitToMainMenu ? mQuitToMainMenu : (mQuitToMainMenu = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.QuitToMainMenu")); }
			ScriptFunction FinishQuitToMainMenu() { return mFinishQuitToMainMenu ? mFinishQuitToMainMenu : (mFinishQuitToMainMenu = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.FinishQuitToMainMenu")); }
			ScriptFunction CleanupOnlineSubsystemSession() { return mCleanupOnlineSubsystemSession ? mCleanupOnlineSubsystemSession : (mCleanupOnlineSubsystemSession = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.CleanupOnlineSubsystemSession")); }
			ScriptFunction OnEndOnlineGameComplete() { return mOnEndOnlineGameComplete ? mOnEndOnlineGameComplete : (mOnEndOnlineGameComplete = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnEndOnlineGameComplete")); }
			ScriptFunction OnDestroyOnlineGameComplete() { return mOnDestroyOnlineGameComplete ? mOnDestroyOnlineGameComplete : (mOnDestroyOnlineGameComplete = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnDestroyOnlineGameComplete")); }
			ScriptFunction ClientSetSpeechRecognitionObject() { return mClientSetSpeechRecognitionObject ? mClientSetSpeechRecognitionObject : (mClientSetSpeechRecognitionObject = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientSetSpeechRecognitionObject")); }
			ScriptFunction SpeechRecognitionComplete() { return mSpeechRecognitionComplete ? mSpeechRecognitionComplete : (mSpeechRecognitionComplete = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SpeechRecognitionComplete")); }
			ScriptFunction ServerProcessSpeechRecognition() { return mServerProcessSpeechRecognition ? mServerProcessSpeechRecognition : (mServerProcessSpeechRecognition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerProcessSpeechRecognition")); }
			ScriptFunction ClientHearSound() { return mClientHearSound ? mClientHearSound : (mClientHearSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientHearSound")); }
			ScriptFunction AimingHelp() { return mAimingHelp ? mAimingHelp : (mAimingHelp = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AimingHelp")); }
			ScriptFunction AimHelpModifier() { return mAimHelpModifier ? mAimHelpModifier : (mAimHelpModifier = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AimHelpModifier")); }
			ScriptFunction GetAdjustedAimFor() { return mGetAdjustedAimFor ? mGetAdjustedAimFor : (mGetAdjustedAimFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.GetAdjustedAimFor")); }
			ScriptFunction FindVehicleToDrive() { return mFindVehicleToDrive ? mFindVehicleToDrive : (mFindVehicleToDrive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.FindVehicleToDrive")); }
			ScriptFunction CheckPickedVehicle() { return mCheckPickedVehicle ? mCheckPickedVehicle : (mCheckPickedVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.CheckPickedVehicle")); }
			ScriptFunction ClientSetRequestedEntryWithFlag() { return mClientSetRequestedEntryWithFlag ? mClientSetRequestedEntryWithFlag : (mClientSetRequestedEntryWithFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientSetRequestedEntryWithFlag")); }
			ScriptFunction CheckVehicleToDrive() { return mCheckVehicleToDrive ? mCheckVehicleToDrive : (mCheckVehicleToDrive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.CheckVehicleToDrive")); }
			ScriptFunction DropFlag() { return mDropFlag ? mDropFlag : (mDropFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.DropFlag")); }
			ScriptFunction ServerDropFlag() { return mServerDropFlag ? mServerDropFlag : (mServerDropFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerDropFlag")); }
			ScriptFunction LandingShake() { return mLandingShake ? mLandingShake : (mLandingShake = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.LandingShake")); }
			ScriptFunction PlayBeepSound() { return mPlayBeepSound ? mPlayBeepSound : (mPlayBeepSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.PlayBeepSound")); }
			ScriptFunction ReceiveWarning() { return mReceiveWarning ? mReceiveWarning : (mReceiveWarning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ReceiveWarning")); }
			ScriptFunction ReceiveProjectileWarning() { return mReceiveProjectileWarning ? mReceiveProjectileWarning : (mReceiveProjectileWarning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ReceiveProjectileWarning")); }
			ScriptFunction ProjectileWarningTimer() { return mProjectileWarningTimer ? mProjectileWarningTimer : (mProjectileWarningTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ProjectileWarningTimer")); }
			ScriptFunction PlayWinMessage() { return mPlayWinMessage ? mPlayWinMessage : (mPlayWinMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.PlayWinMessage")); }
			ScriptFunction TriggerInteracted() { return mTriggerInteracted ? mTriggerInteracted : (mTriggerInteracted = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.TriggerInteracted")); }
			ScriptFunction PlayVehicleHorn() { return mPlayVehicleHorn ? mPlayVehicleHorn : (mPlayVehicleHorn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.PlayVehicleHorn")); }
			ScriptFunction ServerPlayVehicleHorn() { return mServerPlayVehicleHorn ? mServerPlayVehicleHorn : (mServerPlayVehicleHorn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerPlayVehicleHorn")); }
			ScriptFunction Typing() { return mTyping ? mTyping : (mTyping = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.Typing")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.Destroyed")); }
			ScriptFunction OnControllerChanged() { return mOnControllerChanged ? mOnControllerChanged : (mOnControllerChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnControllerChanged")); }
			ScriptFunction SoakPause() { return mSoakPause ? mSoakPause : (mSoakPause = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SoakPause")); }
			ScriptFunction DrawHUD() { return mDrawHUD ? mDrawHUD : (mDrawHUD = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.DrawHUD")); }
			ScriptFunction KickWarning() { return mKickWarning ? mKickWarning : (mKickWarning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.KickWarning")); }
			ScriptFunction CheckJumpOrDuck() { return mCheckJumpOrDuck ? mCheckJumpOrDuck : (mCheckJumpOrDuck = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.CheckJumpOrDuck")); }
			ScriptFunction FOV() { return mFOV ? mFOV : (mFOV = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.FOV")); }
			ScriptFunction FixFOV() { return mFixFOV ? mFixFOV : (mFixFOV = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.FixFOV")); }
			ScriptFunction Restart() { return mRestart ? mRestart : (mRestart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.Restart")); }
			ScriptFunction ClientRestart() { return mClientRestart ? mClientRestart : (mClientRestart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientRestart")); }
			ScriptFunction SetViewTarget() { return mSetViewTarget ? mSetViewTarget : (mSetViewTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SetViewTarget")); }
			ScriptFunction CheckAutoObjective() { return mCheckAutoObjective ? mCheckAutoObjective : (mCheckAutoObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.CheckAutoObjective")); }
			ScriptFunction SetAutoObjective() { return mSetAutoObjective ? mSetAutoObjective : (mSetAutoObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SetAutoObjective")); }
			ScriptFunction ClientSetAutoObjective() { return mClientSetAutoObjective ? mClientSetAutoObjective : (mClientSetAutoObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientSetAutoObjective")); }
			ScriptFunction Possess() { return mPossess ? mPossess : (mPossess = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.Possess")); }
			ScriptFunction AcknowledgePossession() { return mAcknowledgePossession ? mAcknowledgePossession : (mAcknowledgePossession = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AcknowledgePossession")); }
			ScriptFunction IdentifyTeamMessage() { return mIdentifyTeamMessage ? mIdentifyTeamMessage : (mIdentifyTeamMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.IdentifyTeamMessage")); }
			ScriptFunction ReceivedPlayer() { return mReceivedPlayer ? mReceivedPlayer : (mReceivedPlayer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ReceivedPlayer")); }
			ScriptFunction ServerPlayerPreferences() { return mServerPlayerPreferences ? mServerPlayerPreferences : (mServerPlayerPreferences = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerPlayerPreferences")); }
			ScriptFunction ServerSetHand() { return mServerSetHand ? mServerSetHand : (mServerSetHand = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerSetHand")); }
			ScriptFunction SetHand() { return mSetHand ? mSetHand : (mSetHand = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SetHand")); }
			ScriptFunction ResetCameraMode() { return mResetCameraMode ? mResetCameraMode : (mResetCameraMode = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ResetCameraMode")); }
			ScriptFunction UsingFirstPersonCamera() { return mUsingFirstPersonCamera ? mUsingFirstPersonCamera : (mUsingFirstPersonCamera = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.UsingFirstPersonCamera")); }
			ScriptFunction ServerSetAutoTaunt() { return mServerSetAutoTaunt ? mServerSetAutoTaunt : (mServerSetAutoTaunt = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerSetAutoTaunt")); }
			ScriptFunction SetAutoTaunt() { return mSetAutoTaunt ? mSetAutoTaunt : (mSetAutoTaunt = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SetAutoTaunt")); }
			ScriptFunction ToggleScreenShotMode() { return mToggleScreenShotMode ? mToggleScreenShotMode : (mToggleScreenShotMode = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ToggleScreenShotMode")); }
			ScriptFunction PlayStartupMessage() { return mPlayStartupMessage ? mPlayStartupMessage : (mPlayStartupMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.PlayStartupMessage")); }
			ScriptFunction NotifyTakeHit() { return mNotifyTakeHit ? mNotifyTakeHit : (mNotifyTakeHit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.NotifyTakeHit")); }
			ScriptFunction ClientPlayTakeHit() { return mClientPlayTakeHit ? mClientPlayTakeHit : (mClientPlayTakeHit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientPlayTakeHit")); }
			ScriptFunction ServerUse() { return mServerUse ? mServerUse : (mServerUse = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerUse")); }
			ScriptFunction Use() { return mUse ? mUse : (mUse = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.Use")); }
			ScriptFunction PerformedUseAction() { return mPerformedUseAction ? mPerformedUseAction : (mPerformedUseAction = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.PerformedUseAction")); }
			ScriptFunction ClearDoubleClick() { return mClearDoubleClick ? mClearDoubleClick : (mClearDoubleClick = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClearDoubleClick")); }
			ScriptFunction ShowScoreboard() { return mShowScoreboard ? mShowScoreboard : (mShowScoreboard = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ShowScoreboard")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.DisplayDebug")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.Reset")); }
			ScriptFunction ClientReset() { return mClientReset ? mClientReset : (mClientReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientReset")); }
			ScriptFunction BehindView() { return mBehindView ? mBehindView : (mBehindView = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.BehindView")); }
			ScriptFunction SetBehindView() { return mSetBehindView ? mSetBehindView : (mSetBehindView = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SetBehindView")); }
			ScriptFunction ClientSetBehindView() { return mClientSetBehindView ? mClientSetBehindView : (mClientSetBehindView = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientSetBehindView")); }
			ScriptFunction SetCameraMode() { return mSetCameraMode ? mSetCameraMode : (mSetCameraMode = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SetCameraMode")); }
			ScriptFunction SpawnCamera() { return mSpawnCamera ? mSpawnCamera : (mSpawnCamera = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SpawnCamera")); }
			ScriptFunction GetPlayerViewPoint() { return mGetPlayerViewPoint ? mGetPlayerViewPoint : (mGetPlayerViewPoint = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.GetPlayerViewPoint")); }
			ScriptFunction CalcCameraOnViewTarget() { return mCalcCameraOnViewTarget ? mCalcCameraOnViewTarget : (mCalcCameraOnViewTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.CalcCameraOnViewTarget")); }
			ScriptFunction ClientMusicEvent() { return mClientMusicEvent ? mClientMusicEvent : (mClientMusicEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientMusicEvent")); }
			ScriptFunction AlreadyInActionMusic() { return mAlreadyInActionMusic ? mAlreadyInActionMusic : (mAlreadyInActionMusic = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AlreadyInActionMusic")); }
			ScriptFunction ClientPlayAnnouncement() { return mClientPlayAnnouncement ? mClientPlayAnnouncement : (mClientPlayAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientPlayAnnouncement")); }
			ScriptFunction PlayAnnouncement() { return mPlayAnnouncement ? mPlayAnnouncement : (mPlayAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.PlayAnnouncement")); }
			ScriptFunction DamageShake() { return mDamageShake ? mDamageShake : (mDamageShake = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.DamageShake")); }
			ScriptFunction StopViewShaking() { return mStopViewShaking ? mStopViewShaking : (mStopViewShaking = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.StopViewShaking")); }
			ScriptFunction PlayCameraAnim() { return mPlayCameraAnim ? mPlayCameraAnim : (mPlayCameraAnim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.PlayCameraAnim")); }
			ScriptFunction StopCameraAnim() { return mStopCameraAnim ? mStopCameraAnim : (mStopCameraAnim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.StopCameraAnim")); }
			ScriptFunction SetCameraAnimStrength() { return mSetCameraAnimStrength ? mSetCameraAnimStrength : (mSetCameraAnimStrength = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SetCameraAnimStrength")); }
			ScriptFunction ClientPlayCameraAnim() { return mClientPlayCameraAnim ? mClientPlayCameraAnim : (mClientPlayCameraAnim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientPlayCameraAnim")); }
			ScriptFunction ClientStopCameraAnim() { return mClientStopCameraAnim ? mClientStopCameraAnim : (mClientStopCameraAnim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientStopCameraAnim")); }
			ScriptFunction OnPlayCameraAnim() { return mOnPlayCameraAnim ? mOnPlayCameraAnim : (mOnPlayCameraAnim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnPlayCameraAnim")); }
			ScriptFunction OnStopCameraAnim() { return mOnStopCameraAnim ? mOnStopCameraAnim : (mOnStopCameraAnim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnStopCameraAnim")); }
			ScriptFunction ViewShake() { return mViewShake ? mViewShake : (mViewShake = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ViewShake")); }
			ScriptFunction ToggleMelee() { return mToggleMelee ? mToggleMelee : (mToggleMelee = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ToggleMelee")); }
			ScriptFunction ToggleTranslocator() { return mToggleTranslocator ? mToggleTranslocator : (mToggleTranslocator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ToggleTranslocator")); }
			ScriptFunction CallServerMove() { return mCallServerMove ? mCallServerMove : (mCallServerMove = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.CallServerMove")); }
			ScriptFunction ShortServerMove() { return mShortServerMove ? mShortServerMove : (mShortServerMove = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ShortServerMove")); }
			ScriptFunction LongClientAdjustPosition() { return mLongClientAdjustPosition ? mLongClientAdjustPosition : (mLongClientAdjustPosition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.LongClientAdjustPosition")); }
			ScriptFunction ViewNextBot() { return mViewNextBot ? mViewNextBot : (mViewNextBot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ViewNextBot")); }
			ScriptFunction SwitchWeapon() { return mSwitchWeapon ? mSwitchWeapon : (mSwitchWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SwitchWeapon")); }
			ScriptFunction ServerViewSelf() { return mServerViewSelf ? mServerViewSelf : (mServerViewSelf = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerViewSelf")); }
			ScriptFunction ViewPlayerByName() { return mViewPlayerByName ? mViewPlayerByName : (mViewPlayerByName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ViewPlayerByName")); }
			ScriptFunction ServerViewPlayerByName() { return mServerViewPlayerByName ? mServerViewPlayerByName : (mServerViewPlayerByName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerViewPlayerByName")); }
			ScriptFunction ViewObjective() { return mViewObjective ? mViewObjective : (mViewObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ViewObjective")); }
			ScriptFunction ServerViewObjective() { return mServerViewObjective ? mServerViewObjective : (mServerViewObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerViewObjective")); }
			ScriptFunction PrevWeapon() { return mPrevWeapon ? mPrevWeapon : (mPrevWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.PrevWeapon")); }
			ScriptFunction NextWeapon() { return mNextWeapon ? mNextWeapon : (mNextWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.NextWeapon")); }
			ScriptFunction AdjustCameraScale() { return mAdjustCameraScale ? mAdjustCameraScale : (mAdjustCameraScale = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdjustCameraScale")); }
			ScriptFunction CanCommunicate() { return mCanCommunicate ? mCanCommunicate : (mCanCommunicate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.CanCommunicate")); }
			ScriptFunction ShowMidGameMenu() { return mShowMidGameMenu ? mShowMidGameMenu : (mShowMidGameMenu = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ShowMidGameMenu")); }
			ScriptFunction ClientGameEnded() { return mClientGameEnded ? mClientGameEnded : (mClientGameEnded = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientGameEnded")); }
			ScriptFunction RoundHasEnded() { return mRoundHasEnded ? mRoundHasEnded : (mRoundHasEnded = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.RoundHasEnded")); }
			ScriptFunction ClientRoundEnded() { return mClientRoundEnded ? mClientRoundEnded : (mClientRoundEnded = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientRoundEnded")); }
			ScriptFunction CheckBulletWhip() { return mCheckBulletWhip ? mCheckBulletWhip : (mCheckBulletWhip = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.CheckBulletWhip")); }
			ScriptFunction PawnDied() { return mPawnDied ? mPawnDied : (mPawnDied = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.PawnDied")); }
			ScriptFunction ClientPawnDied() { return mClientPawnDied ? mClientPawnDied : (mClientPawnDied = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientPawnDied")); }
			ScriptFunction OnUpdatePropertyFOVAngle() { return mOnUpdatePropertyFOVAngle ? mOnUpdatePropertyFOVAngle : (mOnUpdatePropertyFOVAngle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnUpdatePropertyFOVAngle")); }
			ScriptFunction AdjustFOV() { return mAdjustFOV ? mAdjustFOV : (mAdjustFOV = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdjustFOV")); }
			ScriptFunction StartZoom() { return mStartZoom ? mStartZoom : (mStartZoom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.StartZoom")); }
			ScriptFunction StartZoomNonlinear() { return mStartZoomNonlinear ? mStartZoomNonlinear : (mStartZoomNonlinear = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.StartZoomNonlinear")); }
			ScriptFunction StopZoom() { return mStopZoom ? mStopZoom : (mStopZoom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.StopZoom")); }
			ScriptFunction EndZoom() { return mEndZoom ? mEndZoom : (mEndZoom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.EndZoom")); }
			ScriptFunction EndZoomNonlinear() { return mEndZoomNonlinear ? mEndZoomNonlinear : (mEndZoomNonlinear = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.EndZoomNonlinear")); }
			ScriptFunction ClientEndZoom() { return mClientEndZoom ? mClientEndZoom : (mClientEndZoom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ClientEndZoom")); }
			ScriptFunction UpdateRotation() { return mUpdateRotation ? mUpdateRotation : (mUpdateRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.UpdateRotation")); }
			ScriptFunction CharacterProcessingComplete() { return mCharacterProcessingComplete ? mCharacterProcessingComplete : (mCharacterProcessingComplete = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.CharacterProcessingComplete")); }
			ScriptFunction CanRestartPlayer() { return mCanRestartPlayer ? mCanRestartPlayer : (mCanRestartPlayer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.CanRestartPlayer")); }
			ScriptFunction SendMessage() { return mSendMessage ? mSendMessage : (mSendMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.SendMessage")); }
			ScriptFunction ReceiveBotVoiceMessage() { return mReceiveBotVoiceMessage ? mReceiveBotVoiceMessage : (mReceiveBotVoiceMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ReceiveBotVoiceMessage")); }
			ScriptFunction ServerSetNetSpeed() { return mServerSetNetSpeed ? mServerSetNetSpeed : (mServerSetNetSpeed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerSetNetSpeed")); }
			ScriptFunction BullseyeMessage() { return mBullseyeMessage ? mBullseyeMessage : (mBullseyeMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.BullseyeMessage")); }
			ScriptFunction ServerChangeTeam() { return mServerChangeTeam ? mServerChangeTeam : (mServerChangeTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerChangeTeam")); }
			ScriptFunction GetSeamlessTravelActorList() { return mGetSeamlessTravelActorList ? mGetSeamlessTravelActorList : (mGetSeamlessTravelActorList = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.GetSeamlessTravelActorList")); }
			ScriptFunction ServerKickBan() { return mServerKickBan ? mServerKickBan : (mServerKickBan = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerKickBan")); }
			ScriptFunction AllowTTSMessageFrom() { return mAllowTTSMessageFrom ? mAllowTTSMessageFrom : (mAllowTTSMessageFrom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AllowTTSMessageFrom")); }
			ScriptFunction ServerSay() { return mServerSay ? mServerSay : (mServerSay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerSay")); }
			ScriptFunction ServerTeamSay() { return mServerTeamSay ? mServerTeamSay : (mServerTeamSay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerTeamSay")); }
			ScriptFunction AllowTextMessage() { return mAllowTextMessage ? mAllowTextMessage : (mAllowTextMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AllowTextMessage")); }
			ScriptFunction AdminCmdOk() { return mAdminCmdOk ? mAdminCmdOk : (mAdminCmdOk = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminCmdOk")); }
			ScriptFunction AdminLogin() { return mAdminLogin ? mAdminLogin : (mAdminLogin = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminLogin")); }
			ScriptFunction ServerAdminLogin() { return mServerAdminLogin ? mServerAdminLogin : (mServerAdminLogin = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerAdminLogin")); }
			ScriptFunction AdminLogout() { return mAdminLogout ? mAdminLogout : (mAdminLogout = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminLogout")); }
			ScriptFunction ServerAdminLogOut() { return mServerAdminLogOut ? mServerAdminLogOut : (mServerAdminLogOut = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerAdminLogOut")); }
			ScriptFunction Admin() { return mAdmin ? mAdmin : (mAdmin = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.Admin")); }
			ScriptFunction ServerAdmin() { return mServerAdmin ? mServerAdmin : (mServerAdmin = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerAdmin")); }
			ScriptFunction AdminKickBan() { return mAdminKickBan ? mAdminKickBan : (mAdminKickBan = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminKickBan")); }
			ScriptFunction AdminKick() { return mAdminKick ? mAdminKick : (mAdminKick = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminKick")); }
			ScriptFunction AdminPlayerList() { return mAdminPlayerList ? mAdminPlayerList : (mAdminPlayerList = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminPlayerList")); }
			ScriptFunction AdminRestartMap() { return mAdminRestartMap ? mAdminRestartMap : (mAdminRestartMap = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminRestartMap")); }
			ScriptFunction ServerRestartMap() { return mServerRestartMap ? mServerRestartMap : (mServerRestartMap = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerRestartMap")); }
			ScriptFunction AdminChangeMap() { return mAdminChangeMap ? mAdminChangeMap : (mAdminChangeMap = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminChangeMap")); }
			ScriptFunction ServerChangeMap() { return mServerChangeMap ? mServerChangeMap : (mServerChangeMap = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerChangeMap")); }
			ScriptFunction AdminForceVoiceMute() { return mAdminForceVoiceMute ? mAdminForceVoiceMute : (mAdminForceVoiceMute = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminForceVoiceMute")); }
			ScriptFunction ServerForceVoiceMute() { return mServerForceVoiceMute ? mServerForceVoiceMute : (mServerForceVoiceMute = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerForceVoiceMute")); }
			ScriptFunction AdminForceVoiceUnMute() { return mAdminForceVoiceUnMute ? mAdminForceVoiceUnMute : (mAdminForceVoiceUnMute = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminForceVoiceUnMute")); }
			ScriptFunction ServerForceVoiceUnMute() { return mServerForceVoiceUnMute ? mServerForceVoiceUnMute : (mServerForceVoiceUnMute = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerForceVoiceUnMute")); }
			ScriptFunction AdminForceTextMute() { return mAdminForceTextMute ? mAdminForceTextMute : (mAdminForceTextMute = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminForceTextMute")); }
			ScriptFunction ServerForceTextMute() { return mServerForceTextMute ? mServerForceTextMute : (mServerForceTextMute = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerForceTextMute")); }
			ScriptFunction AdminForceTextUnMute() { return mAdminForceTextUnMute ? mAdminForceTextUnMute : (mAdminForceTextUnMute = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.AdminForceTextUnMute")); }
			ScriptFunction ServerForceTextUnMute() { return mServerForceTextUnMute ? mServerForceTextUnMute : (mServerForceTextUnMute = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.ServerForceTextUnMute")); }
			ScriptFunction Disconnect() { return mDisconnect ? mDisconnect : (mDisconnect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.Disconnect")); }
			ScriptFunction OnScoreChanged() { return mOnScoreChanged ? mOnScoreChanged : (mOnScoreChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerController.OnScoreChanged")); }
		}
	}
	static struct Constants
	{
		enum
		{
			STATS_VIEW_DM_WEAPONS_RANKED_ALLTIME = 8,
			STATS_VIEW_DM_VEHICLEWEAPONS_RANKED_ALLTIME = 7,
			STATS_VIEW_DM_VEHICLES_RANKED_ALLTIME = 6,
			STATS_VIEW_DM_VEHICLEWEAPONS_ALLTIME = 5,
			STATS_VIEW_DM_VEHICLES_ALLTIME = 4,
			STATS_VIEW_DM_WEAPONS_ALLTIME = 3,
			STATS_VIEW_DM_RANKED_ALLTIME = 2,
			STATS_VIEW_DM_PLAYER_ALLTIME = 1,
			QUERY_CAMPAIGN = 6,
			QUERY_DUEL = 5,
			QUERY_WAR = 4,
			QUERY_VCTF = 3,
			QUERY_CTF = 2,
			QUERY_TDM = 1,
			QUERY_DM = 0,
			PROPERTY_CUSTOMMUTATORS = 0x40000004,
			PROPERTY_SERVERDESCRIPTION = 0x40000003,
			PROPERTY_CUSTOMGAMEMODE = 0x40000002,
			PROPERTY_CUSTOMMAPNAME = 0x40000001,
			PROPERTY_EPICMUTATORS = 0x10000105,
			PROPERTY_LEADERBOARDRATING = 0x20000004,
			PROPERTY_GOALSCORE = 0x1000000B,
			PROPERTY_TIMELIMIT = 0x1000000A,
			PROPERTY_NUMBOTS = 0x100000F7,
			CONTEXT_VSBOTS_4_TO_1 = 6,
			CONTEXT_VSBOTS_3_TO_1 = 5,
			CONTEXT_VSBOTS_2_TO_1 = 4,
			CONTEXT_VSBOTS_3_TO_2 = 3,
			CONTEXT_VSBOTS_1_TO_1 = 2,
			CONTEXT_VSBOTS_1_TO_2 = 1,
			CONTEXT_VSBOTS_NONE = 0,
			CONTEXT_DEDICATEDSERVER_YES = 1,
			CONTEXT_DEDICATEDSERVER_NO = 0,
			CONTEXT_EMPTYSERVER_YES = 1,
			CONTEXT_EMPTYSERVER_NO = 0,
			CONTEXT_FULLSERVER_YES = 1,
			CONTEXT_FULLSERVER_NO = 0,
			CONTEXT_ALLOWKEYBOARD_ANY = 2,
			CONTEXT_ALLOWKEYBOARD_YES = 1,
			CONTEXT_ALLOWKEYBOARD_NO = 0,
			CONTEXT_FORCERESPAWN_YES = 1,
			CONTEXT_FORCERESPAWN_NO = 0,
			CONTEXT_CAMPAIGN_YES = 1,
			CONTEXT_CAMPAIGN_NO = 0,
			CONTEXT_LOCKEDSERVER_YES = 1,
			CONTEXT_LOCKEDSERVER_NO = 0,
			CONTEXT_PURESERVER_ANY = 2,
			CONTEXT_PURESERVER_YES = 1,
			CONTEXT_PURESERVER_NO = 0,
			CONTEXT_TIMELIMIT_30 = 4,
			CONTEXT_TIMELIMIT_20 = 3,
			CONTEXT_TIMELIMIT_15 = 2,
			CONTEXT_TIMELIMIT_10 = 1,
			CONTEXT_TIMELIMIT_5 = 0,
			CONTEXT_NUMBOTS_8 = 8,
			CONTEXT_NUMBOTS_7 = 7,
			CONTEXT_NUMBOTS_6 = 6,
			CONTEXT_NUMBOTS_5 = 5,
			CONTEXT_NUMBOTS_4 = 4,
			CONTEXT_NUMBOTS_3 = 3,
			CONTEXT_NUMBOTS_2 = 2,
			CONTEXT_NUMBOTS_1 = 1,
			CONTEXT_NUMBOTS_0 = 0,
			CONTEXT_GOALSCORE_30 = 4,
			CONTEXT_GOALSCORE_20 = 3,
			CONTEXT_GOALSCORE_15 = 2,
			CONTEXT_GOALSCORE_10 = 1,
			CONTEXT_GOALSCORE_5 = 0,
			CONTEXT_BOTSKILL_GODLIKE = 7,
			CONTEXT_BOTSKILL_INHUMAN = 6,
			CONTEXT_BOTSKILL_MASTERFUL = 5,
			CONTEXT_BOTSKILL_ADEPT = 4,
			CONTEXT_BOTSKILL_SKILLED = 3,
			CONTEXT_BOTSKILL_EXPERIENCED = 2,
			CONTEXT_BOTSKILL_AVERAGE = 1,
			CONTEXT_BOTSKILL_NOVICE = 0,
			CONTEXT_MAPNAME_CUSTOM = 0,
			CONTEXT_DEDICATEDSERVER = 17,
			CONTEXT_EMPTYSERVER = 16,
			CONTEXT_FULLSERVER = 15,
			CONTEXT_FORCERESPAWN = 14,
			CONTEXT_CAMPAIGN = 13,
			CONTEXT_VSBOTS = 12,
			CONTEXT_PURESERVER = 11,
			CONTEXT_BOTSKILL = 10,
			CONTEXT_ALLOWKEYBOARD = 2,
			CONTEXT_LOCKEDSERVER = 1,
			CONTEXT_MAPNAME = 0,
			CONTEXT_GAME_MODE_CAMPAIGN = 7,
			CONTEXT_GAME_MODE_CUSTOM = 6,
			CONTEXT_GAME_MODE_DUEL = 5,
			CONTEXT_GAME_MODE_TDM = 4,
			CONTEXT_GAME_MODE_VCTF = 3,
			CONTEXT_GAME_MODE_WAR = 2,
			CONTEXT_GAME_MODE_CTF = 1,
			CONTEXT_GAME_MODE_DM = 0,
			CONTEXT_GAME_MODE = 0x0000800B,
			CONTEXT_PRESENCE_MENUPRESENCE = 0,
			GS_CDKEY_PART_MAXLENGTH = 4,
			GS_EMAIL_MAXLENGTH = 50,
			GS_MESSAGE_MAXLENGTH = 255,
			GS_PASSWORD_MAXLENGTH = 30,
			GS_USERNAME_MAXLENGTH = 15,
		}
	}
	enum EWeaponHand : ubyte
	{
		HAND_Right = 0,
		HAND_Left = 1,
		HAND_Centered = 2,
		HAND_Hidden = 3,
		HAND_MAX = 4,
	}
	enum EPawnShadowMode : ubyte
	{
		SHADOW_None = 0,
		SHADOW_Self = 1,
		SHADOW_All = 2,
		SHADOW_MAX = 3,
	}
	enum EAutoObjectivePreference : ubyte
	{
		AOP_Disabled = 0,
		AOP_NoPreference = 1,
		AOP_Attack = 2,
		AOP_Defend = 3,
		AOP_OrbRunner = 4,
		AOP_SpecialOps = 5,
		AOP_MAX = 6,
	}
	enum EUTVehicleControls : ubyte
	{
		UTVC_Simple = 0,
		UTVC_Normal = 1,
		UTVC_Advanced = 2,
		UTVC_MAX = 3,
	}
	struct PostProcessInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTPlayerController.PostProcessInfo")); }
		@property final auto ref
		{
			float Desaturation() { return *cast(float*)(cast(size_t)&this + 12); }
			float HighLights() { return *cast(float*)(cast(size_t)&this + 8); }
			float MidTones() { return *cast(float*)(cast(size_t)&this + 4); }
			float Shadows() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			UTUIDataStore_StringAliasBindingsMap BoundEventsStringDataStore() { return *cast(UTUIDataStore_StringAliasBindingsMap*)(cast(size_t)cast(void*)this + 2152); }
			float LastWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2100); }
			float LastTauntAnimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1992); }
			UTAnnouncer Announcer() { return *cast(UTAnnouncer*)(cast(size_t)cast(void*)this + 1984); }
			UTMusicManager MusicManager() { return *cast(UTMusicManager*)(cast(size_t)cast(void*)this + 1988); }
			float LastKickWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1996); }
			float OnFootDefaultFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 2160); }
			UTPlayerController.EWeaponHand WeaponHandPreference() { return *cast(UTPlayerController.EWeaponHand*)(cast(size_t)cast(void*)this + 1966); }
			UTPlayerController.EAutoObjectivePreference AutoObjectivePreference() { return *cast(UTPlayerController.EAutoObjectivePreference*)(cast(size_t)cast(void*)this + 1968); }
			UTPlayerController.EUTVehicleControls VehicleControlType() { return *cast(UTPlayerController.EUTVehicleControls*)(cast(size_t)cast(void*)this + 1969); }
			UTPlayerController.EPawnShadowMode PawnShadowMode() { return *cast(UTPlayerController.EPawnShadowMode*)(cast(size_t)cast(void*)this + 1965); }
			Actor LastAutoObjective() { return *cast(Actor*)(cast(size_t)cast(void*)this + 2132); }
			float LastShowPathTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2128); }
			ubyte IdentifiedTeam() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1964); }
			UTPlayerController.EWeaponHand WeaponHand() { return *cast(UTPlayerController.EWeaponHand*)(cast(size_t)cast(void*)this + 1967); }
			float LastUseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2140); }
			Actor CalcViewActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 2032); }
			float LastCameraTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2024); }
			Rotator DebugFreeCamRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2116); }
			ScriptClass MatineeCameraClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2028); }
			Vector CalcViewActorLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2036); }
			Rotator CalcViewActorRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2048); }
			float CalcEyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2084); }
			Vector CalcWalkBob() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2088); }
			Vector CalcViewLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2060); }
			Rotator CalcViewRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2072); }
			CameraAnim DamageCameraAnim() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 2020); }
			ForceFeedbackWaveform CameraShakeShortWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 2012); }
			ForceFeedbackWaveform CameraShakeLongWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 2016); }
			ScriptString MsgPlayerNotFound() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2000); }
			float FOVNonlinearZoomInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2108); }
			float FOVLinearZoomRate() { return *cast(float*)(cast(size_t)cast(void*)this + 2104); }
			float LastBullseyeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2136); }
			float LastTeamChangeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2172); }
			float NextAdminCmdTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2156); }
			Vector DesiredLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1972); }
			float ZoomRotationModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 2112); }
			float OldMessageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2144); }
			float LastFriendlyFireTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
			float LastIncomingMessageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
			float LastCombatUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
		}
		bool bLateComer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x1) != 0; }
		bool bLateComer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x1; } return val; }
		bool bQuittingToMainMenu() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x20000) != 0; }
		bool bQuittingToMainMenu(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x20000; } return val; }
		bool bJustFoundVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x80000) != 0; }
		bool bJustFoundVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x80000; } return val; }
		bool bLandingShake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x4000) != 0; }
		bool bLandingShake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x4000; } return val; }
		bool bIsTyping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x2) != 0; }
		bool bIsTyping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x2; } return val; }
		bool bBehindView() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x80) != 0; }
		bool bBehindView(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x80; } return val; }
		bool bAutoTaunt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x4) != 0; }
		bool bAutoTaunt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x4; } return val; }
		bool bCenteredWeaponFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x8000) != 0; }
		bool bCenteredWeaponFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x8000; } return val; }
		bool bUseVehicleRotationOnPossess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x8) != 0; }
		bool bUseVehicleRotationOnPossess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x8; } return val; }
		bool bAlreadyReset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x400000) != 0; }
		bool bAlreadyReset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x400000; } return val; }
		bool bFreeCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x200) != 0; }
		bool bFreeCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x200; } return val; }
		bool bDebugFreeCam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x40000) != 0; }
		bool bDebugFreeCam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x40000; } return val; }
		bool bCurrentCamAnimIsDamageShake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x1000) != 0; }
		bool bCurrentCamAnimIsDamageShake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x1000; } return val; }
		bool bCurrentCamAnimAffectsFOV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x2000) != 0; }
		bool bCurrentCamAnimAffectsFOV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x2000; } return val; }
		bool bCameraOutOfWorld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x20) != 0; }
		bool bCameraOutOfWorld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x20; } return val; }
		bool bServerMutedText() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x800000) != 0; }
		bool bServerMutedText(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x800000; } return val; }
		bool bNonlinearZoomInterpolation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x10000) != 0; }
		bool bNonlinearZoomInterpolation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x10000; } return val; }
		bool bNoTextToSpeechVoiceMessages() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x400) != 0; }
		bool bNoTextToSpeechVoiceMessages(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x400; } return val; }
		bool bTextToSpeechTeamMessagesOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x800) != 0; }
		bool bTextToSpeechTeamMessagesOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x800; } return val; }
		bool bRotateMinimap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x10) != 0; }
		bool bRotateMinimap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x10; } return val; }
		bool bFirstPersonWeaponsSelfShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x40) != 0; }
		bool bFirstPersonWeaponsSelfShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x40; } return val; }
		bool bForceBehindView() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x100) != 0; }
		bool bForceBehindView(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x100; } return val; }
		bool bNoCrosshair() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x100000) != 0; }
		bool bNoCrosshair(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x100000; } return val; }
		bool bSimpleCrosshair() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x200000) != 0; }
		bool bSimpleCrosshair(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x200000; } return val; }
		bool bHideObjectivePaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x1000000) != 0; }
		bool bHideObjectivePaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x1000000; } return val; }
	}
final:
	void ServerThrowWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerThrowWeapon, cast(void*)0, cast(void*)0);
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitInputSystem, cast(void*)0, cast(void*)0);
	}
	void PulseTeamColor()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PulseTeamColor, cast(void*)0, cast(void*)0);
	}
	void ServerSetCharacterClass(ScriptClass CharClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = CharClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetCharacterClass, params.ptr, cast(void*)0);
	}
	void ClearStringAliasBindingMapCache()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearStringAliasBindingMapCache, cast(void*)0, cast(void*)0);
	}
	void RegisterCustomPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterCustomPlayerDataStores, cast(void*)0, cast(void*)0);
	}
	void UnregisterPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterPlayerDataStores, cast(void*)0, cast(void*)0);
	}
	void AddOnlineDelegates(bool bRegisterVoice)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bRegisterVoice;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddOnlineDelegates, params.ptr, cast(void*)0);
	}
	void ClearOnlineDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearOnlineDelegates, cast(void*)0, cast(void*)0);
	}
	void ClientSetOnlineStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetOnlineStatus, cast(void*)0, cast(void*)0);
	}
	void OnConnectionStatusChange(OnlineSubsystem.EOnlineServerConnectionStatus ConnectionStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)params.ptr = ConnectionStatus;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnConnectionStatusChange, params.ptr, cast(void*)0);
	}
	void OnLinkStatusChanged(bool bConnected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bConnected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLinkStatusChanged, params.ptr, cast(void*)0);
	}
	void OnReadProfileSettingsComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadProfileSettingsComplete, params.ptr, cast(void*)0);
	}
	void OnGameInviteReceived(ubyte LocalUserNum, ScriptString RequestingNick)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = RequestingNick;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameInviteReceived, params.ptr, cast(void*)0);
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
	void NotifyInviteFailed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyInviteFailed, cast(void*)0, cast(void*)0);
	}
	void NotifyNotAllPlayersCanJoinInvite()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyNotAllPlayersCanJoinInvite, cast(void*)0, cast(void*)0);
	}
	void NotifyNotEnoughSpaceInInvite()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyNotEnoughSpaceInInvite, cast(void*)0, cast(void*)0);
	}
	void ClientWasKicked()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWasKicked, cast(void*)0, cast(void*)0);
	}
	static void SetFrontEndErrorMessage(ScriptString Title, ScriptString Message)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		*cast(ScriptString*)&params[12] = Message;
		StaticClass.ProcessEvent(Functions.SetFrontEndErrorMessage, params.ptr, cast(void*)0);
	}
	void QuitToMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.QuitToMainMenu, cast(void*)0, cast(void*)0);
	}
	void FinishQuitToMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishQuitToMainMenu, cast(void*)0, cast(void*)0);
	}
	bool CleanupOnlineSubsystemSession(bool bWasFromMenu)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bWasFromMenu;
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanupOnlineSubsystemSession, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnEndOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEndOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnDestroyOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDestroyOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void ClientSetSpeechRecognitionObject(SpeechRecognition NewRecognitionData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SpeechRecognition*)params.ptr = NewRecognitionData;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetSpeechRecognitionObject, params.ptr, cast(void*)0);
	}
	void SpeechRecognitionComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpeechRecognitionComplete, cast(void*)0, cast(void*)0);
	}
	void ServerProcessSpeechRecognition(OnlineSubsystem.SpeechRecognizedWord ReplicatedWords)
	{
		ubyte params[60];
		params[] = 0;
		*cast(OnlineSubsystem.SpeechRecognizedWord*)params.ptr = ReplicatedWords;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerProcessSpeechRecognition, params.ptr, cast(void*)0);
	}
	void ClientHearSound(SoundCue ASound, Actor SourceActor, Vector SourceLocation, bool bStopWhenOwnerDestroyed, bool bIsOccluded)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(Actor*)&params[4] = SourceActor;
		*cast(Vector*)&params[8] = SourceLocation;
		*cast(bool*)&params[20] = bStopWhenOwnerDestroyed;
		*cast(bool*)&params[24] = bIsOccluded;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientHearSound, params.ptr, cast(void*)0);
	}
	bool AimingHelp(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(Functions.AimingHelp, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float AimHelpModifier()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AimHelpModifier, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Rotator GetAdjustedAimFor(Weapon W, Vector StartFireLoc)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		*cast(Vector*)&params[4] = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAdjustedAimFor, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	bool FindVehicleToDrive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindVehicleToDrive, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	UTVehicle CheckPickedVehicle(UTVehicle V, bool bEnterVehicle)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		*cast(bool*)&params[4] = bEnterVehicle;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckPickedVehicle, params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[8];
	}
	void ClientSetRequestedEntryWithFlag(UTVehicle V, bool bNewValue, int MessageIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		*cast(bool*)&params[4] = bNewValue;
		*cast(int*)&params[8] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetRequestedEntryWithFlag, params.ptr, cast(void*)0);
	}
	UTVehicle CheckVehicleToDrive(bool bEnterVehicle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnterVehicle;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckVehicleToDrive, params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[4];
	}
	void DropFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DropFlag, cast(void*)0, cast(void*)0);
	}
	void ServerDropFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerDropFlag, cast(void*)0, cast(void*)0);
	}
	bool LandingShake()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.LandingShake, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PlayBeepSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayBeepSound, cast(void*)0, cast(void*)0);
	}
	void ReceiveWarning(Pawn shooter, float projSpeed, Vector FireDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = shooter;
		*cast(float*)&params[4] = projSpeed;
		*cast(Vector*)&params[8] = FireDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceiveWarning, params.ptr, cast(void*)0);
	}
	void ReceiveProjectileWarning(Projectile Proj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = Proj;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceiveProjectileWarning, params.ptr, cast(void*)0);
	}
	void ProjectileWarningTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileWarningTimer, cast(void*)0, cast(void*)0);
	}
	void PlayWinMessage(bool bWinner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWinner;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWinMessage, params.ptr, cast(void*)0);
	}
	bool TriggerInteracted()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerInteracted, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PlayVehicleHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVehicleHorn, cast(void*)0, cast(void*)0);
	}
	void ServerPlayVehicleHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerPlayVehicleHorn, cast(void*)0, cast(void*)0);
	}
	void Typing(bool bTyping)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bTyping;
		(cast(ScriptObject)this).ProcessEvent(Functions.Typing, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void OnControllerChanged(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnControllerChanged, params.ptr, cast(void*)0);
	}
	void SoakPause(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.SoakPause, params.ptr, cast(void*)0);
	}
	void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawHUD, params.ptr, cast(void*)0);
	}
	void KickWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KickWarning, cast(void*)0, cast(void*)0);
	}
	void CheckJumpOrDuck()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckJumpOrDuck, cast(void*)0, cast(void*)0);
	}
	void FOV(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.FOV, params.ptr, cast(void*)0);
	}
	void FixFOV()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FixFOV, cast(void*)0, cast(void*)0);
	}
	void Restart(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.Restart, params.ptr, cast(void*)0);
	}
	void ClientRestart(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRestart, params.ptr, cast(void*)0);
	}
	void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		*cast(Camera.ViewTargetTransitionParams*)&params[4] = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewTarget, params.ptr, cast(void*)0);
	}
	void CheckAutoObjective(bool bOnlyNotifyDifferent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bOnlyNotifyDifferent;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckAutoObjective, params.ptr, cast(void*)0);
	}
	void SetAutoObjective(Actor ObjectiveActor, bool bOnlyNotifyDifferent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = ObjectiveActor;
		*cast(bool*)&params[4] = bOnlyNotifyDifferent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAutoObjective, params.ptr, cast(void*)0);
	}
	void ClientSetAutoObjective(Actor NewAutoObjective)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewAutoObjective;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetAutoObjective, params.ptr, cast(void*)0);
	}
	void Possess(Pawn inPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = inPawn;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.Possess, params.ptr, cast(void*)0);
	}
	void AcknowledgePossession(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AcknowledgePossession, params.ptr, cast(void*)0);
	}
	void IdentifyTeamMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.IdentifyTeamMessage, cast(void*)0, cast(void*)0);
	}
	void ReceivedPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedPlayer, cast(void*)0, cast(void*)0);
	}
	void ServerPlayerPreferences(UTPlayerController.EWeaponHand NewWeaponHand, bool bNewAutoTaunt, bool bNewCenteredWeaponFire, UTPlayerController.EAutoObjectivePreference NewAutoObjectivePreference, UTPlayerController.EUTVehicleControls NewVehicleControls)
	{
		ubyte params[14];
		params[] = 0;
		*cast(UTPlayerController.EWeaponHand*)params.ptr = NewWeaponHand;
		*cast(bool*)&params[4] = bNewAutoTaunt;
		*cast(bool*)&params[8] = bNewCenteredWeaponFire;
		*cast(UTPlayerController.EAutoObjectivePreference*)&params[12] = NewAutoObjectivePreference;
		*cast(UTPlayerController.EUTVehicleControls*)&params[13] = NewVehicleControls;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerPlayerPreferences, params.ptr, cast(void*)0);
	}
	void ServerSetHand(UTPlayerController.EWeaponHand NewWeaponHand)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTPlayerController.EWeaponHand*)params.ptr = NewWeaponHand;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetHand, params.ptr, cast(void*)0);
	}
	void SetHand(UTPlayerController.EWeaponHand NewWeaponHand)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTPlayerController.EWeaponHand*)params.ptr = NewWeaponHand;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHand, params.ptr, cast(void*)0);
	}
	void ResetCameraMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetCameraMode, cast(void*)0, cast(void*)0);
	}
	bool UsingFirstPersonCamera()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.UsingFirstPersonCamera, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ServerSetAutoTaunt(bool Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetAutoTaunt, params.ptr, cast(void*)0);
	}
	void SetAutoTaunt(bool Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAutoTaunt, params.ptr, cast(void*)0);
	}
	void ToggleScreenShotMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleScreenShotMode, cast(void*)0, cast(void*)0);
	}
	void PlayStartupMessage(ubyte StartupStage)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = StartupStage;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStartupMessage, params.ptr, cast(void*)0);
	}
	void NotifyTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass pDamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyTakeHit, params.ptr, cast(void*)0);
	}
	void ClientPlayTakeHit(Vector HitLoc, ubyte Damage, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		params[12] = Damage;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayTakeHit, params.ptr, cast(void*)0);
	}
	bool ServerUse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerUse, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool Use()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Use, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool PerformedUseAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformedUseAction, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearDoubleClick()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDoubleClick, cast(void*)0, cast(void*)0);
	}
	void ShowScoreboard()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowScoreboard, cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void ClientReset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReset, cast(void*)0, cast(void*)0);
	}
	void BehindView()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BehindView, cast(void*)0, cast(void*)0);
	}
	void SetBehindView(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBehindView, params.ptr, cast(void*)0);
	}
	void ClientSetBehindView(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetBehindView, params.ptr, cast(void*)0);
	}
	void SetCameraMode(ScriptName NewCamMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewCamMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCameraMode, params.ptr, cast(void*)0);
	}
	void SpawnCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnCamera, cast(void*)0, cast(void*)0);
	}
	void GetPlayerViewPoint(Vector* POVLocation, Rotator* POVRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *POVLocation;
		*cast(Rotator*)&params[12] = *POVRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerViewPoint, params.ptr, cast(void*)0);
		*POVLocation = *cast(Vector*)params.ptr;
		*POVRotation = *cast(Rotator*)&params[12];
	}
	void CalcCameraOnViewTarget(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCameraOnViewTarget, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
	}
	void ClientMusicEvent(int EventIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EventIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientMusicEvent, params.ptr, cast(void*)0);
	}
	bool AlreadyInActionMusic()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AlreadyInActionMusic, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClientPlayAnnouncement(ScriptClass InMessageClass, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayAnnouncement, params.ptr, cast(void*)0);
	}
	void PlayAnnouncement(ScriptClass InMessageClass, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAnnouncement, params.ptr, cast(void*)0);
	}
	void DamageShake(int Damage, ScriptClass pDamageType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(ScriptClass*)&params[4] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.DamageShake, params.ptr, cast(void*)0);
	}
	void StopViewShaking()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopViewShaking, cast(void*)0, cast(void*)0);
	}
	void PlayCameraAnim(CameraAnim AnimToPlay, float Scale, float Rate, float BlendInTime, float BlendOutTime, bool bLoop, bool bIsDamageShake)
	{
		ubyte params[28];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = AnimToPlay;
		*cast(float*)&params[4] = Scale;
		*cast(float*)&params[8] = Rate;
		*cast(float*)&params[12] = BlendInTime;
		*cast(float*)&params[16] = BlendOutTime;
		*cast(bool*)&params[20] = bLoop;
		*cast(bool*)&params[24] = bIsDamageShake;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCameraAnim, params.ptr, cast(void*)0);
	}
	void StopCameraAnim(bool bImmediate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bImmediate;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopCameraAnim, params.ptr, cast(void*)0);
	}
	void SetCameraAnimStrength(float NewStrength)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewStrength;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCameraAnimStrength, params.ptr, cast(void*)0);
	}
	void ClientPlayCameraAnim(CameraAnim AnimToPlay, float Scale, float Rate, float BlendInTime, float BlendOutTime, bool bLoop, bool bRandomStartTime, Camera.ECameraAnimPlaySpace Space, Rotator CustomPlaySpace)
	{
		ubyte params[44];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = AnimToPlay;
		*cast(float*)&params[4] = Scale;
		*cast(float*)&params[8] = Rate;
		*cast(float*)&params[12] = BlendInTime;
		*cast(float*)&params[16] = BlendOutTime;
		*cast(bool*)&params[20] = bLoop;
		*cast(bool*)&params[24] = bRandomStartTime;
		*cast(Camera.ECameraAnimPlaySpace*)&params[28] = Space;
		*cast(Rotator*)&params[32] = CustomPlaySpace;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayCameraAnim, params.ptr, cast(void*)0);
	}
	void ClientStopCameraAnim(CameraAnim AnimToStop)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = AnimToStop;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientStopCameraAnim, params.ptr, cast(void*)0);
	}
	void OnPlayCameraAnim(UTSeqAct_PlayCameraAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_PlayCameraAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayCameraAnim, params.ptr, cast(void*)0);
	}
	void OnStopCameraAnim(UTSeqAct_StopCameraAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_StopCameraAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStopCameraAnim, params.ptr, cast(void*)0);
	}
	void ViewShake(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewShake, params.ptr, cast(void*)0);
	}
	void ToggleMelee()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleMelee, cast(void*)0, cast(void*)0);
	}
	void ToggleTranslocator()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleTranslocator, cast(void*)0, cast(void*)0);
	}
	void CallServerMove(SavedMove NewMove, Vector ClientLoc, ubyte ClientRoll, int View, SavedMove OldMove)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SavedMove*)params.ptr = NewMove;
		*cast(Vector*)&params[4] = ClientLoc;
		params[16] = ClientRoll;
		*cast(int*)&params[20] = View;
		*cast(SavedMove*)&params[24] = OldMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.CallServerMove, params.ptr, cast(void*)0);
	}
	void ShortServerMove(float TimeStamp, Vector ClientLoc, ubyte NewFlags, ubyte ClientRoll, int View)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(Vector*)&params[4] = ClientLoc;
		params[16] = NewFlags;
		params[17] = ClientRoll;
		*cast(int*)&params[20] = View;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShortServerMove, params.ptr, cast(void*)0);
	}
	void LongClientAdjustPosition(float TimeStamp, ScriptName NewState, Actor.EPhysics newPhysics, float NewLocX, float NewLocY, float NewLocZ, float NewVelX, float NewVelY, float NewVelZ, Actor NewBase, float NewFloorX, float NewFloorY, float NewFloorZ)
	{
		ubyte params[56];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(ScriptName*)&params[4] = NewState;
		*cast(Actor.EPhysics*)&params[12] = newPhysics;
		*cast(float*)&params[16] = NewLocX;
		*cast(float*)&params[20] = NewLocY;
		*cast(float*)&params[24] = NewLocZ;
		*cast(float*)&params[28] = NewVelX;
		*cast(float*)&params[32] = NewVelY;
		*cast(float*)&params[36] = NewVelZ;
		*cast(Actor*)&params[40] = NewBase;
		*cast(float*)&params[44] = NewFloorX;
		*cast(float*)&params[48] = NewFloorY;
		*cast(float*)&params[52] = NewFloorZ;
		(cast(ScriptObject)this).ProcessEvent(Functions.LongClientAdjustPosition, params.ptr, cast(void*)0);
	}
	void ViewNextBot()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewNextBot, cast(void*)0, cast(void*)0);
	}
	void SwitchWeapon(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchWeapon, params.ptr, cast(void*)0);
	}
	void ServerViewSelf(Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Camera.ViewTargetTransitionParams*)params.ptr = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewSelf, params.ptr, cast(void*)0);
	}
	void ViewPlayerByName(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewPlayerByName, params.ptr, cast(void*)0);
	}
	void ServerViewPlayerByName(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewPlayerByName, params.ptr, cast(void*)0);
	}
	void ViewObjective()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewObjective, cast(void*)0, cast(void*)0);
	}
	void ServerViewObjective()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewObjective, cast(void*)0, cast(void*)0);
	}
	void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PrevWeapon, cast(void*)0, cast(void*)0);
	}
	void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NextWeapon, cast(void*)0, cast(void*)0);
	}
	void AdjustCameraScale(bool bIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustCameraScale, params.ptr, cast(void*)0);
	}
	bool CanCommunicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanCommunicate, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ShowMidGameMenu(ScriptName TabTag, bool bEnableInput)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TabTag;
		*cast(bool*)&params[8] = bEnableInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMidGameMenu, params.ptr, cast(void*)0);
	}
	void ClientGameEnded(Actor EndGameFocus, bool bIsWinner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = EndGameFocus;
		*cast(bool*)&params[4] = bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientGameEnded, params.ptr, cast(void*)0);
	}
	void RoundHasEnded(Actor EndRoundFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = EndRoundFocus;
		(cast(ScriptObject)this).ProcessEvent(Functions.RoundHasEnded, params.ptr, cast(void*)0);
	}
	void ClientRoundEnded(Actor EndRoundFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = EndRoundFocus;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRoundEnded, params.ptr, cast(void*)0);
	}
	void CheckBulletWhip(SoundCue BulletWhip, Vector FireLocation, Vector FireDir, Vector HitLocation)
	{
		ubyte params[40];
		params[] = 0;
		*cast(SoundCue*)params.ptr = BulletWhip;
		*cast(Vector*)&params[4] = FireLocation;
		*cast(Vector*)&params[16] = FireDir;
		*cast(Vector*)&params[28] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckBulletWhip, params.ptr, cast(void*)0);
	}
	void PawnDied(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnDied, params.ptr, cast(void*)0);
	}
	void ClientPawnDied()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPawnDied, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyFOVAngle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyFOVAngle, cast(void*)0, cast(void*)0);
	}
	void AdjustFOV(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustFOV, params.ptr, cast(void*)0);
	}
	void StartZoom(float NewDesiredFOV, float NewZoomRate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewDesiredFOV;
		*cast(float*)&params[4] = NewZoomRate;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartZoom, params.ptr, cast(void*)0);
	}
	void StartZoomNonlinear(float NewDesiredFOV, float NewZoomInterpSpeed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewDesiredFOV;
		*cast(float*)&params[4] = NewZoomInterpSpeed;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartZoomNonlinear, params.ptr, cast(void*)0);
	}
	void StopZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopZoom, cast(void*)0, cast(void*)0);
	}
	void EndZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndZoom, cast(void*)0, cast(void*)0);
	}
	void EndZoomNonlinear(float ZoomInterpSpeed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ZoomInterpSpeed;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndZoomNonlinear, params.ptr, cast(void*)0);
	}
	void ClientEndZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientEndZoom, cast(void*)0, cast(void*)0);
	}
	void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRotation, params.ptr, cast(void*)0);
	}
	void CharacterProcessingComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CharacterProcessingComplete, cast(void*)0, cast(void*)0);
	}
	bool CanRestartPlayer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanRestartPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SendMessage(PlayerReplicationInfo Recipient, ScriptName MessageType, float Wait, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Recipient;
		*cast(ScriptName*)&params[4] = MessageType;
		*cast(float*)&params[12] = Wait;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMessage, params.ptr, cast(void*)0);
	}
	void ReceiveBotVoiceMessage(UTPlayerReplicationInfo SenderPRI, int MessageIndex, UObject LocationObject)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = SenderPRI;
		*cast(int*)&params[4] = MessageIndex;
		*cast(UObject*)&params[8] = LocationObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceiveBotVoiceMessage, params.ptr, cast(void*)0);
	}
	void ServerSetNetSpeed(int NewSpeed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewSpeed;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetNetSpeed, params.ptr, cast(void*)0);
	}
	void BullseyeMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BullseyeMessage, cast(void*)0, cast(void*)0);
	}
	void ServerChangeTeam(int N)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerChangeTeam, params.ptr, cast(void*)0);
	}
	void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeamlessTravelActorList, params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	void ServerKickBan(ScriptString PlayerToKick, bool bBan)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerToKick;
		*cast(bool*)&params[12] = bBan;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerKickBan, params.ptr, cast(void*)0);
	}
	bool AllowTTSMessageFrom(PlayerReplicationInfo PRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowTTSMessageFrom, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ServerSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSay, params.ptr, cast(void*)0);
	}
	void ServerTeamSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerTeamSay, params.ptr, cast(void*)0);
	}
	bool AllowTextMessage(ScriptString msg)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowTextMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool AdminCmdOk()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminCmdOk, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void AdminLogin(ScriptString Password)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminLogin, params.ptr, cast(void*)0);
	}
	void ServerAdminLogin(ScriptString Password)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerAdminLogin, params.ptr, cast(void*)0);
	}
	void AdminLogout()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminLogout, cast(void*)0, cast(void*)0);
	}
	void ServerAdminLogOut()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerAdminLogOut, cast(void*)0, cast(void*)0);
	}
	// WARNING: Function 'Admin' has the same name as a defined type!
	void ServerAdmin(ScriptString CommandLine)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = CommandLine;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerAdmin, params.ptr, cast(void*)0);
	}
	void AdminKickBan(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminKickBan, params.ptr, cast(void*)0);
	}
	void AdminKick(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminKick, params.ptr, cast(void*)0);
	}
	void AdminPlayerList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminPlayerList, cast(void*)0, cast(void*)0);
	}
	void AdminRestartMap()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminRestartMap, cast(void*)0, cast(void*)0);
	}
	void ServerRestartMap()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRestartMap, cast(void*)0, cast(void*)0);
	}
	void AdminChangeMap(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminChangeMap, params.ptr, cast(void*)0);
	}
	void ServerChangeMap(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerChangeMap, params.ptr, cast(void*)0);
	}
	void AdminForceVoiceMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminForceVoiceMute, params.ptr, cast(void*)0);
	}
	void ServerForceVoiceMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerForceVoiceMute, params.ptr, cast(void*)0);
	}
	void AdminForceVoiceUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminForceVoiceUnMute, params.ptr, cast(void*)0);
	}
	void ServerForceVoiceUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerForceVoiceUnMute, params.ptr, cast(void*)0);
	}
	void AdminForceTextMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminForceTextMute, params.ptr, cast(void*)0);
	}
	void ServerForceTextMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerForceTextMute, params.ptr, cast(void*)0);
	}
	void AdminForceTextUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminForceTextUnMute, params.ptr, cast(void*)0);
	}
	void ServerForceTextUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerForceTextUnMute, params.ptr, cast(void*)0);
	}
	void Disconnect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Disconnect, cast(void*)0, cast(void*)0);
	}
	void OnScoreChanged(UTTeamInfo T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTTeamInfo*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnScoreChanged, params.ptr, cast(void*)0);
	}
}
