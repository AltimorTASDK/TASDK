module UnrealScript.Engine.PlayerController;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_CameraLookAt;
import UnrealScript.Engine.SeqAct_SetSoundMode;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.SeqAct_ControlMovieTexture;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.CheatManager;
import UnrealScript.Engine.SeqAct_ToggleInput;
import UnrealScript.Engine.ForceFeedbackManager;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.Engine.Player;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.SeqAct_Destroy;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.CoverReplicator;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.SeqAct_ToggleCinematicMode;
import UnrealScript.Engine.UIDataStore_OnlinePlayerData;
import UnrealScript.Engine.LevelStreaming;
import UnrealScript.Engine.SavedMove;
import UnrealScript.Engine.SeqAct_DrawText;
import UnrealScript.Engine.SeqAct_FlyThroughHasEnded;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.AnimNotify_Rumble;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.NetConnection;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.TextureMovie;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.SeqAct_ConsoleCommand;
import UnrealScript.Engine.SeqAct_CameraShake;
import UnrealScript.Engine.SeqAct_ForceFeedback;
import UnrealScript.Engine.InterpTrackInstDirector;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.UIInteraction;
import UnrealScript.Engine.SeqAct_SetCameraTarget;
import UnrealScript.Engine.SeqAct_ToggleHUD;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.Interaction;
import UnrealScript.Engine.Trigger;
import UnrealScript.Engine.Weapon;

