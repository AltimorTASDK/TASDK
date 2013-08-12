module UnrealScript.Engine.PlayerController;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PlayerController")); }
	private static __gshared PlayerController mDefaultProperties;
	@property final static PlayerController DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PlayerController)("PlayerController Engine.Default__PlayerController")); }
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
			ScriptFunction GetFOVAngle() { return mGetFOVAngle ? mGetFOVAngle : (mGetFOVAngle = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetFOVAngle")); }
			ScriptFunction GetPlayerNetworkAddress() { return mGetPlayerNetworkAddress ? mGetPlayerNetworkAddress : (mGetPlayerNetworkAddress = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetPlayerNetworkAddress")); }
			ScriptFunction GetViewTarget() { return mGetViewTarget ? mGetViewTarget : (mGetViewTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetViewTarget")); }
			ScriptFunction IsPrimaryPlayer() { return mIsPrimaryPlayer ? mIsPrimaryPlayer : (mIsPrimaryPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsPrimaryPlayer")); }
			ScriptFunction SetNetSpeed() { return mSetNetSpeed ? mSetNetSpeed : (mSetNetSpeed = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetNetSpeed")); }
			ScriptFunction GetServerNetworkAddress() { return mGetServerNetworkAddress ? mGetServerNetworkAddress : (mGetServerNetworkAddress = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetServerNetworkAddress")); }
			ScriptFunction ConsoleCommand() { return mConsoleCommand ? mConsoleCommand : (mConsoleCommand = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ConsoleCommand")); }
			ScriptFunction ClientTravel() { return mClientTravel ? mClientTravel : (mClientTravel = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientTravel")); }
			ScriptFunction UpdateURL() { return mUpdateURL ? mUpdateURL : (mUpdateURL = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.UpdateURL")); }
			ScriptFunction GetDefaultURL() { return mGetDefaultURL ? mGetDefaultURL : (mGetDefaultURL = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetDefaultURL")); }
			ScriptFunction CopyToClipboard() { return mCopyToClipboard ? mCopyToClipboard : (mCopyToClipboard = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CopyToClipboard")); }
			ScriptFunction PasteFromClipboard() { return mPasteFromClipboard ? mPasteFromClipboard : (mPasteFromClipboard = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PasteFromClipboard")); }
			ScriptFunction SetAllowMatureLanguage() { return mSetAllowMatureLanguage ? mSetAllowMatureLanguage : (mSetAllowMatureLanguage = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetAllowMatureLanguage")); }
			ScriptFunction SetAudioGroupVolume() { return mSetAudioGroupVolume ? mSetAudioGroupVolume : (mSetAudioGroupVolume = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetAudioGroupVolume")); }
			ScriptFunction ClientConvolve() { return mClientConvolve ? mClientConvolve : (mClientConvolve = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientConvolve")); }
			ScriptFunction ServerProcessConvolve() { return mServerProcessConvolve ? mServerProcessConvolve : (mServerProcessConvolve = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerProcessConvolve")); }
			ScriptFunction CheckSpeedHack() { return mCheckSpeedHack ? mCheckSpeedHack : (mCheckSpeedHack = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CheckSpeedHack")); }
			ScriptFunction FindStairRotation() { return mFindStairRotation ? mFindStairRotation : (mFindStairRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.FindStairRotation")); }
			ScriptFunction CleanUpAudioComponents() { return mCleanUpAudioComponents ? mCleanUpAudioComponents : (mCleanUpAudioComponents = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CleanUpAudioComponents")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.FellOutOfWorld")); }
			ScriptFunction ForceClearUnpauseDelegates() { return mForceClearUnpauseDelegates ? mForceClearUnpauseDelegates : (mForceClearUnpauseDelegates = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ForceClearUnpauseDelegates")); }
			ScriptFunction OnExternalUIChanged() { return mOnExternalUIChanged ? mOnExternalUIChanged : (mOnExternalUIChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnExternalUIChanged")); }
			ScriptFunction CanUnpauseExternalUI() { return mCanUnpauseExternalUI ? mCanUnpauseExternalUI : (mCanUnpauseExternalUI = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CanUnpauseExternalUI")); }
			ScriptFunction OnControllerChanged() { return mOnControllerChanged ? mOnControllerChanged : (mOnControllerChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnControllerChanged")); }
			ScriptFunction CanUnpauseControllerConnected() { return mCanUnpauseControllerConnected ? mCanUnpauseControllerConnected : (mCanUnpauseControllerConnected = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CanUnpauseControllerConnected")); }
			ScriptFunction SpawnCoverReplicator() { return mSpawnCoverReplicator ? mSpawnCoverReplicator : (mSpawnCoverReplicator = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SpawnCoverReplicator")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PostBeginPlay")); }
			ScriptFunction ReceivedPlayer() { return mReceivedPlayer ? mReceivedPlayer : (mReceivedPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ReceivedPlayer")); }
			ScriptFunction RegisterPlayerDataStores() { return mRegisterPlayerDataStores ? mRegisterPlayerDataStores : (mRegisterPlayerDataStores = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.RegisterPlayerDataStores")); }
			ScriptFunction FindConnectedPeerIndex() { return mFindConnectedPeerIndex ? mFindConnectedPeerIndex : (mFindConnectedPeerIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.FindConnectedPeerIndex")); }
			ScriptFunction AddPeer() { return mAddPeer ? mAddPeer : (mAddPeer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.AddPeer")); }
			ScriptFunction RemovePeer() { return mRemovePeer ? mRemovePeer : (mRemovePeer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.RemovePeer")); }
			ScriptFunction ServerAddPeer() { return mServerAddPeer ? mServerAddPeer : (mServerAddPeer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerAddPeer")); }
			ScriptFunction ServerRemovePeer() { return mServerRemovePeer ? mServerRemovePeer : (mServerRemovePeer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerRemovePeer")); }
			ScriptFunction ClientUpdateBestNextHosts() { return mClientUpdateBestNextHosts ? mClientUpdateBestNextHosts : (mClientUpdateBestNextHosts = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientUpdateBestNextHosts")); }
			ScriptFunction NotifyPeerDisconnectHost() { return mNotifyPeerDisconnectHost ? mNotifyPeerDisconnectHost : (mNotifyPeerDisconnectHost = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.NotifyPeerDisconnectHost")); }
			ScriptFunction IsBestHostPeer() { return mIsBestHostPeer ? mIsBestHostPeer : (mIsBestHostPeer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsBestHostPeer")); }
			ScriptFunction MigrateNewHost() { return mMigrateNewHost ? mMigrateNewHost : (mMigrateNewHost = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.MigrateNewHost")); }
			ScriptFunction OnEndGameForHostMigrate() { return mOnEndGameForHostMigrate ? mOnEndGameForHostMigrate : (mOnEndGameForHostMigrate = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnEndGameForHostMigrate")); }
			ScriptFunction GetRegisteredPlayersInSession() { return mGetRegisteredPlayersInSession ? mGetRegisteredPlayersInSession : (mGetRegisteredPlayersInSession = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetRegisteredPlayersInSession")); }
			ScriptFunction RemoveMissingPeersFromSession() { return mRemoveMissingPeersFromSession ? mRemoveMissingPeersFromSession : (mRemoveMissingPeersFromSession = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.RemoveMissingPeersFromSession")); }
			ScriptFunction OnUnregisterPlayerCompleteForMigrate() { return mOnUnregisterPlayerCompleteForMigrate ? mOnUnregisterPlayerCompleteForMigrate : (mOnUnregisterPlayerCompleteForMigrate = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnUnregisterPlayerCompleteForMigrate")); }
			ScriptFunction OnHostMigratedOnlineGame() { return mOnHostMigratedOnlineGame ? mOnHostMigratedOnlineGame : (mOnHostMigratedOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnHostMigratedOnlineGame")); }
			ScriptFunction GetCurrentSearchClass() { return mGetCurrentSearchClass ? mGetCurrentSearchClass : (mGetCurrentSearchClass = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetCurrentSearchClass")); }
			ScriptFunction PeerDesignatedAsHost() { return mPeerDesignatedAsHost ? mPeerDesignatedAsHost : (mPeerDesignatedAsHost = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PeerDesignatedAsHost")); }
			ScriptFunction PeerTravelAsHost() { return mPeerTravelAsHost ? mPeerTravelAsHost : (mPeerTravelAsHost = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PeerTravelAsHost")); }
			ScriptFunction TellPeerToTravel() { return mTellPeerToTravel ? mTellPeerToTravel : (mTellPeerToTravel = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.TellPeerToTravel")); }
			ScriptFunction TellPeerToTravelToSession() { return mTellPeerToTravelToSession ? mTellPeerToTravelToSession : (mTellPeerToTravelToSession = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.TellPeerToTravelToSession")); }
			ScriptFunction PeerReceivedMigratedSession() { return mPeerReceivedMigratedSession ? mPeerReceivedMigratedSession : (mPeerReceivedMigratedSession = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PeerReceivedMigratedSession")); }
			ScriptFunction OnEndGameForJoinMigrate() { return mOnEndGameForJoinMigrate ? mOnEndGameForJoinMigrate : (mOnEndGameForJoinMigrate = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnEndGameForJoinMigrate")); }
			ScriptFunction OnJoinMigratedGame() { return mOnJoinMigratedGame ? mOnJoinMigratedGame : (mOnJoinMigratedGame = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnJoinMigratedGame")); }
			ScriptFunction PreRender() { return mPreRender ? mPreRender : (mPreRender = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PreRender")); }
			ScriptFunction ResetTimeMargin() { return mResetTimeMargin ? mResetTimeMargin : (mResetTimeMargin = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ResetTimeMargin")); }
			ScriptFunction ServerShortTimeout() { return mServerShortTimeout ? mServerShortTimeout : (mServerShortTimeout = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerShortTimeout")); }
			ScriptFunction ServerGivePawn() { return mServerGivePawn ? mServerGivePawn : (mServerGivePawn = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerGivePawn")); }
			ScriptFunction KickWarning() { return mKickWarning ? mKickWarning : (mKickWarning = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.KickWarning")); }
			ScriptFunction AddCheats() { return mAddCheats ? mAddCheats : (mAddCheats = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.AddCheats")); }
			ScriptFunction EnableCheats() { return mEnableCheats ? mEnableCheats : (mEnableCheats = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.EnableCheats")); }
			ScriptFunction SpawnDefaultHUD() { return mSpawnDefaultHUD ? mSpawnDefaultHUD : (mSpawnDefaultHUD = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SpawnDefaultHUD")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Reset")); }
			ScriptFunction ClientReset() { return mClientReset ? mClientReset : (mClientReset = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientReset")); }
			ScriptFunction CleanOutSavedMoves() { return mCleanOutSavedMoves ? mCleanOutSavedMoves : (mCleanOutSavedMoves = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CleanOutSavedMoves")); }
			ScriptFunction PreControllerIdChange() { return mPreControllerIdChange ? mPreControllerIdChange : (mPreControllerIdChange = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PreControllerIdChange")); }
			ScriptFunction PostControllerIdChange() { return mPostControllerIdChange ? mPostControllerIdChange : (mPostControllerIdChange = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PostControllerIdChange")); }
			ScriptFunction GetOnlineSubsystem() { return mGetOnlineSubsystem ? mGetOnlineSubsystem : (mGetOnlineSubsystem = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetOnlineSubsystem")); }
			ScriptFunction InitInputSystem() { return mInitInputSystem ? mInitInputSystem : (mInitInputSystem = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.InitInputSystem")); }
			ScriptFunction ClientInitializeDataStores() { return mClientInitializeDataStores ? mClientInitializeDataStores : (mClientInitializeDataStores = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientInitializeDataStores")); }
			ScriptFunction RegisterCustomPlayerDataStores() { return mRegisterCustomPlayerDataStores ? mRegisterCustomPlayerDataStores : (mRegisterCustomPlayerDataStores = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.RegisterCustomPlayerDataStores")); }
			ScriptFunction RegisterStandardPlayerDataStores() { return mRegisterStandardPlayerDataStores ? mRegisterStandardPlayerDataStores : (mRegisterStandardPlayerDataStores = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.RegisterStandardPlayerDataStores")); }
			ScriptFunction UnregisterPlayerDataStores() { return mUnregisterPlayerDataStores ? mUnregisterPlayerDataStores : (mUnregisterPlayerDataStores = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.UnregisterPlayerDataStores")); }
			ScriptFunction UnregisterStandardPlayerDataStores() { return mUnregisterStandardPlayerDataStores ? mUnregisterStandardPlayerDataStores : (mUnregisterStandardPlayerDataStores = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.UnregisterStandardPlayerDataStores")); }
			ScriptFunction ReloadProfileSettings() { return mReloadProfileSettings ? mReloadProfileSettings : (mReloadProfileSettings = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ReloadProfileSettings")); }
			ScriptFunction SetRumbleScale() { return mSetRumbleScale ? mSetRumbleScale : (mSetRumbleScale = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetRumbleScale")); }
			ScriptFunction IsControllerTiltActive() { return mIsControllerTiltActive ? mIsControllerTiltActive : (mIsControllerTiltActive = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsControllerTiltActive")); }
			ScriptFunction SetControllerTiltDesiredIfAvailable() { return mSetControllerTiltDesiredIfAvailable ? mSetControllerTiltDesiredIfAvailable : (mSetControllerTiltDesiredIfAvailable = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetControllerTiltDesiredIfAvailable")); }
			ScriptFunction SetControllerTiltActive() { return mSetControllerTiltActive ? mSetControllerTiltActive : (mSetControllerTiltActive = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetControllerTiltActive")); }
			ScriptFunction SetOnlyUseControllerTiltInput() { return mSetOnlyUseControllerTiltInput ? mSetOnlyUseControllerTiltInput : (mSetOnlyUseControllerTiltInput = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetOnlyUseControllerTiltInput")); }
			ScriptFunction SetUseTiltForwardAndBack() { return mSetUseTiltForwardAndBack ? mSetUseTiltForwardAndBack : (mSetUseTiltForwardAndBack = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetUseTiltForwardAndBack")); }
			ScriptFunction IsKeyboardAvailable() { return mIsKeyboardAvailable ? mIsKeyboardAvailable : (mIsKeyboardAvailable = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsKeyboardAvailable")); }
			ScriptFunction IsMouseAvailable() { return mIsMouseAvailable ? mIsMouseAvailable : (mIsMouseAvailable = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsMouseAvailable")); }
			ScriptFunction ClientGotoState() { return mClientGotoState ? mClientGotoState : (mClientGotoState = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientGotoState")); }
			ScriptFunction AskForPawn() { return mAskForPawn ? mAskForPawn : (mAskForPawn = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.AskForPawn")); }
			ScriptFunction GivePawn() { return mGivePawn ? mGivePawn : (mGivePawn = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GivePawn")); }
			ScriptFunction Possess() { return mPossess ? mPossess : (mPossess = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Possess")); }
			ScriptFunction AcknowledgePossession() { return mAcknowledgePossession ? mAcknowledgePossession : (mAcknowledgePossession = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.AcknowledgePossession")); }
			ScriptFunction ServerAcknowledgePossession() { return mServerAcknowledgePossession ? mServerAcknowledgePossession : (mServerAcknowledgePossession = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerAcknowledgePossession")); }
			ScriptFunction UnPossess() { return mUnPossess ? mUnPossess : (mUnPossess = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.UnPossess")); }
			ScriptFunction PawnDied() { return mPawnDied ? mPawnDied : (mPawnDied = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PawnDied")); }
			ScriptFunction ClientSetHUD() { return mClientSetHUD ? mClientSetHUD : (mClientSetHUD = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientSetHUD")); }
			ScriptFunction HandlePickup() { return mHandlePickup ? mHandlePickup : (mHandlePickup = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.HandlePickup")); }
			ScriptFunction CleanupPRI() { return mCleanupPRI ? mCleanupPRI : (mCleanupPRI = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CleanupPRI")); }
			ScriptFunction ReceiveLocalizedMessage() { return mReceiveLocalizedMessage ? mReceiveLocalizedMessage : (mReceiveLocalizedMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ReceiveLocalizedMessage")); }
			ScriptFunction ClientPlaySound() { return mClientPlaySound ? mClientPlaySound : (mClientPlaySound = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientPlaySound")); }
			ScriptFunction HearSoundFinished() { return mHearSoundFinished ? mHearSoundFinished : (mHearSoundFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.HearSoundFinished")); }
			ScriptFunction GetPooledAudioComponent() { return mGetPooledAudioComponent ? mGetPooledAudioComponent : (mGetPooledAudioComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetPooledAudioComponent")); }
			ScriptFunction ClientHearSound() { return mClientHearSound ? mClientHearSound : (mClientHearSound = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientHearSound")); }
			ScriptFunction IsClosestLocalPlayerToActor() { return mIsClosestLocalPlayerToActor ? mIsClosestLocalPlayerToActor : (mIsClosestLocalPlayerToActor = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsClosestLocalPlayerToActor")); }
			ScriptFunction Kismet_ClientPlaySound() { return mKismet_ClientPlaySound ? mKismet_ClientPlaySound : (mKismet_ClientPlaySound = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Kismet_ClientPlaySound")); }
			ScriptFunction Kismet_ClientStopSound() { return mKismet_ClientStopSound ? mKismet_ClientStopSound : (mKismet_ClientStopSound = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Kismet_ClientStopSound")); }
			ScriptFunction ClientPlayActorFaceFXAnim() { return mClientPlayActorFaceFXAnim ? mClientPlayActorFaceFXAnim : (mClientPlayActorFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientPlayActorFaceFXAnim")); }
			ScriptFunction ClientMessage() { return mClientMessage ? mClientMessage : (mClientMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientMessage")); }
			ScriptFunction CanCommunicate() { return mCanCommunicate ? mCanCommunicate : (mCanCommunicate = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CanCommunicate")); }
			ScriptFunction AllowTTSMessageFrom() { return mAllowTTSMessageFrom ? mAllowTTSMessageFrom : (mAllowTTSMessageFrom = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.AllowTTSMessageFrom")); }
			ScriptFunction CreateTTSSoundCue() { return mCreateTTSSoundCue ? mCreateTTSSoundCue : (mCreateTTSSoundCue = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CreateTTSSoundCue")); }
			ScriptFunction Talk() { return mTalk ? mTalk : (mTalk = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Talk")); }
			ScriptFunction TeamTalk() { return mTeamTalk ? mTeamTalk : (mTeamTalk = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.TeamTalk")); }
			ScriptFunction SpeakTTS() { return mSpeakTTS ? mSpeakTTS : (mSpeakTTS = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SpeakTTS")); }
			ScriptFunction TeamMessage() { return mTeamMessage ? mTeamMessage : (mTeamMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.TeamMessage")); }
			ScriptFunction PlayBeepSound() { return mPlayBeepSound ? mPlayBeepSound : (mPlayBeepSound = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PlayBeepSound")); }
			ScriptFunction RegisterOnlineDelegates() { return mRegisterOnlineDelegates ? mRegisterOnlineDelegates : (mRegisterOnlineDelegates = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.RegisterOnlineDelegates")); }
			ScriptFunction OnPartyMemberListChanged() { return mOnPartyMemberListChanged ? mOnPartyMemberListChanged : (mOnPartyMemberListChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnPartyMemberListChanged")); }
			ScriptFunction OnPartyMembersInfoChanged() { return mOnPartyMembersInfoChanged ? mOnPartyMembersInfoChanged : (mOnPartyMembersInfoChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnPartyMembersInfoChanged")); }
			ScriptFunction ClearOnlineDelegates() { return mClearOnlineDelegates ? mClearOnlineDelegates : (mClearOnlineDelegates = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClearOnlineDelegates")); }
			ScriptFunction CleanupPawn() { return mCleanupPawn ? mCleanupPawn : (mCleanupPawn = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CleanupPawn")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Destroyed")); }
			ScriptFunction FixFOV() { return mFixFOV ? mFixFOV : (mFixFOV = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.FixFOV")); }
			ScriptFunction SetFOV() { return mSetFOV ? mSetFOV : (mSetFOV = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetFOV")); }
			ScriptFunction ResetFOV() { return mResetFOV ? mResetFOV : (mResetFOV = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ResetFOV")); }
			ScriptFunction FOV() { return mFOV ? mFOV : (mFOV = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.FOV")); }
			ScriptFunction AllowTextMessage() { return mAllowTextMessage ? mAllowTextMessage : (mAllowTextMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.AllowTextMessage")); }
			ScriptFunction Say() { return mSay ? mSay : (mSay = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Say")); }
			ScriptFunction ServerSay() { return mServerSay ? mServerSay : (mServerSay = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerSay")); }
			ScriptFunction ClientAdminMessage() { return mClientAdminMessage ? mClientAdminMessage : (mClientAdminMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientAdminMessage")); }
			ScriptFunction TeamSay() { return mTeamSay ? mTeamSay : (mTeamSay = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.TeamSay")); }
			ScriptFunction ServerTeamSay() { return mServerTeamSay ? mServerTeamSay : (mServerTeamSay = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerTeamSay")); }
			ScriptFunction PreClientTravel() { return mPreClientTravel ? mPreClientTravel : (mPreClientTravel = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PreClientTravel")); }
			ScriptFunction GetUIController() { return mGetUIController ? mGetUIController : (mGetUIController = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetUIController")); }
			ScriptFunction Camera() { return mCamera ? mCamera : (mCamera = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Camera")); }
			ScriptFunction ServerCamera() { return mServerCamera ? mServerCamera : (mServerCamera = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerCamera")); }
			ScriptFunction ClientSetCameraMode() { return mClientSetCameraMode ? mClientSetCameraMode : (mClientSetCameraMode = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientSetCameraMode")); }
			ScriptFunction SetCameraMode() { return mSetCameraMode ? mSetCameraMode : (mSetCameraMode = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetCameraMode")); }
			ScriptFunction ResetCameraMode() { return mResetCameraMode ? mResetCameraMode : (mResetCameraMode = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ResetCameraMode")); }
			ScriptFunction ClientSetCameraFade() { return mClientSetCameraFade ? mClientSetCameraFade : (mClientSetCameraFade = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientSetCameraFade")); }
			ScriptFunction UsingFirstPersonCamera() { return mUsingFirstPersonCamera ? mUsingFirstPersonCamera : (mUsingFirstPersonCamera = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.UsingFirstPersonCamera")); }
			ScriptFunction ForceDeathUpdate() { return mForceDeathUpdate ? mForceDeathUpdate : (mForceDeathUpdate = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ForceDeathUpdate")); }
			ScriptFunction DualServerMove() { return mDualServerMove ? mDualServerMove : (mDualServerMove = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.DualServerMove")); }
			ScriptFunction OldServerMove() { return mOldServerMove ? mOldServerMove : (mOldServerMove = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OldServerMove")); }
			ScriptFunction GetServerMoveDeltaTime() { return mGetServerMoveDeltaTime ? mGetServerMoveDeltaTime : (mGetServerMoveDeltaTime = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetServerMoveDeltaTime")); }
			ScriptFunction ServerMoveHandleClientError() { return mServerMoveHandleClientError ? mServerMoveHandleClientError : (mServerMoveHandleClientError = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerMoveHandleClientError")); }
			ScriptFunction ServerMove() { return mServerMove ? mServerMove : (mServerMove = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerMove")); }
			ScriptFunction SendClientAdjustment() { return mSendClientAdjustment ? mSendClientAdjustment : (mSendClientAdjustment = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SendClientAdjustment")); }
			ScriptFunction ServerDrive() { return mServerDrive ? mServerDrive : (mServerDrive = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerDrive")); }
			ScriptFunction ProcessDrive() { return mProcessDrive ? mProcessDrive : (mProcessDrive = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ProcessDrive")); }
			ScriptFunction ProcessMove() { return mProcessMove ? mProcessMove : (mProcessMove = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ProcessMove")); }
			ScriptFunction MoveAutonomous() { return mMoveAutonomous ? mMoveAutonomous : (mMoveAutonomous = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.MoveAutonomous")); }
			ScriptFunction VeryShortClientAdjustPosition() { return mVeryShortClientAdjustPosition ? mVeryShortClientAdjustPosition : (mVeryShortClientAdjustPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.VeryShortClientAdjustPosition")); }
			ScriptFunction ShortClientAdjustPosition() { return mShortClientAdjustPosition ? mShortClientAdjustPosition : (mShortClientAdjustPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ShortClientAdjustPosition")); }
			ScriptFunction ClientCapBandwidth() { return mClientCapBandwidth ? mClientCapBandwidth : (mClientCapBandwidth = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientCapBandwidth")); }
			ScriptFunction ClientAckGoodMove() { return mClientAckGoodMove ? mClientAckGoodMove : (mClientAckGoodMove = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientAckGoodMove")); }
			ScriptFunction UpdatePing() { return mUpdatePing ? mUpdatePing : (mUpdatePing = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.UpdatePing")); }
			ScriptFunction ClientAdjustPosition() { return mClientAdjustPosition ? mClientAdjustPosition : (mClientAdjustPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientAdjustPosition")); }
			ScriptFunction LongClientAdjustPosition() { return mLongClientAdjustPosition ? mLongClientAdjustPosition : (mLongClientAdjustPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.LongClientAdjustPosition")); }
			ScriptFunction UpdateStateFromAdjustment() { return mUpdateStateFromAdjustment ? mUpdateStateFromAdjustment : (mUpdateStateFromAdjustment = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.UpdateStateFromAdjustment")); }
			ScriptFunction ServerUpdatePing() { return mServerUpdatePing ? mServerUpdatePing : (mServerUpdatePing = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerUpdatePing")); }
			ScriptFunction ClearAckedMoves() { return mClearAckedMoves ? mClearAckedMoves : (mClearAckedMoves = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClearAckedMoves")); }
			ScriptFunction ClientUpdatePosition() { return mClientUpdatePosition ? mClientUpdatePosition : (mClientUpdatePosition = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientUpdatePosition")); }
			ScriptFunction GetFreeMove() { return mGetFreeMove ? mGetFreeMove : (mGetFreeMove = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetFreeMove")); }
			ScriptFunction CompressAccel() { return mCompressAccel ? mCompressAccel : (mCompressAccel = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CompressAccel")); }
			ScriptFunction ReplicateMove() { return mReplicateMove ? mReplicateMove : (mReplicateMove = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ReplicateMove")); }
			ScriptFunction CallServerMove() { return mCallServerMove ? mCallServerMove : (mCallServerMove = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CallServerMove")); }
			ScriptFunction HandleWalking() { return mHandleWalking ? mHandleWalking : (mHandleWalking = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.HandleWalking")); }
			ScriptFunction ServerRestartGame() { return mServerRestartGame ? mServerRestartGame : (mServerRestartGame = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerRestartGame")); }
			ScriptFunction RestartLevel() { return mRestartLevel ? mRestartLevel : (mRestartLevel = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.RestartLevel")); }
			ScriptFunction PauseRumbleForAllPlayers() { return mPauseRumbleForAllPlayers ? mPauseRumbleForAllPlayers : (mPauseRumbleForAllPlayers = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PauseRumbleForAllPlayers")); }
			ScriptFunction CanUnpause() { return mCanUnpause ? mCanUnpause : (mCanUnpause = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CanUnpause")); }
			ScriptFunction SetPause() { return mSetPause ? mSetPause : (mSetPause = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetPause")); }
			ScriptFunction IsPaused() { return mIsPaused ? mIsPaused : (mIsPaused = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsPaused")); }
			ScriptFunction Pause() { return mPause ? mPause : (mPause = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Pause")); }
			ScriptFunction ServerPause() { return mServerPause ? mServerPause : (mServerPause = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerPause")); }
			ScriptFunction ConditionalPause() { return mConditionalPause ? mConditionalPause : (mConditionalPause = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ConditionalPause")); }
			ScriptFunction ThrowWeapon() { return mThrowWeapon ? mThrowWeapon : (mThrowWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ThrowWeapon")); }
			ScriptFunction ServerThrowWeapon() { return mServerThrowWeapon ? mServerThrowWeapon : (mServerThrowWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerThrowWeapon")); }
			ScriptFunction PrevWeapon() { return mPrevWeapon ? mPrevWeapon : (mPrevWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PrevWeapon")); }
			ScriptFunction NextWeapon() { return mNextWeapon ? mNextWeapon : (mNextWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.NextWeapon")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.StartFire")); }
			ScriptFunction StopFire() { return mStopFire ? mStopFire : (mStopFire = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.StopFire")); }
			ScriptFunction StartAltFire() { return mStartAltFire ? mStartAltFire : (mStartAltFire = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.StartAltFire")); }
			ScriptFunction StopAltFire() { return mStopAltFire ? mStopAltFire : (mStopAltFire = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.StopAltFire")); }
			ScriptFunction GetTriggerUseList() { return mGetTriggerUseList ? mGetTriggerUseList : (mGetTriggerUseList = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetTriggerUseList")); }
			ScriptFunction Use() { return mUse ? mUse : (mUse = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Use")); }
			ScriptFunction ServerUse() { return mServerUse ? mServerUse : (mServerUse = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerUse")); }
			ScriptFunction PerformedUseAction() { return mPerformedUseAction ? mPerformedUseAction : (mPerformedUseAction = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PerformedUseAction")); }
			ScriptFunction FindVehicleToDrive() { return mFindVehicleToDrive ? mFindVehicleToDrive : (mFindVehicleToDrive = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.FindVehicleToDrive")); }
			ScriptFunction TriggerInteracted() { return mTriggerInteracted ? mTriggerInteracted : (mTriggerInteracted = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.TriggerInteracted")); }
			ScriptFunction Suicide() { return mSuicide ? mSuicide : (mSuicide = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Suicide")); }
			ScriptFunction ServerSuicide() { return mServerSuicide ? mServerSuicide : (mServerSuicide = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerSuicide")); }
			ScriptFunction SetName() { return mSetName ? mSetName : (mSetName = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetName")); }
			ScriptFunction ServerChangeName() { return mServerChangeName ? mServerChangeName : (mServerChangeName = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerChangeName")); }
			ScriptFunction SwitchTeam() { return mSwitchTeam ? mSwitchTeam : (mSwitchTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SwitchTeam")); }
			ScriptFunction ChangeTeam() { return mChangeTeam ? mChangeTeam : (mChangeTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ChangeTeam")); }
			ScriptFunction ServerChangeTeam() { return mServerChangeTeam ? mServerChangeTeam : (mServerChangeTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerChangeTeam")); }
			ScriptFunction ClientSetProgressMessage() { return mClientSetProgressMessage ? mClientSetProgressMessage : (mClientSetProgressMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientSetProgressMessage")); }
			ScriptFunction Restart() { return mRestart ? mRestart : (mRestart = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Restart")); }
			ScriptFunction ServerNotifyLoadedWorld() { return mServerNotifyLoadedWorld ? mServerNotifyLoadedWorld : (mServerNotifyLoadedWorld = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerNotifyLoadedWorld")); }
			ScriptFunction NotifyLoadedWorld() { return mNotifyLoadedWorld ? mNotifyLoadedWorld : (mNotifyLoadedWorld = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.NotifyLoadedWorld")); }
			ScriptFunction HasClientLoadedCurrentWorld() { return mHasClientLoadedCurrentWorld ? mHasClientLoadedCurrentWorld : (mHasClientLoadedCurrentWorld = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.HasClientLoadedCurrentWorld")); }
			ScriptFunction ForceSingleNetUpdateFor() { return mForceSingleNetUpdateFor ? mForceSingleNetUpdateFor : (mForceSingleNetUpdateFor = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ForceSingleNetUpdateFor")); }
			ScriptFunction EnterStartState() { return mEnterStartState ? mEnterStartState : (mEnterStartState = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.EnterStartState")); }
			ScriptFunction ClientRestart() { return mClientRestart ? mClientRestart : (mClientRestart = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientRestart")); }
			ScriptFunction GameHasEnded() { return mGameHasEnded ? mGameHasEnded : (mGameHasEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GameHasEnded")); }
			ScriptFunction ClientGameEnded() { return mClientGameEnded ? mClientGameEnded : (mClientGameEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientGameEnded")); }
			ScriptFunction NotifyChangedWeapon() { return mNotifyChangedWeapon ? mNotifyChangedWeapon : (mNotifyChangedWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.NotifyChangedWeapon")); }
			ScriptFunction PlayerTick() { return mPlayerTick ? mPlayerTick : (mPlayerTick = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PlayerTick")); }
			ScriptFunction PlayerMove() { return mPlayerMove ? mPlayerMove : (mPlayerMove = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PlayerMove")); }
			ScriptFunction AimingHelp() { return mAimingHelp ? mAimingHelp : (mAimingHelp = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.AimingHelp")); }
			ScriptFunction CameraLookAtFinished() { return mCameraLookAtFinished ? mCameraLookAtFinished : (mCameraLookAtFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CameraLookAtFinished")); }
			ScriptFunction GetAdjustedAimFor() { return mGetAdjustedAimFor ? mGetAdjustedAimFor : (mGetAdjustedAimFor = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetAdjustedAimFor")); }
			ScriptFunction AimHelpDot() { return mAimHelpDot ? mAimHelpDot : (mAimHelpDot = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.AimHelpDot")); }
			ScriptFunction NotifyLanded() { return mNotifyLanded ? mNotifyLanded : (mNotifyLanded = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.NotifyLanded")); }
			ScriptFunction AdjustFOV() { return mAdjustFOV ? mAdjustFOV : (mAdjustFOV = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.AdjustFOV")); }
			ScriptFunction IsLocalPlayerController() { return mIsLocalPlayerController ? mIsLocalPlayerController : (mIsLocalPlayerController = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsLocalPlayerController")); }
			ScriptFunction SetViewTarget() { return mSetViewTarget ? mSetViewTarget : (mSetViewTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetViewTarget")); }
			ScriptFunction SetViewTargetWithBlend() { return mSetViewTargetWithBlend ? mSetViewTargetWithBlend : (mSetViewTargetWithBlend = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetViewTargetWithBlend")); }
			ScriptFunction ClientSetViewTarget() { return mClientSetViewTarget ? mClientSetViewTarget : (mClientSetViewTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientSetViewTarget")); }
			ScriptFunction ServerVerifyViewTarget() { return mServerVerifyViewTarget ? mServerVerifyViewTarget : (mServerVerifyViewTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerVerifyViewTarget")); }
			ScriptFunction SpawnPlayerCamera() { return mSpawnPlayerCamera ? mSpawnPlayerCamera : (mSpawnPlayerCamera = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SpawnPlayerCamera")); }
			ScriptFunction GetPlayerViewPoint() { return mGetPlayerViewPoint ? mGetPlayerViewPoint : (mGetPlayerViewPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetPlayerViewPoint")); }
			ScriptFunction ViewShake() { return mViewShake ? mViewShake : (mViewShake = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ViewShake")); }
			ScriptFunction UpdateRotation() { return mUpdateRotation ? mUpdateRotation : (mUpdateRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.UpdateRotation")); }
			ScriptFunction ProcessViewRotation() { return mProcessViewRotation ? mProcessViewRotation : (mProcessViewRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ProcessViewRotation")); }
			ScriptFunction LimitViewRotation() { return mLimitViewRotation ? mLimitViewRotation : (mLimitViewRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.LimitViewRotation")); }
			ScriptFunction CheckJumpOrDuck() { return mCheckJumpOrDuck ? mCheckJumpOrDuck : (mCheckJumpOrDuck = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CheckJumpOrDuck")); }
			ScriptFunction IsSpectating() { return mIsSpectating ? mIsSpectating : (mIsSpectating = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsSpectating")); }
			ScriptFunction ServerSetSpectatorLocation() { return mServerSetSpectatorLocation ? mServerSetSpectatorLocation : (mServerSetSpectatorLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerSetSpectatorLocation")); }
			ScriptFunction ServerViewNextPlayer() { return mServerViewNextPlayer ? mServerViewNextPlayer : (mServerViewNextPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerViewNextPlayer")); }
			ScriptFunction ServerViewPrevPlayer() { return mServerViewPrevPlayer ? mServerViewPrevPlayer : (mServerViewPrevPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerViewPrevPlayer")); }
			ScriptFunction ViewAPlayer() { return mViewAPlayer ? mViewAPlayer : (mViewAPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ViewAPlayer")); }
			ScriptFunction ServerViewSelf() { return mServerViewSelf ? mServerViewSelf : (mServerViewSelf = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerViewSelf")); }
			ScriptFunction IsWaiting() { return mIsWaiting ? mIsWaiting : (mIsWaiting = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsWaiting")); }
			ScriptFunction CanRestartPlayer() { return mCanRestartPlayer ? mCanRestartPlayer : (mCanRestartPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CanRestartPlayer")); }
			ScriptFunction DrawHUD() { return mDrawHUD ? mDrawHUD : (mDrawHUD = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.DrawHUD")); }
			ScriptFunction OnToggleInput() { return mOnToggleInput ? mOnToggleInput : (mOnToggleInput = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnToggleInput")); }
			ScriptFunction ClientIgnoreMoveInput() { return mClientIgnoreMoveInput ? mClientIgnoreMoveInput : (mClientIgnoreMoveInput = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientIgnoreMoveInput")); }
			ScriptFunction ClientIgnoreLookInput() { return mClientIgnoreLookInput ? mClientIgnoreLookInput : (mClientIgnoreLookInput = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientIgnoreLookInput")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.DisplayDebug")); }
			ScriptFunction OnDrawText() { return mOnDrawText ? mOnDrawText : (mOnDrawText = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnDrawText")); }
			ScriptFunction ClientDrawKismetText() { return mClientDrawKismetText ? mClientDrawKismetText : (mClientDrawKismetText = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientDrawKismetText")); }
			ScriptFunction ClientClearKismetText() { return mClientClearKismetText ? mClientClearKismetText : (mClientClearKismetText = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientClearKismetText")); }
			ScriptFunction OnSetCameraTarget() { return mOnSetCameraTarget ? mOnSetCameraTarget : (mOnSetCameraTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnSetCameraTarget")); }
			ScriptFunction OnToggleHUD() { return mOnToggleHUD ? mOnToggleHUD : (mOnToggleHUD = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnToggleHUD")); }
			ScriptFunction NotifyTakeHit() { return mNotifyTakeHit ? mNotifyTakeHit : (mNotifyTakeHit = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.NotifyTakeHit")); }
			ScriptFunction OnForceFeedback() { return mOnForceFeedback ? mOnForceFeedback : (mOnForceFeedback = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnForceFeedback")); }
			ScriptFunction ClientStopForceFeedbackWaveform() { return mClientStopForceFeedbackWaveform ? mClientStopForceFeedbackWaveform : (mClientStopForceFeedbackWaveform = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientStopForceFeedbackWaveform")); }
			ScriptFunction PlayRumble() { return mPlayRumble ? mPlayRumble : (mPlayRumble = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.PlayRumble")); }
			ScriptFunction ClientPlayForceFeedbackWaveform() { return mClientPlayForceFeedbackWaveform ? mClientPlayForceFeedbackWaveform : (mClientPlayForceFeedbackWaveform = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientPlayForceFeedbackWaveform")); }
			ScriptFunction IsForceFeedbackAllowed() { return mIsForceFeedbackAllowed ? mIsForceFeedbackAllowed : (mIsForceFeedbackAllowed = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsForceFeedbackAllowed")); }
			ScriptFunction OnToggleCinematicMode() { return mOnToggleCinematicMode ? mOnToggleCinematicMode : (mOnToggleCinematicMode = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnToggleCinematicMode")); }
			ScriptFunction SetCinematicMode() { return mSetCinematicMode ? mSetCinematicMode : (mSetCinematicMode = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetCinematicMode")); }
			ScriptFunction ClientSetCinematicMode() { return mClientSetCinematicMode ? mClientSetCinematicMode : (mClientSetCinematicMode = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientSetCinematicMode")); }
			ScriptFunction IgnoreMoveInput() { return mIgnoreMoveInput ? mIgnoreMoveInput : (mIgnoreMoveInput = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IgnoreMoveInput")); }
			ScriptFunction IsMoveInputIgnored() { return mIsMoveInputIgnored ? mIsMoveInputIgnored : (mIsMoveInputIgnored = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsMoveInputIgnored")); }
			ScriptFunction IgnoreLookInput() { return mIgnoreLookInput ? mIgnoreLookInput : (mIgnoreLookInput = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IgnoreLookInput")); }
			ScriptFunction IsLookInputIgnored() { return mIsLookInputIgnored ? mIsLookInputIgnored : (mIsLookInputIgnored = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsLookInputIgnored")); }
			ScriptFunction ResetPlayerMovementInput() { return mResetPlayerMovementInput ? mResetPlayerMovementInput : (mResetPlayerMovementInput = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ResetPlayerMovementInput")); }
			ScriptFunction OnConsoleCommand() { return mOnConsoleCommand ? mOnConsoleCommand : (mOnConsoleCommand = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnConsoleCommand")); }
			ScriptFunction ClientForceGarbageCollection() { return mClientForceGarbageCollection ? mClientForceGarbageCollection : (mClientForceGarbageCollection = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientForceGarbageCollection")); }
			ScriptFunction LevelStreamingStatusChanged() { return mLevelStreamingStatusChanged ? mLevelStreamingStatusChanged : (mLevelStreamingStatusChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.LevelStreamingStatusChanged")); }
			ScriptFunction ClientUpdateLevelStreamingStatus() { return mClientUpdateLevelStreamingStatus ? mClientUpdateLevelStreamingStatus : (mClientUpdateLevelStreamingStatus = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientUpdateLevelStreamingStatus")); }
			ScriptFunction ServerUpdateLevelVisibility() { return mServerUpdateLevelVisibility ? mServerUpdateLevelVisibility : (mServerUpdateLevelVisibility = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerUpdateLevelVisibility")); }
			ScriptFunction ClientPrepareMapChange() { return mClientPrepareMapChange ? mClientPrepareMapChange : (mClientPrepareMapChange = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientPrepareMapChange")); }
			ScriptFunction DelayedPrepareMapChange() { return mDelayedPrepareMapChange ? mDelayedPrepareMapChange : (mDelayedPrepareMapChange = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.DelayedPrepareMapChange")); }
			ScriptFunction ClientCommitMapChange() { return mClientCommitMapChange ? mClientCommitMapChange : (mClientCommitMapChange = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientCommitMapChange")); }
			ScriptFunction ClientCancelPendingMapChange() { return mClientCancelPendingMapChange ? mClientCancelPendingMapChange : (mClientCancelPendingMapChange = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientCancelPendingMapChange")); }
			ScriptFunction ClientFlushLevelStreaming() { return mClientFlushLevelStreaming ? mClientFlushLevelStreaming : (mClientFlushLevelStreaming = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientFlushLevelStreaming")); }
			ScriptFunction ClientSetBlockOnAsyncLoading() { return mClientSetBlockOnAsyncLoading ? mClientSetBlockOnAsyncLoading : (mClientSetBlockOnAsyncLoading = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientSetBlockOnAsyncLoading")); }
			ScriptFunction IsPlayerMuted() { return mIsPlayerMuted ? mIsPlayerMuted : (mIsPlayerMuted = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsPlayerMuted")); }
			ScriptFunction GetSeamlessTravelActorList() { return mGetSeamlessTravelActorList ? mGetSeamlessTravelActorList : (mGetSeamlessTravelActorList = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetSeamlessTravelActorList")); }
			ScriptFunction SeamlessTravelTo() { return mSeamlessTravelTo ? mSeamlessTravelTo : (mSeamlessTravelTo = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SeamlessTravelTo")); }
			ScriptFunction SeamlessTravelFrom() { return mSeamlessTravelFrom ? mSeamlessTravelFrom : (mSeamlessTravelFrom = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SeamlessTravelFrom")); }
			ScriptFunction ClientSetOnlineStatus() { return mClientSetOnlineStatus ? mClientSetOnlineStatus : (mClientSetOnlineStatus = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientSetOnlineStatus")); }
			ScriptFunction GetPlayerControllerFromNetId() { return mGetPlayerControllerFromNetId ? mGetPlayerControllerFromNetId : (mGetPlayerControllerFromNetId = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetPlayerControllerFromNetId")); }
			ScriptFunction ClientVoiceHandshakeComplete() { return mClientVoiceHandshakeComplete ? mClientVoiceHandshakeComplete : (mClientVoiceHandshakeComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientVoiceHandshakeComplete")); }
			ScriptFunction ClientMutePlayer() { return mClientMutePlayer ? mClientMutePlayer : (mClientMutePlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientMutePlayer")); }
			ScriptFunction ClientUnmutePlayer() { return mClientUnmutePlayer ? mClientUnmutePlayer : (mClientUnmutePlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientUnmutePlayer")); }
			ScriptFunction GameplayMutePlayer() { return mGameplayMutePlayer ? mGameplayMutePlayer : (mGameplayMutePlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GameplayMutePlayer")); }
			ScriptFunction GameplayUnmutePlayer() { return mGameplayUnmutePlayer ? mGameplayUnmutePlayer : (mGameplayUnmutePlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GameplayUnmutePlayer")); }
			ScriptFunction ServerMutePlayer() { return mServerMutePlayer ? mServerMutePlayer : (mServerMutePlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerMutePlayer")); }
			ScriptFunction ServerUnmutePlayer() { return mServerUnmutePlayer ? mServerUnmutePlayer : (mServerUnmutePlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerUnmutePlayer")); }
			ScriptFunction NotifyDirectorControl() { return mNotifyDirectorControl ? mNotifyDirectorControl : (mNotifyDirectorControl = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.NotifyDirectorControl")); }
			ScriptFunction SetShowSubtitles() { return mSetShowSubtitles ? mSetShowSubtitles : (mSetShowSubtitles = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SetShowSubtitles")); }
			ScriptFunction IsShowingSubtitles() { return mIsShowingSubtitles ? mIsShowingSubtitles : (mIsShowingSubtitles = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsShowingSubtitles")); }
			ScriptFunction ClientWasKicked() { return mClientWasKicked ? mClientWasKicked : (mClientWasKicked = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientWasKicked")); }
			ScriptFunction ClientRegisterForArbitration() { return mClientRegisterForArbitration ? mClientRegisterForArbitration : (mClientRegisterForArbitration = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientRegisterForArbitration")); }
			ScriptFunction OnArbitrationRegisterComplete() { return mOnArbitrationRegisterComplete ? mOnArbitrationRegisterComplete : (mOnArbitrationRegisterComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnArbitrationRegisterComplete")); }
			ScriptFunction ServerRegisteredForArbitration() { return mServerRegisteredForArbitration ? mServerRegisteredForArbitration : (mServerRegisteredForArbitration = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerRegisteredForArbitration")); }
			ScriptFunction OnGameInviteAccepted() { return mOnGameInviteAccepted ? mOnGameInviteAccepted : (mOnGameInviteAccepted = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnGameInviteAccepted")); }
			ScriptFunction InviteHasEnoughSpace() { return mInviteHasEnoughSpace ? mInviteHasEnoughSpace : (mInviteHasEnoughSpace = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.InviteHasEnoughSpace")); }
			ScriptFunction CanAllPlayersPlayOnline() { return mCanAllPlayersPlayOnline ? mCanAllPlayersPlayOnline : (mCanAllPlayersPlayOnline = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CanAllPlayersPlayOnline")); }
			ScriptFunction ClearInviteDelegates() { return mClearInviteDelegates ? mClearInviteDelegates : (mClearInviteDelegates = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClearInviteDelegates")); }
			ScriptFunction OnEndForInviteComplete() { return mOnEndForInviteComplete ? mOnEndForInviteComplete : (mOnEndForInviteComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnEndForInviteComplete")); }
			ScriptFunction OnDestroyForInviteComplete() { return mOnDestroyForInviteComplete ? mOnDestroyForInviteComplete : (mOnDestroyForInviteComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnDestroyForInviteComplete")); }
			ScriptFunction ModifyClientURL() { return mModifyClientURL ? mModifyClientURL : (mModifyClientURL = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ModifyClientURL")); }
			ScriptFunction OnInviteJoinComplete() { return mOnInviteJoinComplete ? mOnInviteJoinComplete : (mOnInviteJoinComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnInviteJoinComplete")); }
			ScriptFunction NotifyInviteFailed() { return mNotifyInviteFailed ? mNotifyInviteFailed : (mNotifyInviteFailed = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.NotifyInviteFailed")); }
			ScriptFunction NotifyNotAllPlayersCanJoinInvite() { return mNotifyNotAllPlayersCanJoinInvite ? mNotifyNotAllPlayersCanJoinInvite : (mNotifyNotAllPlayersCanJoinInvite = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.NotifyNotAllPlayersCanJoinInvite")); }
			ScriptFunction NotifyNotEnoughSpaceInInvite() { return mNotifyNotEnoughSpaceInInvite ? mNotifyNotEnoughSpaceInInvite : (mNotifyNotEnoughSpaceInInvite = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.NotifyNotEnoughSpaceInInvite")); }
			ScriptFunction ClientArbitratedMatchEnded() { return mClientArbitratedMatchEnded ? mClientArbitratedMatchEnded : (mClientArbitratedMatchEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientArbitratedMatchEnded")); }
			ScriptFunction ClientWriteOnlinePlayerScores() { return mClientWriteOnlinePlayerScores ? mClientWriteOnlinePlayerScores : (mClientWriteOnlinePlayerScores = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientWriteOnlinePlayerScores")); }
			ScriptFunction ClientWriteLeaderboardStats() { return mClientWriteLeaderboardStats ? mClientWriteLeaderboardStats : (mClientWriteLeaderboardStats = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientWriteLeaderboardStats")); }
			ScriptFunction ClientSetHostUniqueId() { return mClientSetHostUniqueId ? mClientSetHostUniqueId : (mClientSetHostUniqueId = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientSetHostUniqueId")); }
			ScriptFunction ClientStopNetworkedVoice() { return mClientStopNetworkedVoice ? mClientStopNetworkedVoice : (mClientStopNetworkedVoice = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientStopNetworkedVoice")); }
			ScriptFunction ClientStartNetworkedVoice() { return mClientStartNetworkedVoice ? mClientStartNetworkedVoice : (mClientStartNetworkedVoice = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientStartNetworkedVoice")); }
			ScriptFunction OnDestroy() { return mOnDestroy ? mOnDestroy : (mOnDestroy = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnDestroy")); }
			ScriptFunction DrawDebugTextList() { return mDrawDebugTextList ? mDrawDebugTextList : (mDrawDebugTextList = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.DrawDebugTextList")); }
			ScriptFunction AddDebugText() { return mAddDebugText ? mAddDebugText : (mAddDebugText = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.AddDebugText")); }
			ScriptFunction RemoveDebugText() { return mRemoveDebugText ? mRemoveDebugText : (mRemoveDebugText = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.RemoveDebugText")); }
			ScriptFunction RemoveAllDebugStrings() { return mRemoveAllDebugStrings ? mRemoveAllDebugStrings : (mRemoveAllDebugStrings = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.RemoveAllDebugStrings")); }
			ScriptFunction ClientRegisterHostStatGuid() { return mClientRegisterHostStatGuid ? mClientRegisterHostStatGuid : (mClientRegisterHostStatGuid = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientRegisterHostStatGuid")); }
			ScriptFunction OnRegisterHostStatGuidComplete() { return mOnRegisterHostStatGuidComplete ? mOnRegisterHostStatGuidComplete : (mOnRegisterHostStatGuidComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnRegisterHostStatGuidComplete")); }
			ScriptFunction ServerRegisterClientStatGuid() { return mServerRegisterClientStatGuid ? mServerRegisterClientStatGuid : (mServerRegisterClientStatGuid = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ServerRegisterClientStatGuid")); }
			ScriptFunction ClientStartOnlineGame() { return mClientStartOnlineGame ? mClientStartOnlineGame : (mClientStartOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientStartOnlineGame")); }
			ScriptFunction ClientEndOnlineGame() { return mClientEndOnlineGame ? mClientEndOnlineGame : (mClientEndOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientEndOnlineGame")); }
			ScriptFunction CanViewUserCreatedContent() { return mCanViewUserCreatedContent ? mCanViewUserCreatedContent : (mCanViewUserCreatedContent = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.CanViewUserCreatedContent")); }
			ScriptFunction IncrementNumberOfMatchesPlayed() { return mIncrementNumberOfMatchesPlayed ? mIncrementNumberOfMatchesPlayed : (mIncrementNumberOfMatchesPlayed = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IncrementNumberOfMatchesPlayed")); }
			ScriptFunction SoakPause() { return mSoakPause ? mSoakPause : (mSoakPause = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.SoakPause")); }
			ScriptFunction ClientTravelToSession() { return mClientTravelToSession ? mClientTravelToSession : (mClientTravelToSession = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientTravelToSession")); }
			ScriptFunction OnJoinTravelToSessionComplete() { return mOnJoinTravelToSessionComplete ? mOnJoinTravelToSessionComplete : (mOnJoinTravelToSessionComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnJoinTravelToSessionComplete")); }
			ScriptFunction ClientReturnToParty() { return mClientReturnToParty ? mClientReturnToParty : (mClientReturnToParty = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientReturnToParty")); }
			ScriptFunction IsSplitscreenPlayer() { return mIsSplitscreenPlayer ? mIsSplitscreenPlayer : (mIsSplitscreenPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsSplitscreenPlayer")); }
			ScriptFunction GetSplitscreenPlayerByIndex() { return mGetSplitscreenPlayerByIndex ? mGetSplitscreenPlayerByIndex : (mGetSplitscreenPlayerByIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetSplitscreenPlayerByIndex")); }
			ScriptFunction GetSplitscreenPlayerCount() { return mGetSplitscreenPlayerCount ? mGetSplitscreenPlayerCount : (mGetSplitscreenPlayerCount = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetSplitscreenPlayerCount")); }
			ScriptFunction ClientControlMovieTexture() { return mClientControlMovieTexture ? mClientControlMovieTexture : (mClientControlMovieTexture = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientControlMovieTexture")); }
			ScriptFunction ClientSetForceMipLevelsToBeResident() { return mClientSetForceMipLevelsToBeResident ? mClientSetForceMipLevelsToBeResident : (mClientSetForceMipLevelsToBeResident = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientSetForceMipLevelsToBeResident")); }
			ScriptFunction ClientPrestreamTextures() { return mClientPrestreamTextures ? mClientPrestreamTextures : (mClientPrestreamTextures = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientPrestreamTextures")); }
			ScriptFunction IsPartyLeader() { return mIsPartyLeader ? mIsPartyLeader : (mIsPartyLeader = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.IsPartyLeader")); }
			ScriptFunction GetPartyMapName() { return mGetPartyMapName ? mGetPartyMapName : (mGetPartyMapName = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetPartyMapName")); }
			ScriptFunction GetPartyGameTypeName() { return mGetPartyGameTypeName ? mGetPartyGameTypeName : (mGetPartyGameTypeName = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetPartyGameTypeName")); }
			ScriptFunction GetAchievementProgression() { return mGetAchievementProgression ? mGetAchievementProgression : (mGetAchievementProgression = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.GetAchievementProgression")); }
			ScriptFunction OnFlyThroughHasEnded() { return mOnFlyThroughHasEnded ? mOnFlyThroughHasEnded : (mOnFlyThroughHasEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnFlyThroughHasEnded")); }
			ScriptFunction Sentinel_SetupForGamebasedTravelTheWorld() { return mSentinel_SetupForGamebasedTravelTheWorld ? mSentinel_SetupForGamebasedTravelTheWorld : (mSentinel_SetupForGamebasedTravelTheWorld = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Sentinel_SetupForGamebasedTravelTheWorld")); }
			ScriptFunction Sentinel_PreAcquireTravelTheWorldPoints() { return mSentinel_PreAcquireTravelTheWorldPoints ? mSentinel_PreAcquireTravelTheWorldPoints : (mSentinel_PreAcquireTravelTheWorldPoints = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Sentinel_PreAcquireTravelTheWorldPoints")); }
			ScriptFunction Sentinel_PostAcquireTravelTheWorldPoints() { return mSentinel_PostAcquireTravelTheWorldPoints ? mSentinel_PostAcquireTravelTheWorldPoints : (mSentinel_PostAcquireTravelTheWorldPoints = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.Sentinel_PostAcquireTravelTheWorldPoints")); }
			ScriptFunction InputMatchDelegate() { return mInputMatchDelegate ? mInputMatchDelegate : (mInputMatchDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.InputMatchDelegate")); }
			ScriptFunction DoForceFeedbackForScreenShake() { return mDoForceFeedbackForScreenShake ? mDoForceFeedbackForScreenShake : (mDoForceFeedbackForScreenShake = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.DoForceFeedbackForScreenShake")); }
			ScriptFunction ClientPlayCameraShake() { return mClientPlayCameraShake ? mClientPlayCameraShake : (mClientPlayCameraShake = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientPlayCameraShake")); }
			ScriptFunction ClientStopCameraShake() { return mClientStopCameraShake ? mClientStopCameraShake : (mClientStopCameraShake = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientStopCameraShake")); }
			ScriptFunction OnCameraShake() { return mOnCameraShake ? mOnCameraShake : (mOnCameraShake = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnCameraShake")); }
			ScriptFunction ClientPlayCameraAnim() { return mClientPlayCameraAnim ? mClientPlayCameraAnim : (mClientPlayCameraAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientPlayCameraAnim")); }
			ScriptFunction ClientStopCameraAnim() { return mClientStopCameraAnim ? mClientStopCameraAnim : (mClientStopCameraAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientStopCameraAnim")); }
			ScriptFunction ClientSpawnCameraLensEffect() { return mClientSpawnCameraLensEffect ? mClientSpawnCameraLensEffect : (mClientSpawnCameraLensEffect = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ClientSpawnCameraLensEffect")); }
			ScriptFunction OnSetSoundMode() { return mOnSetSoundMode ? mOnSetSoundMode : (mOnSetSoundMode = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnSetSoundMode")); }
			ScriptFunction HasPeerConnection() { return mHasPeerConnection ? mHasPeerConnection : (mHasPeerConnection = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.HasPeerConnection")); }
			ScriptFunction BugItGo() { return mBugItGo ? mBugItGo : (mBugItGo = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.BugItGo")); }
			ScriptFunction BugItGoString() { return mBugItGoString ? mBugItGoString : (mBugItGoString = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.BugItGoString")); }
			ScriptFunction BugItWorker() { return mBugItWorker ? mBugItWorker : (mBugItWorker = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.BugItWorker")); }
			ScriptFunction BugIt() { return mBugIt ? mBugIt : (mBugIt = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.BugIt")); }
			ScriptFunction LogOutBugItGoToLogFile() { return mLogOutBugItGoToLogFile ? mLogOutBugItGoToLogFile : (mLogOutBugItGoToLogFile = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.LogOutBugItGoToLogFile")); }
			ScriptFunction LogLoc() { return mLogLoc ? mLogLoc : (mLogLoc = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.LogLoc")); }
			ScriptFunction BugItAI() { return mBugItAI ? mBugItAI : (mBugItAI = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.BugItAI")); }
			ScriptFunction LogOutBugItAIGoToLogFile() { return mLogOutBugItAIGoToLogFile ? mLogOutBugItAIGoToLogFile : (mLogOutBugItAIGoToLogFile = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.LogOutBugItAIGoToLogFile")); }
			ScriptFunction BugItStringCreator() { return mBugItStringCreator ? mBugItStringCreator : (mBugItStringCreator = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.BugItStringCreator")); }
			ScriptFunction OnEngineInitialTick() { return mOnEngineInitialTick ? mOnEngineInitialTick : (mOnEngineInitialTick = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.OnEngineInitialTick")); }
			ScriptFunction DisableDebugAI() { return mDisableDebugAI ? mDisableDebugAI : (mDisableDebugAI = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.DisableDebugAI")); }
			ScriptFunction ReceivedGameClass() { return mReceivedGameClass ? mReceivedGameClass : (mReceivedGameClass = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerController.ReceivedGameClass")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.PlayerController.DebugTextInfo")); }
		@property final
		{
			auto ref
			{
				Actor SrcActor() { return *cast(Actor*)(cast(size_t)&this + 0); }
				float TimeRemaining() { return *cast(float*)(cast(size_t)&this + 40); }
				// WARNING: Property 'Font' has the same name as a defined type!
				Vector SrcActorOffset() { return *cast(Vector*)(cast(size_t)&this + 4); }
				Vector SrcActorDesiredOffset() { return *cast(Vector*)(cast(size_t)&this + 16); }
				float Duration() { return *cast(float*)(cast(size_t)&this + 44); }
				Vector OrigActorLocation() { return *cast(Vector*)(cast(size_t)&this + 56); }
				UObject.Color TextColor() { return *cast(UObject.Color*)(cast(size_t)&this + 48); }
				ScriptString DebugText() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
			}
			bool bAbsoluteLocation() { return (*cast(uint*)(cast(size_t)&this + 52) & 0x1) != 0; }
			bool bAbsoluteLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 52) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 52) &= ~0x1; } return val; }
			bool bKeepAttachedToActor() { return (*cast(uint*)(cast(size_t)&this + 52) & 0x2) != 0; }
			bool bKeepAttachedToActor(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 52) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 52) &= ~0x2; } return val; }
		}
	}
	struct ConnectedPeerInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.PlayerController.ConnectedPeerInfo")); }
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId PlayerID() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
				OnlineSubsystem.ENATType NatType() { return *cast(OnlineSubsystem.ENATType*)(cast(size_t)&this + 8); }
			}
			bool bLostConnectionToHost() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bLostConnectionToHost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	struct ClientAdjustment
	{
		private ubyte __buffer__[49];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.PlayerController.ClientAdjustment")); }
		@property final auto ref
		{
			Actor.EPhysics newPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)&this + 4); }
			Vector NewLoc() { return *cast(Vector*)(cast(size_t)&this + 8); }
			Vector NewVel() { return *cast(Vector*)(cast(size_t)&this + 20); }
			Actor NewBase() { return *cast(Actor*)(cast(size_t)&this + 32); }
			Vector NewFloor() { return *cast(Vector*)(cast(size_t)&this + 36); }
			float TimeStamp() { return *cast(float*)(cast(size_t)&this + 0); }
			ubyte bAckGoodMove() { return *cast(ubyte*)(cast(size_t)&this + 48); }
		}
	}
	struct InputMatchRequest
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.PlayerController.InputMatchRequest")); }
		@property final auto ref
		{
			ScriptArray!(PlayerController.InputEntry) Inputs() { return *cast(ScriptArray!(PlayerController.InputEntry)*)(cast(size_t)&this + 0); }
			Actor MatchActor() { return *cast(Actor*)(cast(size_t)&this + 12); }
			ScriptName MatchFuncName() { return *cast(ScriptName*)(cast(size_t)&this + 16); }
			ScriptName FailedFuncName() { return *cast(ScriptName*)(cast(size_t)&this + 36); }
			ScriptName RequestName() { return *cast(ScriptName*)(cast(size_t)&this + 44); }
			int MatchIdx() { return *cast(int*)(cast(size_t)&this + 52); }
			float LastMatchTime() { return *cast(float*)(cast(size_t)&this + 56); }
		}
	}
	struct InputEntry
	{
		private ubyte __buffer__[13];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.PlayerController.InputEntry")); }
		@property final auto ref
		{
			PlayerController.EInputTypes Type() { return *cast(PlayerController.EInputTypes*)(cast(size_t)&this + 0); }
			float Value() { return *cast(float*)(cast(size_t)&this + 4); }
			float TimeDelta() { return *cast(float*)(cast(size_t)&this + 8); }
			PlayerController.EInputMatchAction Action() { return *cast(PlayerController.EInputMatchAction*)(cast(size_t)&this + 12); }
		}
	}
	@property final
	{
		auto ref
		{
			float LODDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 960); }
			// WARNING: Property 'Player' has the same name as a defined type!
			Actor ViewTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 936); }
			Camera PlayerCamera() { return *cast(Camera*)(cast(size_t)cast(void*)this + 904); }
			CoverReplicator MyCoverReplicator() { return *cast(CoverReplicator*)(cast(size_t)cast(void*)this + 1352); }
			float MaxTimeMargin() { return *cast(float*)(cast(size_t)cast(void*)this + 1044); }
			float MaxResponseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
			float LastActiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
			OnlineSubsystem OnlineSub() { return *cast(OnlineSubsystem*)(cast(size_t)cast(void*)this + 1248); }
			ScriptArray!(PlayerController.ConnectedPeerInfo) ConnectedPeers() { return *cast(ScriptArray!(PlayerController.ConnectedPeerInfo)*)(cast(size_t)cast(void*)this + 1220); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) BestNextHostPeers() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 1232); }
			OnlineGameSearch MigratedSearchToJoin() { return *cast(OnlineGameSearch*)(cast(size_t)cast(void*)this + 1244); }
			float TimeMargin() { return *cast(float*)(cast(size_t)cast(void*)this + 1036); }
			HUD myHUD() { return *cast(HUD*)(cast(size_t)cast(void*)this + 992); }
			float WaitDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 920); }
			SavedMove SavedMoves() { return *cast(SavedMove*)(cast(size_t)cast(void*)this + 1000); }
			SavedMove PendingMove() { return *cast(SavedMove*)(cast(size_t)cast(void*)this + 1008); }
			// WARNING: Property 'PlayerInput' has the same name as a defined type!
			ScriptClass InputClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1136); }
			ScriptArray!(Interaction) Interactions() { return *cast(ScriptArray!(Interaction)*)(cast(size_t)cast(void*)this + 1172); }
			ScriptString ForceFeedbackManagerClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1156); }
			// WARNING: Property 'ForceFeedbackManager' has the same name as a defined type!
			UIDataStore_OnlinePlayerData OnlinePlayerData() { return *cast(UIDataStore_OnlinePlayerData*)(cast(size_t)cast(void*)this + 1260); }
			Pawn AcknowledgedPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 924); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) HearSoundActiveComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 1384); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) HearSoundPoolComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 1396); }
			float FOVAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 948); }
			float DefaultFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 956); }
			float DesiredFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
			float LastBroadcastTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1288); }
			ScriptString LastBroadcastString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1292); }
			float LastUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1028); }
			float CurrentTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1024); }
			float LastSpeedHackLog() { return *cast(float*)(cast(size_t)cast(void*)this + 1064); }
			PlayerController.ClientAdjustment PendingAdjustment() { return *cast(PlayerController.ClientAdjustment*)(cast(size_t)cast(void*)this + 1068); }
			float ServerTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1032); }
			ScriptClass SavedMoveClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 996); }
			int ClientCap() { return *cast(int*)(cast(size_t)cast(void*)this + 1052); }
			float LastPingUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 1060); }
			SavedMove FreeMoves() { return *cast(SavedMove*)(cast(size_t)cast(void*)this + 1004); }
			Vector LastAckedAccel() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1012); }
			ubyte bRun() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 931); }
			ubyte bDuck() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 932); }
			float ClientUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1040); }
			float InteractDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1264); }
			ScriptClass CameraClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 908); }
			Actor.EDoubleClickDir DoubleClickDir() { return *cast(Actor.EDoubleClickDir*)(cast(size_t)cast(void*)this + 928); }
			int GroundPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 1120); }
			float LastSpectatorStateSynchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1420); }
			float SpectatorCameraSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1368); }
			PlayerReplicationInfo RealViewTarget() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 940); }
			float MinRespawnDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 1376); }
			NetConnection PendingSwapConnection() { return *cast(NetConnection*)(cast(size_t)cast(void*)this + 1372); }
			ubyte bIgnoreMoveInput() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 929); }
			ubyte bIgnoreLookInput() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 930); }
			ScriptArray!(ScriptName) PendingMapChangeLevelNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1340); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) VoicePacketFilter() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 1208); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) GameplayVoiceMuteList() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 1196); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) VoiceMuteList() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 1184); }
			ScriptArray!(PlayerController.DebugTextInfo) DebugTextList() { return *cast(ScriptArray!(PlayerController.DebugTextInfo)*)(cast(size_t)cast(void*)this + 1356); }
			ubyte NetPlayerIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 933); }
			// WARNING: Property 'CheatManager' has the same name as a defined type!
			InterpTrackInstDirector ControllingDirTrackInst() { return *cast(InterpTrackInstDirector*)(cast(size_t)cast(void*)this + 944); }
			Rotator TargetViewRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 964); }
			float TargetEyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 976); }
			Rotator BlendedTargetViewRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 980); }
			float DynamicPingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1056); }
			ScriptClass CheatClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1128); }
			Vector FailedPathStart() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1140); }
			ScriptName DelayedJoinSessionName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1268); }
			ScriptArray!(PlayerController.InputMatchRequest) InputRequests() { return *cast(ScriptArray!(PlayerController.InputMatchRequest)*)(cast(size_t)cast(void*)this + 1276); }
			int MaxConcurrentHearSounds() { return *cast(int*)(cast(size_t)cast(void*)this + 1380); }
			ScriptArray!(Actor) HiddenActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 1408); }
		}
		bool bIsExternalUIOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x400000) != 0; }
		bool bIsExternalUIOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x400000; } return val; }
		bool bPendingDestroy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x200) != 0; }
		bool bPendingDestroy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x200; } return val; }
		bool bIsControllerConnected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x800000) != 0; }
		bool bIsControllerConnected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x800000; } return val; }
		bool bShortConnectTimeOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x100) != 0; }
		bool bShortConnectTimeOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x100; } return val; }
		bool bFrozen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x1) != 0; }
		bool bFrozen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x1; } return val; }
		bool bWasSpeedHack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x400) != 0; }
		bool bWasSpeedHack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x400; } return val; }
		bool bDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x4) != 0; }
		bool bDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x4; } return val; }
		bool bUpdatePosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x8) != 0; }
		bool bUpdatePosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x8; } return val; }
		bool bPressedJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x2) != 0; }
		bool bPressedJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x2; } return val; }
		bool bUpdating() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x10) != 0; }
		bool bUpdating(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x10; } return val; }
		bool bCinematicMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x10000) != 0; }
		bool bCinematicMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x10000; } return val; }
		bool bAimingHelp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x1000) != 0; }
		bool bAimingHelp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x1000; } return val; }
		bool bClientSimulatingViewTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x2000) != 0; }
		bool bClientSimulatingViewTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x2000; } return val; }
		bool bCheatFlying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x40) != 0; }
		bool bCheatFlying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x40; } return val; }
		bool bCinemaDisableInputMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x20000) != 0; }
		bool bCinemaDisableInputMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x20000; } return val; }
		bool bCinemaDisableInputLook() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x40000) != 0; }
		bool bCinemaDisableInputLook(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x40000; } return val; }
		bool bHasVoiceHandshakeCompleted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x8000) != 0; }
		bool bHasVoiceHandshakeCompleted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x8000; } return val; }
		bool bNeverSwitchOnPickup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x20) != 0; }
		bool bNeverSwitchOnPickup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x20; } return val; }
		bool bCameraPositionLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x80) != 0; }
		bool bCameraPositionLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x80; } return val; }
		bool bWasSaturated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x800) != 0; }
		bool bWasSaturated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x800; } return val; }
		bool bPreventRespawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x4000) != 0; }
		bool bPreventRespawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x4000; } return val; }
		bool bIgnoreNetworkMessages() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x80000) != 0; }
		bool bIgnoreNetworkMessages(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x80000; } return val; }
		bool bReplicateAllPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x100000) != 0; }
		bool bReplicateAllPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x100000; } return val; }
		bool bIsUsingStreamingVolumes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x200000) != 0; }
		bool bIsUsingStreamingVolumes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x200000; } return val; }
		bool bCheckSoundOcclusion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x1000000) != 0; }
		bool bCheckSoundOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x1000000; } return val; }
		bool bDebugCameraAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x2000000) != 0; }
		bool bDebugCameraAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x2000000; } return val; }
		bool bBlockCameraAnimsFromOverridingPostProcess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x4000000) != 0; }
		bool bBlockCameraAnimsFromOverridingPostProcess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x4000000; } return val; }
		bool bLogHearSoundOverflow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x8000000) != 0; }
		bool bLogHearSoundOverflow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x8000000; } return val; }
		bool bCheckRelevancyThroughPortals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x10000000) != 0; }
		bool bCheckRelevancyThroughPortals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x10000000; } return val; }
		bool bDebugClientAdjustPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x20000000) != 0; }
		bool bDebugClientAdjustPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x20000000; } return val; }
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
	void GetRegisteredPlayersInSession(ScriptName SessionName, ScriptArray!(OnlineSubsystem.UniqueNetId)* OutRegisteredPlayers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *OutRegisteredPlayers;
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
	void GetTriggerUseList(float interactDistanceToCheck, float crosshairDist, float minDot, bool bUsuableOnly, ScriptArray!(Trigger)* out_useList)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = interactDistanceToCheck;
		*cast(float*)&params[4] = crosshairDist;
		*cast(float*)&params[8] = minDot;
		*cast(bool*)&params[12] = bUsuableOnly;
		*cast(ScriptArray!(Trigger)*)&params[16] = *out_useList;
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
	void GetPlayerViewPoint(Vector* out_Location, Rotator* out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Location;
		*cast(Rotator*)&params[12] = *out_Rotation;
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
	void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
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
	void PlayRumble(AnimNotify_Rumble TheAnimNotify)
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
	bool IsPlayerMuted(OnlineSubsystem.UniqueNetId* Sender)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = *Sender;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPlayerMuted, params.ptr, cast(void*)0);
		*Sender = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(bool*)&params[8];
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
	void OnGameInviteAccepted(OnlineGameSearch.OnlineGameSearchResult* InviteResult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *InviteResult;
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
		*cast(int*)params.ptr = *out_SplitscreenPlayerIndex;
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
	bool GetAchievementProgression(int AchievementId, float* CurrentValue, float* MaxValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = AchievementId;
		*cast(float*)&params[4] = *CurrentValue;
		*cast(float*)&params[8] = *MaxValue;
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
	bool HasPeerConnection(OnlineSubsystem.UniqueNetId* PeerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = *PeerNetId;
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
	void LogOutBugItGoToLogFile(ScriptString InScreenShotDesc, ScriptString InGoString, ScriptString InLocString)
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
	void LogOutBugItAIGoToLogFile(ScriptString InScreenShotDesc, ScriptString InGoString, ScriptString InLocString)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InScreenShotDesc;
		*cast(ScriptString*)&params[12] = InGoString;
		*cast(ScriptString*)&params[24] = InLocString;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogOutBugItAIGoToLogFile, params.ptr, cast(void*)0);
	}
	void BugItStringCreator(Vector* ViewLocation, Rotator* ViewRotation, ScriptString* GoString, ScriptString* LocString)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = *ViewLocation;
		*cast(Rotator*)&params[12] = *ViewRotation;
		*cast(ScriptString*)&params[24] = *GoString;
		*cast(ScriptString*)&params[36] = *LocString;
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
