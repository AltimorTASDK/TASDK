module UnrealScript.UTGame.UTPlayerController;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTPlayerController")()); }
	private static __gshared UTPlayerController mDefaultProperties;
	@property final static UTPlayerController DefaultProperties() { mixin(MGDPC!(UTPlayerController, "UTPlayerController UTGame.Default__UTPlayerController")()); }
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
			ScriptFunction ServerThrowWeapon() { mixin(MGF!("mServerThrowWeapon", "Function UTGame.UTPlayerController.ServerThrowWeapon")()); }
			ScriptFunction InitInputSystem() { mixin(MGF!("mInitInputSystem", "Function UTGame.UTPlayerController.InitInputSystem")()); }
			ScriptFunction PulseTeamColor() { mixin(MGF!("mPulseTeamColor", "Function UTGame.UTPlayerController.PulseTeamColor")()); }
			ScriptFunction ServerSetCharacterClass() { mixin(MGF!("mServerSetCharacterClass", "Function UTGame.UTPlayerController.ServerSetCharacterClass")()); }
			ScriptFunction ClearStringAliasBindingMapCache() { mixin(MGF!("mClearStringAliasBindingMapCache", "Function UTGame.UTPlayerController.ClearStringAliasBindingMapCache")()); }
			ScriptFunction RegisterCustomPlayerDataStores() { mixin(MGF!("mRegisterCustomPlayerDataStores", "Function UTGame.UTPlayerController.RegisterCustomPlayerDataStores")()); }
			ScriptFunction UnregisterPlayerDataStores() { mixin(MGF!("mUnregisterPlayerDataStores", "Function UTGame.UTPlayerController.UnregisterPlayerDataStores")()); }
			ScriptFunction AddOnlineDelegates() { mixin(MGF!("mAddOnlineDelegates", "Function UTGame.UTPlayerController.AddOnlineDelegates")()); }
			ScriptFunction ClearOnlineDelegates() { mixin(MGF!("mClearOnlineDelegates", "Function UTGame.UTPlayerController.ClearOnlineDelegates")()); }
			ScriptFunction ClientSetOnlineStatus() { mixin(MGF!("mClientSetOnlineStatus", "Function UTGame.UTPlayerController.ClientSetOnlineStatus")()); }
			ScriptFunction OnConnectionStatusChange() { mixin(MGF!("mOnConnectionStatusChange", "Function UTGame.UTPlayerController.OnConnectionStatusChange")()); }
			ScriptFunction OnLinkStatusChanged() { mixin(MGF!("mOnLinkStatusChanged", "Function UTGame.UTPlayerController.OnLinkStatusChanged")()); }
			ScriptFunction OnReadProfileSettingsComplete() { mixin(MGF!("mOnReadProfileSettingsComplete", "Function UTGame.UTPlayerController.OnReadProfileSettingsComplete")()); }
			ScriptFunction OnGameInviteReceived() { mixin(MGF!("mOnGameInviteReceived", "Function UTGame.UTPlayerController.OnGameInviteReceived")()); }
			ScriptFunction OnFriendInviteReceived() { mixin(MGF!("mOnFriendInviteReceived", "Function UTGame.UTPlayerController.OnFriendInviteReceived")()); }
			ScriptFunction OnFriendMessageReceived() { mixin(MGF!("mOnFriendMessageReceived", "Function UTGame.UTPlayerController.OnFriendMessageReceived")()); }
			ScriptFunction NotifyInviteFailed() { mixin(MGF!("mNotifyInviteFailed", "Function UTGame.UTPlayerController.NotifyInviteFailed")()); }
			ScriptFunction NotifyNotAllPlayersCanJoinInvite() { mixin(MGF!("mNotifyNotAllPlayersCanJoinInvite", "Function UTGame.UTPlayerController.NotifyNotAllPlayersCanJoinInvite")()); }
			ScriptFunction NotifyNotEnoughSpaceInInvite() { mixin(MGF!("mNotifyNotEnoughSpaceInInvite", "Function UTGame.UTPlayerController.NotifyNotEnoughSpaceInInvite")()); }
			ScriptFunction ClientWasKicked() { mixin(MGF!("mClientWasKicked", "Function UTGame.UTPlayerController.ClientWasKicked")()); }
			ScriptFunction SetFrontEndErrorMessage() { mixin(MGF!("mSetFrontEndErrorMessage", "Function UTGame.UTPlayerController.SetFrontEndErrorMessage")()); }
			ScriptFunction QuitToMainMenu() { mixin(MGF!("mQuitToMainMenu", "Function UTGame.UTPlayerController.QuitToMainMenu")()); }
			ScriptFunction FinishQuitToMainMenu() { mixin(MGF!("mFinishQuitToMainMenu", "Function UTGame.UTPlayerController.FinishQuitToMainMenu")()); }
			ScriptFunction CleanupOnlineSubsystemSession() { mixin(MGF!("mCleanupOnlineSubsystemSession", "Function UTGame.UTPlayerController.CleanupOnlineSubsystemSession")()); }
			ScriptFunction OnEndOnlineGameComplete() { mixin(MGF!("mOnEndOnlineGameComplete", "Function UTGame.UTPlayerController.OnEndOnlineGameComplete")()); }
			ScriptFunction OnDestroyOnlineGameComplete() { mixin(MGF!("mOnDestroyOnlineGameComplete", "Function UTGame.UTPlayerController.OnDestroyOnlineGameComplete")()); }
			ScriptFunction ClientSetSpeechRecognitionObject() { mixin(MGF!("mClientSetSpeechRecognitionObject", "Function UTGame.UTPlayerController.ClientSetSpeechRecognitionObject")()); }
			ScriptFunction SpeechRecognitionComplete() { mixin(MGF!("mSpeechRecognitionComplete", "Function UTGame.UTPlayerController.SpeechRecognitionComplete")()); }
			ScriptFunction ServerProcessSpeechRecognition() { mixin(MGF!("mServerProcessSpeechRecognition", "Function UTGame.UTPlayerController.ServerProcessSpeechRecognition")()); }
			ScriptFunction ClientHearSound() { mixin(MGF!("mClientHearSound", "Function UTGame.UTPlayerController.ClientHearSound")()); }
			ScriptFunction AimingHelp() { mixin(MGF!("mAimingHelp", "Function UTGame.UTPlayerController.AimingHelp")()); }
			ScriptFunction AimHelpModifier() { mixin(MGF!("mAimHelpModifier", "Function UTGame.UTPlayerController.AimHelpModifier")()); }
			ScriptFunction GetAdjustedAimFor() { mixin(MGF!("mGetAdjustedAimFor", "Function UTGame.UTPlayerController.GetAdjustedAimFor")()); }
			ScriptFunction FindVehicleToDrive() { mixin(MGF!("mFindVehicleToDrive", "Function UTGame.UTPlayerController.FindVehicleToDrive")()); }
			ScriptFunction CheckPickedVehicle() { mixin(MGF!("mCheckPickedVehicle", "Function UTGame.UTPlayerController.CheckPickedVehicle")()); }
			ScriptFunction ClientSetRequestedEntryWithFlag() { mixin(MGF!("mClientSetRequestedEntryWithFlag", "Function UTGame.UTPlayerController.ClientSetRequestedEntryWithFlag")()); }
			ScriptFunction CheckVehicleToDrive() { mixin(MGF!("mCheckVehicleToDrive", "Function UTGame.UTPlayerController.CheckVehicleToDrive")()); }
			ScriptFunction DropFlag() { mixin(MGF!("mDropFlag", "Function UTGame.UTPlayerController.DropFlag")()); }
			ScriptFunction ServerDropFlag() { mixin(MGF!("mServerDropFlag", "Function UTGame.UTPlayerController.ServerDropFlag")()); }
			ScriptFunction LandingShake() { mixin(MGF!("mLandingShake", "Function UTGame.UTPlayerController.LandingShake")()); }
			ScriptFunction PlayBeepSound() { mixin(MGF!("mPlayBeepSound", "Function UTGame.UTPlayerController.PlayBeepSound")()); }
			ScriptFunction ReceiveWarning() { mixin(MGF!("mReceiveWarning", "Function UTGame.UTPlayerController.ReceiveWarning")()); }
			ScriptFunction ReceiveProjectileWarning() { mixin(MGF!("mReceiveProjectileWarning", "Function UTGame.UTPlayerController.ReceiveProjectileWarning")()); }
			ScriptFunction ProjectileWarningTimer() { mixin(MGF!("mProjectileWarningTimer", "Function UTGame.UTPlayerController.ProjectileWarningTimer")()); }
			ScriptFunction PlayWinMessage() { mixin(MGF!("mPlayWinMessage", "Function UTGame.UTPlayerController.PlayWinMessage")()); }
			ScriptFunction TriggerInteracted() { mixin(MGF!("mTriggerInteracted", "Function UTGame.UTPlayerController.TriggerInteracted")()); }
			ScriptFunction PlayVehicleHorn() { mixin(MGF!("mPlayVehicleHorn", "Function UTGame.UTPlayerController.PlayVehicleHorn")()); }
			ScriptFunction ServerPlayVehicleHorn() { mixin(MGF!("mServerPlayVehicleHorn", "Function UTGame.UTPlayerController.ServerPlayVehicleHorn")()); }
			ScriptFunction Typing() { mixin(MGF!("mTyping", "Function UTGame.UTPlayerController.Typing")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UTGame.UTPlayerController.Destroyed")()); }
			ScriptFunction OnControllerChanged() { mixin(MGF!("mOnControllerChanged", "Function UTGame.UTPlayerController.OnControllerChanged")()); }
			ScriptFunction SoakPause() { mixin(MGF!("mSoakPause", "Function UTGame.UTPlayerController.SoakPause")()); }
			ScriptFunction DrawHUD() { mixin(MGF!("mDrawHUD", "Function UTGame.UTPlayerController.DrawHUD")()); }
			ScriptFunction KickWarning() { mixin(MGF!("mKickWarning", "Function UTGame.UTPlayerController.KickWarning")()); }
			ScriptFunction CheckJumpOrDuck() { mixin(MGF!("mCheckJumpOrDuck", "Function UTGame.UTPlayerController.CheckJumpOrDuck")()); }
			ScriptFunction FOV() { mixin(MGF!("mFOV", "Function UTGame.UTPlayerController.FOV")()); }
			ScriptFunction FixFOV() { mixin(MGF!("mFixFOV", "Function UTGame.UTPlayerController.FixFOV")()); }
			ScriptFunction Restart() { mixin(MGF!("mRestart", "Function UTGame.UTPlayerController.Restart")()); }
			ScriptFunction ClientRestart() { mixin(MGF!("mClientRestart", "Function UTGame.UTPlayerController.ClientRestart")()); }
			ScriptFunction SetViewTarget() { mixin(MGF!("mSetViewTarget", "Function UTGame.UTPlayerController.SetViewTarget")()); }
			ScriptFunction CheckAutoObjective() { mixin(MGF!("mCheckAutoObjective", "Function UTGame.UTPlayerController.CheckAutoObjective")()); }
			ScriptFunction SetAutoObjective() { mixin(MGF!("mSetAutoObjective", "Function UTGame.UTPlayerController.SetAutoObjective")()); }
			ScriptFunction ClientSetAutoObjective() { mixin(MGF!("mClientSetAutoObjective", "Function UTGame.UTPlayerController.ClientSetAutoObjective")()); }
			ScriptFunction Possess() { mixin(MGF!("mPossess", "Function UTGame.UTPlayerController.Possess")()); }
			ScriptFunction AcknowledgePossession() { mixin(MGF!("mAcknowledgePossession", "Function UTGame.UTPlayerController.AcknowledgePossession")()); }
			ScriptFunction IdentifyTeamMessage() { mixin(MGF!("mIdentifyTeamMessage", "Function UTGame.UTPlayerController.IdentifyTeamMessage")()); }
			ScriptFunction ReceivedPlayer() { mixin(MGF!("mReceivedPlayer", "Function UTGame.UTPlayerController.ReceivedPlayer")()); }
			ScriptFunction ServerPlayerPreferences() { mixin(MGF!("mServerPlayerPreferences", "Function UTGame.UTPlayerController.ServerPlayerPreferences")()); }
			ScriptFunction ServerSetHand() { mixin(MGF!("mServerSetHand", "Function UTGame.UTPlayerController.ServerSetHand")()); }
			ScriptFunction SetHand() { mixin(MGF!("mSetHand", "Function UTGame.UTPlayerController.SetHand")()); }
			ScriptFunction ResetCameraMode() { mixin(MGF!("mResetCameraMode", "Function UTGame.UTPlayerController.ResetCameraMode")()); }
			ScriptFunction UsingFirstPersonCamera() { mixin(MGF!("mUsingFirstPersonCamera", "Function UTGame.UTPlayerController.UsingFirstPersonCamera")()); }
			ScriptFunction ServerSetAutoTaunt() { mixin(MGF!("mServerSetAutoTaunt", "Function UTGame.UTPlayerController.ServerSetAutoTaunt")()); }
			ScriptFunction SetAutoTaunt() { mixin(MGF!("mSetAutoTaunt", "Function UTGame.UTPlayerController.SetAutoTaunt")()); }
			ScriptFunction ToggleScreenShotMode() { mixin(MGF!("mToggleScreenShotMode", "Function UTGame.UTPlayerController.ToggleScreenShotMode")()); }
			ScriptFunction PlayStartupMessage() { mixin(MGF!("mPlayStartupMessage", "Function UTGame.UTPlayerController.PlayStartupMessage")()); }
			ScriptFunction NotifyTakeHit() { mixin(MGF!("mNotifyTakeHit", "Function UTGame.UTPlayerController.NotifyTakeHit")()); }
			ScriptFunction ClientPlayTakeHit() { mixin(MGF!("mClientPlayTakeHit", "Function UTGame.UTPlayerController.ClientPlayTakeHit")()); }
			ScriptFunction ServerUse() { mixin(MGF!("mServerUse", "Function UTGame.UTPlayerController.ServerUse")()); }
			ScriptFunction Use() { mixin(MGF!("mUse", "Function UTGame.UTPlayerController.Use")()); }
			ScriptFunction PerformedUseAction() { mixin(MGF!("mPerformedUseAction", "Function UTGame.UTPlayerController.PerformedUseAction")()); }
			ScriptFunction ClearDoubleClick() { mixin(MGF!("mClearDoubleClick", "Function UTGame.UTPlayerController.ClearDoubleClick")()); }
			ScriptFunction ShowScoreboard() { mixin(MGF!("mShowScoreboard", "Function UTGame.UTPlayerController.ShowScoreboard")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function UTGame.UTPlayerController.DisplayDebug")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function UTGame.UTPlayerController.Reset")()); }
			ScriptFunction ClientReset() { mixin(MGF!("mClientReset", "Function UTGame.UTPlayerController.ClientReset")()); }
			ScriptFunction BehindView() { mixin(MGF!("mBehindView", "Function UTGame.UTPlayerController.BehindView")()); }
			ScriptFunction SetBehindView() { mixin(MGF!("mSetBehindView", "Function UTGame.UTPlayerController.SetBehindView")()); }
			ScriptFunction ClientSetBehindView() { mixin(MGF!("mClientSetBehindView", "Function UTGame.UTPlayerController.ClientSetBehindView")()); }
			ScriptFunction SetCameraMode() { mixin(MGF!("mSetCameraMode", "Function UTGame.UTPlayerController.SetCameraMode")()); }
			ScriptFunction SpawnCamera() { mixin(MGF!("mSpawnCamera", "Function UTGame.UTPlayerController.SpawnCamera")()); }
			ScriptFunction GetPlayerViewPoint() { mixin(MGF!("mGetPlayerViewPoint", "Function UTGame.UTPlayerController.GetPlayerViewPoint")()); }
			ScriptFunction CalcCameraOnViewTarget() { mixin(MGF!("mCalcCameraOnViewTarget", "Function UTGame.UTPlayerController.CalcCameraOnViewTarget")()); }
			ScriptFunction ClientMusicEvent() { mixin(MGF!("mClientMusicEvent", "Function UTGame.UTPlayerController.ClientMusicEvent")()); }
			ScriptFunction AlreadyInActionMusic() { mixin(MGF!("mAlreadyInActionMusic", "Function UTGame.UTPlayerController.AlreadyInActionMusic")()); }
			ScriptFunction ClientPlayAnnouncement() { mixin(MGF!("mClientPlayAnnouncement", "Function UTGame.UTPlayerController.ClientPlayAnnouncement")()); }
			ScriptFunction PlayAnnouncement() { mixin(MGF!("mPlayAnnouncement", "Function UTGame.UTPlayerController.PlayAnnouncement")()); }
			ScriptFunction DamageShake() { mixin(MGF!("mDamageShake", "Function UTGame.UTPlayerController.DamageShake")()); }
			ScriptFunction StopViewShaking() { mixin(MGF!("mStopViewShaking", "Function UTGame.UTPlayerController.StopViewShaking")()); }
			ScriptFunction PlayCameraAnim() { mixin(MGF!("mPlayCameraAnim", "Function UTGame.UTPlayerController.PlayCameraAnim")()); }
			ScriptFunction StopCameraAnim() { mixin(MGF!("mStopCameraAnim", "Function UTGame.UTPlayerController.StopCameraAnim")()); }
			ScriptFunction SetCameraAnimStrength() { mixin(MGF!("mSetCameraAnimStrength", "Function UTGame.UTPlayerController.SetCameraAnimStrength")()); }
			ScriptFunction ClientPlayCameraAnim() { mixin(MGF!("mClientPlayCameraAnim", "Function UTGame.UTPlayerController.ClientPlayCameraAnim")()); }
			ScriptFunction ClientStopCameraAnim() { mixin(MGF!("mClientStopCameraAnim", "Function UTGame.UTPlayerController.ClientStopCameraAnim")()); }
			ScriptFunction OnPlayCameraAnim() { mixin(MGF!("mOnPlayCameraAnim", "Function UTGame.UTPlayerController.OnPlayCameraAnim")()); }
			ScriptFunction OnStopCameraAnim() { mixin(MGF!("mOnStopCameraAnim", "Function UTGame.UTPlayerController.OnStopCameraAnim")()); }
			ScriptFunction ViewShake() { mixin(MGF!("mViewShake", "Function UTGame.UTPlayerController.ViewShake")()); }
			ScriptFunction ToggleMelee() { mixin(MGF!("mToggleMelee", "Function UTGame.UTPlayerController.ToggleMelee")()); }
			ScriptFunction ToggleTranslocator() { mixin(MGF!("mToggleTranslocator", "Function UTGame.UTPlayerController.ToggleTranslocator")()); }
			ScriptFunction CallServerMove() { mixin(MGF!("mCallServerMove", "Function UTGame.UTPlayerController.CallServerMove")()); }
			ScriptFunction ShortServerMove() { mixin(MGF!("mShortServerMove", "Function UTGame.UTPlayerController.ShortServerMove")()); }
			ScriptFunction LongClientAdjustPosition() { mixin(MGF!("mLongClientAdjustPosition", "Function UTGame.UTPlayerController.LongClientAdjustPosition")()); }
			ScriptFunction ViewNextBot() { mixin(MGF!("mViewNextBot", "Function UTGame.UTPlayerController.ViewNextBot")()); }
			ScriptFunction SwitchWeapon() { mixin(MGF!("mSwitchWeapon", "Function UTGame.UTPlayerController.SwitchWeapon")()); }
			ScriptFunction ServerViewSelf() { mixin(MGF!("mServerViewSelf", "Function UTGame.UTPlayerController.ServerViewSelf")()); }
			ScriptFunction ViewPlayerByName() { mixin(MGF!("mViewPlayerByName", "Function UTGame.UTPlayerController.ViewPlayerByName")()); }
			ScriptFunction ServerViewPlayerByName() { mixin(MGF!("mServerViewPlayerByName", "Function UTGame.UTPlayerController.ServerViewPlayerByName")()); }
			ScriptFunction ViewObjective() { mixin(MGF!("mViewObjective", "Function UTGame.UTPlayerController.ViewObjective")()); }
			ScriptFunction ServerViewObjective() { mixin(MGF!("mServerViewObjective", "Function UTGame.UTPlayerController.ServerViewObjective")()); }
			ScriptFunction PrevWeapon() { mixin(MGF!("mPrevWeapon", "Function UTGame.UTPlayerController.PrevWeapon")()); }
			ScriptFunction NextWeapon() { mixin(MGF!("mNextWeapon", "Function UTGame.UTPlayerController.NextWeapon")()); }
			ScriptFunction AdjustCameraScale() { mixin(MGF!("mAdjustCameraScale", "Function UTGame.UTPlayerController.AdjustCameraScale")()); }
			ScriptFunction CanCommunicate() { mixin(MGF!("mCanCommunicate", "Function UTGame.UTPlayerController.CanCommunicate")()); }
			ScriptFunction ShowMidGameMenu() { mixin(MGF!("mShowMidGameMenu", "Function UTGame.UTPlayerController.ShowMidGameMenu")()); }
			ScriptFunction ClientGameEnded() { mixin(MGF!("mClientGameEnded", "Function UTGame.UTPlayerController.ClientGameEnded")()); }
			ScriptFunction RoundHasEnded() { mixin(MGF!("mRoundHasEnded", "Function UTGame.UTPlayerController.RoundHasEnded")()); }
			ScriptFunction ClientRoundEnded() { mixin(MGF!("mClientRoundEnded", "Function UTGame.UTPlayerController.ClientRoundEnded")()); }
			ScriptFunction CheckBulletWhip() { mixin(MGF!("mCheckBulletWhip", "Function UTGame.UTPlayerController.CheckBulletWhip")()); }
			ScriptFunction PawnDied() { mixin(MGF!("mPawnDied", "Function UTGame.UTPlayerController.PawnDied")()); }
			ScriptFunction ClientPawnDied() { mixin(MGF!("mClientPawnDied", "Function UTGame.UTPlayerController.ClientPawnDied")()); }
			ScriptFunction OnUpdatePropertyFOVAngle() { mixin(MGF!("mOnUpdatePropertyFOVAngle", "Function UTGame.UTPlayerController.OnUpdatePropertyFOVAngle")()); }
			ScriptFunction AdjustFOV() { mixin(MGF!("mAdjustFOV", "Function UTGame.UTPlayerController.AdjustFOV")()); }
			ScriptFunction StartZoom() { mixin(MGF!("mStartZoom", "Function UTGame.UTPlayerController.StartZoom")()); }
			ScriptFunction StartZoomNonlinear() { mixin(MGF!("mStartZoomNonlinear", "Function UTGame.UTPlayerController.StartZoomNonlinear")()); }
			ScriptFunction StopZoom() { mixin(MGF!("mStopZoom", "Function UTGame.UTPlayerController.StopZoom")()); }
			ScriptFunction EndZoom() { mixin(MGF!("mEndZoom", "Function UTGame.UTPlayerController.EndZoom")()); }
			ScriptFunction EndZoomNonlinear() { mixin(MGF!("mEndZoomNonlinear", "Function UTGame.UTPlayerController.EndZoomNonlinear")()); }
			ScriptFunction ClientEndZoom() { mixin(MGF!("mClientEndZoom", "Function UTGame.UTPlayerController.ClientEndZoom")()); }
			ScriptFunction UpdateRotation() { mixin(MGF!("mUpdateRotation", "Function UTGame.UTPlayerController.UpdateRotation")()); }
			ScriptFunction CharacterProcessingComplete() { mixin(MGF!("mCharacterProcessingComplete", "Function UTGame.UTPlayerController.CharacterProcessingComplete")()); }
			ScriptFunction CanRestartPlayer() { mixin(MGF!("mCanRestartPlayer", "Function UTGame.UTPlayerController.CanRestartPlayer")()); }
			ScriptFunction SendMessage() { mixin(MGF!("mSendMessage", "Function UTGame.UTPlayerController.SendMessage")()); }
			ScriptFunction ReceiveBotVoiceMessage() { mixin(MGF!("mReceiveBotVoiceMessage", "Function UTGame.UTPlayerController.ReceiveBotVoiceMessage")()); }
			ScriptFunction ServerSetNetSpeed() { mixin(MGF!("mServerSetNetSpeed", "Function UTGame.UTPlayerController.ServerSetNetSpeed")()); }
			ScriptFunction BullseyeMessage() { mixin(MGF!("mBullseyeMessage", "Function UTGame.UTPlayerController.BullseyeMessage")()); }
			ScriptFunction ServerChangeTeam() { mixin(MGF!("mServerChangeTeam", "Function UTGame.UTPlayerController.ServerChangeTeam")()); }
			ScriptFunction GetSeamlessTravelActorList() { mixin(MGF!("mGetSeamlessTravelActorList", "Function UTGame.UTPlayerController.GetSeamlessTravelActorList")()); }
			ScriptFunction ServerKickBan() { mixin(MGF!("mServerKickBan", "Function UTGame.UTPlayerController.ServerKickBan")()); }
			ScriptFunction AllowTTSMessageFrom() { mixin(MGF!("mAllowTTSMessageFrom", "Function UTGame.UTPlayerController.AllowTTSMessageFrom")()); }
			ScriptFunction ServerSay() { mixin(MGF!("mServerSay", "Function UTGame.UTPlayerController.ServerSay")()); }
			ScriptFunction ServerTeamSay() { mixin(MGF!("mServerTeamSay", "Function UTGame.UTPlayerController.ServerTeamSay")()); }
			ScriptFunction AllowTextMessage() { mixin(MGF!("mAllowTextMessage", "Function UTGame.UTPlayerController.AllowTextMessage")()); }
			ScriptFunction AdminCmdOk() { mixin(MGF!("mAdminCmdOk", "Function UTGame.UTPlayerController.AdminCmdOk")()); }
			ScriptFunction AdminLogin() { mixin(MGF!("mAdminLogin", "Function UTGame.UTPlayerController.AdminLogin")()); }
			ScriptFunction ServerAdminLogin() { mixin(MGF!("mServerAdminLogin", "Function UTGame.UTPlayerController.ServerAdminLogin")()); }
			ScriptFunction AdminLogout() { mixin(MGF!("mAdminLogout", "Function UTGame.UTPlayerController.AdminLogout")()); }
			ScriptFunction ServerAdminLogOut() { mixin(MGF!("mServerAdminLogOut", "Function UTGame.UTPlayerController.ServerAdminLogOut")()); }
			ScriptFunction Admin() { mixin(MGF!("mAdmin", "Function UTGame.UTPlayerController.Admin")()); }
			ScriptFunction ServerAdmin() { mixin(MGF!("mServerAdmin", "Function UTGame.UTPlayerController.ServerAdmin")()); }
			ScriptFunction AdminKickBan() { mixin(MGF!("mAdminKickBan", "Function UTGame.UTPlayerController.AdminKickBan")()); }
			ScriptFunction AdminKick() { mixin(MGF!("mAdminKick", "Function UTGame.UTPlayerController.AdminKick")()); }
			ScriptFunction AdminPlayerList() { mixin(MGF!("mAdminPlayerList", "Function UTGame.UTPlayerController.AdminPlayerList")()); }
			ScriptFunction AdminRestartMap() { mixin(MGF!("mAdminRestartMap", "Function UTGame.UTPlayerController.AdminRestartMap")()); }
			ScriptFunction ServerRestartMap() { mixin(MGF!("mServerRestartMap", "Function UTGame.UTPlayerController.ServerRestartMap")()); }
			ScriptFunction AdminChangeMap() { mixin(MGF!("mAdminChangeMap", "Function UTGame.UTPlayerController.AdminChangeMap")()); }
			ScriptFunction ServerChangeMap() { mixin(MGF!("mServerChangeMap", "Function UTGame.UTPlayerController.ServerChangeMap")()); }
			ScriptFunction AdminForceVoiceMute() { mixin(MGF!("mAdminForceVoiceMute", "Function UTGame.UTPlayerController.AdminForceVoiceMute")()); }
			ScriptFunction ServerForceVoiceMute() { mixin(MGF!("mServerForceVoiceMute", "Function UTGame.UTPlayerController.ServerForceVoiceMute")()); }
			ScriptFunction AdminForceVoiceUnMute() { mixin(MGF!("mAdminForceVoiceUnMute", "Function UTGame.UTPlayerController.AdminForceVoiceUnMute")()); }
			ScriptFunction ServerForceVoiceUnMute() { mixin(MGF!("mServerForceVoiceUnMute", "Function UTGame.UTPlayerController.ServerForceVoiceUnMute")()); }
			ScriptFunction AdminForceTextMute() { mixin(MGF!("mAdminForceTextMute", "Function UTGame.UTPlayerController.AdminForceTextMute")()); }
			ScriptFunction ServerForceTextMute() { mixin(MGF!("mServerForceTextMute", "Function UTGame.UTPlayerController.ServerForceTextMute")()); }
			ScriptFunction AdminForceTextUnMute() { mixin(MGF!("mAdminForceTextUnMute", "Function UTGame.UTPlayerController.AdminForceTextUnMute")()); }
			ScriptFunction ServerForceTextUnMute() { mixin(MGF!("mServerForceTextUnMute", "Function UTGame.UTPlayerController.ServerForceTextUnMute")()); }
			ScriptFunction Disconnect() { mixin(MGF!("mDisconnect", "Function UTGame.UTPlayerController.Disconnect")()); }
			ScriptFunction OnScoreChanged() { mixin(MGF!("mOnScoreChanged", "Function UTGame.UTPlayerController.OnScoreChanged")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.UTPlayerController.PostProcessInfo")()); }
		@property final auto ref
		{
			float Desaturation() { mixin(MGPS!("float", 12)()); }
			float HighLights() { mixin(MGPS!("float", 8)()); }
			float MidTones() { mixin(MGPS!("float", 4)()); }
			float Shadows() { mixin(MGPS!("float", 0)()); }
		}
	}
	static struct PlayerWalking
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTPlayerController.PlayerWalking")()); }
	}
	static struct PlayerFlying
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTPlayerController.PlayerFlying")()); }
	}
	static struct RoundEnded
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTPlayerController.RoundEnded")()); }
	}
	static struct Dead
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTPlayerController.Dead")()); }
	}
	static struct PlayerWaiting
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTPlayerController.PlayerWaiting")()); }
	}
	static struct WaitingForPawn
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTPlayerController.WaitingForPawn")()); }
	}
	static struct InQueue
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTPlayerController.InQueue")()); }
	}
	@property final
	{
		auto ref
		{
			UTUIDataStore_StringAliasBindingsMap BoundEventsStringDataStore() { mixin(MGPC!("UTUIDataStore_StringAliasBindingsMap", 2152)()); }
			float LastWarningTime() { mixin(MGPC!("float", 2100)()); }
			float LastTauntAnimTime() { mixin(MGPC!("float", 1992)()); }
			UTAnnouncer Announcer() { mixin(MGPC!("UTAnnouncer", 1984)()); }
			UTMusicManager MusicManager() { mixin(MGPC!("UTMusicManager", 1988)()); }
			float LastKickWarningTime() { mixin(MGPC!("float", 1996)()); }
			float OnFootDefaultFOV() { mixin(MGPC!("float", 2160)()); }
			UTPlayerController.EWeaponHand WeaponHandPreference() { mixin(MGPC!("UTPlayerController.EWeaponHand", 1966)()); }
			UTPlayerController.EAutoObjectivePreference AutoObjectivePreference() { mixin(MGPC!("UTPlayerController.EAutoObjectivePreference", 1968)()); }
			UTPlayerController.EUTVehicleControls VehicleControlType() { mixin(MGPC!("UTPlayerController.EUTVehicleControls", 1969)()); }
			UTPlayerController.EPawnShadowMode PawnShadowMode() { mixin(MGPC!("UTPlayerController.EPawnShadowMode", 1965)()); }
			Actor LastAutoObjective() { mixin(MGPC!("Actor", 2132)()); }
			float LastShowPathTime() { mixin(MGPC!("float", 2128)()); }
			ubyte IdentifiedTeam() { mixin(MGPC!("ubyte", 1964)()); }
			UTPlayerController.EWeaponHand WeaponHand() { mixin(MGPC!("UTPlayerController.EWeaponHand", 1967)()); }
			float LastUseTime() { mixin(MGPC!("float", 2140)()); }
			Actor CalcViewActor() { mixin(MGPC!("Actor", 2032)()); }
			float LastCameraTimeStamp() { mixin(MGPC!("float", 2024)()); }
			Rotator DebugFreeCamRot() { mixin(MGPC!("Rotator", 2116)()); }
			ScriptClass MatineeCameraClass() { mixin(MGPC!("ScriptClass", 2028)()); }
			Vector CalcViewActorLocation() { mixin(MGPC!("Vector", 2036)()); }
			Rotator CalcViewActorRotation() { mixin(MGPC!("Rotator", 2048)()); }
			float CalcEyeHeight() { mixin(MGPC!("float", 2084)()); }
			Vector CalcWalkBob() { mixin(MGPC!("Vector", 2088)()); }
			Vector CalcViewLocation() { mixin(MGPC!("Vector", 2060)()); }
			Rotator CalcViewRotation() { mixin(MGPC!("Rotator", 2072)()); }
			CameraAnim DamageCameraAnim() { mixin(MGPC!("CameraAnim", 2020)()); }
			ForceFeedbackWaveform CameraShakeShortWaveForm() { mixin(MGPC!("ForceFeedbackWaveform", 2012)()); }
			ForceFeedbackWaveform CameraShakeLongWaveForm() { mixin(MGPC!("ForceFeedbackWaveform", 2016)()); }
			ScriptString MsgPlayerNotFound() { mixin(MGPC!("ScriptString", 2000)()); }
			float FOVNonlinearZoomInterpSpeed() { mixin(MGPC!("float", 2108)()); }
			float FOVLinearZoomRate() { mixin(MGPC!("float", 2104)()); }
			float LastBullseyeTime() { mixin(MGPC!("float", 2136)()); }
			float LastTeamChangeTime() { mixin(MGPC!("float", 2172)()); }
			float NextAdminCmdTime() { mixin(MGPC!("float", 2156)()); }
			Vector DesiredLocation() { mixin(MGPC!("Vector", 1972)()); }
			float ZoomRotationModifier() { mixin(MGPC!("float", 2112)()); }
			float OldMessageTime() { mixin(MGPC!("float", 2144)()); }
			float LastFriendlyFireTime() { mixin(MGPC!("float", 2148)()); }
			float LastIncomingMessageTime() { mixin(MGPC!("float", 2164)()); }
			float LastCombatUpdateTime() { mixin(MGPC!("float", 2168)()); }
		}
		bool bLateComer() { mixin(MGBPC!(1960, 0x1)()); }
		bool bLateComer(bool val) { mixin(MSBPC!(1960, 0x1)()); }
		bool bQuittingToMainMenu() { mixin(MGBPC!(1960, 0x20000)()); }
		bool bQuittingToMainMenu(bool val) { mixin(MSBPC!(1960, 0x20000)()); }
		bool bJustFoundVehicle() { mixin(MGBPC!(1960, 0x80000)()); }
		bool bJustFoundVehicle(bool val) { mixin(MSBPC!(1960, 0x80000)()); }
		bool bLandingShake() { mixin(MGBPC!(1960, 0x4000)()); }
		bool bLandingShake(bool val) { mixin(MSBPC!(1960, 0x4000)()); }
		bool bIsTyping() { mixin(MGBPC!(1960, 0x2)()); }
		bool bIsTyping(bool val) { mixin(MSBPC!(1960, 0x2)()); }
		bool bBehindView() { mixin(MGBPC!(1960, 0x80)()); }
		bool bBehindView(bool val) { mixin(MSBPC!(1960, 0x80)()); }
		bool bAutoTaunt() { mixin(MGBPC!(1960, 0x4)()); }
		bool bAutoTaunt(bool val) { mixin(MSBPC!(1960, 0x4)()); }
		bool bCenteredWeaponFire() { mixin(MGBPC!(1960, 0x8000)()); }
		bool bCenteredWeaponFire(bool val) { mixin(MSBPC!(1960, 0x8000)()); }
		bool bUseVehicleRotationOnPossess() { mixin(MGBPC!(1960, 0x8)()); }
		bool bUseVehicleRotationOnPossess(bool val) { mixin(MSBPC!(1960, 0x8)()); }
		bool bAlreadyReset() { mixin(MGBPC!(1960, 0x400000)()); }
		bool bAlreadyReset(bool val) { mixin(MSBPC!(1960, 0x400000)()); }
		bool bFreeCamera() { mixin(MGBPC!(1960, 0x200)()); }
		bool bFreeCamera(bool val) { mixin(MSBPC!(1960, 0x200)()); }
		bool bDebugFreeCam() { mixin(MGBPC!(1960, 0x40000)()); }
		bool bDebugFreeCam(bool val) { mixin(MSBPC!(1960, 0x40000)()); }
		bool bCurrentCamAnimIsDamageShake() { mixin(MGBPC!(1960, 0x1000)()); }
		bool bCurrentCamAnimIsDamageShake(bool val) { mixin(MSBPC!(1960, 0x1000)()); }
		bool bCurrentCamAnimAffectsFOV() { mixin(MGBPC!(1960, 0x2000)()); }
		bool bCurrentCamAnimAffectsFOV(bool val) { mixin(MSBPC!(1960, 0x2000)()); }
		bool bCameraOutOfWorld() { mixin(MGBPC!(1960, 0x20)()); }
		bool bCameraOutOfWorld(bool val) { mixin(MSBPC!(1960, 0x20)()); }
		bool bServerMutedText() { mixin(MGBPC!(1960, 0x800000)()); }
		bool bServerMutedText(bool val) { mixin(MSBPC!(1960, 0x800000)()); }
		bool bNonlinearZoomInterpolation() { mixin(MGBPC!(1960, 0x10000)()); }
		bool bNonlinearZoomInterpolation(bool val) { mixin(MSBPC!(1960, 0x10000)()); }
		bool bNoTextToSpeechVoiceMessages() { mixin(MGBPC!(1960, 0x400)()); }
		bool bNoTextToSpeechVoiceMessages(bool val) { mixin(MSBPC!(1960, 0x400)()); }
		bool bTextToSpeechTeamMessagesOnly() { mixin(MGBPC!(1960, 0x800)()); }
		bool bTextToSpeechTeamMessagesOnly(bool val) { mixin(MSBPC!(1960, 0x800)()); }
		bool bRotateMinimap() { mixin(MGBPC!(1960, 0x10)()); }
		bool bRotateMinimap(bool val) { mixin(MSBPC!(1960, 0x10)()); }
		bool bFirstPersonWeaponsSelfShadow() { mixin(MGBPC!(1960, 0x40)()); }
		bool bFirstPersonWeaponsSelfShadow(bool val) { mixin(MSBPC!(1960, 0x40)()); }
		bool bForceBehindView() { mixin(MGBPC!(1960, 0x100)()); }
		bool bForceBehindView(bool val) { mixin(MSBPC!(1960, 0x100)()); }
		bool bNoCrosshair() { mixin(MGBPC!(1960, 0x100000)()); }
		bool bNoCrosshair(bool val) { mixin(MSBPC!(1960, 0x100000)()); }
		bool bSimpleCrosshair() { mixin(MGBPC!(1960, 0x200000)()); }
		bool bSimpleCrosshair(bool val) { mixin(MSBPC!(1960, 0x200000)()); }
		bool bHideObjectivePaths() { mixin(MGBPC!(1960, 0x1000000)()); }
		bool bHideObjectivePaths(bool val) { mixin(MSBPC!(1960, 0x1000000)()); }
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
	void ClientHearSound(SoundCue ASound, Actor SourceActor, Vector SourceLocation, bool bStopWhenOwnerDestroyed, bool* bIsOccluded = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(Actor*)&params[4] = SourceActor;
		*cast(Vector*)&params[8] = SourceLocation;
		*cast(bool*)&params[20] = bStopWhenOwnerDestroyed;
		if (bIsOccluded !is null)
			*cast(bool*)&params[24] = *bIsOccluded;
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
	void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams* TransitionParams = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		if (TransitionParams !is null)
			*cast(Camera.ViewTargetTransitionParams*)&params[4] = *TransitionParams;
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
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		out_YL = *cast(float*)&params[4];
		out_YPos = *cast(float*)&params[8];
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
	void GetPlayerViewPoint(ref Vector POVLocation, ref Rotator POVRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = POVLocation;
		*cast(Rotator*)&params[12] = POVRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerViewPoint, params.ptr, cast(void*)0);
		POVLocation = *cast(Vector*)params.ptr;
		POVRotation = *cast(Rotator*)&params[12];
	}
	void CalcCameraOnViewTarget(float fDeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot, ref float out_FOV)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		*cast(float*)&params[28] = out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCameraOnViewTarget, params.ptr, cast(void*)0);
		out_CamLoc = *cast(Vector*)&params[4];
		out_CamRot = *cast(Rotator*)&params[16];
		out_FOV = *cast(float*)&params[28];
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
	void ClientPlayAnnouncement(ScriptClass InMessageClass, int MessageIndex, PlayerReplicationInfo* PRI = null, UObject* OptionalObject = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = MessageIndex;
		if (PRI !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *PRI;
		if (OptionalObject !is null)
			*cast(UObject*)&params[12] = *OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayAnnouncement, params.ptr, cast(void*)0);
	}
	void PlayAnnouncement(ScriptClass InMessageClass, int MessageIndex, PlayerReplicationInfo* PRI = null, UObject* OptionalObject = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = MessageIndex;
		if (PRI !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *PRI;
		if (OptionalObject !is null)
			*cast(UObject*)&params[12] = *OptionalObject;
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
	void PlayCameraAnim(CameraAnim AnimToPlay, float* Scale = null, float* Rate = null, float* BlendInTime = null, float* BlendOutTime = null, bool* bLoop = null, bool* bIsDamageShake = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = AnimToPlay;
		if (Scale !is null)
			*cast(float*)&params[4] = *Scale;
		if (Rate !is null)
			*cast(float*)&params[8] = *Rate;
		if (BlendInTime !is null)
			*cast(float*)&params[12] = *BlendInTime;
		if (BlendOutTime !is null)
			*cast(float*)&params[16] = *BlendOutTime;
		if (bLoop !is null)
			*cast(bool*)&params[20] = *bLoop;
		if (bIsDamageShake !is null)
			*cast(bool*)&params[24] = *bIsDamageShake;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCameraAnim, params.ptr, cast(void*)0);
	}
	void StopCameraAnim(bool* bImmediate = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bImmediate !is null)
			*cast(bool*)params.ptr = *bImmediate;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopCameraAnim, params.ptr, cast(void*)0);
	}
	void SetCameraAnimStrength(float NewStrength)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewStrength;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCameraAnimStrength, params.ptr, cast(void*)0);
	}
	void ClientPlayCameraAnim(CameraAnim AnimToPlay, float* Scale = null, float* Rate = null, float* BlendInTime = null, float* BlendOutTime = null, bool* bLoop = null, bool* bRandomStartTime = null, Camera.ECameraAnimPlaySpace* Space = null, Rotator* CustomPlaySpace = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = AnimToPlay;
		if (Scale !is null)
			*cast(float*)&params[4] = *Scale;
		if (Rate !is null)
			*cast(float*)&params[8] = *Rate;
		if (BlendInTime !is null)
			*cast(float*)&params[12] = *BlendInTime;
		if (BlendOutTime !is null)
			*cast(float*)&params[16] = *BlendOutTime;
		if (bLoop !is null)
			*cast(bool*)&params[20] = *bLoop;
		if (bRandomStartTime !is null)
			*cast(bool*)&params[24] = *bRandomStartTime;
		if (Space !is null)
			*cast(Camera.ECameraAnimPlaySpace*)&params[28] = *Space;
		if (CustomPlaySpace !is null)
			*cast(Rotator*)&params[32] = *CustomPlaySpace;
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
	void ServerViewSelf(Camera.ViewTargetTransitionParams* TransitionParams = null)
	{
		ubyte params[16];
		params[] = 0;
		if (TransitionParams !is null)
			*cast(Camera.ViewTargetTransitionParams*)params.ptr = *TransitionParams;
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
	void ShowMidGameMenu(ScriptName* TabTag = null, bool* bEnableInput = null)
	{
		ubyte params[12];
		params[] = 0;
		if (TabTag !is null)
			*cast(ScriptName*)params.ptr = *TabTag;
		if (bEnableInput !is null)
			*cast(bool*)&params[8] = *bEnableInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMidGameMenu, params.ptr, cast(void*)0);
	}
	void ClientGameEnded(Actor* EndGameFocus = null, bool* bIsWinner = null)
	{
		ubyte params[8];
		params[] = 0;
		if (EndGameFocus !is null)
			*cast(Actor*)params.ptr = *EndGameFocus;
		if (bIsWinner !is null)
			*cast(bool*)&params[4] = *bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientGameEnded, params.ptr, cast(void*)0);
	}
	void RoundHasEnded(Actor* EndRoundFocus = null)
	{
		ubyte params[4];
		params[] = 0;
		if (EndRoundFocus !is null)
			*cast(Actor*)params.ptr = *EndRoundFocus;
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
	void SendMessage(PlayerReplicationInfo Recipient, ScriptName MessageType, float Wait, ScriptClass* pDamageType = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Recipient;
		*cast(ScriptName*)&params[4] = MessageType;
		*cast(float*)&params[12] = Wait;
		if (pDamageType !is null)
			*cast(ScriptClass*)&params[16] = *pDamageType;
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
	void GetSeamlessTravelActorList(bool bToEntry, ref ScriptArray!(Actor) ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = ActorList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeamlessTravelActorList, params.ptr, cast(void*)0);
		ActorList = *cast(ScriptArray!(Actor)*)&params[4];
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