extern(C++) interface PlayerController : Controller
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PlayerController")()); }
	private static __gshared PlayerController mDefaultProperties;
	@property final static PlayerController DefaultProperties() { mixin(MGDPC!(PlayerController, "PlayerController Engine.Default__PlayerController")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetFOVAngle;
			ScriptFunction mGetPlayerNetworkAddress;
			ScriptFunction mGetViewTarget;
			ScriptFunction mIsPrimaryPlayer;
			ScriptFunction mSetNetSpeed;
			ScriptFunction mGetServerNetworkAddress;
			ScriptFunction mConsoleCommand;
			ScriptFunction mClientTravel;
			ScriptFunction mUpdateURL;
			ScriptFunction mGetDefaultURL;
			ScriptFunction mCopyToClipboard;
			ScriptFunction mPasteFromClipboard;
			ScriptFunction mSetAllowMatureLanguage;
			ScriptFunction mSetAudioGroupVolume;
			ScriptFunction mClientConvolve;
			ScriptFunction mServerProcessConvolve;
			ScriptFunction mCheckSpeedHack;
			ScriptFunction mFindStairRotation;
			ScriptFunction mCleanUpAudioComponents;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mForceClearUnpauseDelegates;
			ScriptFunction mOnExternalUIChanged;
			ScriptFunction mCanUnpauseExternalUI;
			ScriptFunction mOnControllerChanged;
			ScriptFunction mCanUnpauseControllerConnected;
			ScriptFunction mSpawnCoverReplicator;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReceivedPlayer;
			ScriptFunction mRegisterPlayerDataStores;
			ScriptFunction mFindConnectedPeerIndex;
			ScriptFunction mAddPeer;
			ScriptFunction mRemovePeer;
			ScriptFunction mServerAddPeer;
			ScriptFunction mServerRemovePeer;
			ScriptFunction mClientUpdateBestNextHosts;
			ScriptFunction mNotifyPeerDisconnectHost;
			ScriptFunction mIsBestHostPeer;
			ScriptFunction mMigrateNewHost;
			ScriptFunction mOnEndGameForHostMigrate;
			ScriptFunction mGetRegisteredPlayersInSession;
			ScriptFunction mRemoveMissingPeersFromSession;
			ScriptFunction mOnUnregisterPlayerCompleteForMigrate;
			ScriptFunction mOnHostMigratedOnlineGame;
			ScriptFunction mGetCurrentSearchClass;
			ScriptFunction mPeerDesignatedAsHost;
			ScriptFunction mPeerTravelAsHost;
			ScriptFunction mTellPeerToTravel;
			ScriptFunction mTellPeerToTravelToSession;
			ScriptFunction mPeerReceivedMigratedSession;
			ScriptFunction mOnEndGameForJoinMigrate;
			ScriptFunction mOnJoinMigratedGame;
			ScriptFunction mPreRender;
			ScriptFunction mResetTimeMargin;
			ScriptFunction mServerShortTimeout;
			ScriptFunction mServerGivePawn;
			ScriptFunction mKickWarning;
			ScriptFunction mAddCheats;
			ScriptFunction mEnableCheats;
			ScriptFunction mSpawnDefaultHUD;
			ScriptFunction mReset;
			ScriptFunction mClientReset;
			ScriptFunction mCleanOutSavedMoves;
			ScriptFunction mPreControllerIdChange;
			ScriptFunction mPostControllerIdChange;
			ScriptFunction mGetOnlineSubsystem;
			ScriptFunction mInitInputSystem;
			ScriptFunction mClientInitializeDataStores;
			ScriptFunction mRegisterCustomPlayerDataStores;
			ScriptFunction mRegisterStandardPlayerDataStores;
			ScriptFunction mUnregisterPlayerDataStores;
			ScriptFunction mUnregisterStandardPlayerDataStores;
			ScriptFunction mReloadProfileSettings;
			ScriptFunction mSetRumbleScale;
			ScriptFunction mIsControllerTiltActive;
			ScriptFunction mSetControllerTiltDesiredIfAvailable;
			ScriptFunction mSetControllerTiltActive;
			ScriptFunction mSetOnlyUseControllerTiltInput;
			ScriptFunction mSetUseTiltForwardAndBack;
			ScriptFunction mIsKeyboardAvailable;
			ScriptFunction mIsMouseAvailable;
			ScriptFunction mClientGotoState;
			ScriptFunction mAskForPawn;
			ScriptFunction mGivePawn;
			ScriptFunction mPossess;
			ScriptFunction mAcknowledgePossession;
			ScriptFunction mServerAcknowledgePossession;
			ScriptFunction mUnPossess;
			ScriptFunction mPawnDied;
			ScriptFunction mClientSetHUD;
			ScriptFunction mHandlePickup;
			ScriptFunction mCleanupPRI;
			ScriptFunction mReceiveLocalizedMessage;
			ScriptFunction mClientPlaySound;
			ScriptFunction mHearSoundFinished;
			ScriptFunction mGetPooledAudioComponent;
			ScriptFunction mClientHearSound;
			ScriptFunction mIsClosestLocalPlayerToActor;
			ScriptFunction mKismet_ClientPlaySound;
			ScriptFunction mKismet_ClientStopSound;
			ScriptFunction mClientPlayActorFaceFXAnim;
			ScriptFunction mClientMessage;
			ScriptFunction mCanCommunicate;
			ScriptFunction mAllowTTSMessageFrom;
			ScriptFunction mCreateTTSSoundCue;
			ScriptFunction mTalk;
			ScriptFunction mTeamTalk;
			ScriptFunction mSpeakTTS;
			ScriptFunction mTeamMessage;
			ScriptFunction mPlayBeepSound;
			ScriptFunction mRegisterOnlineDelegates;
			ScriptFunction mOnPartyMemberListChanged;
			ScriptFunction mOnPartyMembersInfoChanged;
			ScriptFunction mClearOnlineDelegates;
			ScriptFunction mCleanupPawn;
			ScriptFunction mDestroyed;
			ScriptFunction mFixFOV;
			ScriptFunction mSetFOV;
			ScriptFunction mResetFOV;
			ScriptFunction mFOV;
			ScriptFunction mAllowTextMessage;
			ScriptFunction mSay;
			ScriptFunction mServerSay;
			ScriptFunction mClientAdminMessage;
			ScriptFunction mTeamSay;
			ScriptFunction mServerTeamSay;
			ScriptFunction mPreClientTravel;
			ScriptFunction mGetUIController;
			ScriptFunction mCamera;
			ScriptFunction mServerCamera;
			ScriptFunction mClientSetCameraMode;
			ScriptFunction mSetCameraMode;
			ScriptFunction mResetCameraMode;
			ScriptFunction mClientSetCameraFade;
			ScriptFunction mUsingFirstPersonCamera;
			ScriptFunction mForceDeathUpdate;
			ScriptFunction mDualServerMove;
			ScriptFunction mOldServerMove;
			ScriptFunction mGetServerMoveDeltaTime;
			ScriptFunction mServerMoveHandleClientError;
			ScriptFunction mServerMove;
			ScriptFunction mSendClientAdjustment;
			ScriptFunction mServerDrive;
			ScriptFunction mProcessDrive;
			ScriptFunction mProcessMove;
			ScriptFunction mMoveAutonomous;
			ScriptFunction mVeryShortClientAdjustPosition;
			ScriptFunction mShortClientAdjustPosition;
			ScriptFunction mClientCapBandwidth;
			ScriptFunction mClientAckGoodMove;
			ScriptFunction mUpdatePing;
			ScriptFunction mClientAdjustPosition;
			ScriptFunction mLongClientAdjustPosition;
			ScriptFunction mUpdateStateFromAdjustment;
			ScriptFunction mServerUpdatePing;
			ScriptFunction mClearAckedMoves;
			ScriptFunction mClientUpdatePosition;
			ScriptFunction mGetFreeMove;
			ScriptFunction mCompressAccel;
			ScriptFunction mReplicateMove;
			ScriptFunction mCallServerMove;
			ScriptFunction mHandleWalking;
			ScriptFunction mServerRestartGame;
			ScriptFunction mRestartLevel;
			ScriptFunction mPauseRumbleForAllPlayers;
			ScriptFunction mCanUnpause;
			ScriptFunction mSetPause;
			ScriptFunction mIsPaused;
			ScriptFunction mPause;
			ScriptFunction mServerPause;
			ScriptFunction mConditionalPause;
			ScriptFunction mThrowWeapon;
			ScriptFunction mServerThrowWeapon;
			ScriptFunction mPrevWeapon;
			ScriptFunction mNextWeapon;
			ScriptFunction mStartFire;
			ScriptFunction mStopFire;
			ScriptFunction mStartAltFire;
			ScriptFunction mStopAltFire;
			ScriptFunction mGetTriggerUseList;
			ScriptFunction mUse;
			ScriptFunction mServerUse;
			ScriptFunction mPerformedUseAction;
			ScriptFunction mFindVehicleToDrive;
			ScriptFunction mTriggerInteracted;
			ScriptFunction mSuicide;
			ScriptFunction mServerSuicide;
			ScriptFunction mSetName;
			ScriptFunction mServerChangeName;
			ScriptFunction mSwitchTeam;
			ScriptFunction mChangeTeam;
			ScriptFunction mServerChangeTeam;
			ScriptFunction mClientSetProgressMessage;
			ScriptFunction mRestart;
			ScriptFunction mServerNotifyLoadedWorld;
			ScriptFunction mNotifyLoadedWorld;
			ScriptFunction mHasClientLoadedCurrentWorld;
			ScriptFunction mForceSingleNetUpdateFor;
			ScriptFunction mEnterStartState;
			ScriptFunction mClientRestart;
			ScriptFunction mGameHasEnded;
			ScriptFunction mClientGameEnded;
			ScriptFunction mNotifyChangedWeapon;
			ScriptFunction mPlayerTick;
			ScriptFunction mPlayerMove;
			ScriptFunction mAimingHelp;
			ScriptFunction mCameraLookAtFinished;
			ScriptFunction mGetAdjustedAimFor;
			ScriptFunction mAimHelpDot;
			ScriptFunction mNotifyLanded;
			ScriptFunction mAdjustFOV;
			ScriptFunction mIsLocalPlayerController;
			ScriptFunction mSetViewTarget;
			ScriptFunction mSetViewTargetWithBlend;
			ScriptFunction mClientSetViewTarget;
			ScriptFunction mServerVerifyViewTarget;
			ScriptFunction mSpawnPlayerCamera;
			ScriptFunction mGetPlayerViewPoint;
			ScriptFunction mViewShake;
			ScriptFunction mUpdateRotation;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mLimitViewRotation;
			ScriptFunction mCheckJumpOrDuck;
			ScriptFunction mIsSpectating;
			ScriptFunction mServerSetSpectatorLocation;
			ScriptFunction mServerViewNextPlayer;
			ScriptFunction mServerViewPrevPlayer;
			ScriptFunction mViewAPlayer;
			ScriptFunction mServerViewSelf;
			ScriptFunction mIsWaiting;
			ScriptFunction mCanRestartPlayer;
			ScriptFunction mDrawHUD;
			ScriptFunction mOnToggleInput;
			ScriptFunction mClientIgnoreMoveInput;
			ScriptFunction mClientIgnoreLookInput;
			ScriptFunction mDisplayDebug;
			ScriptFunction mOnDrawText;
			ScriptFunction mClientDrawKismetText;
			ScriptFunction mClientClearKismetText;
			ScriptFunction mOnSetCameraTarget;
			ScriptFunction mOnToggleHUD;
			ScriptFunction mNotifyTakeHit;
			ScriptFunction mOnForceFeedback;
			ScriptFunction mClientStopForceFeedbackWaveform;
			ScriptFunction mPlayRumble;
			ScriptFunction mClientPlayForceFeedbackWaveform;
			ScriptFunction mIsForceFeedbackAllowed;
			ScriptFunction mOnToggleCinematicMode;
			ScriptFunction mSetCinematicMode;
			ScriptFunction mClientSetCinematicMode;
			ScriptFunction mIgnoreMoveInput;
			ScriptFunction mIsMoveInputIgnored;
			ScriptFunction mIgnoreLookInput;
			ScriptFunction mIsLookInputIgnored;
			ScriptFunction mResetPlayerMovementInput;
			ScriptFunction mOnConsoleCommand;
			ScriptFunction mClientForceGarbageCollection;
			ScriptFunction mLevelStreamingStatusChanged;
			ScriptFunction mClientUpdateLevelStreamingStatus;
			ScriptFunction mServerUpdateLevelVisibility;
			ScriptFunction mClientPrepareMapChange;
			ScriptFunction mDelayedPrepareMapChange;
			ScriptFunction mClientCommitMapChange;
			ScriptFunction mClientCancelPendingMapChange;
			ScriptFunction mClientFlushLevelStreaming;
			ScriptFunction mClientSetBlockOnAsyncLoading;
			ScriptFunction mIsPlayerMuted;
			ScriptFunction mGetSeamlessTravelActorList;
			ScriptFunction mSeamlessTravelTo;
			ScriptFunction mSeamlessTravelFrom;
			ScriptFunction mClientSetOnlineStatus;
			ScriptFunction mGetPlayerControllerFromNetId;
			ScriptFunction mClientVoiceHandshakeComplete;
			ScriptFunction mClientMutePlayer;
			ScriptFunction mClientUnmutePlayer;
			ScriptFunction mGameplayMutePlayer;
			ScriptFunction mGameplayUnmutePlayer;
			ScriptFunction mServerMutePlayer;
			ScriptFunction mServerUnmutePlayer;
			ScriptFunction mNotifyDirectorControl;
			ScriptFunction mSetShowSubtitles;
			ScriptFunction mIsShowingSubtitles;
			ScriptFunction mClientWasKicked;
			ScriptFunction mClientRegisterForArbitration;
			ScriptFunction mOnArbitrationRegisterComplete;
			ScriptFunction mServerRegisteredForArbitration;
			ScriptFunction mOnGameInviteAccepted;
			ScriptFunction mInviteHasEnoughSpace;
			ScriptFunction mCanAllPlayersPlayOnline;
			ScriptFunction mClearInviteDelegates;
			ScriptFunction mOnEndForInviteComplete;
			ScriptFunction mOnDestroyForInviteComplete;
			ScriptFunction mModifyClientURL;
			ScriptFunction mOnInviteJoinComplete;
			ScriptFunction mNotifyInviteFailed;
			ScriptFunction mNotifyNotAllPlayersCanJoinInvite;
			ScriptFunction mNotifyNotEnoughSpaceInInvite;
			ScriptFunction mClientArbitratedMatchEnded;
			ScriptFunction mClientWriteOnlinePlayerScores;
			ScriptFunction mClientWriteLeaderboardStats;
			ScriptFunction mClientSetHostUniqueId;
			ScriptFunction mClientStopNetworkedVoice;
			ScriptFunction mClientStartNetworkedVoice;
			ScriptFunction mOnDestroy;
			ScriptFunction mDrawDebugTextList;
			ScriptFunction mAddDebugText;
			ScriptFunction mRemoveDebugText;
			ScriptFunction mRemoveAllDebugStrings;
			ScriptFunction mClientRegisterHostStatGuid;
			ScriptFunction mOnRegisterHostStatGuidComplete;
			ScriptFunction mServerRegisterClientStatGuid;
			ScriptFunction mClientStartOnlineGame;
			ScriptFunction mClientEndOnlineGame;
			ScriptFunction mCanViewUserCreatedContent;
			ScriptFunction mIncrementNumberOfMatchesPlayed;
			ScriptFunction mSoakPause;
			ScriptFunction mClientTravelToSession;
			ScriptFunction mOnJoinTravelToSessionComplete;
			ScriptFunction mClientReturnToParty;
			ScriptFunction mIsSplitscreenPlayer;
			ScriptFunction mGetSplitscreenPlayerByIndex;
			ScriptFunction mGetSplitscreenPlayerCount;
			ScriptFunction mClientControlMovieTexture;
			ScriptFunction mClientSetForceMipLevelsToBeResident;
			ScriptFunction mClientPrestreamTextures;
			ScriptFunction mIsPartyLeader;
			ScriptFunction mGetPartyMapName;
			ScriptFunction mGetPartyGameTypeName;
			ScriptFunction mGetAchievementProgression;
			ScriptFunction mOnFlyThroughHasEnded;
			ScriptFunction mSentinel_SetupForGamebasedTravelTheWorld;
			ScriptFunction mSentinel_PreAcquireTravelTheWorldPoints;
			ScriptFunction mSentinel_PostAcquireTravelTheWorldPoints;
			ScriptFunction mInputMatchDelegate;
			ScriptFunction mDoForceFeedbackForScreenShake;
			ScriptFunction mClientPlayCameraShake;
			ScriptFunction mClientStopCameraShake;
			ScriptFunction mOnCameraShake;
			ScriptFunction mClientPlayCameraAnim;
			ScriptFunction mClientStopCameraAnim;
			ScriptFunction mClientSpawnCameraLensEffect;
			ScriptFunction mOnSetSoundMode;
			ScriptFunction mHasPeerConnection;
			ScriptFunction mBugItGo;
			ScriptFunction mBugItGoString;
			ScriptFunction mBugItWorker;
			ScriptFunction mBugIt;
			ScriptFunction mLogOutBugItGoToLogFile;
			ScriptFunction mLogLoc;
			ScriptFunction mBugItAI;
			ScriptFunction mLogOutBugItAIGoToLogFile;
			ScriptFunction mBugItStringCreator;
			ScriptFunction mOnEngineInitialTick;
			ScriptFunction mDisableDebugAI;
			ScriptFunction mReceivedGameClass;
		}
		public @property static final
		{
			ScriptFunction GetFOVAngle() { mixin(MGF!("mGetFOVAngle", "Function Engine.PlayerController.GetFOVAngle")()); }
			ScriptFunction GetPlayerNetworkAddress() { mixin(MGF!("mGetPlayerNetworkAddress", "Function Engine.PlayerController.GetPlayerNetworkAddress")()); }
			ScriptFunction GetViewTarget() { mixin(MGF!("mGetViewTarget", "Function Engine.PlayerController.GetViewTarget")()); }
			ScriptFunction IsPrimaryPlayer() { mixin(MGF!("mIsPrimaryPlayer", "Function Engine.PlayerController.IsPrimaryPlayer")()); }
			ScriptFunction SetNetSpeed() { mixin(MGF!("mSetNetSpeed", "Function Engine.PlayerController.SetNetSpeed")()); }
			ScriptFunction GetServerNetworkAddress() { mixin(MGF!("mGetServerNetworkAddress", "Function Engine.PlayerController.GetServerNetworkAddress")()); }
			ScriptFunction ConsoleCommand() { mixin(MGF!("mConsoleCommand", "Function Engine.PlayerController.ConsoleCommand")()); }
			ScriptFunction ClientTravel() { mixin(MGF!("mClientTravel", "Function Engine.PlayerController.ClientTravel")()); }
			ScriptFunction UpdateURL() { mixin(MGF!("mUpdateURL", "Function Engine.PlayerController.UpdateURL")()); }
			ScriptFunction GetDefaultURL() { mixin(MGF!("mGetDefaultURL", "Function Engine.PlayerController.GetDefaultURL")()); }
			ScriptFunction CopyToClipboard() { mixin(MGF!("mCopyToClipboard", "Function Engine.PlayerController.CopyToClipboard")()); }
			ScriptFunction PasteFromClipboard() { mixin(MGF!("mPasteFromClipboard", "Function Engine.PlayerController.PasteFromClipboard")()); }
			ScriptFunction SetAllowMatureLanguage() { mixin(MGF!("mSetAllowMatureLanguage", "Function Engine.PlayerController.SetAllowMatureLanguage")()); }
			ScriptFunction SetAudioGroupVolume() { mixin(MGF!("mSetAudioGroupVolume", "Function Engine.PlayerController.SetAudioGroupVolume")()); }
			ScriptFunction ClientConvolve() { mixin(MGF!("mClientConvolve", "Function Engine.PlayerController.ClientConvolve")()); }
			ScriptFunction ServerProcessConvolve() { mixin(MGF!("mServerProcessConvolve", "Function Engine.PlayerController.ServerProcessConvolve")()); }
			ScriptFunction CheckSpeedHack() { mixin(MGF!("mCheckSpeedHack", "Function Engine.PlayerController.CheckSpeedHack")()); }
			ScriptFunction FindStairRotation() { mixin(MGF!("mFindStairRotation", "Function Engine.PlayerController.FindStairRotation")()); }
			ScriptFunction CleanUpAudioComponents() { mixin(MGF!("mCleanUpAudioComponents", "Function Engine.PlayerController.CleanUpAudioComponents")()); }
			ScriptFunction FellOutOfWorld() { mixin(MGF!("mFellOutOfWorld", "Function Engine.PlayerController.FellOutOfWorld")()); }
			ScriptFunction ForceClearUnpauseDelegates() { mixin(MGF!("mForceClearUnpauseDelegates", "Function Engine.PlayerController.ForceClearUnpauseDelegates")()); }
			ScriptFunction OnExternalUIChanged() { mixin(MGF!("mOnExternalUIChanged", "Function Engine.PlayerController.OnExternalUIChanged")()); }
			ScriptFunction CanUnpauseExternalUI() { mixin(MGF!("mCanUnpauseExternalUI", "Function Engine.PlayerController.CanUnpauseExternalUI")()); }
			ScriptFunction OnControllerChanged() { mixin(MGF!("mOnControllerChanged", "Function Engine.PlayerController.OnControllerChanged")()); }
			ScriptFunction CanUnpauseControllerConnected() { mixin(MGF!("mCanUnpauseControllerConnected", "Function Engine.PlayerController.CanUnpauseControllerConnected")()); }
			ScriptFunction SpawnCoverReplicator() { mixin(MGF!("mSpawnCoverReplicator", "Function Engine.PlayerController.SpawnCoverReplicator")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.PlayerController.PostBeginPlay")()); }
			ScriptFunction ReceivedPlayer() { mixin(MGF!("mReceivedPlayer", "Function Engine.PlayerController.ReceivedPlayer")()); }
			ScriptFunction RegisterPlayerDataStores() { mixin(MGF!("mRegisterPlayerDataStores", "Function Engine.PlayerController.RegisterPlayerDataStores")()); }
			ScriptFunction FindConnectedPeerIndex() { mixin(MGF!("mFindConnectedPeerIndex", "Function Engine.PlayerController.FindConnectedPeerIndex")()); }
			ScriptFunction AddPeer() { mixin(MGF!("mAddPeer", "Function Engine.PlayerController.AddPeer")()); }
			ScriptFunction RemovePeer() { mixin(MGF!("mRemovePeer", "Function Engine.PlayerController.RemovePeer")()); }
			ScriptFunction ServerAddPeer() { mixin(MGF!("mServerAddPeer", "Function Engine.PlayerController.ServerAddPeer")()); }
			ScriptFunction ServerRemovePeer() { mixin(MGF!("mServerRemovePeer", "Function Engine.PlayerController.ServerRemovePeer")()); }
			ScriptFunction ClientUpdateBestNextHosts() { mixin(MGF!("mClientUpdateBestNextHosts", "Function Engine.PlayerController.ClientUpdateBestNextHosts")()); }
			ScriptFunction NotifyPeerDisconnectHost() { mixin(MGF!("mNotifyPeerDisconnectHost", "Function Engine.PlayerController.NotifyPeerDisconnectHost")()); }
			ScriptFunction IsBestHostPeer() { mixin(MGF!("mIsBestHostPeer", "Function Engine.PlayerController.IsBestHostPeer")()); }
			ScriptFunction MigrateNewHost() { mixin(MGF!("mMigrateNewHost", "Function Engine.PlayerController.MigrateNewHost")()); }
			ScriptFunction OnEndGameForHostMigrate() { mixin(MGF!("mOnEndGameForHostMigrate", "Function Engine.PlayerController.OnEndGameForHostMigrate")()); }
			ScriptFunction GetRegisteredPlayersInSession() { mixin(MGF!("mGetRegisteredPlayersInSession", "Function Engine.PlayerController.GetRegisteredPlayersInSession")()); }
			ScriptFunction RemoveMissingPeersFromSession() { mixin(MGF!("mRemoveMissingPeersFromSession", "Function Engine.PlayerController.RemoveMissingPeersFromSession")()); }
			ScriptFunction OnUnregisterPlayerCompleteForMigrate() { mixin(MGF!("mOnUnregisterPlayerCompleteForMigrate", "Function Engine.PlayerController.OnUnregisterPlayerCompleteForMigrate")()); }
			ScriptFunction OnHostMigratedOnlineGame() { mixin(MGF!("mOnHostMigratedOnlineGame", "Function Engine.PlayerController.OnHostMigratedOnlineGame")()); }
			ScriptFunction GetCurrentSearchClass() { mixin(MGF!("mGetCurrentSearchClass", "Function Engine.PlayerController.GetCurrentSearchClass")()); }
			ScriptFunction PeerDesignatedAsHost() { mixin(MGF!("mPeerDesignatedAsHost", "Function Engine.PlayerController.PeerDesignatedAsHost")()); }
			ScriptFunction PeerTravelAsHost() { mixin(MGF!("mPeerTravelAsHost", "Function Engine.PlayerController.PeerTravelAsHost")()); }
			ScriptFunction TellPeerToTravel() { mixin(MGF!("mTellPeerToTravel", "Function Engine.PlayerController.TellPeerToTravel")()); }
			ScriptFunction TellPeerToTravelToSession() { mixin(MGF!("mTellPeerToTravelToSession", "Function Engine.PlayerController.TellPeerToTravelToSession")()); }
			ScriptFunction PeerReceivedMigratedSession() { mixin(MGF!("mPeerReceivedMigratedSession", "Function Engine.PlayerController.PeerReceivedMigratedSession")()); }
			ScriptFunction OnEndGameForJoinMigrate() { mixin(MGF!("mOnEndGameForJoinMigrate", "Function Engine.PlayerController.OnEndGameForJoinMigrate")()); }
			ScriptFunction OnJoinMigratedGame() { mixin(MGF!("mOnJoinMigratedGame", "Function Engine.PlayerController.OnJoinMigratedGame")()); }
			ScriptFunction PreRender() { mixin(MGF!("mPreRender", "Function Engine.PlayerController.PreRender")()); }
			ScriptFunction ResetTimeMargin() { mixin(MGF!("mResetTimeMargin", "Function Engine.PlayerController.ResetTimeMargin")()); }
			ScriptFunction ServerShortTimeout() { mixin(MGF!("mServerShortTimeout", "Function Engine.PlayerController.ServerShortTimeout")()); }
			ScriptFunction ServerGivePawn() { mixin(MGF!("mServerGivePawn", "Function Engine.PlayerController.ServerGivePawn")()); }
			ScriptFunction KickWarning() { mixin(MGF!("mKickWarning", "Function Engine.PlayerController.KickWarning")()); }
			ScriptFunction AddCheats() { mixin(MGF!("mAddCheats", "Function Engine.PlayerController.AddCheats")()); }
			ScriptFunction EnableCheats() { mixin(MGF!("mEnableCheats", "Function Engine.PlayerController.EnableCheats")()); }
			ScriptFunction SpawnDefaultHUD() { mixin(MGF!("mSpawnDefaultHUD", "Function Engine.PlayerController.SpawnDefaultHUD")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.PlayerController.Reset")()); }
			ScriptFunction ClientReset() { mixin(MGF!("mClientReset", "Function Engine.PlayerController.ClientReset")()); }
			ScriptFunction CleanOutSavedMoves() { mixin(MGF!("mCleanOutSavedMoves", "Function Engine.PlayerController.CleanOutSavedMoves")()); }
			ScriptFunction PreControllerIdChange() { mixin(MGF!("mPreControllerIdChange", "Function Engine.PlayerController.PreControllerIdChange")()); }
			ScriptFunction PostControllerIdChange() { mixin(MGF!("mPostControllerIdChange", "Function Engine.PlayerController.PostControllerIdChange")()); }
			ScriptFunction GetOnlineSubsystem() { mixin(MGF!("mGetOnlineSubsystem", "Function Engine.PlayerController.GetOnlineSubsystem")()); }
			ScriptFunction InitInputSystem() { mixin(MGF!("mInitInputSystem", "Function Engine.PlayerController.InitInputSystem")()); }
			ScriptFunction ClientInitializeDataStores() { mixin(MGF!("mClientInitializeDataStores", "Function Engine.PlayerController.ClientInitializeDataStores")()); }
			ScriptFunction RegisterCustomPlayerDataStores() { mixin(MGF!("mRegisterCustomPlayerDataStores", "Function Engine.PlayerController.RegisterCustomPlayerDataStores")()); }
			ScriptFunction RegisterStandardPlayerDataStores() { mixin(MGF!("mRegisterStandardPlayerDataStores", "Function Engine.PlayerController.RegisterStandardPlayerDataStores")()); }
			ScriptFunction UnregisterPlayerDataStores() { mixin(MGF!("mUnregisterPlayerDataStores", "Function Engine.PlayerController.UnregisterPlayerDataStores")()); }
			ScriptFunction UnregisterStandardPlayerDataStores() { mixin(MGF!("mUnregisterStandardPlayerDataStores", "Function Engine.PlayerController.UnregisterStandardPlayerDataStores")()); }
			ScriptFunction ReloadProfileSettings() { mixin(MGF!("mReloadProfileSettings", "Function Engine.PlayerController.ReloadProfileSettings")()); }
			ScriptFunction SetRumbleScale() { mixin(MGF!("mSetRumbleScale", "Function Engine.PlayerController.SetRumbleScale")()); }
			ScriptFunction IsControllerTiltActive() { mixin(MGF!("mIsControllerTiltActive", "Function Engine.PlayerController.IsControllerTiltActive")()); }
			ScriptFunction SetControllerTiltDesiredIfAvailable() { mixin(MGF!("mSetControllerTiltDesiredIfAvailable", "Function Engine.PlayerController.SetControllerTiltDesiredIfAvailable")()); }
			ScriptFunction SetControllerTiltActive() { mixin(MGF!("mSetControllerTiltActive", "Function Engine.PlayerController.SetControllerTiltActive")()); }
			ScriptFunction SetOnlyUseControllerTiltInput() { mixin(MGF!("mSetOnlyUseControllerTiltInput", "Function Engine.PlayerController.SetOnlyUseControllerTiltInput")()); }
			ScriptFunction SetUseTiltForwardAndBack() { mixin(MGF!("mSetUseTiltForwardAndBack", "Function Engine.PlayerController.SetUseTiltForwardAndBack")()); }
			ScriptFunction IsKeyboardAvailable() { mixin(MGF!("mIsKeyboardAvailable", "Function Engine.PlayerController.IsKeyboardAvailable")()); }
			ScriptFunction IsMouseAvailable() { mixin(MGF!("mIsMouseAvailable", "Function Engine.PlayerController.IsMouseAvailable")()); }
			ScriptFunction ClientGotoState() { mixin(MGF!("mClientGotoState", "Function Engine.PlayerController.ClientGotoState")()); }
			ScriptFunction AskForPawn() { mixin(MGF!("mAskForPawn", "Function Engine.PlayerController.AskForPawn")()); }
			ScriptFunction GivePawn() { mixin(MGF!("mGivePawn", "Function Engine.PlayerController.GivePawn")()); }
			ScriptFunction Possess() { mixin(MGF!("mPossess", "Function Engine.PlayerController.Possess")()); }
			ScriptFunction AcknowledgePossession() { mixin(MGF!("mAcknowledgePossession", "Function Engine.PlayerController.AcknowledgePossession")()); }
			ScriptFunction ServerAcknowledgePossession() { mixin(MGF!("mServerAcknowledgePossession", "Function Engine.PlayerController.ServerAcknowledgePossession")()); }
			ScriptFunction UnPossess() { mixin(MGF!("mUnPossess", "Function Engine.PlayerController.UnPossess")()); }
			ScriptFunction PawnDied() { mixin(MGF!("mPawnDied", "Function Engine.PlayerController.PawnDied")()); }
			ScriptFunction ClientSetHUD() { mixin(MGF!("mClientSetHUD", "Function Engine.PlayerController.ClientSetHUD")()); }
			ScriptFunction HandlePickup() { mixin(MGF!("mHandlePickup", "Function Engine.PlayerController.HandlePickup")()); }
			ScriptFunction CleanupPRI() { mixin(MGF!("mCleanupPRI", "Function Engine.PlayerController.CleanupPRI")()); }
			ScriptFunction ReceiveLocalizedMessage() { mixin(MGF!("mReceiveLocalizedMessage", "Function Engine.PlayerController.ReceiveLocalizedMessage")()); }
			ScriptFunction ClientPlaySound() { mixin(MGF!("mClientPlaySound", "Function Engine.PlayerController.ClientPlaySound")()); }
			ScriptFunction HearSoundFinished() { mixin(MGF!("mHearSoundFinished", "Function Engine.PlayerController.HearSoundFinished")()); }
			ScriptFunction GetPooledAudioComponent() { mixin(MGF!("mGetPooledAudioComponent", "Function Engine.PlayerController.GetPooledAudioComponent")()); }
			ScriptFunction ClientHearSound() { mixin(MGF!("mClientHearSound", "Function Engine.PlayerController.ClientHearSound")()); }
			ScriptFunction IsClosestLocalPlayerToActor() { mixin(MGF!("mIsClosestLocalPlayerToActor", "Function Engine.PlayerController.IsClosestLocalPlayerToActor")()); }
			ScriptFunction Kismet_ClientPlaySound() { mixin(MGF!("mKismet_ClientPlaySound", "Function Engine.PlayerController.Kismet_ClientPlaySound")()); }
			ScriptFunction Kismet_ClientStopSound() { mixin(MGF!("mKismet_ClientStopSound", "Function Engine.PlayerController.Kismet_ClientStopSound")()); }
			ScriptFunction ClientPlayActorFaceFXAnim() { mixin(MGF!("mClientPlayActorFaceFXAnim", "Function Engine.PlayerController.ClientPlayActorFaceFXAnim")()); }
			ScriptFunction ClientMessage() { mixin(MGF!("mClientMessage", "Function Engine.PlayerController.ClientMessage")()); }
			ScriptFunction CanCommunicate() { mixin(MGF!("mCanCommunicate", "Function Engine.PlayerController.CanCommunicate")()); }
			ScriptFunction AllowTTSMessageFrom() { mixin(MGF!("mAllowTTSMessageFrom", "Function Engine.PlayerController.AllowTTSMessageFrom")()); }
			ScriptFunction CreateTTSSoundCue() { mixin(MGF!("mCreateTTSSoundCue", "Function Engine.PlayerController.CreateTTSSoundCue")()); }
			ScriptFunction Talk() { mixin(MGF!("mTalk", "Function Engine.PlayerController.Talk")()); }
			ScriptFunction TeamTalk() { mixin(MGF!("mTeamTalk", "Function Engine.PlayerController.TeamTalk")()); }
			ScriptFunction SpeakTTS() { mixin(MGF!("mSpeakTTS", "Function Engine.PlayerController.SpeakTTS")()); }
			ScriptFunction TeamMessage() { mixin(MGF!("mTeamMessage", "Function Engine.PlayerController.TeamMessage")()); }
			ScriptFunction PlayBeepSound() { mixin(MGF!("mPlayBeepSound", "Function Engine.PlayerController.PlayBeepSound")()); }
			ScriptFunction RegisterOnlineDelegates() { mixin(MGF!("mRegisterOnlineDelegates", "Function Engine.PlayerController.RegisterOnlineDelegates")()); }
			ScriptFunction OnPartyMemberListChanged() { mixin(MGF!("mOnPartyMemberListChanged", "Function Engine.PlayerController.OnPartyMemberListChanged")()); }
			ScriptFunction OnPartyMembersInfoChanged() { mixin(MGF!("mOnPartyMembersInfoChanged", "Function Engine.PlayerController.OnPartyMembersInfoChanged")()); }
			ScriptFunction ClearOnlineDelegates() { mixin(MGF!("mClearOnlineDelegates", "Function Engine.PlayerController.ClearOnlineDelegates")()); }
			ScriptFunction CleanupPawn() { mixin(MGF!("mCleanupPawn", "Function Engine.PlayerController.CleanupPawn")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.PlayerController.Destroyed")()); }
			ScriptFunction FixFOV() { mixin(MGF!("mFixFOV", "Function Engine.PlayerController.FixFOV")()); }
			ScriptFunction SetFOV() { mixin(MGF!("mSetFOV", "Function Engine.PlayerController.SetFOV")()); }
			ScriptFunction ResetFOV() { mixin(MGF!("mResetFOV", "Function Engine.PlayerController.ResetFOV")()); }
			ScriptFunction FOV() { mixin(MGF!("mFOV", "Function Engine.PlayerController.FOV")()); }
			ScriptFunction AllowTextMessage() { mixin(MGF!("mAllowTextMessage", "Function Engine.PlayerController.AllowTextMessage")()); }
			ScriptFunction Say() { mixin(MGF!("mSay", "Function Engine.PlayerController.Say")()); }
			ScriptFunction ServerSay() { mixin(MGF!("mServerSay", "Function Engine.PlayerController.ServerSay")()); }
			ScriptFunction ClientAdminMessage() { mixin(MGF!("mClientAdminMessage", "Function Engine.PlayerController.ClientAdminMessage")()); }
			ScriptFunction TeamSay() { mixin(MGF!("mTeamSay", "Function Engine.PlayerController.TeamSay")()); }
			ScriptFunction ServerTeamSay() { mixin(MGF!("mServerTeamSay", "Function Engine.PlayerController.ServerTeamSay")()); }
			ScriptFunction PreClientTravel() { mixin(MGF!("mPreClientTravel", "Function Engine.PlayerController.PreClientTravel")()); }
			ScriptFunction GetUIController() { mixin(MGF!("mGetUIController", "Function Engine.PlayerController.GetUIController")()); }
			ScriptFunction Camera() { mixin(MGF!("mCamera", "Function Engine.PlayerController.Camera")()); }
			ScriptFunction ServerCamera() { mixin(MGF!("mServerCamera", "Function Engine.PlayerController.ServerCamera")()); }
			ScriptFunction ClientSetCameraMode() { mixin(MGF!("mClientSetCameraMode", "Function Engine.PlayerController.ClientSetCameraMode")()); }
			ScriptFunction SetCameraMode() { mixin(MGF!("mSetCameraMode", "Function Engine.PlayerController.SetCameraMode")()); }
			ScriptFunction ResetCameraMode() { mixin(MGF!("mResetCameraMode", "Function Engine.PlayerController.ResetCameraMode")()); }
			ScriptFunction ClientSetCameraFade() { mixin(MGF!("mClientSetCameraFade", "Function Engine.PlayerController.ClientSetCameraFade")()); }
			ScriptFunction UsingFirstPersonCamera() { mixin(MGF!("mUsingFirstPersonCamera", "Function Engine.PlayerController.UsingFirstPersonCamera")()); }
			ScriptFunction ForceDeathUpdate() { mixin(MGF!("mForceDeathUpdate", "Function Engine.PlayerController.ForceDeathUpdate")()); }
			ScriptFunction DualServerMove() { mixin(MGF!("mDualServerMove", "Function Engine.PlayerController.DualServerMove")()); }
			ScriptFunction OldServerMove() { mixin(MGF!("mOldServerMove", "Function Engine.PlayerController.OldServerMove")()); }
			ScriptFunction GetServerMoveDeltaTime() { mixin(MGF!("mGetServerMoveDeltaTime", "Function Engine.PlayerController.GetServerMoveDeltaTime")()); }
			ScriptFunction ServerMoveHandleClientError() { mixin(MGF!("mServerMoveHandleClientError", "Function Engine.PlayerController.ServerMoveHandleClientError")()); }
			ScriptFunction ServerMove() { mixin(MGF!("mServerMove", "Function Engine.PlayerController.ServerMove")()); }
			ScriptFunction SendClientAdjustment() { mixin(MGF!("mSendClientAdjustment", "Function Engine.PlayerController.SendClientAdjustment")()); }
			ScriptFunction ServerDrive() { mixin(MGF!("mServerDrive", "Function Engine.PlayerController.ServerDrive")()); }
			ScriptFunction ProcessDrive() { mixin(MGF!("mProcessDrive", "Function Engine.PlayerController.ProcessDrive")()); }
			ScriptFunction ProcessMove() { mixin(MGF!("mProcessMove", "Function Engine.PlayerController.ProcessMove")()); }
			ScriptFunction MoveAutonomous() { mixin(MGF!("mMoveAutonomous", "Function Engine.PlayerController.MoveAutonomous")()); }
			ScriptFunction VeryShortClientAdjustPosition() { mixin(MGF!("mVeryShortClientAdjustPosition", "Function Engine.PlayerController.VeryShortClientAdjustPosition")()); }
			ScriptFunction ShortClientAdjustPosition() { mixin(MGF!("mShortClientAdjustPosition", "Function Engine.PlayerController.ShortClientAdjustPosition")()); }
			ScriptFunction ClientCapBandwidth() { mixin(MGF!("mClientCapBandwidth", "Function Engine.PlayerController.ClientCapBandwidth")()); }
			ScriptFunction ClientAckGoodMove() { mixin(MGF!("mClientAckGoodMove", "Function Engine.PlayerController.ClientAckGoodMove")()); }
			ScriptFunction UpdatePing() { mixin(MGF!("mUpdatePing", "Function Engine.PlayerController.UpdatePing")()); }
			ScriptFunction ClientAdjustPosition() { mixin(MGF!("mClientAdjustPosition", "Function Engine.PlayerController.ClientAdjustPosition")()); }
			ScriptFunction LongClientAdjustPosition() { mixin(MGF!("mLongClientAdjustPosition", "Function Engine.PlayerController.LongClientAdjustPosition")()); }
			ScriptFunction UpdateStateFromAdjustment() { mixin(MGF!("mUpdateStateFromAdjustment", "Function Engine.PlayerController.UpdateStateFromAdjustment")()); }
			ScriptFunction ServerUpdatePing() { mixin(MGF!("mServerUpdatePing", "Function Engine.PlayerController.ServerUpdatePing")()); }
			ScriptFunction ClearAckedMoves() { mixin(MGF!("mClearAckedMoves", "Function Engine.PlayerController.ClearAckedMoves")()); }
			ScriptFunction ClientUpdatePosition() { mixin(MGF!("mClientUpdatePosition", "Function Engine.PlayerController.ClientUpdatePosition")()); }
			ScriptFunction GetFreeMove() { mixin(MGF!("mGetFreeMove", "Function Engine.PlayerController.GetFreeMove")()); }
			ScriptFunction CompressAccel() { mixin(MGF!("mCompressAccel", "Function Engine.PlayerController.CompressAccel")()); }
			ScriptFunction ReplicateMove() { mixin(MGF!("mReplicateMove", "Function Engine.PlayerController.ReplicateMove")()); }
			ScriptFunction CallServerMove() { mixin(MGF!("mCallServerMove", "Function Engine.PlayerController.CallServerMove")()); }
			ScriptFunction HandleWalking() { mixin(MGF!("mHandleWalking", "Function Engine.PlayerController.HandleWalking")()); }
			ScriptFunction ServerRestartGame() { mixin(MGF!("mServerRestartGame", "Function Engine.PlayerController.ServerRestartGame")()); }
			ScriptFunction RestartLevel() { mixin(MGF!("mRestartLevel", "Function Engine.PlayerController.RestartLevel")()); }
			ScriptFunction PauseRumbleForAllPlayers() { mixin(MGF!("mPauseRumbleForAllPlayers", "Function Engine.PlayerController.PauseRumbleForAllPlayers")()); }
			ScriptFunction CanUnpause() { mixin(MGF!("mCanUnpause", "Function Engine.PlayerController.CanUnpause")()); }
			ScriptFunction SetPause() { mixin(MGF!("mSetPause", "Function Engine.PlayerController.SetPause")()); }
			ScriptFunction IsPaused() { mixin(MGF!("mIsPaused", "Function Engine.PlayerController.IsPaused")()); }
			ScriptFunction Pause() { mixin(MGF!("mPause", "Function Engine.PlayerController.Pause")()); }
			ScriptFunction ServerPause() { mixin(MGF!("mServerPause", "Function Engine.PlayerController.ServerPause")()); }
			ScriptFunction ConditionalPause() { mixin(MGF!("mConditionalPause", "Function Engine.PlayerController.ConditionalPause")()); }
			ScriptFunction ThrowWeapon() { mixin(MGF!("mThrowWeapon", "Function Engine.PlayerController.ThrowWeapon")()); }
			ScriptFunction ServerThrowWeapon() { mixin(MGF!("mServerThrowWeapon", "Function Engine.PlayerController.ServerThrowWeapon")()); }
			ScriptFunction PrevWeapon() { mixin(MGF!("mPrevWeapon", "Function Engine.PlayerController.PrevWeapon")()); }
			ScriptFunction NextWeapon() { mixin(MGF!("mNextWeapon", "Function Engine.PlayerController.NextWeapon")()); }
			ScriptFunction StartFire() { mixin(MGF!("mStartFire", "Function Engine.PlayerController.StartFire")()); }
			ScriptFunction StopFire() { mixin(MGF!("mStopFire", "Function Engine.PlayerController.StopFire")()); }
			ScriptFunction StartAltFire() { mixin(MGF!("mStartAltFire", "Function Engine.PlayerController.StartAltFire")()); }
			ScriptFunction StopAltFire() { mixin(MGF!("mStopAltFire", "Function Engine.PlayerController.StopAltFire")()); }
			ScriptFunction GetTriggerUseList() { mixin(MGF!("mGetTriggerUseList", "Function Engine.PlayerController.GetTriggerUseList")()); }
			ScriptFunction Use() { mixin(MGF!("mUse", "Function Engine.PlayerController.Use")()); }
			ScriptFunction ServerUse() { mixin(MGF!("mServerUse", "Function Engine.PlayerController.ServerUse")()); }
			ScriptFunction PerformedUseAction() { mixin(MGF!("mPerformedUseAction", "Function Engine.PlayerController.PerformedUseAction")()); }
			ScriptFunction FindVehicleToDrive() { mixin(MGF!("mFindVehicleToDrive", "Function Engine.PlayerController.FindVehicleToDrive")()); }
			ScriptFunction TriggerInteracted() { mixin(MGF!("mTriggerInteracted", "Function Engine.PlayerController.TriggerInteracted")()); }
			ScriptFunction Suicide() { mixin(MGF!("mSuicide", "Function Engine.PlayerController.Suicide")()); }
			ScriptFunction ServerSuicide() { mixin(MGF!("mServerSuicide", "Function Engine.PlayerController.ServerSuicide")()); }
			ScriptFunction SetName() { mixin(MGF!("mSetName", "Function Engine.PlayerController.SetName")()); }
			ScriptFunction ServerChangeName() { mixin(MGF!("mServerChangeName", "Function Engine.PlayerController.ServerChangeName")()); }
			ScriptFunction SwitchTeam() { mixin(MGF!("mSwitchTeam", "Function Engine.PlayerController.SwitchTeam")()); }
			ScriptFunction ChangeTeam() { mixin(MGF!("mChangeTeam", "Function Engine.PlayerController.ChangeTeam")()); }
			ScriptFunction ServerChangeTeam() { mixin(MGF!("mServerChangeTeam", "Function Engine.PlayerController.ServerChangeTeam")()); }
			ScriptFunction ClientSetProgressMessage() { mixin(MGF!("mClientSetProgressMessage", "Function Engine.PlayerController.ClientSetProgressMessage")()); }
			ScriptFunction Restart() { mixin(MGF!("mRestart", "Function Engine.PlayerController.Restart")()); }
			ScriptFunction ServerNotifyLoadedWorld() { mixin(MGF!("mServerNotifyLoadedWorld", "Function Engine.PlayerController.ServerNotifyLoadedWorld")()); }
			ScriptFunction NotifyLoadedWorld() { mixin(MGF!("mNotifyLoadedWorld", "Function Engine.PlayerController.NotifyLoadedWorld")()); }
			ScriptFunction HasClientLoadedCurrentWorld() { mixin(MGF!("mHasClientLoadedCurrentWorld", "Function Engine.PlayerController.HasClientLoadedCurrentWorld")()); }
			ScriptFunction ForceSingleNetUpdateFor() { mixin(MGF!("mForceSingleNetUpdateFor", "Function Engine.PlayerController.ForceSingleNetUpdateFor")()); }
			ScriptFunction EnterStartState() { mixin(MGF!("mEnterStartState", "Function Engine.PlayerController.EnterStartState")()); }
			ScriptFunction ClientRestart() { mixin(MGF!("mClientRestart", "Function Engine.PlayerController.ClientRestart")()); }
			ScriptFunction GameHasEnded() { mixin(MGF!("mGameHasEnded", "Function Engine.PlayerController.GameHasEnded")()); }
			ScriptFunction ClientGameEnded() { mixin(MGF!("mClientGameEnded", "Function Engine.PlayerController.ClientGameEnded")()); }
			ScriptFunction NotifyChangedWeapon() { mixin(MGF!("mNotifyChangedWeapon", "Function Engine.PlayerController.NotifyChangedWeapon")()); }
			ScriptFunction PlayerTick() { mixin(MGF!("mPlayerTick", "Function Engine.PlayerController.PlayerTick")()); }
			ScriptFunction PlayerMove() { mixin(MGF!("mPlayerMove", "Function Engine.PlayerController.PlayerMove")()); }
			ScriptFunction AimingHelp() { mixin(MGF!("mAimingHelp", "Function Engine.PlayerController.AimingHelp")()); }
			ScriptFunction CameraLookAtFinished() { mixin(MGF!("mCameraLookAtFinished", "Function Engine.PlayerController.CameraLookAtFinished")()); }
			ScriptFunction GetAdjustedAimFor() { mixin(MGF!("mGetAdjustedAimFor", "Function Engine.PlayerController.GetAdjustedAimFor")()); }
			ScriptFunction AimHelpDot() { mixin(MGF!("mAimHelpDot", "Function Engine.PlayerController.AimHelpDot")()); }
			ScriptFunction NotifyLanded() { mixin(MGF!("mNotifyLanded", "Function Engine.PlayerController.NotifyLanded")()); }
			ScriptFunction AdjustFOV() { mixin(MGF!("mAdjustFOV", "Function Engine.PlayerController.AdjustFOV")()); }
			ScriptFunction IsLocalPlayerController() { mixin(MGF!("mIsLocalPlayerController", "Function Engine.PlayerController.IsLocalPlayerController")()); }
			ScriptFunction SetViewTarget() { mixin(MGF!("mSetViewTarget", "Function Engine.PlayerController.SetViewTarget")()); }
			ScriptFunction SetViewTargetWithBlend() { mixin(MGF!("mSetViewTargetWithBlend", "Function Engine.PlayerController.SetViewTargetWithBlend")()); }
			ScriptFunction ClientSetViewTarget() { mixin(MGF!("mClientSetViewTarget", "Function Engine.PlayerController.ClientSetViewTarget")()); }
			ScriptFunction ServerVerifyViewTarget() { mixin(MGF!("mServerVerifyViewTarget", "Function Engine.PlayerController.ServerVerifyViewTarget")()); }
			ScriptFunction SpawnPlayerCamera() { mixin(MGF!("mSpawnPlayerCamera", "Function Engine.PlayerController.SpawnPlayerCamera")()); }
			ScriptFunction GetPlayerViewPoint() { mixin(MGF!("mGetPlayerViewPoint", "Function Engine.PlayerController.GetPlayerViewPoint")()); }
			ScriptFunction ViewShake() { mixin(MGF!("mViewShake", "Function Engine.PlayerController.ViewShake")()); }
			ScriptFunction UpdateRotation() { mixin(MGF!("mUpdateRotation", "Function Engine.PlayerController.UpdateRotation")()); }
			ScriptFunction ProcessViewRotation() { mixin(MGF!("mProcessViewRotation", "Function Engine.PlayerController.ProcessViewRotation")()); }
			ScriptFunction LimitViewRotation() { mixin(MGF!("mLimitViewRotation", "Function Engine.PlayerController.LimitViewRotation")()); }
			ScriptFunction CheckJumpOrDuck() { mixin(MGF!("mCheckJumpOrDuck", "Function Engine.PlayerController.CheckJumpOrDuck")()); }
			ScriptFunction IsSpectating() { mixin(MGF!("mIsSpectating", "Function Engine.PlayerController.IsSpectating")()); }
			ScriptFunction ServerSetSpectatorLocation() { mixin(MGF!("mServerSetSpectatorLocation", "Function Engine.PlayerController.ServerSetSpectatorLocation")()); }
			ScriptFunction ServerViewNextPlayer() { mixin(MGF!("mServerViewNextPlayer", "Function Engine.PlayerController.ServerViewNextPlayer")()); }
			ScriptFunction ServerViewPrevPlayer() { mixin(MGF!("mServerViewPrevPlayer", "Function Engine.PlayerController.ServerViewPrevPlayer")()); }
			ScriptFunction ViewAPlayer() { mixin(MGF!("mViewAPlayer", "Function Engine.PlayerController.ViewAPlayer")()); }
			ScriptFunction ServerViewSelf() { mixin(MGF!("mServerViewSelf", "Function Engine.PlayerController.ServerViewSelf")()); }
			ScriptFunction IsWaiting() { mixin(MGF!("mIsWaiting", "Function Engine.PlayerController.IsWaiting")()); }
			ScriptFunction CanRestartPlayer() { mixin(MGF!("mCanRestartPlayer", "Function Engine.PlayerController.CanRestartPlayer")()); }
			ScriptFunction DrawHUD() { mixin(MGF!("mDrawHUD", "Function Engine.PlayerController.DrawHUD")()); }
			ScriptFunction OnToggleInput() { mixin(MGF!("mOnToggleInput", "Function Engine.PlayerController.OnToggleInput")()); }
			ScriptFunction ClientIgnoreMoveInput() { mixin(MGF!("mClientIgnoreMoveInput", "Function Engine.PlayerController.ClientIgnoreMoveInput")()); }
			ScriptFunction ClientIgnoreLookInput() { mixin(MGF!("mClientIgnoreLookInput", "Function Engine.PlayerController.ClientIgnoreLookInput")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function Engine.PlayerController.DisplayDebug")()); }
			ScriptFunction OnDrawText() { mixin(MGF!("mOnDrawText", "Function Engine.PlayerController.OnDrawText")()); }
			ScriptFunction ClientDrawKismetText() { mixin(MGF!("mClientDrawKismetText", "Function Engine.PlayerController.ClientDrawKismetText")()); }
			ScriptFunction ClientClearKismetText() { mixin(MGF!("mClientClearKismetText", "Function Engine.PlayerController.ClientClearKismetText")()); }
			ScriptFunction OnSetCameraTarget() { mixin(MGF!("mOnSetCameraTarget", "Function Engine.PlayerController.OnSetCameraTarget")()); }
			ScriptFunction OnToggleHUD() { mixin(MGF!("mOnToggleHUD", "Function Engine.PlayerController.OnToggleHUD")()); }
			ScriptFunction NotifyTakeHit() { mixin(MGF!("mNotifyTakeHit", "Function Engine.PlayerController.NotifyTakeHit")()); }
			ScriptFunction OnForceFeedback() { mixin(MGF!("mOnForceFeedback", "Function Engine.PlayerController.OnForceFeedback")()); }
			ScriptFunction ClientStopForceFeedbackWaveform() { mixin(MGF!("mClientStopForceFeedbackWaveform", "Function Engine.PlayerController.ClientStopForceFeedbackWaveform")()); }
			ScriptFunction PlayRumble() { mixin(MGF!("mPlayRumble", "Function Engine.PlayerController.PlayRumble")()); }
			ScriptFunction ClientPlayForceFeedbackWaveform() { mixin(MGF!("mClientPlayForceFeedbackWaveform", "Function Engine.PlayerController.ClientPlayForceFeedbackWaveform")()); }
			ScriptFunction IsForceFeedbackAllowed() { mixin(MGF!("mIsForceFeedbackAllowed", "Function Engine.PlayerController.IsForceFeedbackAllowed")()); }
			ScriptFunction OnToggleCinematicMode() { mixin(MGF!("mOnToggleCinematicMode", "Function Engine.PlayerController.OnToggleCinematicMode")()); }
			ScriptFunction SetCinematicMode() { mixin(MGF!("mSetCinematicMode", "Function Engine.PlayerController.SetCinematicMode")()); }
			ScriptFunction ClientSetCinematicMode() { mixin(MGF!("mClientSetCinematicMode", "Function Engine.PlayerController.ClientSetCinematicMode")()); }
			ScriptFunction IgnoreMoveInput() { mixin(MGF!("mIgnoreMoveInput", "Function Engine.PlayerController.IgnoreMoveInput")()); }
			ScriptFunction IsMoveInputIgnored() { mixin(MGF!("mIsMoveInputIgnored", "Function Engine.PlayerController.IsMoveInputIgnored")()); }
			ScriptFunction IgnoreLookInput() { mixin(MGF!("mIgnoreLookInput", "Function Engine.PlayerController.IgnoreLookInput")()); }
			ScriptFunction IsLookInputIgnored() { mixin(MGF!("mIsLookInputIgnored", "Function Engine.PlayerController.IsLookInputIgnored")()); }
			ScriptFunction ResetPlayerMovementInput() { mixin(MGF!("mResetPlayerMovementInput", "Function Engine.PlayerController.ResetPlayerMovementInput")()); }
			ScriptFunction OnConsoleCommand() { mixin(MGF!("mOnConsoleCommand", "Function Engine.PlayerController.OnConsoleCommand")()); }
			ScriptFunction ClientForceGarbageCollection() { mixin(MGF!("mClientForceGarbageCollection", "Function Engine.PlayerController.ClientForceGarbageCollection")()); }
			ScriptFunction LevelStreamingStatusChanged() { mixin(MGF!("mLevelStreamingStatusChanged", "Function Engine.PlayerController.LevelStreamingStatusChanged")()); }
			ScriptFunction ClientUpdateLevelStreamingStatus() { mixin(MGF!("mClientUpdateLevelStreamingStatus", "Function Engine.PlayerController.ClientUpdateLevelStreamingStatus")()); }
			ScriptFunction ServerUpdateLevelVisibility() { mixin(MGF!("mServerUpdateLevelVisibility", "Function Engine.PlayerController.ServerUpdateLevelVisibility")()); }
			ScriptFunction ClientPrepareMapChange() { mixin(MGF!("mClientPrepareMapChange", "Function Engine.PlayerController.ClientPrepareMapChange")()); }
			ScriptFunction DelayedPrepareMapChange() { mixin(MGF!("mDelayedPrepareMapChange", "Function Engine.PlayerController.DelayedPrepareMapChange")()); }
			ScriptFunction ClientCommitMapChange() { mixin(MGF!("mClientCommitMapChange", "Function Engine.PlayerController.ClientCommitMapChange")()); }
			ScriptFunction ClientCancelPendingMapChange() { mixin(MGF!("mClientCancelPendingMapChange", "Function Engine.PlayerController.ClientCancelPendingMapChange")()); }
			ScriptFunction ClientFlushLevelStreaming() { mixin(MGF!("mClientFlushLevelStreaming", "Function Engine.PlayerController.ClientFlushLevelStreaming")()); }
			ScriptFunction ClientSetBlockOnAsyncLoading() { mixin(MGF!("mClientSetBlockOnAsyncLoading", "Function Engine.PlayerController.ClientSetBlockOnAsyncLoading")()); }
			ScriptFunction IsPlayerMuted() { mixin(MGF!("mIsPlayerMuted", "Function Engine.PlayerController.IsPlayerMuted")()); }
			ScriptFunction GetSeamlessTravelActorList() { mixin(MGF!("mGetSeamlessTravelActorList", "Function Engine.PlayerController.GetSeamlessTravelActorList")()); }
			ScriptFunction SeamlessTravelTo() { mixin(MGF!("mSeamlessTravelTo", "Function Engine.PlayerController.SeamlessTravelTo")()); }
			ScriptFunction SeamlessTravelFrom() { mixin(MGF!("mSeamlessTravelFrom", "Function Engine.PlayerController.SeamlessTravelFrom")()); }
			ScriptFunction ClientSetOnlineStatus() { mixin(MGF!("mClientSetOnlineStatus", "Function Engine.PlayerController.ClientSetOnlineStatus")()); }
			ScriptFunction GetPlayerControllerFromNetId() { mixin(MGF!("mGetPlayerControllerFromNetId", "Function Engine.PlayerController.GetPlayerControllerFromNetId")()); }
			ScriptFunction ClientVoiceHandshakeComplete() { mixin(MGF!("mClientVoiceHandshakeComplete", "Function Engine.PlayerController.ClientVoiceHandshakeComplete")()); }
			ScriptFunction ClientMutePlayer() { mixin(MGF!("mClientMutePlayer", "Function Engine.PlayerController.ClientMutePlayer")()); }
			ScriptFunction ClientUnmutePlayer() { mixin(MGF!("mClientUnmutePlayer", "Function Engine.PlayerController.ClientUnmutePlayer")()); }
			ScriptFunction GameplayMutePlayer() { mixin(MGF!("mGameplayMutePlayer", "Function Engine.PlayerController.GameplayMutePlayer")()); }
			ScriptFunction GameplayUnmutePlayer() { mixin(MGF!("mGameplayUnmutePlayer", "Function Engine.PlayerController.GameplayUnmutePlayer")()); }
			ScriptFunction ServerMutePlayer() { mixin(MGF!("mServerMutePlayer", "Function Engine.PlayerController.ServerMutePlayer")()); }
			ScriptFunction ServerUnmutePlayer() { mixin(MGF!("mServerUnmutePlayer", "Function Engine.PlayerController.ServerUnmutePlayer")()); }
			ScriptFunction NotifyDirectorControl() { mixin(MGF!("mNotifyDirectorControl", "Function Engine.PlayerController.NotifyDirectorControl")()); }
			ScriptFunction SetShowSubtitles() { mixin(MGF!("mSetShowSubtitles", "Function Engine.PlayerController.SetShowSubtitles")()); }
			ScriptFunction IsShowingSubtitles() { mixin(MGF!("mIsShowingSubtitles", "Function Engine.PlayerController.IsShowingSubtitles")()); }
			ScriptFunction ClientWasKicked() { mixin(MGF!("mClientWasKicked", "Function Engine.PlayerController.ClientWasKicked")()); }
			ScriptFunction ClientRegisterForArbitration() { mixin(MGF!("mClientRegisterForArbitration", "Function Engine.PlayerController.ClientRegisterForArbitration")()); }
			ScriptFunction OnArbitrationRegisterComplete() { mixin(MGF!("mOnArbitrationRegisterComplete", "Function Engine.PlayerController.OnArbitrationRegisterComplete")()); }
			ScriptFunction ServerRegisteredForArbitration() { mixin(MGF!("mServerRegisteredForArbitration", "Function Engine.PlayerController.ServerRegisteredForArbitration")()); }
			ScriptFunction OnGameInviteAccepted() { mixin(MGF!("mOnGameInviteAccepted", "Function Engine.PlayerController.OnGameInviteAccepted")()); }
			ScriptFunction InviteHasEnoughSpace() { mixin(MGF!("mInviteHasEnoughSpace", "Function Engine.PlayerController.InviteHasEnoughSpace")()); }
			ScriptFunction CanAllPlayersPlayOnline() { mixin(MGF!("mCanAllPlayersPlayOnline", "Function Engine.PlayerController.CanAllPlayersPlayOnline")()); }
			ScriptFunction ClearInviteDelegates() { mixin(MGF!("mClearInviteDelegates", "Function Engine.PlayerController.ClearInviteDelegates")()); }
			ScriptFunction OnEndForInviteComplete() { mixin(MGF!("mOnEndForInviteComplete", "Function Engine.PlayerController.OnEndForInviteComplete")()); }
			ScriptFunction OnDestroyForInviteComplete() { mixin(MGF!("mOnDestroyForInviteComplete", "Function Engine.PlayerController.OnDestroyForInviteComplete")()); }
			ScriptFunction ModifyClientURL() { mixin(MGF!("mModifyClientURL", "Function Engine.PlayerController.ModifyClientURL")()); }
			ScriptFunction OnInviteJoinComplete() { mixin(MGF!("mOnInviteJoinComplete", "Function Engine.PlayerController.OnInviteJoinComplete")()); }
			ScriptFunction NotifyInviteFailed() { mixin(MGF!("mNotifyInviteFailed", "Function Engine.PlayerController.NotifyInviteFailed")()); }
			ScriptFunction NotifyNotAllPlayersCanJoinInvite() { mixin(MGF!("mNotifyNotAllPlayersCanJoinInvite", "Function Engine.PlayerController.NotifyNotAllPlayersCanJoinInvite")()); }
			ScriptFunction NotifyNotEnoughSpaceInInvite() { mixin(MGF!("mNotifyNotEnoughSpaceInInvite", "Function Engine.PlayerController.NotifyNotEnoughSpaceInInvite")()); }
			ScriptFunction ClientArbitratedMatchEnded() { mixin(MGF!("mClientArbitratedMatchEnded", "Function Engine.PlayerController.ClientArbitratedMatchEnded")()); }
			ScriptFunction ClientWriteOnlinePlayerScores() { mixin(MGF!("mClientWriteOnlinePlayerScores", "Function Engine.PlayerController.ClientWriteOnlinePlayerScores")()); }
			ScriptFunction ClientWriteLeaderboardStats() { mixin(MGF!("mClientWriteLeaderboardStats", "Function Engine.PlayerController.ClientWriteLeaderboardStats")()); }
			ScriptFunction ClientSetHostUniqueId() { mixin(MGF!("mClientSetHostUniqueId", "Function Engine.PlayerController.ClientSetHostUniqueId")()); }
			ScriptFunction ClientStopNetworkedVoice() { mixin(MGF!("mClientStopNetworkedVoice", "Function Engine.PlayerController.ClientStopNetworkedVoice")()); }
			ScriptFunction ClientStartNetworkedVoice() { mixin(MGF!("mClientStartNetworkedVoice", "Function Engine.PlayerController.ClientStartNetworkedVoice")()); }
			ScriptFunction OnDestroy() { mixin(MGF!("mOnDestroy", "Function Engine.PlayerController.OnDestroy")()); }
			ScriptFunction DrawDebugTextList() { mixin(MGF!("mDrawDebugTextList", "Function Engine.PlayerController.DrawDebugTextList")()); }
			ScriptFunction AddDebugText() { mixin(MGF!("mAddDebugText", "Function Engine.PlayerController.AddDebugText")()); }
			ScriptFunction RemoveDebugText() { mixin(MGF!("mRemoveDebugText", "Function Engine.PlayerController.RemoveDebugText")()); }
			ScriptFunction RemoveAllDebugStrings() { mixin(MGF!("mRemoveAllDebugStrings", "Function Engine.PlayerController.RemoveAllDebugStrings")()); }
			ScriptFunction ClientRegisterHostStatGuid() { mixin(MGF!("mClientRegisterHostStatGuid", "Function Engine.PlayerController.ClientRegisterHostStatGuid")()); }
			ScriptFunction OnRegisterHostStatGuidComplete() { mixin(MGF!("mOnRegisterHostStatGuidComplete", "Function Engine.PlayerController.OnRegisterHostStatGuidComplete")()); }
			ScriptFunction ServerRegisterClientStatGuid() { mixin(MGF!("mServerRegisterClientStatGuid", "Function Engine.PlayerController.ServerRegisterClientStatGuid")()); }
			ScriptFunction ClientStartOnlineGame() { mixin(MGF!("mClientStartOnlineGame", "Function Engine.PlayerController.ClientStartOnlineGame")()); }
			ScriptFunction ClientEndOnlineGame() { mixin(MGF!("mClientEndOnlineGame", "Function Engine.PlayerController.ClientEndOnlineGame")()); }
			ScriptFunction CanViewUserCreatedContent() { mixin(MGF!("mCanViewUserCreatedContent", "Function Engine.PlayerController.CanViewUserCreatedContent")()); }
			ScriptFunction IncrementNumberOfMatchesPlayed() { mixin(MGF!("mIncrementNumberOfMatchesPlayed", "Function Engine.PlayerController.IncrementNumberOfMatchesPlayed")()); }
			ScriptFunction SoakPause() { mixin(MGF!("mSoakPause", "Function Engine.PlayerController.SoakPause")()); }
			ScriptFunction ClientTravelToSession() { mixin(MGF!("mClientTravelToSession", "Function Engine.PlayerController.ClientTravelToSession")()); }
			ScriptFunction OnJoinTravelToSessionComplete() { mixin(MGF!("mOnJoinTravelToSessionComplete", "Function Engine.PlayerController.OnJoinTravelToSessionComplete")()); }
			ScriptFunction ClientReturnToParty() { mixin(MGF!("mClientReturnToParty", "Function Engine.PlayerController.ClientReturnToParty")()); }
			ScriptFunction IsSplitscreenPlayer() { mixin(MGF!("mIsSplitscreenPlayer", "Function Engine.PlayerController.IsSplitscreenPlayer")()); }
			ScriptFunction GetSplitscreenPlayerByIndex() { mixin(MGF!("mGetSplitscreenPlayerByIndex", "Function Engine.PlayerController.GetSplitscreenPlayerByIndex")()); }
			ScriptFunction GetSplitscreenPlayerCount() { mixin(MGF!("mGetSplitscreenPlayerCount", "Function Engine.PlayerController.GetSplitscreenPlayerCount")()); }
			ScriptFunction ClientControlMovieTexture() { mixin(MGF!("mClientControlMovieTexture", "Function Engine.PlayerController.ClientControlMovieTexture")()); }
			ScriptFunction ClientSetForceMipLevelsToBeResident() { mixin(MGF!("mClientSetForceMipLevelsToBeResident", "Function Engine.PlayerController.ClientSetForceMipLevelsToBeResident")()); }
			ScriptFunction ClientPrestreamTextures() { mixin(MGF!("mClientPrestreamTextures", "Function Engine.PlayerController.ClientPrestreamTextures")()); }
			ScriptFunction IsPartyLeader() { mixin(MGF!("mIsPartyLeader", "Function Engine.PlayerController.IsPartyLeader")()); }
			ScriptFunction GetPartyMapName() { mixin(MGF!("mGetPartyMapName", "Function Engine.PlayerController.GetPartyMapName")()); }
			ScriptFunction GetPartyGameTypeName() { mixin(MGF!("mGetPartyGameTypeName", "Function Engine.PlayerController.GetPartyGameTypeName")()); }
			ScriptFunction GetAchievementProgression() { mixin(MGF!("mGetAchievementProgression", "Function Engine.PlayerController.GetAchievementProgression")()); }
			ScriptFunction OnFlyThroughHasEnded() { mixin(MGF!("mOnFlyThroughHasEnded", "Function Engine.PlayerController.OnFlyThroughHasEnded")()); }
			ScriptFunction Sentinel_SetupForGamebasedTravelTheWorld() { mixin(MGF!("mSentinel_SetupForGamebasedTravelTheWorld", "Function Engine.PlayerController.Sentinel_SetupForGamebasedTravelTheWorld")()); }
			ScriptFunction Sentinel_PreAcquireTravelTheWorldPoints() { mixin(MGF!("mSentinel_PreAcquireTravelTheWorldPoints", "Function Engine.PlayerController.Sentinel_PreAcquireTravelTheWorldPoints")()); }
			ScriptFunction Sentinel_PostAcquireTravelTheWorldPoints() { mixin(MGF!("mSentinel_PostAcquireTravelTheWorldPoints", "Function Engine.PlayerController.Sentinel_PostAcquireTravelTheWorldPoints")()); }
			ScriptFunction InputMatchDelegate() { mixin(MGF!("mInputMatchDelegate", "Function Engine.PlayerController.InputMatchDelegate")()); }
			ScriptFunction DoForceFeedbackForScreenShake() { mixin(MGF!("mDoForceFeedbackForScreenShake", "Function Engine.PlayerController.DoForceFeedbackForScreenShake")()); }
			ScriptFunction ClientPlayCameraShake() { mixin(MGF!("mClientPlayCameraShake", "Function Engine.PlayerController.ClientPlayCameraShake")()); }
			ScriptFunction ClientStopCameraShake() { mixin(MGF!("mClientStopCameraShake", "Function Engine.PlayerController.ClientStopCameraShake")()); }
			ScriptFunction OnCameraShake() { mixin(MGF!("mOnCameraShake", "Function Engine.PlayerController.OnCameraShake")()); }
			ScriptFunction ClientPlayCameraAnim() { mixin(MGF!("mClientPlayCameraAnim", "Function Engine.PlayerController.ClientPlayCameraAnim")()); }
			ScriptFunction ClientStopCameraAnim() { mixin(MGF!("mClientStopCameraAnim", "Function Engine.PlayerController.ClientStopCameraAnim")()); }
			ScriptFunction ClientSpawnCameraLensEffect() { mixin(MGF!("mClientSpawnCameraLensEffect", "Function Engine.PlayerController.ClientSpawnCameraLensEffect")()); }
			ScriptFunction OnSetSoundMode() { mixin(MGF!("mOnSetSoundMode", "Function Engine.PlayerController.OnSetSoundMode")()); }
			ScriptFunction HasPeerConnection() { mixin(MGF!("mHasPeerConnection", "Function Engine.PlayerController.HasPeerConnection")()); }
			ScriptFunction BugItGo() { mixin(MGF!("mBugItGo", "Function Engine.PlayerController.BugItGo")()); }
			ScriptFunction BugItGoString() { mixin(MGF!("mBugItGoString", "Function Engine.PlayerController.BugItGoString")()); }
			ScriptFunction BugItWorker() { mixin(MGF!("mBugItWorker", "Function Engine.PlayerController.BugItWorker")()); }
			ScriptFunction BugIt() { mixin(MGF!("mBugIt", "Function Engine.PlayerController.BugIt")()); }
			ScriptFunction LogOutBugItGoToLogFile() { mixin(MGF!("mLogOutBugItGoToLogFile", "Function Engine.PlayerController.LogOutBugItGoToLogFile")()); }
			ScriptFunction LogLoc() { mixin(MGF!("mLogLoc", "Function Engine.PlayerController.LogLoc")()); }
			ScriptFunction BugItAI() { mixin(MGF!("mBugItAI", "Function Engine.PlayerController.BugItAI")()); }
			ScriptFunction LogOutBugItAIGoToLogFile() { mixin(MGF!("mLogOutBugItAIGoToLogFile", "Function Engine.PlayerController.LogOutBugItAIGoToLogFile")()); }
			ScriptFunction BugItStringCreator() { mixin(MGF!("mBugItStringCreator", "Function Engine.PlayerController.BugItStringCreator")()); }
			ScriptFunction OnEngineInitialTick() { mixin(MGF!("mOnEngineInitialTick", "Function Engine.PlayerController.OnEngineInitialTick")()); }
			ScriptFunction DisableDebugAI() { mixin(MGF!("mDisableDebugAI", "Function Engine.PlayerController.DisableDebugAI")()); }
			ScriptFunction ReceivedGameClass() { mixin(MGF!("mReceivedGameClass", "Function Engine.PlayerController.ReceivedGameClass")()); }
		}
	}
	static struct Constants
	{
		enum
		{
			MAXCLIENTUPDATEINTERVAL = 0.25,
			CLIENTADJUSTUPDATECOST = 180.0,
			MAXVEHICLEPOSITIONERRORSQUARED = 900.0,
			MAXNEARZEROVELOCITYSQUARED = 9.0,
			MAXPOSITIONERRORSQUARED = 3.0,
		}
	}
	enum EProgressMessageType : ubyte
	{
		PMT_Clear = 0,
		PMT_Information = 1,
		PMT_AdminMessage = 2,
		PMT_DownloadProgress = 3,
		PMT_ConnectionFailure = 4,
		PMT_PeerConnectionFailure = 5,
		PMT_PeerHostMigrationFailure = 6,
		PMT_SocketFailure = 7,
		PMT_MAX = 8,
	}
	enum EInputMatchAction : ubyte
	{
		IMA_GreaterThan = 0,
		IMA_LessThan = 1,
		IMA_MAX = 2,
	}
	enum EInputTypes : ubyte
	{
		IT_XAxis = 0,
		IT_YAxis = 1,
		IT_MAX = 2,
	}
	struct DebugTextInfo
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PlayerController.DebugTextInfo")()); }
		@property final
		{
			auto ref
			{
				Actor SrcActor() { mixin(MGPS!(Actor, 0)()); }
				float TimeRemaining() { mixin(MGPS!(float, 40)()); }
				// WARNING: Property 'Font' has the same name as a defined type!
				Vector SrcActorOffset() { mixin(MGPS!(Vector, 4)()); }
				Vector SrcActorDesiredOffset() { mixin(MGPS!(Vector, 16)()); }
				float Duration() { mixin(MGPS!(float, 44)()); }
				Vector OrigActorLocation() { mixin(MGPS!(Vector, 56)()); }
				UObject.Color TextColor() { mixin(MGPS!(UObject.Color, 48)()); }
				ScriptString DebugText() { mixin(MGPS!(ScriptString, 28)()); }
			}
			bool bAbsoluteLocation() { mixin(MGBPS!(52, 0x1)()); }
			bool bAbsoluteLocation(bool val) { mixin(MSBPS!(52, 0x1)()); }
			bool bKeepAttachedToActor() { mixin(MGBPS!(52, 0x2)()); }
			bool bKeepAttachedToActor(bool val) { mixin(MSBPS!(52, 0x2)()); }
		}
	}
	struct ConnectedPeerInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PlayerController.ConnectedPeerInfo")()); }
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId PlayerID() { mixin(MGPS!(OnlineSubsystem.UniqueNetId, 0)()); }
				OnlineSubsystem.ENATType NatType() { mixin(MGPS!(OnlineSubsystem.ENATType, 8)()); }
			}
			bool bLostConnectionToHost() { mixin(MGBPS!(12, 0x1)()); }
			bool bLostConnectionToHost(bool val) { mixin(MSBPS!(12, 0x1)()); }
		}
	}
	struct ClientAdjustment
	{
		private ubyte __buffer__[49];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PlayerController.ClientAdjustment")()); }
		@property final auto ref
		{
			Actor.EPhysics newPhysics() { mixin(MGPS!(Actor.EPhysics, 4)()); }
			Vector NewLoc() { mixin(MGPS!(Vector, 8)()); }
			Vector NewVel() { mixin(MGPS!(Vector, 20)()); }
			Actor NewBase() { mixin(MGPS!(Actor, 32)()); }
			Vector NewFloor() { mixin(MGPS!(Vector, 36)()); }
			float TimeStamp() { mixin(MGPS!(float, 0)()); }
			ubyte bAckGoodMove() { mixin(MGPS!(ubyte, 48)()); }
		}
	}
	struct InputMatchRequest
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PlayerController.InputMatchRequest")()); }
		@property final auto ref
		{
			ScriptArray!(PlayerController.InputEntry) Inputs() { mixin(MGPS!(ScriptArray!(PlayerController.InputEntry), 0)()); }
			Actor MatchActor() { mixin(MGPS!(Actor, 12)()); }
			ScriptName MatchFuncName() { mixin(MGPS!(ScriptName, 16)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named 'MatchDelegate'!
			ScriptName FailedFuncName() { mixin(MGPS!(ScriptName, 36)()); }
			ScriptName RequestName() { mixin(MGPS!(ScriptName, 44)()); }
			int MatchIdx() { mixin(MGPS!(int, 52)()); }
			float LastMatchTime() { mixin(MGPS!(float, 56)()); }
		}
	}
	struct InputEntry
	{
		private ubyte __buffer__[13];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PlayerController.InputEntry")()); }
		@property final auto ref
		{
			PlayerController.EInputTypes Type() { mixin(MGPS!(PlayerController.EInputTypes, 0)()); }
			float Value() { mixin(MGPS!(float, 4)()); }
			float TimeDelta() { mixin(MGPS!(float, 8)()); }
			PlayerController.EInputMatchAction Action() { mixin(MGPS!(PlayerController.EInputMatchAction, 12)()); }
		}
	}
	static struct PlayerWalking
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.PlayerController.PlayerWalking")()); }
	}
	static struct PlayerClimbing
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.PlayerController.PlayerClimbing")()); }
	}
	static struct PlayerDriving
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.PlayerController.PlayerDriving")()); }
	}
	static struct PlayerSwimming
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.PlayerController.PlayerSwimming")()); }
	}
	static struct PlayerFlying
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.PlayerController.PlayerFlying")()); }
	}
	static struct BaseSpectating
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.PlayerController.BaseSpectating")()); }
	}
	static struct Spectating
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.PlayerController.Spectating")()); }
	}
	static struct PlayerWaiting
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.PlayerController.PlayerWaiting")()); }
	}
	static struct WaitingForPawn
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.PlayerController.WaitingForPawn")()); }
	}
	static struct RoundEnded
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.PlayerController.RoundEnded")()); }
	}
	static struct Dead
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.PlayerController.Dead")()); }
	}
	@property final
	{
		auto ref
		{
			float LODDistanceFactor() { mixin(MGPC!(float, 960)()); }
			// WARNING: Property 'Player' has the same name as a defined type!
			Actor ViewTarget() { mixin(MGPC!(Actor, 936)()); }
			Camera PlayerCamera() { mixin(MGPC!(Camera, 904)()); }
			CoverReplicator MyCoverReplicator() { mixin(MGPC!(CoverReplicator, 1352)()); }
			float MaxTimeMargin() { mixin(MGPC!(float, 1044)()); }
			float MaxResponseTime() { mixin(MGPC!(float, 916)()); }
			float LastActiveTime() { mixin(MGPC!(float, 1048)()); }
			OnlineSubsystem OnlineSub() { mixin(MGPC!(OnlineSubsystem, 1248)()); }
			ScriptArray!(PlayerController.ConnectedPeerInfo) ConnectedPeers() { mixin(MGPC!(ScriptArray!(PlayerController.ConnectedPeerInfo), 1220)()); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) BestNextHostPeers() { mixin(MGPC!(ScriptArray!(OnlineSubsystem.UniqueNetId), 1232)()); }
			OnlineGameSearch MigratedSearchToJoin() { mixin(MGPC!(OnlineGameSearch, 1244)()); }
			float TimeMargin() { mixin(MGPC!(float, 1036)()); }
			HUD myHUD() { mixin(MGPC!(HUD, 992)()); }
			float WaitDelay() { mixin(MGPC!(float, 920)()); }
			SavedMove SavedMoves() { mixin(MGPC!(SavedMove, 1000)()); }
			SavedMove PendingMove() { mixin(MGPC!(SavedMove, 1008)()); }
			// WARNING: Property 'PlayerInput' has the same name as a defined type!
			ScriptClass InputClass() { mixin(MGPC!(ScriptClass, 1136)()); }
			ScriptArray!(Interaction) Interactions() { mixin(MGPC!(ScriptArray!(Interaction), 1172)()); }
			ScriptString ForceFeedbackManagerClassName() { mixin(MGPC!(ScriptString, 1156)()); }
			// WARNING: Property 'ForceFeedbackManager' has the same name as a defined type!
			UIDataStore_OnlinePlayerData OnlinePlayerData() { mixin(MGPC!(UIDataStore_OnlinePlayerData, 1260)()); }
			Pawn AcknowledgedPawn() { mixin(MGPC!(Pawn, 924)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) HearSoundActiveComponents() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*), 1384)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) HearSoundPoolComponents() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*), 1396)()); }
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'VoiceInterface'!
			float FOVAngle() { mixin(MGPC!(float, 948)()); }
			float DefaultFOV() { mixin(MGPC!(float, 956)()); }
			float DesiredFOV() { mixin(MGPC!(float, 952)()); }
			float LastBroadcastTime() { mixin(MGPC!(float, 1288)()); }
			ScriptString LastBroadcastString() { mixin(MGPC!(ScriptString, 1292)()); }
			float LastUpdateTime() { mixin(MGPC!(float, 1028)()); }
			float CurrentTimeStamp() { mixin(MGPC!(float, 1024)()); }
			float LastSpeedHackLog() { mixin(MGPC!(float, 1064)()); }
			PlayerController.ClientAdjustment PendingAdjustment() { mixin(MGPC!(PlayerController.ClientAdjustment, 1068)()); }
			float ServerTimeStamp() { mixin(MGPC!(float, 1032)()); }
			ScriptClass SavedMoveClass() { mixin(MGPC!(ScriptClass, 996)()); }
			int ClientCap() { mixin(MGPC!(int, 1052)()); }
			float LastPingUpdate() { mixin(MGPC!(float, 1060)()); }
			SavedMove FreeMoves() { mixin(MGPC!(SavedMove, 1004)()); }
			Vector LastAckedAccel() { mixin(MGPC!(Vector, 1012)()); }
			ubyte bRun() { mixin(MGPC!(ubyte, 931)()); }
			ubyte bDuck() { mixin(MGPC!(ubyte, 932)()); }
			float ClientUpdateTime() { mixin(MGPC!(float, 1040)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__CanUnpause__Delegate'!
			float InteractDistance() { mixin(MGPC!(float, 1264)()); }
			ScriptClass CameraClass() { mixin(MGPC!(ScriptClass, 908)()); }
			Actor.EDoubleClickDir DoubleClickDir() { mixin(MGPC!(Actor.EDoubleClickDir, 928)()); }
			int GroundPitch() { mixin(MGPC!(int, 1120)()); }
			float LastSpectatorStateSynchTime() { mixin(MGPC!(float, 1420)()); }
			float SpectatorCameraSpeed() { mixin(MGPC!(float, 1368)()); }
			PlayerReplicationInfo RealViewTarget() { mixin(MGPC!(PlayerReplicationInfo, 940)()); }
			float MinRespawnDelay() { mixin(MGPC!(float, 1376)()); }
			NetConnection PendingSwapConnection() { mixin(MGPC!(NetConnection, 1372)()); }
			ubyte bIgnoreMoveInput() { mixin(MGPC!(ubyte, 929)()); }
			ubyte bIgnoreLookInput() { mixin(MGPC!(ubyte, 930)()); }
			ScriptArray!(ScriptName) PendingMapChangeLevelNames() { mixin(MGPC!(ScriptArray!(ScriptName), 1340)()); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) VoicePacketFilter() { mixin(MGPC!(ScriptArray!(OnlineSubsystem.UniqueNetId), 1208)()); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) GameplayVoiceMuteList() { mixin(MGPC!(ScriptArray!(OnlineSubsystem.UniqueNetId), 1196)()); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) VoiceMuteList() { mixin(MGPC!(ScriptArray!(OnlineSubsystem.UniqueNetId), 1184)()); }
			ScriptArray!(PlayerController.DebugTextInfo) DebugTextList() { mixin(MGPC!(ScriptArray!(PlayerController.DebugTextInfo), 1356)()); }
			ubyte NetPlayerIndex() { mixin(MGPC!(ubyte, 933)()); }
			// WARNING: Property 'CheatManager' has the same name as a defined type!
			InterpTrackInstDirector ControllingDirTrackInst() { mixin(MGPC!(InterpTrackInstDirector, 944)()); }
			Rotator TargetViewRotation() { mixin(MGPC!(Rotator, 964)()); }
			float TargetEyeHeight() { mixin(MGPC!(float, 976)()); }
			Rotator BlendedTargetViewRotation() { mixin(MGPC!(Rotator, 980)()); }
			float DynamicPingThreshold() { mixin(MGPC!(float, 1056)()); }
			ScriptClass CheatClass() { mixin(MGPC!(ScriptClass, 1128)()); }
			Vector FailedPathStart() { mixin(MGPC!(Vector, 1140)()); }
			// WARNING: Property 'CylinderComponent' has the same name as a defined type!
			ScriptName DelayedJoinSessionName() { mixin(MGPC!(ScriptName, 1268)()); }
			ScriptArray!(PlayerController.InputMatchRequest) InputRequests() { mixin(MGPC!(ScriptArray!(PlayerController.InputMatchRequest), 1276)()); }
			int MaxConcurrentHearSounds() { mixin(MGPC!(int, 1380)()); }
			ScriptArray!(Actor) HiddenActors() { mixin(MGPC!(ScriptArray!(Actor), 1408)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__InputMatchDelegate__Delegate'!
		}
		bool bIsExternalUIOpen() { mixin(MGBPC!(912, 0x400000)()); }
		bool bIsExternalUIOpen(bool val) { mixin(MSBPC!(912, 0x400000)()); }
		bool bPendingDestroy() { mixin(MGBPC!(912, 0x200)()); }
		bool bPendingDestroy(bool val) { mixin(MSBPC!(912, 0x200)()); }
		bool bIsControllerConnected() { mixin(MGBPC!(912, 0x800000)()); }
		bool bIsControllerConnected(bool val) { mixin(MSBPC!(912, 0x800000)()); }
		bool bShortConnectTimeOut() { mixin(MGBPC!(912, 0x100)()); }
		bool bShortConnectTimeOut(bool val) { mixin(MSBPC!(912, 0x100)()); }
		bool bFrozen() { mixin(MGBPC!(912, 0x1)()); }
		bool bFrozen(bool val) { mixin(MSBPC!(912, 0x1)()); }
		bool bWasSpeedHack() { mixin(MGBPC!(912, 0x400)()); }
		bool bWasSpeedHack(bool val) { mixin(MSBPC!(912, 0x400)()); }
		bool bDoubleJump() { mixin(MGBPC!(912, 0x4)()); }
		bool bDoubleJump(bool val) { mixin(MSBPC!(912, 0x4)()); }
		bool bUpdatePosition() { mixin(MGBPC!(912, 0x8)()); }
		bool bUpdatePosition(bool val) { mixin(MSBPC!(912, 0x8)()); }
		bool bPressedJump() { mixin(MGBPC!(912, 0x2)()); }
		bool bPressedJump(bool val) { mixin(MSBPC!(912, 0x2)()); }
		bool bUpdating() { mixin(MGBPC!(912, 0x10)()); }
		bool bUpdating(bool val) { mixin(MSBPC!(912, 0x10)()); }
		bool bCinematicMode() { mixin(MGBPC!(912, 0x10000)()); }
		bool bCinematicMode(bool val) { mixin(MSBPC!(912, 0x10000)()); }
		bool bAimingHelp() { mixin(MGBPC!(912, 0x1000)()); }
		bool bAimingHelp(bool val) { mixin(MSBPC!(912, 0x1000)()); }
		bool bClientSimulatingViewTarget() { mixin(MGBPC!(912, 0x2000)()); }
		bool bClientSimulatingViewTarget(bool val) { mixin(MSBPC!(912, 0x2000)()); }
		bool bCheatFlying() { mixin(MGBPC!(912, 0x40)()); }
		bool bCheatFlying(bool val) { mixin(MSBPC!(912, 0x40)()); }
		bool bCinemaDisableInputMove() { mixin(MGBPC!(912, 0x20000)()); }
		bool bCinemaDisableInputMove(bool val) { mixin(MSBPC!(912, 0x20000)()); }
		bool bCinemaDisableInputLook() { mixin(MGBPC!(912, 0x40000)()); }
		bool bCinemaDisableInputLook(bool val) { mixin(MSBPC!(912, 0x40000)()); }
		bool bHasVoiceHandshakeCompleted() { mixin(MGBPC!(912, 0x8000)()); }
		bool bHasVoiceHandshakeCompleted(bool val) { mixin(MSBPC!(912, 0x8000)()); }
		bool bNeverSwitchOnPickup() { mixin(MGBPC!(912, 0x20)()); }
		bool bNeverSwitchOnPickup(bool val) { mixin(MSBPC!(912, 0x20)()); }
		bool bCameraPositionLocked() { mixin(MGBPC!(912, 0x80)()); }
		bool bCameraPositionLocked(bool val) { mixin(MSBPC!(912, 0x80)()); }
		bool bWasSaturated() { mixin(MGBPC!(912, 0x800)()); }
		bool bWasSaturated(bool val) { mixin(MSBPC!(912, 0x800)()); }
		bool bPreventRespawn() { mixin(MGBPC!(912, 0x4000)()); }
		bool bPreventRespawn(bool val) { mixin(MSBPC!(912, 0x4000)()); }
		bool bIgnoreNetworkMessages() { mixin(MGBPC!(912, 0x80000)()); }
		bool bIgnoreNetworkMessages(bool val) { mixin(MSBPC!(912, 0x80000)()); }
		bool bReplicateAllPawns() { mixin(MGBPC!(912, 0x100000)()); }
		bool bReplicateAllPawns(bool val) { mixin(MSBPC!(912, 0x100000)()); }
		bool bIsUsingStreamingVolumes() { mixin(MGBPC!(912, 0x200000)()); }
		bool bIsUsingStreamingVolumes(bool val) { mixin(MSBPC!(912, 0x200000)()); }
		bool bCheckSoundOcclusion() { mixin(MGBPC!(912, 0x1000000)()); }
		bool bCheckSoundOcclusion(bool val) { mixin(MSBPC!(912, 0x1000000)()); }
		bool bDebugCameraAnims() { mixin(MGBPC!(912, 0x2000000)()); }
		bool bDebugCameraAnims(bool val) { mixin(MSBPC!(912, 0x2000000)()); }
		bool bBlockCameraAnimsFromOverridingPostProcess() { mixin(MGBPC!(912, 0x4000000)()); }
		bool bBlockCameraAnimsFromOverridingPostProcess(bool val) { mixin(MSBPC!(912, 0x4000000)()); }
		bool bLogHearSoundOverflow() { mixin(MGBPC!(912, 0x8000000)()); }
		bool bLogHearSoundOverflow(bool val) { mixin(MSBPC!(912, 0x8000000)()); }
		bool bCheckRelevancyThroughPortals() { mixin(MGBPC!(912, 0x10000000)()); }
		bool bCheckRelevancyThroughPortals(bool val) { mixin(MSBPC!(912, 0x10000000)()); }
		bool bDebugClientAdjustPosition() { mixin(MGBPC!(912, 0x20000000)()); }
		bool bDebugClientAdjustPosition(bool val) { mixin(MSBPC!(912, 0x20000000)()); }
	}
final:
	float GetFOVAngle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFOVAngle, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	ScriptString GetPlayerNetworkAddress()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerNetworkAddress, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	Actor GetViewTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewTarget, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	bool IsPrimaryPlayer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPrimaryPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetNetSpeed(int NewSpeed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewSpeed;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNetSpeed, params.ptr, cast(void*)0);
	}
	ScriptString GetServerNetworkAddress()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerNetworkAddress, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString ConsoleCommand(ScriptString Command, bool bWriteToLog)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(bool*)&params[12] = bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsoleCommand, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	void ClientTravel(ScriptString pURL, Actor.ETravelType TravelType, bool bSeamless, UObject.Guid MapPackageGuid)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(Actor.ETravelType*)&params[12] = TravelType;
		*cast(bool*)&params[16] = bSeamless;
		*cast(UObject.Guid*)&params[20] = MapPackageGuid;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientTravel, params.ptr, cast(void*)0);
	}
	void UpdateURL(ScriptString NewOption, ScriptString NewValue, bool bSave1Default)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = NewOption;
		*cast(ScriptString*)&params[12] = NewValue;
		*cast(bool*)&params[24] = bSave1Default;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateURL, params.ptr, cast(void*)0);
	}
	ScriptString GetDefaultURL(ScriptString pOption)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pOption;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDefaultURL, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void CopyToClipboard(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.CopyToClipboard, params.ptr, cast(void*)0);
	}
	ScriptString PasteFromClipboard()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PasteFromClipboard, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void SetAllowMatureLanguage(bool bAllowMatureLanguge)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAllowMatureLanguge;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAllowMatureLanguage, params.ptr, cast(void*)0);
	}
	void SetAudioGroupVolume(ScriptName GroupName, float pVolume)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = pVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAudioGroupVolume, params.ptr, cast(void*)0);
	}
	void ClientConvolve(ScriptString C, int H)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = C;
		*cast(int*)&params[12] = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientConvolve, params.ptr, cast(void*)0);
	}
	void ServerProcessConvolve(ScriptString C, int H)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = C;
		*cast(int*)&params[12] = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerProcessConvolve, params.ptr, cast(void*)0);
	}
	bool CheckSpeedHack(float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckSpeedHack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int FindStairRotation(float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindStairRotation, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void CleanUpAudioComponents()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanUpAudioComponents, cast(void*)0, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	void ForceClearUnpauseDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceClearUnpauseDelegates, cast(void*)0, cast(void*)0);
	}
	void OnExternalUIChanged(bool bIsOpening)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsOpening;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnExternalUIChanged, params.ptr, cast(void*)0);
	}
	bool CanUnpauseExternalUI()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanUnpauseExternalUI, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnControllerChanged(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnControllerChanged, params.ptr, cast(void*)0);
	}
	bool CanUnpauseControllerConnected()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanUnpauseControllerConnected, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	CoverReplicator SpawnCoverReplicator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnCoverReplicator, params.ptr, cast(void*)0);
		return *cast(CoverReplicator*)params.ptr;
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ReceivedPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedPlayer, cast(void*)0, cast(void*)0);
	}
	void RegisterPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterPlayerDataStores, cast(void*)0, cast(void*)0);
	}
	int FindConnectedPeerIndex(OnlineSubsystem.UniqueNetId PeerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindConnectedPeerIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void AddPeer(OnlineSubsystem.UniqueNetId PeerNetId, OnlineSubsystem.ENATType NatType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		*cast(OnlineSubsystem.ENATType*)&params[8] = NatType;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPeer, params.ptr, cast(void*)0);
	}
	void RemovePeer(OnlineSubsystem.UniqueNetId PeerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemovePeer, params.ptr, cast(void*)0);
	}
	void ServerAddPeer(OnlineSubsystem.UniqueNetId PeerNetId, OnlineSubsystem.ENATType NatType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		*cast(OnlineSubsystem.ENATType*)&params[8] = NatType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerAddPeer, params.ptr, cast(void*)0);
	}
	void ServerRemovePeer(OnlineSubsystem.UniqueNetId PeerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRemovePeer, params.ptr, cast(void*)0);
	}
	void ClientUpdateBestNextHosts(OnlineSubsystem.UniqueNetId SortedNextHosts, ubyte NumEntries)
	{
		ubyte params[81];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = SortedNextHosts;
		params[80] = NumEntries;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientUpdateBestNextHosts, params.ptr, cast(void*)0);
	}
	void NotifyPeerDisconnectHost(OnlineSubsystem.UniqueNetId PeerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPeerDisconnectHost, params.ptr, cast(void*)0);
	}
	bool IsBestHostPeer(OnlineSubsystem.UniqueNetId PeerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsBestHostPeer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool MigrateNewHost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MigrateNewHost, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnEndGameForHostMigrate(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEndGameForHostMigrate, params.ptr, cast(void*)0);
	}
	void GetRegisteredPlayersInSession(ScriptName SessionName, ref ScriptArray!(OnlineSubsystem.UniqueNetId) OutRegisteredPlayers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = OutRegisteredPlayers;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRegisteredPlayersInSession, params.ptr, cast(void*)0);
		*OutRegisteredPlayers = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
	}
	void RemoveMissingPeersFromSession(ScriptName SessionName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveMissingPeersFromSession, params.ptr, cast(void*)0);
	}
	void OnUnregisterPlayerCompleteForMigrate(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUnregisterPlayerCompleteForMigrate, params.ptr, cast(void*)0);
	}
	void OnHostMigratedOnlineGame(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnHostMigratedOnlineGame, params.ptr, cast(void*)0);
	}
	ScriptClass GetCurrentSearchClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentSearchClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void PeerDesignatedAsHost(ScriptName SessionName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.PeerDesignatedAsHost, params.ptr, cast(void*)0);
	}
	void PeerTravelAsHost(float TravelCountdownTimer, ScriptString pURL)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = TravelCountdownTimer;
		*cast(ScriptString*)&params[4] = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.PeerTravelAsHost, params.ptr, cast(void*)0);
	}
	void TellPeerToTravel(OnlineSubsystem.UniqueNetId ToPeerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = ToPeerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.TellPeerToTravel, params.ptr, cast(void*)0);
	}
	void TellPeerToTravelToSession(OnlineSubsystem.UniqueNetId ToPeerNetId, ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo, int PlatformSpecificInfoSize)
	{
		ubyte params[104];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = ToPeerNetId;
		*cast(ScriptName*)&params[8] = SessionName;
		*cast(ScriptClass*)&params[16] = SearchClass;
		params[20] = PlatformSpecificInfo;
		*cast(int*)&params[100] = PlatformSpecificInfoSize;
		(cast(ScriptObject)this).ProcessEvent(Functions.TellPeerToTravelToSession, params.ptr, cast(void*)0);
	}
	void PeerReceivedMigratedSession(OnlineSubsystem.UniqueNetId FromPeerNetId, ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo)
	{
		ubyte params[100];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = FromPeerNetId;
		*cast(ScriptName*)&params[8] = SessionName;
		*cast(ScriptClass*)&params[16] = SearchClass;
		params[20] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.PeerReceivedMigratedSession, params.ptr, cast(void*)0);
	}
	void OnEndGameForJoinMigrate(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEndGameForJoinMigrate, params.ptr, cast(void*)0);
	}
	void OnJoinMigratedGame(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnJoinMigratedGame, params.ptr, cast(void*)0);
	}
	void PreRender(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreRender, params.ptr, cast(void*)0);
	}
	void ResetTimeMargin()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetTimeMargin, cast(void*)0, cast(void*)0);
	}
	void ServerShortTimeout()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerShortTimeout, cast(void*)0, cast(void*)0);
	}
	void ServerGivePawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerGivePawn, cast(void*)0, cast(void*)0);
	}
	void KickWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KickWarning, cast(void*)0, cast(void*)0);
	}
	void AddCheats(bool bForce)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCheats, params.ptr, cast(void*)0);
	}
	void EnableCheats()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableCheats, cast(void*)0, cast(void*)0);
	}
	void SpawnDefaultHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnDefaultHUD, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void ClientReset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReset, cast(void*)0, cast(void*)0);
	}
	void CleanOutSavedMoves()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanOutSavedMoves, cast(void*)0, cast(void*)0);
	}
	void PreControllerIdChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreControllerIdChange, cast(void*)0, cast(void*)0);
	}
	void PostControllerIdChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostControllerIdChange, cast(void*)0, cast(void*)0);
	}
	OnlineSubsystem GetOnlineSubsystem()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOnlineSubsystem, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem*)params.ptr;
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitInputSystem, cast(void*)0, cast(void*)0);
	}
	void ClientInitializeDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientInitializeDataStores, cast(void*)0, cast(void*)0);
	}
	void RegisterCustomPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterCustomPlayerDataStores, cast(void*)0, cast(void*)0);
	}
	void RegisterStandardPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterStandardPlayerDataStores, cast(void*)0, cast(void*)0);
	}
	void UnregisterPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterPlayerDataStores, cast(void*)0, cast(void*)0);
	}
	void UnregisterStandardPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterStandardPlayerDataStores, cast(void*)0, cast(void*)0);
	}
	void ReloadProfileSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReloadProfileSettings, cast(void*)0, cast(void*)0);
	}
	void SetRumbleScale(float ScaleBy)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ScaleBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRumbleScale, params.ptr, cast(void*)0);
	}
	bool IsControllerTiltActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsControllerTiltActive, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetControllerTiltDesiredIfAvailable(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetControllerTiltDesiredIfAvailable, params.ptr, cast(void*)0);
	}
	void SetControllerTiltActive(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetControllerTiltActive, params.ptr, cast(void*)0);
	}
	void SetOnlyUseControllerTiltInput(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOnlyUseControllerTiltInput, params.ptr, cast(void*)0);
	}
	void SetUseTiltForwardAndBack(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetUseTiltForwardAndBack, params.ptr, cast(void*)0);
	}
	bool IsKeyboardAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsKeyboardAvailable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsMouseAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsMouseAvailable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClientGotoState(ScriptName NewState, ScriptName NewLabel)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewState;
		*cast(ScriptName*)&params[8] = NewLabel;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientGotoState, params.ptr, cast(void*)0);
	}
	void AskForPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AskForPawn, cast(void*)0, cast(void*)0);
	}
	void GivePawn(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.GivePawn, params.ptr, cast(void*)0);
	}
	void Possess(Pawn aPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
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
	void ServerAcknowledgePossession(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerAcknowledgePossession, params.ptr, cast(void*)0);
	}
	void UnPossess()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnPossess, cast(void*)0, cast(void*)0);
	}
	void PawnDied(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnDied, params.ptr, cast(void*)0);
	}
	void ClientSetHUD(ScriptClass newHUDType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = newHUDType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetHUD, params.ptr, cast(void*)0);
	}
	void HandlePickup(Inventory Inv)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = Inv;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandlePickup, params.ptr, cast(void*)0);
	}
	void CleanupPRI()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanupPRI, cast(void*)0, cast(void*)0);
	}
	void ReceiveLocalizedMessage(ScriptClass Message, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Message;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceiveLocalizedMessage, params.ptr, cast(void*)0);
	}
	void ClientPlaySound(SoundCue ASound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlaySound, params.ptr, cast(void*)0);
	}
	void HearSoundFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(Functions.HearSoundFinished, params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetPooledAudioComponent(SoundCue ASound, Actor SourceActor, bool bStopWhenOwnerDestroyed, bool bUseLocation, Vector SourceLocation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(Actor*)&params[4] = SourceActor;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		*cast(bool*)&params[12] = bUseLocation;
		*cast(Vector*)&params[16] = SourceLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPooledAudioComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[28];
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
	bool IsClosestLocalPlayerToActor(Actor TheActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TheActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsClosestLocalPlayerToActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Kismet_ClientPlaySound(SoundCue ASound, Actor SourceActor, float VolumeMultiplier, float PitchMultiplier, float FadeInTime, bool bSuppressSubtitles, bool bSuppressSpatialization)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(Actor*)&params[4] = SourceActor;
		*cast(float*)&params[8] = VolumeMultiplier;
		*cast(float*)&params[12] = PitchMultiplier;
		*cast(float*)&params[16] = FadeInTime;
		*cast(bool*)&params[20] = bSuppressSubtitles;
		*cast(bool*)&params[24] = bSuppressSpatialization;
		(cast(ScriptObject)this).ProcessEvent(Functions.Kismet_ClientPlaySound, params.ptr, cast(void*)0);
	}
	void Kismet_ClientStopSound(SoundCue ASound, Actor SourceActor, float FadeOutTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(Actor*)&params[4] = SourceActor;
		*cast(float*)&params[8] = FadeOutTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Kismet_ClientStopSound, params.ptr, cast(void*)0);
	}
	void ClientPlayActorFaceFXAnim(Actor SourceActor, FaceFXAnimSet pAnimSet, ScriptString GroupName, ScriptString SeqName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Actor*)params.ptr = SourceActor;
		*cast(FaceFXAnimSet*)&params[4] = pAnimSet;
		*cast(ScriptString*)&params[8] = GroupName;
		*cast(ScriptString*)&params[20] = SeqName;
		*cast(SoundCue*)&params[32] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayActorFaceFXAnim, params.ptr, cast(void*)0);
	}
	void ClientMessage(ScriptString S, ScriptName Type, float MsgLifeTime)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(ScriptName*)&params[12] = Type;
		*cast(float*)&params[20] = MsgLifeTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientMessage, params.ptr, cast(void*)0);
	}
	bool CanCommunicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanCommunicate, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool AllowTTSMessageFrom(PlayerReplicationInfo PRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowTTSMessageFrom, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	SoundCue CreateTTSSoundCue(ScriptString StrToSpeak, PlayerReplicationInfo PRI)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = StrToSpeak;
		*cast(PlayerReplicationInfo*)&params[12] = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateTTSSoundCue, params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[16];
	}
	void Talk()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Talk, cast(void*)0, cast(void*)0);
	}
	void TeamTalk()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamTalk, cast(void*)0, cast(void*)0);
	}
	void SpeakTTS(ScriptString S, PlayerReplicationInfo PRI)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(PlayerReplicationInfo*)&params[12] = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpeakTTS, params.ptr, cast(void*)0);
	}
	void TeamMessage(PlayerReplicationInfo PRI, ScriptString S, ScriptName Type, float MsgLifeTime)
	{
		ubyte params[28];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(ScriptString*)&params[4] = S;
		*cast(ScriptName*)&params[16] = Type;
		*cast(float*)&params[24] = MsgLifeTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamMessage, params.ptr, cast(void*)0);
	}
	void PlayBeepSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayBeepSound, cast(void*)0, cast(void*)0);
	}
	void RegisterOnlineDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterOnlineDelegates, cast(void*)0, cast(void*)0);
	}
	void OnPartyMemberListChanged(bool bJoinedOrLeft, ScriptString PlayerName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[24];
		params[] = 0;
		*cast(bool*)params.ptr = bJoinedOrLeft;
		*cast(ScriptString*)&params[4] = PlayerName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[16] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPartyMemberListChanged, params.ptr, cast(void*)0);
	}
	void OnPartyMembersInfoChanged(ScriptString PlayerName, OnlineSubsystem.UniqueNetId PlayerID, int CustomData1, int CustomData2, int CustomData3, int CustomData4)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[12] = PlayerID;
		*cast(int*)&params[20] = CustomData1;
		*cast(int*)&params[24] = CustomData2;
		*cast(int*)&params[28] = CustomData3;
		*cast(int*)&params[32] = CustomData4;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPartyMembersInfoChanged, params.ptr, cast(void*)0);
	}
	void ClearOnlineDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearOnlineDelegates, cast(void*)0, cast(void*)0);
	}
	void CleanupPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanupPawn, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void FixFOV()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FixFOV, cast(void*)0, cast(void*)0);
	}
	void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFOV, params.ptr, cast(void*)0);
	}
	void ResetFOV()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetFOV, cast(void*)0, cast(void*)0);
	}
	void FOV(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.FOV, params.ptr, cast(void*)0);
	}
	bool AllowTextMessage(ScriptString msg)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowTextMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void Say(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.Say, params.ptr, cast(void*)0);
	}
	void ServerSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSay, params.ptr, cast(void*)0);
	}
	void ClientAdminMessage(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientAdminMessage, params.ptr, cast(void*)0);
	}
	void TeamSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamSay, params.ptr, cast(void*)0);
	}
	void ServerTeamSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerTeamSay, params.ptr, cast(void*)0);
	}
	void PreClientTravel(ScriptString PendingURL, Actor.ETravelType TravelType, bool bIsSeamlessTravel)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PendingURL;
		*cast(Actor.ETravelType*)&params[12] = TravelType;
		*cast(bool*)&params[16] = bIsSeamlessTravel;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreClientTravel, params.ptr, cast(void*)0);
	}
	UIInteraction GetUIController()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUIController, params.ptr, cast(void*)0);
		return *cast(UIInteraction*)params.ptr;
	}
	// WARNING: Function 'Camera' has the same name as a defined type!
	void ServerCamera(ScriptName NewMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerCamera, params.ptr, cast(void*)0);
	}
	void ClientSetCameraMode(ScriptName NewCamMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewCamMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetCameraMode, params.ptr, cast(void*)0);
	}
	void SetCameraMode(ScriptName NewCamMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewCamMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCameraMode, params.ptr, cast(void*)0);
	}
	void ResetCameraMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetCameraMode, cast(void*)0, cast(void*)0);
	}
	void ClientSetCameraFade(bool bEnableFading, UObject.Color FadeColor, UObject.Vector2D FadeAlpha, float FadeTime)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableFading;
		*cast(UObject.Color*)&params[4] = FadeColor;
		*cast(UObject.Vector2D*)&params[8] = FadeAlpha;
		*cast(float*)&params[16] = FadeTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetCameraFade, params.ptr, cast(void*)0);
	}
	bool UsingFirstPersonCamera()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.UsingFirstPersonCamera, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ForceDeathUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceDeathUpdate, cast(void*)0, cast(void*)0);
	}
	void DualServerMove(float TimeStamp0, Vector InAccel0, ubyte PendingFlags, int View0, float TimeStamp, Vector InAccel, Vector ClientLoc, ubyte NewFlags, ubyte ClientRoll, int View)
	{
		ubyte params[60];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp0;
		*cast(Vector*)&params[4] = InAccel0;
		params[16] = PendingFlags;
		*cast(int*)&params[20] = View0;
		*cast(float*)&params[24] = TimeStamp;
		*cast(Vector*)&params[28] = InAccel;
		*cast(Vector*)&params[40] = ClientLoc;
		params[52] = NewFlags;
		params[53] = ClientRoll;
		*cast(int*)&params[56] = View;
		(cast(ScriptObject)this).ProcessEvent(Functions.DualServerMove, params.ptr, cast(void*)0);
	}
	void OldServerMove(float OldTimeStamp, ubyte OldAccelX, ubyte OldAccelY, ubyte OldAccelZ, ubyte OldMoveFlags)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = OldTimeStamp;
		params[4] = OldAccelX;
		params[5] = OldAccelY;
		params[6] = OldAccelZ;
		params[7] = OldMoveFlags;
		(cast(ScriptObject)this).ProcessEvent(Functions.OldServerMove, params.ptr, cast(void*)0);
	}
	float GetServerMoveDeltaTime(float TimeStamp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerMoveDeltaTime, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void ServerMoveHandleClientError(float TimeStamp, Vector Accel, Vector ClientLoc)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(Vector*)&params[4] = Accel;
		*cast(Vector*)&params[16] = ClientLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerMoveHandleClientError, params.ptr, cast(void*)0);
	}
	void ServerMove(float TimeStamp, Vector InAccel, Vector ClientLoc, ubyte MoveFlags, ubyte ClientRoll, int View)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(Vector*)&params[4] = InAccel;
		*cast(Vector*)&params[16] = ClientLoc;
		params[28] = MoveFlags;
		params[29] = ClientRoll;
		*cast(int*)&params[32] = View;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerMove, params.ptr, cast(void*)0);
	}
	void SendClientAdjustment()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SendClientAdjustment, cast(void*)0, cast(void*)0);
	}
	void ServerDrive(float InForward, float InStrafe, float aUp, bool InJump, int View)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = aUp;
		*cast(bool*)&params[12] = InJump;
		*cast(int*)&params[16] = View;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerDrive, params.ptr, cast(void*)0);
	}
	void ProcessDrive(float InForward, float InStrafe, float InUp, bool InJump)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = InUp;
		*cast(bool*)&params[12] = InJump;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessDrive, params.ptr, cast(void*)0);
	}
	void ProcessMove(float DeltaTime, Vector newAccel, Actor.EDoubleClickDir DoubleClickMove, Rotator DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Vector*)&params[4] = newAccel;
		*cast(Actor.EDoubleClickDir*)&params[16] = DoubleClickMove;
		*cast(Rotator*)&params[20] = DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessMove, params.ptr, cast(void*)0);
	}
	void MoveAutonomous(float DeltaTime, ubyte CompressedFlags, Vector newAccel, Rotator DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		params[4] = CompressedFlags;
		*cast(Vector*)&params[8] = newAccel;
		*cast(Rotator*)&params[20] = DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveAutonomous, params.ptr, cast(void*)0);
	}
	void VeryShortClientAdjustPosition(float TimeStamp, float NewLocX, float NewLocY, float NewLocZ, Actor NewBase)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(float*)&params[4] = NewLocX;
		*cast(float*)&params[8] = NewLocY;
		*cast(float*)&params[12] = NewLocZ;
		*cast(Actor*)&params[16] = NewBase;
		(cast(ScriptObject)this).ProcessEvent(Functions.VeryShortClientAdjustPosition, params.ptr, cast(void*)0);
	}
	void ShortClientAdjustPosition(float TimeStamp, ScriptName NewState, Actor.EPhysics newPhysics, float NewLocX, float NewLocY, float NewLocZ, Actor NewBase)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(ScriptName*)&params[4] = NewState;
		*cast(Actor.EPhysics*)&params[12] = newPhysics;
		*cast(float*)&params[16] = NewLocX;
		*cast(float*)&params[20] = NewLocY;
		*cast(float*)&params[24] = NewLocZ;
		*cast(Actor*)&params[28] = NewBase;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShortClientAdjustPosition, params.ptr, cast(void*)0);
	}
	void ClientCapBandwidth(int Cap)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Cap;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientCapBandwidth, params.ptr, cast(void*)0);
	}
	void ClientAckGoodMove(float TimeStamp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientAckGoodMove, params.ptr, cast(void*)0);
	}
	void UpdatePing(float TimeStamp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePing, params.ptr, cast(void*)0);
	}
	void ClientAdjustPosition(float TimeStamp, ScriptName NewState, Actor.EPhysics newPhysics, float NewLocX, float NewLocY, float NewLocZ, float NewVelX, float NewVelY, float NewVelZ, Actor NewBase)
	{
		ubyte params[44];
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientAdjustPosition, params.ptr, cast(void*)0);
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
	void UpdateStateFromAdjustment(ScriptName NewState)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewState;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateStateFromAdjustment, params.ptr, cast(void*)0);
	}
	void ServerUpdatePing(int NewPing)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewPing;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerUpdatePing, params.ptr, cast(void*)0);
	}
	void ClearAckedMoves()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAckedMoves, cast(void*)0, cast(void*)0);
	}
	void ClientUpdatePosition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientUpdatePosition, cast(void*)0, cast(void*)0);
	}
	SavedMove GetFreeMove()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFreeMove, params.ptr, cast(void*)0);
		return *cast(SavedMove*)params.ptr;
	}
	int CompressAccel(int C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.CompressAccel, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void ReplicateMove(float DeltaTime, Vector newAccel, Actor.EDoubleClickDir DoubleClickMove, Rotator DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Vector*)&params[4] = newAccel;
		*cast(Actor.EDoubleClickDir*)&params[16] = DoubleClickMove;
		*cast(Rotator*)&params[20] = DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicateMove, params.ptr, cast(void*)0);
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
	void HandleWalking()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleWalking, cast(void*)0, cast(void*)0);
	}
	void ServerRestartGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRestartGame, cast(void*)0, cast(void*)0);
	}
	void RestartLevel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RestartLevel, cast(void*)0, cast(void*)0);
	}
	void PauseRumbleForAllPlayers(bool bShouldPauseRumble)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldPauseRumble;
		(cast(ScriptObject)this).ProcessEvent(Functions.PauseRumbleForAllPlayers, params.ptr, cast(void*)0);
	}
	bool CanUnpause()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanUnpause, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SetPause(bool bPause, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* CanUnpauseDelegate)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bPause;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = CanUnpauseDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPause, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool IsPaused()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPaused, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Pause()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Pause, cast(void*)0, cast(void*)0);
	}
	void ServerPause()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerPause, cast(void*)0, cast(void*)0);
	}
	void ConditionalPause(bool bDesiredPauseState)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDesiredPauseState;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConditionalPause, params.ptr, cast(void*)0);
	}
	void ThrowWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ThrowWeapon, cast(void*)0, cast(void*)0);
	}
	void ServerThrowWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerThrowWeapon, cast(void*)0, cast(void*)0);
	}
	void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PrevWeapon, cast(void*)0, cast(void*)0);
	}
	void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NextWeapon, cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFire, params.ptr, cast(void*)0);
	}
	void StartAltFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartAltFire, params.ptr, cast(void*)0);
	}
	void StopAltFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopAltFire, params.ptr, cast(void*)0);
	}
	void GetTriggerUseList(float interactDistanceToCheck, float crosshairDist, float minDot, bool bUsuableOnly, ref ScriptArray!(Trigger) out_useList)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = interactDistanceToCheck;
		*cast(float*)&params[4] = crosshairDist;
		*cast(float*)&params[8] = minDot;
		*cast(bool*)&params[12] = bUsuableOnly;
		*cast(ScriptArray!(Trigger)*)&params[16] = out_useList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTriggerUseList, params.ptr, cast(void*)0);
		*out_useList = *cast(ScriptArray!(Trigger)*)&params[16];
	}
	bool Use()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Use, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ServerUse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerUse, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool PerformedUseAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformedUseAction, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool FindVehicleToDrive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindVehicleToDrive, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool TriggerInteracted()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerInteracted, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Suicide()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Suicide, cast(void*)0, cast(void*)0);
	}
	void ServerSuicide()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSuicide, cast(void*)0, cast(void*)0);
	}
	void SetName(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetName, params.ptr, cast(void*)0);
	}
	void ServerChangeName(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerChangeName, params.ptr, cast(void*)0);
	}
	void SwitchTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchTeam, cast(void*)0, cast(void*)0);
	}
	void ChangeTeam(ScriptString TeamName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TeamName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeTeam, params.ptr, cast(void*)0);
	}
	void ServerChangeTeam(int N)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerChangeTeam, params.ptr, cast(void*)0);
	}
	void ClientSetProgressMessage(PlayerController.EProgressMessageType MessageType, ScriptString Message, ScriptString Title, bool bIgnoreFutureNetworkMessages)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController.EProgressMessageType*)params.ptr = MessageType;
		*cast(ScriptString*)&params[4] = Message;
		*cast(ScriptString*)&params[16] = Title;
		*cast(bool*)&params[28] = bIgnoreFutureNetworkMessages;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetProgressMessage, params.ptr, cast(void*)0);
	}
	void Restart(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.Restart, params.ptr, cast(void*)0);
	}
	void ServerNotifyLoadedWorld(ScriptName WorldPackageName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WorldPackageName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerNotifyLoadedWorld, params.ptr, cast(void*)0);
	}
	void NotifyLoadedWorld(ScriptName WorldPackageName, bool bFinalDest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WorldPackageName;
		*cast(bool*)&params[8] = bFinalDest;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyLoadedWorld, params.ptr, cast(void*)0);
	}
	bool HasClientLoadedCurrentWorld()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasClientLoadedCurrentWorld, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ForceSingleNetUpdateFor(Actor Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceSingleNetUpdateFor, params.ptr, cast(void*)0);
	}
	void EnterStartState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnterStartState, cast(void*)0, cast(void*)0);
	}
	void ClientRestart(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRestart, params.ptr, cast(void*)0);
	}
	void GameHasEnded(Actor EndGameFocus, bool bIsWinner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = EndGameFocus;
		*cast(bool*)&params[4] = bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(Functions.GameHasEnded, params.ptr, cast(void*)0);
	}
	void ClientGameEnded(Actor EndGameFocus, bool bIsWinner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = EndGameFocus;
		*cast(bool*)&params[4] = bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientGameEnded, params.ptr, cast(void*)0);
	}
	void NotifyChangedWeapon(Weapon PreviousWeapon, Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = PreviousWeapon;
		*cast(Weapon*)&params[4] = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyChangedWeapon, params.ptr, cast(void*)0);
	}
	void PlayerTick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerTick, params.ptr, cast(void*)0);
	}
	void PlayerMove(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerMove, params.ptr, cast(void*)0);
	}
	bool AimingHelp(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(Functions.AimingHelp, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void CameraLookAtFinished(SeqAct_CameraLookAt Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_CameraLookAt*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.CameraLookAtFinished, params.ptr, cast(void*)0);
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
	float AimHelpDot(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(Functions.AimHelpDot, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool NotifyLanded(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyLanded, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void AdjustFOV(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustFOV, params.ptr, cast(void*)0);
	}
	bool IsLocalPlayerController()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLocalPlayerController, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		*cast(Camera.ViewTargetTransitionParams*)&params[4] = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewTarget, params.ptr, cast(void*)0);
	}
	void SetViewTargetWithBlend(Actor NewViewTarget, float BlendTime, Camera.EViewTargetBlendFunction BlendFunc, float BlendExp, bool bLockOutgoing)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		*cast(float*)&params[4] = BlendTime;
		*cast(Camera.EViewTargetBlendFunction*)&params[8] = BlendFunc;
		*cast(float*)&params[12] = BlendExp;
		*cast(bool*)&params[16] = bLockOutgoing;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewTargetWithBlend, params.ptr, cast(void*)0);
	}
	void ClientSetViewTarget(Actor A, Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		*cast(Camera.ViewTargetTransitionParams*)&params[4] = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetViewTarget, params.ptr, cast(void*)0);
	}
	void ServerVerifyViewTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerVerifyViewTarget, cast(void*)0, cast(void*)0);
	}
	void SpawnPlayerCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnPlayerCamera, cast(void*)0, cast(void*)0);
	}
	void GetPlayerViewPoint(ref Vector out_Location, ref Rotator out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = out_Location;
		*cast(Rotator*)&params[12] = out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerViewPoint, params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	void ViewShake(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewShake, params.ptr, cast(void*)0);
	}
	void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRotation, params.ptr, cast(void*)0);
	}
	void ProcessViewRotation(float DeltaTime, ref Rotator out_ViewRotation, Rotator DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = out_ViewRotation;
		*cast(Rotator*)&params[16] = DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
	}
	Rotator LimitViewRotation(Rotator ViewRotation, float ViewPitchMin, float ViewPitchMax)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Rotator*)params.ptr = ViewRotation;
		*cast(float*)&params[12] = ViewPitchMin;
		*cast(float*)&params[16] = ViewPitchMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.LimitViewRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[20];
	}
	void CheckJumpOrDuck()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckJumpOrDuck, cast(void*)0, cast(void*)0);
	}
	bool IsSpectating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsSpectating, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ServerSetSpectatorLocation(Vector NewLoc)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetSpectatorLocation, params.ptr, cast(void*)0);
	}
	void ServerViewNextPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewNextPlayer, cast(void*)0, cast(void*)0);
	}
	void ServerViewPrevPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewPrevPlayer, cast(void*)0, cast(void*)0);
	}
	void ViewAPlayer(int Dir)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewAPlayer, params.ptr, cast(void*)0);
	}
	void ServerViewSelf(Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Camera.ViewTargetTransitionParams*)params.ptr = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewSelf, params.ptr, cast(void*)0);
	}
	bool IsWaiting()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsWaiting, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanRestartPlayer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanRestartPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawHUD, params.ptr, cast(void*)0);
	}
	void OnToggleInput(SeqAct_ToggleInput inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleInput*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggleInput, params.ptr, cast(void*)0);
	}
	void ClientIgnoreMoveInput(bool bIgnore)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIgnore;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientIgnoreMoveInput, params.ptr, cast(void*)0);
	}
	void ClientIgnoreLookInput(bool bIgnore)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIgnore;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientIgnoreLookInput, params.ptr, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void OnDrawText(SeqAct_DrawText inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_DrawText*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDrawText, params.ptr, cast(void*)0);
	}
	void ClientDrawKismetText(HUD.KismetDrawTextInfo DrawTextInfo, float DisplayTime)
	{
		ubyte params[56];
		params[] = 0;
		*cast(HUD.KismetDrawTextInfo*)params.ptr = DrawTextInfo;
		*cast(float*)&params[52] = DisplayTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientDrawKismetText, params.ptr, cast(void*)0);
	}
	void ClientClearKismetText(UObject.Vector2D MessageOffset)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = MessageOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientClearKismetText, params.ptr, cast(void*)0);
	}
	void OnSetCameraTarget(SeqAct_SetCameraTarget inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetCameraTarget*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetCameraTarget, params.ptr, cast(void*)0);
	}
	void OnToggleHUD(SeqAct_ToggleHUD inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleHUD*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggleHUD, params.ptr, cast(void*)0);
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
	void OnForceFeedback(SeqAct_ForceFeedback Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ForceFeedback*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnForceFeedback, params.ptr, cast(void*)0);
	}
	void ClientStopForceFeedbackWaveform(ForceFeedbackWaveform FFWaveform)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ForceFeedbackWaveform*)params.ptr = FFWaveform;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientStopForceFeedbackWaveform, params.ptr, cast(void*)0);
	}
	void PlayRumble(const AnimNotify_Rumble TheAnimNotify)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNotify_Rumble*)params.ptr = TheAnimNotify;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRumble, params.ptr, cast(void*)0);
	}
	void ClientPlayForceFeedbackWaveform(ForceFeedbackWaveform FFWaveform, Actor FFWaveformInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ForceFeedbackWaveform*)params.ptr = FFWaveform;
		*cast(Actor*)&params[4] = FFWaveformInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayForceFeedbackWaveform, params.ptr, cast(void*)0);
	}
	bool IsForceFeedbackAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsForceFeedbackAllowed, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnToggleCinematicMode(SeqAct_ToggleCinematicMode Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleCinematicMode*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggleCinematicMode, params.ptr, cast(void*)0);
	}
	void SetCinematicMode(bool bInCinematicMode, bool bHidePlayer, bool bAffectsHUD, bool bAffectsMovement, bool bAffectsTurning, bool bAffectsButtons)
	{
		ubyte params[24];
		params[] = 0;
		*cast(bool*)params.ptr = bInCinematicMode;
		*cast(bool*)&params[4] = bHidePlayer;
		*cast(bool*)&params[8] = bAffectsHUD;
		*cast(bool*)&params[12] = bAffectsMovement;
		*cast(bool*)&params[16] = bAffectsTurning;
		*cast(bool*)&params[20] = bAffectsButtons;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCinematicMode, params.ptr, cast(void*)0);
	}
	void ClientSetCinematicMode(bool bInCinematicMode, bool bAffectsMovement, bool bAffectsTurning, bool bAffectsHUD)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bInCinematicMode;
		*cast(bool*)&params[4] = bAffectsMovement;
		*cast(bool*)&params[8] = bAffectsTurning;
		*cast(bool*)&params[12] = bAffectsHUD;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetCinematicMode, params.ptr, cast(void*)0);
	}
	void IgnoreMoveInput(bool bNewMoveInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewMoveInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.IgnoreMoveInput, params.ptr, cast(void*)0);
	}
	bool IsMoveInputIgnored()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsMoveInputIgnored, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void IgnoreLookInput(bool bNewLookInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewLookInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.IgnoreLookInput, params.ptr, cast(void*)0);
	}
	bool IsLookInputIgnored()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLookInputIgnored, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ResetPlayerMovementInput()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetPlayerMovementInput, cast(void*)0, cast(void*)0);
	}
	void OnConsoleCommand(SeqAct_ConsoleCommand inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ConsoleCommand*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnConsoleCommand, params.ptr, cast(void*)0);
	}
	void ClientForceGarbageCollection()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientForceGarbageCollection, cast(void*)0, cast(void*)0);
	}
	void LevelStreamingStatusChanged(LevelStreaming LevelObject, bool bNewShouldBeLoaded, bool bNewShouldBeVisible, bool bNewShouldBlockOnLoad)
	{
		ubyte params[16];
		params[] = 0;
		*cast(LevelStreaming*)params.ptr = LevelObject;
		*cast(bool*)&params[4] = bNewShouldBeLoaded;
		*cast(bool*)&params[8] = bNewShouldBeVisible;
		*cast(bool*)&params[12] = bNewShouldBlockOnLoad;
		(cast(ScriptObject)this).ProcessEvent(Functions.LevelStreamingStatusChanged, params.ptr, cast(void*)0);
	}
	void ClientUpdateLevelStreamingStatus(ScriptName PackageName, bool bNewShouldBeLoaded, bool bNewShouldBeVisible, bool bNewShouldBlockOnLoad)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PackageName;
		*cast(bool*)&params[8] = bNewShouldBeLoaded;
		*cast(bool*)&params[12] = bNewShouldBeVisible;
		*cast(bool*)&params[16] = bNewShouldBlockOnLoad;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientUpdateLevelStreamingStatus, params.ptr, cast(void*)0);
	}
	void ServerUpdateLevelVisibility(ScriptName PackageName, bool bIsVisible)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PackageName;
		*cast(bool*)&params[8] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerUpdateLevelVisibility, params.ptr, cast(void*)0);
	}
	void ClientPrepareMapChange(ScriptName LevelName, bool bFirst, bool bLast)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = LevelName;
		*cast(bool*)&params[8] = bFirst;
		*cast(bool*)&params[12] = bLast;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPrepareMapChange, params.ptr, cast(void*)0);
	}
	void DelayedPrepareMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DelayedPrepareMapChange, cast(void*)0, cast(void*)0);
	}
	void ClientCommitMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientCommitMapChange, cast(void*)0, cast(void*)0);
	}
	void ClientCancelPendingMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientCancelPendingMapChange, cast(void*)0, cast(void*)0);
	}
	void ClientFlushLevelStreaming()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientFlushLevelStreaming, cast(void*)0, cast(void*)0);
	}
	void ClientSetBlockOnAsyncLoading()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetBlockOnAsyncLoading, cast(void*)0, cast(void*)0);
	}
	bool IsPlayerMuted(ref const OnlineSubsystem.UniqueNetId Sender)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = Sender;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPlayerMuted, params.ptr, cast(void*)0);
		*Sender = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(bool*)&params[8];
	}
	void GetSeamlessTravelActorList(bool bToEntry, ref ScriptArray!(Actor) ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = ActorList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeamlessTravelActorList, params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	void SeamlessTravelTo(PlayerController NewPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = NewPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeamlessTravelTo, params.ptr, cast(void*)0);
	}
	void SeamlessTravelFrom(PlayerController OldPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = OldPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeamlessTravelFrom, params.ptr, cast(void*)0);
	}
	void ClientSetOnlineStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetOnlineStatus, cast(void*)0, cast(void*)0);
	}
	static PlayerController GetPlayerControllerFromNetId(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		StaticClass.ProcessEvent(Functions.GetPlayerControllerFromNetId, params.ptr, cast(void*)0);
		return *cast(PlayerController*)&params[8];
	}
	void ClientVoiceHandshakeComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientVoiceHandshakeComplete, cast(void*)0, cast(void*)0);
	}
	void ClientMutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientMutePlayer, params.ptr, cast(void*)0);
	}
	void ClientUnmutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientUnmutePlayer, params.ptr, cast(void*)0);
	}
	void GameplayMutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GameplayMutePlayer, params.ptr, cast(void*)0);
	}
	void GameplayUnmutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GameplayUnmutePlayer, params.ptr, cast(void*)0);
	}
	void ServerMutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerMutePlayer, params.ptr, cast(void*)0);
	}
	void ServerUnmutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerUnmutePlayer, params.ptr, cast(void*)0);
	}
	void NotifyDirectorControl(bool bNowControlling)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowControlling;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyDirectorControl, params.ptr, cast(void*)0);
	}
	void SetShowSubtitles(bool bValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetShowSubtitles, params.ptr, cast(void*)0);
	}
	bool IsShowingSubtitles()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsShowingSubtitles, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClientWasKicked()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWasKicked, cast(void*)0, cast(void*)0);
	}
	void ClientRegisterForArbitration()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRegisterForArbitration, cast(void*)0, cast(void*)0);
	}
	void OnArbitrationRegisterComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnArbitrationRegisterComplete, params.ptr, cast(void*)0);
	}
	void ServerRegisteredForArbitration(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRegisteredForArbitration, params.ptr, cast(void*)0);
	}
	void OnGameInviteAccepted(ref const OnlineGameSearch.OnlineGameSearchResult InviteResult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = InviteResult;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameInviteAccepted, params.ptr, cast(void*)0);
		*InviteResult = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
	}
	bool InviteHasEnoughSpace(OnlineGameSettings InviteSettings)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSettings*)params.ptr = InviteSettings;
		(cast(ScriptObject)this).ProcessEvent(Functions.InviteHasEnoughSpace, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CanAllPlayersPlayOnline()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanAllPlayersPlayOnline, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearInviteDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearInviteDelegates, cast(void*)0, cast(void*)0);
	}
	void OnEndForInviteComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEndForInviteComplete, params.ptr, cast(void*)0);
	}
	void OnDestroyForInviteComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDestroyForInviteComplete, params.ptr, cast(void*)0);
	}
	ScriptString ModifyClientURL(ScriptString pURL)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyClientURL, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void OnInviteJoinComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnInviteJoinComplete, params.ptr, cast(void*)0);
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
	void ClientArbitratedMatchEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientArbitratedMatchEnded, cast(void*)0, cast(void*)0);
	}
	void ClientWriteOnlinePlayerScores(int LeaderboardId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = LeaderboardId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWriteOnlinePlayerScores, params.ptr, cast(void*)0);
	}
	void ClientWriteLeaderboardStats(ScriptClass OnlineStatsWriteClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = OnlineStatsWriteClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWriteLeaderboardStats, params.ptr, cast(void*)0);
	}
	void ClientSetHostUniqueId(OnlineSubsystem.UniqueNetId InHostId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = InHostId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetHostUniqueId, params.ptr, cast(void*)0);
	}
	void ClientStopNetworkedVoice()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientStopNetworkedVoice, cast(void*)0, cast(void*)0);
	}
	void ClientStartNetworkedVoice()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientStartNetworkedVoice, cast(void*)0, cast(void*)0);
	}
	void OnDestroy(SeqAct_Destroy Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Destroy*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDestroy, params.ptr, cast(void*)0);
	}
	void DrawDebugTextList(Canvas pCanvas, float RenderDelta)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = RenderDelta;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawDebugTextList, params.ptr, cast(void*)0);
	}
	void AddDebugText(ScriptString DebugText, Actor SrcActor, float Duration, Vector Offset, Vector DesiredOffset, UObject.Color TextColor, bool bSkipOverwriteCheck, bool bAbsoluteLocation, bool bKeepAttachedToActor, Font InFont)
	{
		ubyte params[64];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DebugText;
		*cast(Actor*)&params[12] = SrcActor;
		*cast(float*)&params[16] = Duration;
		*cast(Vector*)&params[20] = Offset;
		*cast(Vector*)&params[32] = DesiredOffset;
		*cast(UObject.Color*)&params[44] = TextColor;
		*cast(bool*)&params[48] = bSkipOverwriteCheck;
		*cast(bool*)&params[52] = bAbsoluteLocation;
		*cast(bool*)&params[56] = bKeepAttachedToActor;
		*cast(Font*)&params[60] = InFont;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDebugText, params.ptr, cast(void*)0);
	}
	void RemoveDebugText(Actor SrcActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = SrcActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveDebugText, params.ptr, cast(void*)0);
	}
	void RemoveAllDebugStrings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveAllDebugStrings, cast(void*)0, cast(void*)0);
	}
	void ClientRegisterHostStatGuid(ScriptString StatGuid)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = StatGuid;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRegisterHostStatGuid, params.ptr, cast(void*)0);
	}
	void OnRegisterHostStatGuidComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRegisterHostStatGuidComplete, params.ptr, cast(void*)0);
	}
	void ServerRegisterClientStatGuid(ScriptString StatGuid)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = StatGuid;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRegisterClientStatGuid, params.ptr, cast(void*)0);
	}
	void ClientStartOnlineGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientStartOnlineGame, cast(void*)0, cast(void*)0);
	}
	void ClientEndOnlineGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientEndOnlineGame, cast(void*)0, cast(void*)0);
	}
	bool CanViewUserCreatedContent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanViewUserCreatedContent, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void IncrementNumberOfMatchesPlayed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementNumberOfMatchesPlayed, cast(void*)0, cast(void*)0);
	}
	void SoakPause(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.SoakPause, params.ptr, cast(void*)0);
	}
	void ClientTravelToSession(ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientTravelToSession, params.ptr, cast(void*)0);
	}
	void OnJoinTravelToSessionComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnJoinTravelToSessionComplete, params.ptr, cast(void*)0);
	}
	void ClientReturnToParty(OnlineSubsystem.UniqueNetId RequestingPlayerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = RequestingPlayerId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReturnToParty, params.ptr, cast(void*)0);
	}
	bool IsSplitscreenPlayer(int* out_SplitscreenPlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = out_SplitscreenPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsSplitscreenPlayer, params.ptr, cast(void*)0);
		*out_SplitscreenPlayerIndex = *cast(int*)params.ptr;
		return *cast(bool*)&params[4];
	}
	PlayerReplicationInfo GetSplitscreenPlayerByIndex(int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSplitscreenPlayerByIndex, params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)&params[4];
	}
	int GetSplitscreenPlayerCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSplitscreenPlayerCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void ClientControlMovieTexture(TextureMovie MovieTexture, SeqAct_ControlMovieTexture.EMovieControlType Mode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TextureMovie*)params.ptr = MovieTexture;
		*cast(SeqAct_ControlMovieTexture.EMovieControlType*)&params[4] = Mode;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientControlMovieTexture, params.ptr, cast(void*)0);
	}
	void ClientSetForceMipLevelsToBeResident(MaterialInterface pMaterial, float ForceDuration, int CinematicTextureGroups)
	{
		ubyte params[12];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = pMaterial;
		*cast(float*)&params[4] = ForceDuration;
		*cast(int*)&params[8] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetForceMipLevelsToBeResident, params.ptr, cast(void*)0);
	}
	void ClientPrestreamTextures(Actor ForcedActor, float ForceDuration, bool bEnableStreaming, int CinematicTextureGroups)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = ForcedActor;
		*cast(float*)&params[4] = ForceDuration;
		*cast(bool*)&params[8] = bEnableStreaming;
		*cast(int*)&params[12] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPrestreamTextures, params.ptr, cast(void*)0);
	}
	bool IsPartyLeader()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPartyLeader, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static ScriptString GetPartyMapName()
	{
		ubyte params[12];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetPartyMapName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	static ScriptString GetPartyGameTypeName()
	{
		ubyte params[12];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetPartyGameTypeName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool GetAchievementProgression(int AchievementId, ref float CurrentValue, ref float MaxValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = AchievementId;
		*cast(float*)&params[4] = CurrentValue;
		*cast(float*)&params[8] = MaxValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAchievementProgression, params.ptr, cast(void*)0);
		*CurrentValue = *cast(float*)&params[4];
		*MaxValue = *cast(float*)&params[8];
		return *cast(bool*)&params[12];
	}
	void OnFlyThroughHasEnded(SeqAct_FlyThroughHasEnded inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_FlyThroughHasEnded*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFlyThroughHasEnded, params.ptr, cast(void*)0);
	}
	void Sentinel_SetupForGamebasedTravelTheWorld()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Sentinel_SetupForGamebasedTravelTheWorld, cast(void*)0, cast(void*)0);
	}
	void Sentinel_PreAcquireTravelTheWorldPoints()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Sentinel_PreAcquireTravelTheWorldPoints, cast(void*)0, cast(void*)0);
	}
	void Sentinel_PostAcquireTravelTheWorldPoints()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Sentinel_PostAcquireTravelTheWorldPoints, cast(void*)0, cast(void*)0);
	}
	void InputMatchDelegate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InputMatchDelegate, cast(void*)0, cast(void*)0);
	}
	void DoForceFeedbackForScreenShake(CameraShake ShakeData, float ShakeScale)
	{
		ubyte params[8];
		params[] = 0;
		*cast(CameraShake*)params.ptr = ShakeData;
		*cast(float*)&params[4] = ShakeScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoForceFeedbackForScreenShake, params.ptr, cast(void*)0);
	}
	void ClientPlayCameraShake(CameraShake Shake, float Scale, bool bTryForceFeedback, Camera.ECameraAnimPlaySpace PlaySpace, Rotator UserPlaySpaceRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		*cast(float*)&params[4] = Scale;
		*cast(bool*)&params[8] = bTryForceFeedback;
		*cast(Camera.ECameraAnimPlaySpace*)&params[12] = PlaySpace;
		*cast(Rotator*)&params[16] = UserPlaySpaceRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayCameraShake, params.ptr, cast(void*)0);
	}
	void ClientStopCameraShake(CameraShake Shake)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientStopCameraShake, params.ptr, cast(void*)0);
	}
	void OnCameraShake(SeqAct_CameraShake inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_CameraShake*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCameraShake, params.ptr, cast(void*)0);
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
	void ClientSpawnCameraLensEffect(ScriptClass LensEffectEmitterClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = LensEffectEmitterClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSpawnCameraLensEffect, params.ptr, cast(void*)0);
	}
	void OnSetSoundMode(SeqAct_SetSoundMode Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetSoundMode*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetSoundMode, params.ptr, cast(void*)0);
	}
	bool HasPeerConnection(ref const OnlineSubsystem.UniqueNetId PeerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasPeerConnection, params.ptr, cast(void*)0);
		*PeerNetId = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(bool*)&params[8];
	}
	void BugItGo(float X, float Y, float Z, int Pitch, int Yaw, int Roll)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Z;
		*cast(int*)&params[12] = Pitch;
		*cast(int*)&params[16] = Yaw;
		*cast(int*)&params[20] = Roll;
		(cast(ScriptObject)this).ProcessEvent(Functions.BugItGo, params.ptr, cast(void*)0);
	}
	void BugItGoString(ScriptString TheLocation, ScriptString TheRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TheLocation;
		*cast(ScriptString*)&params[12] = TheRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.BugItGoString, params.ptr, cast(void*)0);
	}
	void BugItWorker(Vector TheLocation, Rotator TheRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = TheLocation;
		*cast(Rotator*)&params[12] = TheRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.BugItWorker, params.ptr, cast(void*)0);
	}
	void BugIt(ScriptString ScreenShotDescription)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ScreenShotDescription;
		(cast(ScriptObject)this).ProcessEvent(Functions.BugIt, params.ptr, cast(void*)0);
	}
	void LogOutBugItGoToLogFile(const ScriptString InScreenShotDesc, const ScriptString InGoString, const ScriptString InLocString)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InScreenShotDesc;
		*cast(ScriptString*)&params[12] = InGoString;
		*cast(ScriptString*)&params[24] = InLocString;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogOutBugItGoToLogFile, params.ptr, cast(void*)0);
	}
	void LogLoc()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LogLoc, cast(void*)0, cast(void*)0);
	}
	void BugItAI(ScriptString ScreenShotDescription)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ScreenShotDescription;
		(cast(ScriptObject)this).ProcessEvent(Functions.BugItAI, params.ptr, cast(void*)0);
	}
	void LogOutBugItAIGoToLogFile(const ScriptString InScreenShotDesc, const ScriptString InGoString, const ScriptString InLocString)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InScreenShotDesc;
		*cast(ScriptString*)&params[12] = InGoString;
		*cast(ScriptString*)&params[24] = InLocString;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogOutBugItAIGoToLogFile, params.ptr, cast(void*)0);
	}
	void BugItStringCreator(ref const Vector ViewLocation, ref const Rotator ViewRotation, ref ScriptString GoString, ref ScriptString LocString)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = ViewLocation;
		*cast(Rotator*)&params[12] = ViewRotation;
		*cast(ScriptString*)&params[24] = GoString;
		*cast(ScriptString*)&params[36] = LocString;
		(cast(ScriptObject)this).ProcessEvent(Functions.BugItStringCreator, params.ptr, cast(void*)0);
		*ViewLocation = *cast(Vector*)params.ptr;
		*ViewRotation = *cast(Rotator*)&params[12];
		*GoString = *cast(ScriptString*)&params[24];
		*LocString = *cast(ScriptString*)&params[36];
	}
	void OnEngineInitialTick()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEngineInitialTick, cast(void*)0, cast(void*)0);
	}
	void DisableDebugAI()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableDebugAI, cast(void*)0, cast(void*)0);
	}
	void ReceivedGameClass(ScriptClass GameClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GameClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedGameClass, params.ptr, cast(void*)0);
	}
}
