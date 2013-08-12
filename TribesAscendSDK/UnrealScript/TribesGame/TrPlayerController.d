module UnrealScript.TribesGame.TrPlayerController;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.CameraActor;
import UnrealScript.TribesGame.TrInventoryHelper;
import UnrealScript.TribesGame.TrWeatherVolume;
import UnrealScript.TribesGame.TrProjectile;
import UnrealScript.PlatformCommon.TgSupportCommands;
import UnrealScript.TribesGame.TrChatConsoleCommands;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrSeqAct_GiveAccolade;
import UnrealScript.TribesGame.TrSeqAct_PlayVGSCommand;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTTeamInfo;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.TribesGame.TrHelpTextManager;
import UnrealScript.TribesGame.TrCameraModifier_CameraShake;
import UnrealScript.TribesGame.TrDeployable_MotionSensor;
import UnrealScript.Engine.Input;
import UnrealScript.TribesGame.TrStation;
import UnrealScript.TribesGame.TrCTFBase;
import UnrealScript.UDKBase.UDKEmitCameraEffect;
import UnrealScript.TribesGame.TrSeqAct_GiveCredits;
import UnrealScript.TribesGame.TrVehicleStation;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.TribesGame.TrPlayerReplicationInfo;
import UnrealScript.TribesGame.TrPowerGenerator;
import UnrealScript.TribesGame.TrFlagBase;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.TribesGame.TrAnnouncer;
import UnrealScript.TribesGame.TrPaperDoll;
import UnrealScript.TribesGame.TrAccoladeManager;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrEquipInterface;
import UnrealScript.TribesGame.TrPlayerInput_Spectator;
import UnrealScript.TribesGame.TrContentLoader;
import UnrealScript.TribesGame.TrSeqAct_RefreshInventory;
import UnrealScript.TribesGame.TrFlagCTF;
import UnrealScript.TribesGame.TrCamera_SpectatorBookmark;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrVehicle;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrStatsInterface;
import UnrealScript.TribesGame.AlienFXManager;
import UnrealScript.TribesGame.TrStrings;
import UnrealScript.TribesGame.TrMusicManager;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.MaterialEffect;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.TribesGame.TrDevice;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.Engine.Weapon;

extern(C++) interface TrPlayerController : UTPlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetLanguageFontIndex;
			ScriptFunction mInTraining;
			ScriptFunction mGetFamilyInfoFromId;
			ScriptFunction mGetDeviceByEquipPoint;
			ScriptFunction mGetZoomedState;
			ScriptFunction mInRovingSpectate;
			ScriptFunction mIsTrPlayerMuted;
			ScriptFunction mGetActiveClassId;
			ScriptFunction mGetTeamClassCount;
			ScriptFunction mRegisterPendingClass;
			ScriptFunction mGetAllowedClassCount;
			ScriptFunction mSendPrivateChatMessage;
			ScriptFunction mBroadcastChatMessage;
			ScriptFunction mServerRequestPickTeam;
			ScriptFunction mChooseBloodEagle;
			ScriptFunction mChooseDiamondSword;
			ScriptFunction mGetVehicleCost;
			ScriptFunction mGetCurrentCredits;
			ScriptFunction mIsBassBoostToggled;
			ScriptFunction mAllowHelpTextToDisplay;
			ScriptFunction mNeedToVisitInventoryStation;
			ScriptFunction mGetCurrentDetermination;
			ScriptFunction mGetNewPlayerAssistToApply;
			ScriptFunction mPlayReliableSound;
			ScriptFunction mSendCtrlRequest;
			ScriptFunction mSendGameRequest;
			ScriptFunction mTestSteamPurchase;
			ScriptFunction mShowAdminPage;
			ScriptFunction mSetHitValidationMode;
			ScriptFunction mKickPlayerFromMatch;
			ScriptFunction mMainMenuIsOpen;
			ScriptFunction mSetMenuInGame;
			ScriptFunction mSendMenuToLobby;
			ScriptFunction mTweenSummaryScreen;
			ScriptFunction mSetMenuSummaryScreen;
			ScriptFunction mSetMenuEndOfMatch;
			ScriptFunction mBeginExperienceTweens;
			ScriptFunction mKickVoteReply;
			ScriptFunction mSetMenuMatchCountdown;
			ScriptFunction mGetUserSelectedClass;
			ScriptFunction mRevertSetting;
			ScriptFunction mSendMenuBack;
			ScriptFunction mFireAcquisition;
			ScriptFunction mForceFocus;
			ScriptFunction mUpdateTVTimer;
			ScriptFunction mUpdateDealTimer;
			ScriptFunction mUpdateQueueTimer;
			ScriptFunction mToggleWorkingGraphic;
			ScriptFunction mEndHotkeyBlock;
			ScriptFunction mMutePlayer;
			ScriptFunction mUnmutePlayer;
			ScriptFunction mHaveMenu;
			ScriptFunction mIsChatFiltered;
			ScriptFunction mRequestKickVote;
			ScriptFunction mHideMenu;
			ScriptFunction mOpenMenu;
			ScriptFunction mOpenClasses;
			ScriptFunction mToggleFriends;
			ScriptFunction mToggleSettings;
			ScriptFunction mToggleMainMenu;
			ScriptFunction mClaimPromotion;
			ScriptFunction mFireUILoadSummary;
			ScriptFunction mFireRefreshPage;
			ScriptFunction mToggleBassBoost;
			ScriptFunction mForwardChatFlag;
			ScriptFunction mShowNotification;
			ScriptFunction mHideNotification;
			ScriptFunction mChatMessageReceived;
			ScriptFunction mShowChat;
			ScriptFunction mHideChat;
			ScriptFunction mToggleChat;
			ScriptFunction mPushChat;
			ScriptFunction mBug;
			ScriptFunction m_Crash;
			ScriptFunction mIsGameUsingSeekFreeLoading;
			ScriptFunction mResetRunaway;
			ScriptFunction mClearVehicleMenu;
			ScriptFunction mShowVehicleMenu;
			ScriptFunction mAddVehicleMenuOption;
			ScriptFunction mGetOnlineFriends;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mInitHelpTextManager;
			ScriptFunction mInitInputSystem;
			ScriptFunction mPlayAnnouncerSound;
			ScriptFunction mTestAnnouncement;
			ScriptFunction mClientHearReliableSound;
			ScriptFunction mClientMySaberLauncherTargetingUpdated;
			ScriptFunction mClientSeekingMissileTargetingSelfEvent;
			ScriptFunction mOnMissileIntercepted;
			ScriptFunction mShowHUDNotification;
			ScriptFunction mHideHUDNotification;
			ScriptFunction mCheckBulletWhip;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mProcessCreditEvent;
			ScriptFunction mModifyCredits;
			ScriptFunction mUpdateCurrentCredits;
			ScriptFunction mCreditsSoundFinished;
			ScriptFunction mClientUpdateCredits;
			ScriptFunction mGetLatestAccoladeIconIndex;
			ScriptFunction mClientShowAccoladeIcon;
			ScriptFunction mClientShowAccoladeText;
			ScriptFunction mResetStreaks;
			ScriptFunction mGiveCredits;
			ScriptFunction mServerGiveCreditsCheat;
			ScriptFunction mAimingHelp;
			ScriptFunction mNotifyChangedWeapon;
			ScriptFunction mReloadWeapon;
			ScriptFunction mServerReloadWeapon;
			ScriptFunction mServerSetCharFamily;
			ScriptFunction mSuicide;
			ScriptFunction mServerSuicide;
			ScriptFunction mGetArmorType;
			ScriptFunction mGetRespawnDelayTotalTime;
			ScriptFunction mLimitViewRotation;
			ScriptFunction mPressedMelee;
			ScriptFunction mPressedLaser;
			ScriptFunction mPressedBelt;
			ScriptFunction mPressedPack;
			ScriptFunction mPressedDeployable;
			ScriptFunction mSetShowEquip;
			ScriptFunction mPressedConsoleUse;
			ScriptFunction mPressedWeaponSwitch;
			ScriptFunction mEquipPrimary;
			ScriptFunction mEquipSecondary;
			ScriptFunction mSwitchWeapon;
			ScriptFunction mPrevWeapon;
			ScriptFunction mNextWeapon;
			ScriptFunction mActivateDevice;
			ScriptFunction mStartFire;
			ScriptFunction mUpdateLockedTarget;
			ScriptFunction mIdentifyTeamMessage;
			ScriptFunction mPlayStartupMessage;
			ScriptFunction mFindValidGRI;
			ScriptFunction mInitHUDObjects;
			ScriptFunction mClientStartSpawnTimer;
			ScriptFunction mCompletePickTeam;
			ScriptFunction mServerRequestAutoAssignTeam;
			ScriptFunction mClientEndTeamSelect;
			ScriptFunction mChangeTeam;
			ScriptFunction mViewAPlayer;
			ScriptFunction mServerPlayerTick;
			ScriptFunction mPlayerTick;
			ScriptFunction mGetAdjustedAimFor;
			ScriptFunction mStartWeather;
			ScriptFunction mStopWeather;
			ScriptFunction mPawnEnteredWeatherVolume;
			ScriptFunction mPawnLeftWeatherVolume;
			ScriptFunction mPlayLowHealthFX;
			ScriptFunction mStopLowHealthFX;
			ScriptFunction mPlayRechargeHealthFX;
			ScriptFunction mStopRechargeHealthFX;
			ScriptFunction mToggleJetpack;
			ScriptFunction mEnableJetpack;
			ScriptFunction mIgnoreMoveInput;
			ScriptFunction mDoJump;
			ScriptFunction mPerformBlink;
			ScriptFunction mGetBlinkPackAccel;
			ScriptFunction mInitRespawnTimer;
			ScriptFunction mUpdateRespawnTimer;
			ScriptFunction mServerRequestRespawn;
			ScriptFunction mRequestRespawn;
			ScriptFunction mRespawn;
			ScriptFunction mPlayRespawnSoonSound;
			ScriptFunction mCleanupGameplayEffectsOnDeath;
			ScriptFunction mOnCrossedOffArenaList;
			ScriptFunction mPossess;
			ScriptFunction mRefreshHUD;
			ScriptFunction mGetAirVehicleInversion;
			ScriptFunction mServerSetAirVehicleControls;
			ScriptFunction mSetAirVehicleControls;
			ScriptFunction mIsInVehicle;
			ScriptFunction mClientVehiclePhysUpdated;
			ScriptFunction mServerVehiclePhysUpdated;
			ScriptFunction mServerVerifyVehiclePhys;
			ScriptFunction mServerCorrectClientPhys;
			ScriptFunction mServerToggleVehicleJets;
			ScriptFunction mToggleVehicleJets;
			ScriptFunction mProcessRiding;
			ScriptFunction mServerRiding;
			ScriptFunction mSwitchToCallIn;
			ScriptFunction mServerRequestCallInChange;
			ScriptFunction mSwitchToSeat;
			ScriptFunction mServerSwitchToSeat;
			ScriptFunction mTriggerInteracted;
			ScriptFunction mServerRequestLoadoutChange;
			ScriptFunction mUpdatePaperDoll;
			ScriptFunction mUpdatePaperDoll_Device;
			ScriptFunction mSpawnVehicle;
			ScriptFunction mRequestBuyVehicle;
			ScriptFunction mPressedSki;
			ScriptFunction mReleasedSki;
			ScriptFunction mToggleSki;
			ScriptFunction mDelayReleasedSki;
			ScriptFunction mSetBindSkiJet;
			ScriptFunction mToggleShowObjectMarkers;
			ScriptFunction mServerStartSki;
			ScriptFunction mServerStopSki;
			ScriptFunction mClientSetHUD;
			ScriptFunction mSwitchHud;
			ScriptFunction mOnKickback;
			ScriptFunction mUpdateKickbackDirection;
			ScriptFunction mRestoreMoveInput;
			ScriptFunction mClientRestoreMoveInput;
			ScriptFunction mServerRequestSpawnVehicle;
			ScriptFunction mPerformedUseAction;
			ScriptFunction mPressedZoom;
			ScriptFunction mReleasedZoom;
			ScriptFunction mMagnifyZoom;
			ScriptFunction mDemagnifyZoom;
			ScriptFunction mReleaseZoom;
			ScriptFunction mCheckZoomButton;
			ScriptFunction mTrStartZoom;
			ScriptFunction mTrStopZoom;
			ScriptFunction mTrEndZoom;
			ScriptFunction mResetZoomDuration;
			ScriptFunction mServerSetZoom;
			ScriptFunction mReceiveLocalizedMessage;
			ScriptFunction mReceiveLocalizedNagMessage;
			ScriptFunction mDestroyed;
			ScriptFunction mTrClientMusicEvent;
			ScriptFunction mClientRestart;
			ScriptFunction mUpdateClientSpawnTimer;
			ScriptFunction mGameHasEnded;
			ScriptFunction mCheckJumpOrDuck;
			ScriptFunction mClientGameEnded;
			ScriptFunction mServerDropFlag;
			ScriptFunction mGetPlayerViewPoint;
			ScriptFunction mActivateFreeCam;
			ScriptFunction mDeactivateFreeCam;
			ScriptFunction mSetViewTargetAsOverwatch;
			ScriptFunction mPlayCameraShake;
			ScriptFunction mClientPlayForceFeedbackWaveform;
			ScriptFunction mUpdateSpeedCameraEffect;
			ScriptFunction mSpeedCamEffect;
			ScriptFunction mClientPulseHUD;
			ScriptFunction mPulseShield;
			ScriptFunction mAddTimePlayed;
			ScriptFunction mAcknowledgePossession;
			ScriptFunction mMatchEndSoundMode;
			ScriptFunction mResetSoundMode;
			ScriptFunction mSuppressHelpText;
			ScriptFunction mTalkVGS;
			ScriptFunction mSay;
			ScriptFunction mIsPlayerCommand;
			ScriptFunction mShowFeedbackMessage;
			ScriptFunction mGetChatColor;
			ScriptFunction mAddChatToConsole;
			ScriptFunction mGetLastTellSender;
			ScriptFunction mReplyTalk;
			ScriptFunction mCanCommunicate;
			ScriptFunction mTalk;
			ScriptFunction mChatConsole;
			ScriptFunction mTalkConsole;
			ScriptFunction mTeamTalk;
			ScriptFunction mTeamSay;
			ScriptFunction mAllowTextMessage;
			ScriptFunction mWarnPlayerAboutSpam;
			ScriptFunction mBeginVGS;
			ScriptFunction mSpotTarget;
			ScriptFunction mServerRequestVGSContextCommand;
			ScriptFunction mServerRequestVGSCommand;
			ScriptFunction mClientReceiveVGSCommand;
			ScriptFunction mClientReceiveVGSContextCommand;
			ScriptFunction mShowMoveErrors;
			ScriptFunction mOnSkiHelpTextDistanceThresholdReached;
			ScriptFunction mOnJetpackHelpTextDistanceThresholdReached;
			ScriptFunction mLoadPlayerProfile;
			ScriptFunction mGetNewPlayerAssistAmount;
			ScriptFunction mUpdateNewPlayerAssistPoints;
			ScriptFunction mBehindView;
			ScriptFunction mServerSetBehindView;
			ScriptFunction mClientSetBehindView;
			ScriptFunction mGetEngineSettings;
			ScriptFunction mGetSpectatorSettings;
			ScriptFunction mClientOnMotionSensorAlarmSounded;
			ScriptFunction mClientOnMotionSensorMineSounded;
			ScriptFunction mLoadPendingLoadoutContentData;
			ScriptFunction mLoadPendingDeviceContentData;
			ScriptFunction mHideHUDElements;
			ScriptFunction mClientShowFlagIcon;
			ScriptFunction mClientSetPlayerClassObjects;
			ScriptFunction mUpdatePotentialSeekingTargets;
			ScriptFunction mNotifyHitWall;
			ScriptFunction mNotifyFallingHitWall;
			ScriptFunction mSpectate;
			ScriptFunction mEndSpectate;
			ScriptFunction mClientSpectate;
			ScriptFunction mServerSpectate;
			ScriptFunction mServerViewFlags;
			ScriptFunction mServerViewFlagStands;
			ScriptFunction mServerViewGenerators;
			ScriptFunction mServerViewBookmark;
			ScriptFunction mServerViewVehicles;
			ScriptFunction mServerViewFastestPlayer;
			ScriptFunction mServerViewActor;
			ScriptFunction mClientOnViewTargetChange;
			ScriptFunction mServerIncreaseCamDistance;
			ScriptFunction mServerDecreaseCamDistance;
			ScriptFunction mServerSetMoveSpeed;
			ScriptFunction mOnViewTargetCapturedFlag;
			ScriptFunction mOnViewTargetFlagReturned;
			ScriptFunction mOnViewTargetDroppedFlag;
			ScriptFunction mOnViewTargetLeftVehicle;
			ScriptFunction mGetViewTargetList;
			ScriptFunction mServerUnPossess;
			ScriptFunction mClientPlayTakeHit;
			ScriptFunction mClientPlayReticuleHitSound;
			ScriptFunction mClientPlayBluePlateImpact;
			ScriptFunction mClientPlayAirMailImpact;
			ScriptFunction mSummarizeAwards;
			ScriptFunction mClientMatchOver;
			ScriptFunction mClientSetEndOfMatch;
			ScriptFunction mClientFadeToSummary;
			ScriptFunction mUpdateMatchCountdown;
			ScriptFunction mUpdateRoundCountdown;
			ScriptFunction mUpdateGameCountdown;
			ScriptFunction mServerKickPlayer;
			ScriptFunction mClientKickPlayer;
			ScriptFunction mKickWarning;
			ScriptFunction mFumbledFlag;
			ScriptFunction mClientOnFumbledFlag;
			ScriptFunction mUpdateCallInAvailability;
			ScriptFunction mUpdateCallInCooldown;
			ScriptFunction mCalcCameraOnViewTarget;
			ScriptFunction mIsGameTypeArena;
			ScriptFunction mIsGameTypeDaD;
			ScriptFunction mIsGameTypeCaH;
			ScriptFunction mSwitchToDeathCamera;
			ScriptFunction mAddProjectileToTetherList;
			ScriptFunction mCheckTetherList;
			ScriptFunction mTetherProjectile;
			ScriptFunction mConfigureSkiSpeedSteps;
			ScriptFunction mLoadingTimer;
			ScriptFunction mFlushAccumulatedDetermination;
			ScriptFunction mClearDetermination;
			ScriptFunction mAddDetermination;
			ScriptFunction mOnMenuMovieOpened;
			ScriptFunction mOnMenuMovieClosed;
			ScriptFunction mClientPlayVGSAudio;
			ScriptFunction mVGSAudioFinished;
			ScriptFunction mClientSetLastDamagerInfo;
			ScriptFunction mEnableTinyWeapons;
			ScriptFunction mGetTinyWeaponValue;
			ScriptFunction mEnableChatFilter;
			ScriptFunction mGetChatFilterValue;
			ScriptFunction mEnableDamageCounter;
			ScriptFunction mGetDamageCounterValue;
			ScriptFunction mEnableHUDObjectives;
			ScriptFunction mEnableHUDReticule;
			ScriptFunction mEnableHUDCredits;
			ScriptFunction mEnableHUDAccolades;
			ScriptFunction mEnableHUDBadges;
			ScriptFunction mEnableHUDScores;
			ScriptFunction mEnableHUDHealthBar;
			ScriptFunction mEnableHUDVisor;
			ScriptFunction mEnableHUDChat;
			ScriptFunction mEnableHUDCombatLog;
			ScriptFunction mEnableHUDKillbox;
			ScriptFunction mEnableHUDDeathcam;
			ScriptFunction mEnableHUDHeroText;
			ScriptFunction mEnableHUDPromptPanel;
			ScriptFunction mEnableHUDRespawnTimer;
			ScriptFunction mEnableHUDSkiBars;
			ScriptFunction mEnableHUDFriendColoring;
			ScriptFunction mEnableHUDNotifications;
			ScriptFunction mEnableHUDFriendStateNotifications;
			ScriptFunction mEnableHUDCracks;
			ScriptFunction mShowAlienFX;
			ScriptFunction mGetHUDObjectivesValue;
			ScriptFunction mGetHUDNotifications;
			ScriptFunction mGetHUDFriendStateNotifications;
			ScriptFunction mGetWhisperFilterValue;
			ScriptFunction mSetWhisperFilter;
			ScriptFunction mSummaryTweenTimer;
			ScriptFunction mVoteNo;
			ScriptFunction mVoteYes;
			ScriptFunction mFlashShooterHitReticule;
			ScriptFunction mServerShowOverheadNumber;
			ScriptFunction mClientShowOverheadNumber;
			ScriptFunction mGetCreditsForDamageAmount;
			ScriptFunction mCashForDamage;
			ScriptFunction mAwardTeamAssistCredits;
			ScriptFunction mAwardTeamRabbitAssistCredits;
			ScriptFunction mTypeKeyPressed;
			ScriptFunction mFOV;
			ScriptFunction mFixFOV;
			ScriptFunction mSetFOV;
			ScriptFunction mServerSetClassAffordable;
			ScriptFunction mGetClassBit;
			ScriptFunction mTestTrainingSlot;
			ScriptFunction mTestSlot;
			ScriptFunction mServerTestSlot;
			ScriptFunction mOnDeviceContentDataClassLoaded;
			ScriptFunction mOn3PSkinContentLoaded;
			ScriptFunction mOn1PSkinContentLoaded;
			ScriptFunction mAddPending3PSkin;
			ScriptFunction mOnClassSelectedMainMenu;
			ScriptFunction mOnGiveCredits;
			ScriptFunction mOnGiveAccolade;
			ScriptFunction mOnPlayVGSCommand;
			ScriptFunction mOnRefreshInventory;
			ScriptFunction mStartForceFocusTimer;
			ScriptFunction mStartAcquisitionFireTimer;
			ScriptFunction mStartSettingBlock;
			ScriptFunction mAutoRevertSetting;
			ScriptFunction mStartSendMenuBackTimer;
			ScriptFunction mQueueTimer;
			ScriptFunction mTVTimer;
			ScriptFunction mDealTimer;
			ScriptFunction mStartHotkeyBlock;
			ScriptFunction mClientArenaRoundEnded;
			ScriptFunction mClientPlayerResettingAndRespawning;
			ScriptFunction mDestroyAllOwnedDeployables;
			ScriptFunction mDestroyAllOwnedMines;
			ScriptFunction mDestroyAllOwnedProjectiles;
			ScriptFunction mQueueBadge;
			ScriptFunction mClientQueueAccolade;
			ScriptFunction mClassHotkeyPTH;
			ScriptFunction mClassHotkeySEN;
			ScriptFunction mClassHotkeyINF;
			ScriptFunction mClassHotkeySLD;
			ScriptFunction mClassHotkeyRDR;
			ScriptFunction mClassHotkeyTCN;
			ScriptFunction mClassHotkeyJUG;
			ScriptFunction mClassHotkeyDMB;
			ScriptFunction mClassHotkeyBRT;
			ScriptFunction mQuickClasses;
			ScriptFunction mQuickLoadouts;
			ScriptFunction mEndVGSInput;
			ScriptFunction mStartUILoadSummaryTimer;
			ScriptFunction mOpenVehicleMenu;
			ScriptFunction mOnScoreChanged;
			ScriptFunction mCheckFriendlyFireKills;
			ScriptFunction mCheckFriendlyFireDamage;
			ScriptFunction mStartRefreshPageTimer;
			ScriptFunction mUpdateMainMenuPaperDoll_Mesh;
			ScriptFunction mClearMainMenuPaperDoll;
			ScriptFunction mClearPaperDoll;
			ScriptFunction mSpecList;
			ScriptFunction mSampleVoice;
			ScriptFunction mStripTag;
			ScriptFunction mSetAllowSimProjectiles;
			ScriptFunction mServerSetAllowSimProjectiles;
		}
		public @property static final
		{
			ScriptFunction GetLanguageFontIndex() { return mGetLanguageFontIndex ? mGetLanguageFontIndex : (mGetLanguageFontIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetLanguageFontIndex")); }
			ScriptFunction InTraining() { return mInTraining ? mInTraining : (mInTraining = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.InTraining")); }
			ScriptFunction GetFamilyInfoFromId() { return mGetFamilyInfoFromId ? mGetFamilyInfoFromId : (mGetFamilyInfoFromId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetFamilyInfoFromId")); }
			ScriptFunction GetDeviceByEquipPoint() { return mGetDeviceByEquipPoint ? mGetDeviceByEquipPoint : (mGetDeviceByEquipPoint = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetDeviceByEquipPoint")); }
			ScriptFunction GetZoomedState() { return mGetZoomedState ? mGetZoomedState : (mGetZoomedState = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetZoomedState")); }
			ScriptFunction InRovingSpectate() { return mInRovingSpectate ? mInRovingSpectate : (mInRovingSpectate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.InRovingSpectate")); }
			ScriptFunction IsTrPlayerMuted() { return mIsTrPlayerMuted ? mIsTrPlayerMuted : (mIsTrPlayerMuted = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.IsTrPlayerMuted")); }
			ScriptFunction GetActiveClassId() { return mGetActiveClassId ? mGetActiveClassId : (mGetActiveClassId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetActiveClassId")); }
			ScriptFunction GetTeamClassCount() { return mGetTeamClassCount ? mGetTeamClassCount : (mGetTeamClassCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetTeamClassCount")); }
			ScriptFunction RegisterPendingClass() { return mRegisterPendingClass ? mRegisterPendingClass : (mRegisterPendingClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.RegisterPendingClass")); }
			ScriptFunction GetAllowedClassCount() { return mGetAllowedClassCount ? mGetAllowedClassCount : (mGetAllowedClassCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetAllowedClassCount")); }
			ScriptFunction SendPrivateChatMessage() { return mSendPrivateChatMessage ? mSendPrivateChatMessage : (mSendPrivateChatMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SendPrivateChatMessage")); }
			ScriptFunction BroadcastChatMessage() { return mBroadcastChatMessage ? mBroadcastChatMessage : (mBroadcastChatMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.BroadcastChatMessage")); }
			ScriptFunction ServerRequestPickTeam() { return mServerRequestPickTeam ? mServerRequestPickTeam : (mServerRequestPickTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerRequestPickTeam")); }
			ScriptFunction ChooseBloodEagle() { return mChooseBloodEagle ? mChooseBloodEagle : (mChooseBloodEagle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ChooseBloodEagle")); }
			ScriptFunction ChooseDiamondSword() { return mChooseDiamondSword ? mChooseDiamondSword : (mChooseDiamondSword = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ChooseDiamondSword")); }
			ScriptFunction GetVehicleCost() { return mGetVehicleCost ? mGetVehicleCost : (mGetVehicleCost = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetVehicleCost")); }
			ScriptFunction GetCurrentCredits() { return mGetCurrentCredits ? mGetCurrentCredits : (mGetCurrentCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetCurrentCredits")); }
			ScriptFunction IsBassBoostToggled() { return mIsBassBoostToggled ? mIsBassBoostToggled : (mIsBassBoostToggled = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.IsBassBoostToggled")); }
			ScriptFunction AllowHelpTextToDisplay() { return mAllowHelpTextToDisplay ? mAllowHelpTextToDisplay : (mAllowHelpTextToDisplay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AllowHelpTextToDisplay")); }
			ScriptFunction NeedToVisitInventoryStation() { return mNeedToVisitInventoryStation ? mNeedToVisitInventoryStation : (mNeedToVisitInventoryStation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.NeedToVisitInventoryStation")); }
			ScriptFunction GetCurrentDetermination() { return mGetCurrentDetermination ? mGetCurrentDetermination : (mGetCurrentDetermination = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetCurrentDetermination")); }
			ScriptFunction GetNewPlayerAssistToApply() { return mGetNewPlayerAssistToApply ? mGetNewPlayerAssistToApply : (mGetNewPlayerAssistToApply = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetNewPlayerAssistToApply")); }
			ScriptFunction PlayReliableSound() { return mPlayReliableSound ? mPlayReliableSound : (mPlayReliableSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PlayReliableSound")); }
			ScriptFunction SendCtrlRequest() { return mSendCtrlRequest ? mSendCtrlRequest : (mSendCtrlRequest = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SendCtrlRequest")); }
			ScriptFunction SendGameRequest() { return mSendGameRequest ? mSendGameRequest : (mSendGameRequest = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SendGameRequest")); }
			ScriptFunction TestSteamPurchase() { return mTestSteamPurchase ? mTestSteamPurchase : (mTestSteamPurchase = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TestSteamPurchase")); }
			ScriptFunction ShowAdminPage() { return mShowAdminPage ? mShowAdminPage : (mShowAdminPage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ShowAdminPage")); }
			ScriptFunction SetHitValidationMode() { return mSetHitValidationMode ? mSetHitValidationMode : (mSetHitValidationMode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetHitValidationMode")); }
			ScriptFunction KickPlayerFromMatch() { return mKickPlayerFromMatch ? mKickPlayerFromMatch : (mKickPlayerFromMatch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.KickPlayerFromMatch")); }
			ScriptFunction MainMenuIsOpen() { return mMainMenuIsOpen ? mMainMenuIsOpen : (mMainMenuIsOpen = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.MainMenuIsOpen")); }
			ScriptFunction SetMenuInGame() { return mSetMenuInGame ? mSetMenuInGame : (mSetMenuInGame = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetMenuInGame")); }
			ScriptFunction SendMenuToLobby() { return mSendMenuToLobby ? mSendMenuToLobby : (mSendMenuToLobby = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SendMenuToLobby")); }
			ScriptFunction TweenSummaryScreen() { return mTweenSummaryScreen ? mTweenSummaryScreen : (mTweenSummaryScreen = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TweenSummaryScreen")); }
			ScriptFunction SetMenuSummaryScreen() { return mSetMenuSummaryScreen ? mSetMenuSummaryScreen : (mSetMenuSummaryScreen = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetMenuSummaryScreen")); }
			ScriptFunction SetMenuEndOfMatch() { return mSetMenuEndOfMatch ? mSetMenuEndOfMatch : (mSetMenuEndOfMatch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetMenuEndOfMatch")); }
			ScriptFunction BeginExperienceTweens() { return mBeginExperienceTweens ? mBeginExperienceTweens : (mBeginExperienceTweens = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.BeginExperienceTweens")); }
			ScriptFunction KickVoteReply() { return mKickVoteReply ? mKickVoteReply : (mKickVoteReply = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.KickVoteReply")); }
			ScriptFunction SetMenuMatchCountdown() { return mSetMenuMatchCountdown ? mSetMenuMatchCountdown : (mSetMenuMatchCountdown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetMenuMatchCountdown")); }
			ScriptFunction GetUserSelectedClass() { return mGetUserSelectedClass ? mGetUserSelectedClass : (mGetUserSelectedClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetUserSelectedClass")); }
			ScriptFunction RevertSetting() { return mRevertSetting ? mRevertSetting : (mRevertSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.RevertSetting")); }
			ScriptFunction SendMenuBack() { return mSendMenuBack ? mSendMenuBack : (mSendMenuBack = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SendMenuBack")); }
			ScriptFunction FireAcquisition() { return mFireAcquisition ? mFireAcquisition : (mFireAcquisition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.FireAcquisition")); }
			ScriptFunction ForceFocus() { return mForceFocus ? mForceFocus : (mForceFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ForceFocus")); }
			ScriptFunction UpdateTVTimer() { return mUpdateTVTimer ? mUpdateTVTimer : (mUpdateTVTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateTVTimer")); }
			ScriptFunction UpdateDealTimer() { return mUpdateDealTimer ? mUpdateDealTimer : (mUpdateDealTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateDealTimer")); }
			ScriptFunction UpdateQueueTimer() { return mUpdateQueueTimer ? mUpdateQueueTimer : (mUpdateQueueTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateQueueTimer")); }
			ScriptFunction ToggleWorkingGraphic() { return mToggleWorkingGraphic ? mToggleWorkingGraphic : (mToggleWorkingGraphic = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ToggleWorkingGraphic")); }
			ScriptFunction EndHotkeyBlock() { return mEndHotkeyBlock ? mEndHotkeyBlock : (mEndHotkeyBlock = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EndHotkeyBlock")); }
			ScriptFunction MutePlayer() { return mMutePlayer ? mMutePlayer : (mMutePlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.MutePlayer")); }
			ScriptFunction UnmutePlayer() { return mUnmutePlayer ? mUnmutePlayer : (mUnmutePlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UnmutePlayer")); }
			ScriptFunction HaveMenu() { return mHaveMenu ? mHaveMenu : (mHaveMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.HaveMenu")); }
			ScriptFunction IsChatFiltered() { return mIsChatFiltered ? mIsChatFiltered : (mIsChatFiltered = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.IsChatFiltered")); }
			ScriptFunction RequestKickVote() { return mRequestKickVote ? mRequestKickVote : (mRequestKickVote = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.RequestKickVote")); }
			ScriptFunction HideMenu() { return mHideMenu ? mHideMenu : (mHideMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.HideMenu")); }
			ScriptFunction OpenMenu() { return mOpenMenu ? mOpenMenu : (mOpenMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OpenMenu")); }
			ScriptFunction OpenClasses() { return mOpenClasses ? mOpenClasses : (mOpenClasses = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OpenClasses")); }
			ScriptFunction ToggleFriends() { return mToggleFriends ? mToggleFriends : (mToggleFriends = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ToggleFriends")); }
			ScriptFunction ToggleSettings() { return mToggleSettings ? mToggleSettings : (mToggleSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ToggleSettings")); }
			ScriptFunction ToggleMainMenu() { return mToggleMainMenu ? mToggleMainMenu : (mToggleMainMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ToggleMainMenu")); }
			ScriptFunction ClaimPromotion() { return mClaimPromotion ? mClaimPromotion : (mClaimPromotion = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClaimPromotion")); }
			ScriptFunction FireUILoadSummary() { return mFireUILoadSummary ? mFireUILoadSummary : (mFireUILoadSummary = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.FireUILoadSummary")); }
			ScriptFunction FireRefreshPage() { return mFireRefreshPage ? mFireRefreshPage : (mFireRefreshPage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.FireRefreshPage")); }
			ScriptFunction ToggleBassBoost() { return mToggleBassBoost ? mToggleBassBoost : (mToggleBassBoost = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ToggleBassBoost")); }
			ScriptFunction ForwardChatFlag() { return mForwardChatFlag ? mForwardChatFlag : (mForwardChatFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ForwardChatFlag")); }
			ScriptFunction ShowNotification() { return mShowNotification ? mShowNotification : (mShowNotification = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ShowNotification")); }
			ScriptFunction HideNotification() { return mHideNotification ? mHideNotification : (mHideNotification = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.HideNotification")); }
			ScriptFunction ChatMessageReceived() { return mChatMessageReceived ? mChatMessageReceived : (mChatMessageReceived = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ChatMessageReceived")); }
			ScriptFunction ShowChat() { return mShowChat ? mShowChat : (mShowChat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ShowChat")); }
			ScriptFunction HideChat() { return mHideChat ? mHideChat : (mHideChat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.HideChat")); }
			ScriptFunction ToggleChat() { return mToggleChat ? mToggleChat : (mToggleChat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ToggleChat")); }
			ScriptFunction PushChat() { return mPushChat ? mPushChat : (mPushChat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PushChat")); }
			ScriptFunction Bug() { return mBug ? mBug : (mBug = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.Bug")); }
			ScriptFunction _Crash() { return m_Crash ? m_Crash : (m_Crash = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController._Crash")); }
			ScriptFunction IsGameUsingSeekFreeLoading() { return mIsGameUsingSeekFreeLoading ? mIsGameUsingSeekFreeLoading : (mIsGameUsingSeekFreeLoading = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.IsGameUsingSeekFreeLoading")); }
			ScriptFunction ResetRunaway() { return mResetRunaway ? mResetRunaway : (mResetRunaway = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ResetRunaway")); }
			ScriptFunction ClearVehicleMenu() { return mClearVehicleMenu ? mClearVehicleMenu : (mClearVehicleMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClearVehicleMenu")); }
			ScriptFunction ShowVehicleMenu() { return mShowVehicleMenu ? mShowVehicleMenu : (mShowVehicleMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ShowVehicleMenu")); }
			ScriptFunction AddVehicleMenuOption() { return mAddVehicleMenuOption ? mAddVehicleMenuOption : (mAddVehicleMenuOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AddVehicleMenuOption")); }
			ScriptFunction GetOnlineFriends() { return mGetOnlineFriends ? mGetOnlineFriends : (mGetOnlineFriends = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetOnlineFriends")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PostBeginPlay")); }
			ScriptFunction InitHelpTextManager() { return mInitHelpTextManager ? mInitHelpTextManager : (mInitHelpTextManager = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.InitHelpTextManager")); }
			ScriptFunction InitInputSystem() { return mInitInputSystem ? mInitInputSystem : (mInitInputSystem = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.InitInputSystem")); }
			ScriptFunction PlayAnnouncerSound() { return mPlayAnnouncerSound ? mPlayAnnouncerSound : (mPlayAnnouncerSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PlayAnnouncerSound")); }
			ScriptFunction TestAnnouncement() { return mTestAnnouncement ? mTestAnnouncement : (mTestAnnouncement = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TestAnnouncement")); }
			ScriptFunction ClientHearReliableSound() { return mClientHearReliableSound ? mClientHearReliableSound : (mClientHearReliableSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientHearReliableSound")); }
			ScriptFunction ClientMySaberLauncherTargetingUpdated() { return mClientMySaberLauncherTargetingUpdated ? mClientMySaberLauncherTargetingUpdated : (mClientMySaberLauncherTargetingUpdated = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientMySaberLauncherTargetingUpdated")); }
			ScriptFunction ClientSeekingMissileTargetingSelfEvent() { return mClientSeekingMissileTargetingSelfEvent ? mClientSeekingMissileTargetingSelfEvent : (mClientSeekingMissileTargetingSelfEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientSeekingMissileTargetingSelfEvent")); }
			ScriptFunction OnMissileIntercepted() { return mOnMissileIntercepted ? mOnMissileIntercepted : (mOnMissileIntercepted = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnMissileIntercepted")); }
			ScriptFunction ShowHUDNotification() { return mShowHUDNotification ? mShowHUDNotification : (mShowHUDNotification = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ShowHUDNotification")); }
			ScriptFunction HideHUDNotification() { return mHideHUDNotification ? mHideHUDNotification : (mHideHUDNotification = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.HideHUDNotification")); }
			ScriptFunction CheckBulletWhip() { return mCheckBulletWhip ? mCheckBulletWhip : (mCheckBulletWhip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CheckBulletWhip")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ReplicatedEvent")); }
			ScriptFunction ProcessCreditEvent() { return mProcessCreditEvent ? mProcessCreditEvent : (mProcessCreditEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ProcessCreditEvent")); }
			ScriptFunction ModifyCredits() { return mModifyCredits ? mModifyCredits : (mModifyCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ModifyCredits")); }
			ScriptFunction UpdateCurrentCredits() { return mUpdateCurrentCredits ? mUpdateCurrentCredits : (mUpdateCurrentCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateCurrentCredits")); }
			ScriptFunction CreditsSoundFinished() { return mCreditsSoundFinished ? mCreditsSoundFinished : (mCreditsSoundFinished = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CreditsSoundFinished")); }
			ScriptFunction ClientUpdateCredits() { return mClientUpdateCredits ? mClientUpdateCredits : (mClientUpdateCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientUpdateCredits")); }
			ScriptFunction GetLatestAccoladeIconIndex() { return mGetLatestAccoladeIconIndex ? mGetLatestAccoladeIconIndex : (mGetLatestAccoladeIconIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetLatestAccoladeIconIndex")); }
			ScriptFunction ClientShowAccoladeIcon() { return mClientShowAccoladeIcon ? mClientShowAccoladeIcon : (mClientShowAccoladeIcon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientShowAccoladeIcon")); }
			ScriptFunction ClientShowAccoladeText() { return mClientShowAccoladeText ? mClientShowAccoladeText : (mClientShowAccoladeText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientShowAccoladeText")); }
			ScriptFunction ResetStreaks() { return mResetStreaks ? mResetStreaks : (mResetStreaks = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ResetStreaks")); }
			ScriptFunction GiveCredits() { return mGiveCredits ? mGiveCredits : (mGiveCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GiveCredits")); }
			ScriptFunction ServerGiveCreditsCheat() { return mServerGiveCreditsCheat ? mServerGiveCreditsCheat : (mServerGiveCreditsCheat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerGiveCreditsCheat")); }
			ScriptFunction AimingHelp() { return mAimingHelp ? mAimingHelp : (mAimingHelp = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AimingHelp")); }
			ScriptFunction NotifyChangedWeapon() { return mNotifyChangedWeapon ? mNotifyChangedWeapon : (mNotifyChangedWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.NotifyChangedWeapon")); }
			ScriptFunction ReloadWeapon() { return mReloadWeapon ? mReloadWeapon : (mReloadWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ReloadWeapon")); }
			ScriptFunction ServerReloadWeapon() { return mServerReloadWeapon ? mServerReloadWeapon : (mServerReloadWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerReloadWeapon")); }
			ScriptFunction ServerSetCharFamily() { return mServerSetCharFamily ? mServerSetCharFamily : (mServerSetCharFamily = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerSetCharFamily")); }
			ScriptFunction Suicide() { return mSuicide ? mSuicide : (mSuicide = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.Suicide")); }
			ScriptFunction ServerSuicide() { return mServerSuicide ? mServerSuicide : (mServerSuicide = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerSuicide")); }
			ScriptFunction GetArmorType() { return mGetArmorType ? mGetArmorType : (mGetArmorType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetArmorType")); }
			ScriptFunction GetRespawnDelayTotalTime() { return mGetRespawnDelayTotalTime ? mGetRespawnDelayTotalTime : (mGetRespawnDelayTotalTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetRespawnDelayTotalTime")); }
			ScriptFunction LimitViewRotation() { return mLimitViewRotation ? mLimitViewRotation : (mLimitViewRotation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.LimitViewRotation")); }
			ScriptFunction PressedMelee() { return mPressedMelee ? mPressedMelee : (mPressedMelee = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PressedMelee")); }
			ScriptFunction PressedLaser() { return mPressedLaser ? mPressedLaser : (mPressedLaser = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PressedLaser")); }
			ScriptFunction PressedBelt() { return mPressedBelt ? mPressedBelt : (mPressedBelt = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PressedBelt")); }
			ScriptFunction PressedPack() { return mPressedPack ? mPressedPack : (mPressedPack = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PressedPack")); }
			ScriptFunction PressedDeployable() { return mPressedDeployable ? mPressedDeployable : (mPressedDeployable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PressedDeployable")); }
			ScriptFunction SetShowEquip() { return mSetShowEquip ? mSetShowEquip : (mSetShowEquip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetShowEquip")); }
			ScriptFunction PressedConsoleUse() { return mPressedConsoleUse ? mPressedConsoleUse : (mPressedConsoleUse = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PressedConsoleUse")); }
			ScriptFunction PressedWeaponSwitch() { return mPressedWeaponSwitch ? mPressedWeaponSwitch : (mPressedWeaponSwitch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PressedWeaponSwitch")); }
			ScriptFunction EquipPrimary() { return mEquipPrimary ? mEquipPrimary : (mEquipPrimary = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EquipPrimary")); }
			ScriptFunction EquipSecondary() { return mEquipSecondary ? mEquipSecondary : (mEquipSecondary = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EquipSecondary")); }
			ScriptFunction SwitchWeapon() { return mSwitchWeapon ? mSwitchWeapon : (mSwitchWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SwitchWeapon")); }
			ScriptFunction PrevWeapon() { return mPrevWeapon ? mPrevWeapon : (mPrevWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PrevWeapon")); }
			ScriptFunction NextWeapon() { return mNextWeapon ? mNextWeapon : (mNextWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.NextWeapon")); }
			ScriptFunction ActivateDevice() { return mActivateDevice ? mActivateDevice : (mActivateDevice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ActivateDevice")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StartFire")); }
			ScriptFunction UpdateLockedTarget() { return mUpdateLockedTarget ? mUpdateLockedTarget : (mUpdateLockedTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateLockedTarget")); }
			ScriptFunction IdentifyTeamMessage() { return mIdentifyTeamMessage ? mIdentifyTeamMessage : (mIdentifyTeamMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.IdentifyTeamMessage")); }
			ScriptFunction PlayStartupMessage() { return mPlayStartupMessage ? mPlayStartupMessage : (mPlayStartupMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PlayStartupMessage")); }
			ScriptFunction FindValidGRI() { return mFindValidGRI ? mFindValidGRI : (mFindValidGRI = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.FindValidGRI")); }
			ScriptFunction InitHUDObjects() { return mInitHUDObjects ? mInitHUDObjects : (mInitHUDObjects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.InitHUDObjects")); }
			ScriptFunction ClientStartSpawnTimer() { return mClientStartSpawnTimer ? mClientStartSpawnTimer : (mClientStartSpawnTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientStartSpawnTimer")); }
			ScriptFunction CompletePickTeam() { return mCompletePickTeam ? mCompletePickTeam : (mCompletePickTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CompletePickTeam")); }
			ScriptFunction ServerRequestAutoAssignTeam() { return mServerRequestAutoAssignTeam ? mServerRequestAutoAssignTeam : (mServerRequestAutoAssignTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerRequestAutoAssignTeam")); }
			ScriptFunction ClientEndTeamSelect() { return mClientEndTeamSelect ? mClientEndTeamSelect : (mClientEndTeamSelect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientEndTeamSelect")); }
			ScriptFunction ChangeTeam() { return mChangeTeam ? mChangeTeam : (mChangeTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ChangeTeam")); }
			ScriptFunction ViewAPlayer() { return mViewAPlayer ? mViewAPlayer : (mViewAPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ViewAPlayer")); }
			ScriptFunction ServerPlayerTick() { return mServerPlayerTick ? mServerPlayerTick : (mServerPlayerTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerPlayerTick")); }
			ScriptFunction PlayerTick() { return mPlayerTick ? mPlayerTick : (mPlayerTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PlayerTick")); }
			ScriptFunction GetAdjustedAimFor() { return mGetAdjustedAimFor ? mGetAdjustedAimFor : (mGetAdjustedAimFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetAdjustedAimFor")); }
			ScriptFunction StartWeather() { return mStartWeather ? mStartWeather : (mStartWeather = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StartWeather")); }
			ScriptFunction StopWeather() { return mStopWeather ? mStopWeather : (mStopWeather = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StopWeather")); }
			ScriptFunction PawnEnteredWeatherVolume() { return mPawnEnteredWeatherVolume ? mPawnEnteredWeatherVolume : (mPawnEnteredWeatherVolume = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PawnEnteredWeatherVolume")); }
			ScriptFunction PawnLeftWeatherVolume() { return mPawnLeftWeatherVolume ? mPawnLeftWeatherVolume : (mPawnLeftWeatherVolume = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PawnLeftWeatherVolume")); }
			ScriptFunction PlayLowHealthFX() { return mPlayLowHealthFX ? mPlayLowHealthFX : (mPlayLowHealthFX = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PlayLowHealthFX")); }
			ScriptFunction StopLowHealthFX() { return mStopLowHealthFX ? mStopLowHealthFX : (mStopLowHealthFX = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StopLowHealthFX")); }
			ScriptFunction PlayRechargeHealthFX() { return mPlayRechargeHealthFX ? mPlayRechargeHealthFX : (mPlayRechargeHealthFX = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PlayRechargeHealthFX")); }
			ScriptFunction StopRechargeHealthFX() { return mStopRechargeHealthFX ? mStopRechargeHealthFX : (mStopRechargeHealthFX = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StopRechargeHealthFX")); }
			ScriptFunction ToggleJetpack() { return mToggleJetpack ? mToggleJetpack : (mToggleJetpack = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ToggleJetpack")); }
			ScriptFunction EnableJetpack() { return mEnableJetpack ? mEnableJetpack : (mEnableJetpack = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableJetpack")); }
			ScriptFunction IgnoreMoveInput() { return mIgnoreMoveInput ? mIgnoreMoveInput : (mIgnoreMoveInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.IgnoreMoveInput")); }
			ScriptFunction DoJump() { return mDoJump ? mDoJump : (mDoJump = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.DoJump")); }
			ScriptFunction PerformBlink() { return mPerformBlink ? mPerformBlink : (mPerformBlink = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PerformBlink")); }
			ScriptFunction GetBlinkPackAccel() { return mGetBlinkPackAccel ? mGetBlinkPackAccel : (mGetBlinkPackAccel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetBlinkPackAccel")); }
			ScriptFunction InitRespawnTimer() { return mInitRespawnTimer ? mInitRespawnTimer : (mInitRespawnTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.InitRespawnTimer")); }
			ScriptFunction UpdateRespawnTimer() { return mUpdateRespawnTimer ? mUpdateRespawnTimer : (mUpdateRespawnTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateRespawnTimer")); }
			ScriptFunction ServerRequestRespawn() { return mServerRequestRespawn ? mServerRequestRespawn : (mServerRequestRespawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerRequestRespawn")); }
			ScriptFunction RequestRespawn() { return mRequestRespawn ? mRequestRespawn : (mRequestRespawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.RequestRespawn")); }
			ScriptFunction Respawn() { return mRespawn ? mRespawn : (mRespawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.Respawn")); }
			ScriptFunction PlayRespawnSoonSound() { return mPlayRespawnSoonSound ? mPlayRespawnSoonSound : (mPlayRespawnSoonSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PlayRespawnSoonSound")); }
			ScriptFunction CleanupGameplayEffectsOnDeath() { return mCleanupGameplayEffectsOnDeath ? mCleanupGameplayEffectsOnDeath : (mCleanupGameplayEffectsOnDeath = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CleanupGameplayEffectsOnDeath")); }
			ScriptFunction OnCrossedOffArenaList() { return mOnCrossedOffArenaList ? mOnCrossedOffArenaList : (mOnCrossedOffArenaList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnCrossedOffArenaList")); }
			ScriptFunction Possess() { return mPossess ? mPossess : (mPossess = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.Possess")); }
			ScriptFunction RefreshHUD() { return mRefreshHUD ? mRefreshHUD : (mRefreshHUD = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.RefreshHUD")); }
			ScriptFunction GetAirVehicleInversion() { return mGetAirVehicleInversion ? mGetAirVehicleInversion : (mGetAirVehicleInversion = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetAirVehicleInversion")); }
			ScriptFunction ServerSetAirVehicleControls() { return mServerSetAirVehicleControls ? mServerSetAirVehicleControls : (mServerSetAirVehicleControls = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerSetAirVehicleControls")); }
			ScriptFunction SetAirVehicleControls() { return mSetAirVehicleControls ? mSetAirVehicleControls : (mSetAirVehicleControls = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetAirVehicleControls")); }
			ScriptFunction IsInVehicle() { return mIsInVehicle ? mIsInVehicle : (mIsInVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.IsInVehicle")); }
			ScriptFunction ClientVehiclePhysUpdated() { return mClientVehiclePhysUpdated ? mClientVehiclePhysUpdated : (mClientVehiclePhysUpdated = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientVehiclePhysUpdated")); }
			ScriptFunction ServerVehiclePhysUpdated() { return mServerVehiclePhysUpdated ? mServerVehiclePhysUpdated : (mServerVehiclePhysUpdated = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerVehiclePhysUpdated")); }
			ScriptFunction ServerVerifyVehiclePhys() { return mServerVerifyVehiclePhys ? mServerVerifyVehiclePhys : (mServerVerifyVehiclePhys = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerVerifyVehiclePhys")); }
			ScriptFunction ServerCorrectClientPhys() { return mServerCorrectClientPhys ? mServerCorrectClientPhys : (mServerCorrectClientPhys = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerCorrectClientPhys")); }
			ScriptFunction ServerToggleVehicleJets() { return mServerToggleVehicleJets ? mServerToggleVehicleJets : (mServerToggleVehicleJets = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerToggleVehicleJets")); }
			ScriptFunction ToggleVehicleJets() { return mToggleVehicleJets ? mToggleVehicleJets : (mToggleVehicleJets = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ToggleVehicleJets")); }
			ScriptFunction ProcessRiding() { return mProcessRiding ? mProcessRiding : (mProcessRiding = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ProcessRiding")); }
			ScriptFunction ServerRiding() { return mServerRiding ? mServerRiding : (mServerRiding = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerRiding")); }
			ScriptFunction SwitchToCallIn() { return mSwitchToCallIn ? mSwitchToCallIn : (mSwitchToCallIn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SwitchToCallIn")); }
			ScriptFunction ServerRequestCallInChange() { return mServerRequestCallInChange ? mServerRequestCallInChange : (mServerRequestCallInChange = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerRequestCallInChange")); }
			ScriptFunction SwitchToSeat() { return mSwitchToSeat ? mSwitchToSeat : (mSwitchToSeat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SwitchToSeat")); }
			ScriptFunction ServerSwitchToSeat() { return mServerSwitchToSeat ? mServerSwitchToSeat : (mServerSwitchToSeat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerSwitchToSeat")); }
			ScriptFunction TriggerInteracted() { return mTriggerInteracted ? mTriggerInteracted : (mTriggerInteracted = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TriggerInteracted")); }
			ScriptFunction ServerRequestLoadoutChange() { return mServerRequestLoadoutChange ? mServerRequestLoadoutChange : (mServerRequestLoadoutChange = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerRequestLoadoutChange")); }
			ScriptFunction UpdatePaperDoll() { return mUpdatePaperDoll ? mUpdatePaperDoll : (mUpdatePaperDoll = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdatePaperDoll")); }
			ScriptFunction UpdatePaperDoll_Device() { return mUpdatePaperDoll_Device ? mUpdatePaperDoll_Device : (mUpdatePaperDoll_Device = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdatePaperDoll_Device")); }
			ScriptFunction SpawnVehicle() { return mSpawnVehicle ? mSpawnVehicle : (mSpawnVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SpawnVehicle")); }
			ScriptFunction RequestBuyVehicle() { return mRequestBuyVehicle ? mRequestBuyVehicle : (mRequestBuyVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.RequestBuyVehicle")); }
			ScriptFunction PressedSki() { return mPressedSki ? mPressedSki : (mPressedSki = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PressedSki")); }
			ScriptFunction ReleasedSki() { return mReleasedSki ? mReleasedSki : (mReleasedSki = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ReleasedSki")); }
			ScriptFunction ToggleSki() { return mToggleSki ? mToggleSki : (mToggleSki = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ToggleSki")); }
			ScriptFunction DelayReleasedSki() { return mDelayReleasedSki ? mDelayReleasedSki : (mDelayReleasedSki = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.DelayReleasedSki")); }
			ScriptFunction SetBindSkiJet() { return mSetBindSkiJet ? mSetBindSkiJet : (mSetBindSkiJet = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetBindSkiJet")); }
			ScriptFunction ToggleShowObjectMarkers() { return mToggleShowObjectMarkers ? mToggleShowObjectMarkers : (mToggleShowObjectMarkers = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ToggleShowObjectMarkers")); }
			ScriptFunction ServerStartSki() { return mServerStartSki ? mServerStartSki : (mServerStartSki = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerStartSki")); }
			ScriptFunction ServerStopSki() { return mServerStopSki ? mServerStopSki : (mServerStopSki = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerStopSki")); }
			ScriptFunction ClientSetHUD() { return mClientSetHUD ? mClientSetHUD : (mClientSetHUD = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientSetHUD")); }
			ScriptFunction SwitchHud() { return mSwitchHud ? mSwitchHud : (mSwitchHud = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SwitchHud")); }
			ScriptFunction OnKickback() { return mOnKickback ? mOnKickback : (mOnKickback = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnKickback")); }
			ScriptFunction UpdateKickbackDirection() { return mUpdateKickbackDirection ? mUpdateKickbackDirection : (mUpdateKickbackDirection = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateKickbackDirection")); }
			ScriptFunction RestoreMoveInput() { return mRestoreMoveInput ? mRestoreMoveInput : (mRestoreMoveInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.RestoreMoveInput")); }
			ScriptFunction ClientRestoreMoveInput() { return mClientRestoreMoveInput ? mClientRestoreMoveInput : (mClientRestoreMoveInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientRestoreMoveInput")); }
			ScriptFunction ServerRequestSpawnVehicle() { return mServerRequestSpawnVehicle ? mServerRequestSpawnVehicle : (mServerRequestSpawnVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerRequestSpawnVehicle")); }
			ScriptFunction PerformedUseAction() { return mPerformedUseAction ? mPerformedUseAction : (mPerformedUseAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PerformedUseAction")); }
			ScriptFunction PressedZoom() { return mPressedZoom ? mPressedZoom : (mPressedZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PressedZoom")); }
			ScriptFunction ReleasedZoom() { return mReleasedZoom ? mReleasedZoom : (mReleasedZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ReleasedZoom")); }
			ScriptFunction MagnifyZoom() { return mMagnifyZoom ? mMagnifyZoom : (mMagnifyZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.MagnifyZoom")); }
			ScriptFunction DemagnifyZoom() { return mDemagnifyZoom ? mDemagnifyZoom : (mDemagnifyZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.DemagnifyZoom")); }
			ScriptFunction ReleaseZoom() { return mReleaseZoom ? mReleaseZoom : (mReleaseZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ReleaseZoom")); }
			ScriptFunction CheckZoomButton() { return mCheckZoomButton ? mCheckZoomButton : (mCheckZoomButton = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CheckZoomButton")); }
			ScriptFunction TrStartZoom() { return mTrStartZoom ? mTrStartZoom : (mTrStartZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TrStartZoom")); }
			ScriptFunction TrStopZoom() { return mTrStopZoom ? mTrStopZoom : (mTrStopZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TrStopZoom")); }
			ScriptFunction TrEndZoom() { return mTrEndZoom ? mTrEndZoom : (mTrEndZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TrEndZoom")); }
			ScriptFunction ResetZoomDuration() { return mResetZoomDuration ? mResetZoomDuration : (mResetZoomDuration = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ResetZoomDuration")); }
			ScriptFunction ServerSetZoom() { return mServerSetZoom ? mServerSetZoom : (mServerSetZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerSetZoom")); }
			ScriptFunction ReceiveLocalizedMessage() { return mReceiveLocalizedMessage ? mReceiveLocalizedMessage : (mReceiveLocalizedMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ReceiveLocalizedMessage")); }
			ScriptFunction ReceiveLocalizedNagMessage() { return mReceiveLocalizedNagMessage ? mReceiveLocalizedNagMessage : (mReceiveLocalizedNagMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ReceiveLocalizedNagMessage")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.Destroyed")); }
			ScriptFunction TrClientMusicEvent() { return mTrClientMusicEvent ? mTrClientMusicEvent : (mTrClientMusicEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TrClientMusicEvent")); }
			ScriptFunction ClientRestart() { return mClientRestart ? mClientRestart : (mClientRestart = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientRestart")); }
			ScriptFunction UpdateClientSpawnTimer() { return mUpdateClientSpawnTimer ? mUpdateClientSpawnTimer : (mUpdateClientSpawnTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateClientSpawnTimer")); }
			ScriptFunction GameHasEnded() { return mGameHasEnded ? mGameHasEnded : (mGameHasEnded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GameHasEnded")); }
			ScriptFunction CheckJumpOrDuck() { return mCheckJumpOrDuck ? mCheckJumpOrDuck : (mCheckJumpOrDuck = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CheckJumpOrDuck")); }
			ScriptFunction ClientGameEnded() { return mClientGameEnded ? mClientGameEnded : (mClientGameEnded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientGameEnded")); }
			ScriptFunction ServerDropFlag() { return mServerDropFlag ? mServerDropFlag : (mServerDropFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerDropFlag")); }
			ScriptFunction GetPlayerViewPoint() { return mGetPlayerViewPoint ? mGetPlayerViewPoint : (mGetPlayerViewPoint = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetPlayerViewPoint")); }
			ScriptFunction ActivateFreeCam() { return mActivateFreeCam ? mActivateFreeCam : (mActivateFreeCam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ActivateFreeCam")); }
			ScriptFunction DeactivateFreeCam() { return mDeactivateFreeCam ? mDeactivateFreeCam : (mDeactivateFreeCam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.DeactivateFreeCam")); }
			ScriptFunction SetViewTargetAsOverwatch() { return mSetViewTargetAsOverwatch ? mSetViewTargetAsOverwatch : (mSetViewTargetAsOverwatch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetViewTargetAsOverwatch")); }
			ScriptFunction PlayCameraShake() { return mPlayCameraShake ? mPlayCameraShake : (mPlayCameraShake = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PlayCameraShake")); }
			ScriptFunction ClientPlayForceFeedbackWaveform() { return mClientPlayForceFeedbackWaveform ? mClientPlayForceFeedbackWaveform : (mClientPlayForceFeedbackWaveform = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientPlayForceFeedbackWaveform")); }
			ScriptFunction UpdateSpeedCameraEffect() { return mUpdateSpeedCameraEffect ? mUpdateSpeedCameraEffect : (mUpdateSpeedCameraEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateSpeedCameraEffect")); }
			ScriptFunction SpeedCamEffect() { return mSpeedCamEffect ? mSpeedCamEffect : (mSpeedCamEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SpeedCamEffect")); }
			ScriptFunction ClientPulseHUD() { return mClientPulseHUD ? mClientPulseHUD : (mClientPulseHUD = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientPulseHUD")); }
			ScriptFunction PulseShield() { return mPulseShield ? mPulseShield : (mPulseShield = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.PulseShield")); }
			ScriptFunction AddTimePlayed() { return mAddTimePlayed ? mAddTimePlayed : (mAddTimePlayed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AddTimePlayed")); }
			ScriptFunction AcknowledgePossession() { return mAcknowledgePossession ? mAcknowledgePossession : (mAcknowledgePossession = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AcknowledgePossession")); }
			ScriptFunction MatchEndSoundMode() { return mMatchEndSoundMode ? mMatchEndSoundMode : (mMatchEndSoundMode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.MatchEndSoundMode")); }
			ScriptFunction ResetSoundMode() { return mResetSoundMode ? mResetSoundMode : (mResetSoundMode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ResetSoundMode")); }
			ScriptFunction SuppressHelpText() { return mSuppressHelpText ? mSuppressHelpText : (mSuppressHelpText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SuppressHelpText")); }
			ScriptFunction TalkVGS() { return mTalkVGS ? mTalkVGS : (mTalkVGS = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TalkVGS")); }
			ScriptFunction Say() { return mSay ? mSay : (mSay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.Say")); }
			ScriptFunction IsPlayerCommand() { return mIsPlayerCommand ? mIsPlayerCommand : (mIsPlayerCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.IsPlayerCommand")); }
			ScriptFunction ShowFeedbackMessage() { return mShowFeedbackMessage ? mShowFeedbackMessage : (mShowFeedbackMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ShowFeedbackMessage")); }
			ScriptFunction GetChatColor() { return mGetChatColor ? mGetChatColor : (mGetChatColor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetChatColor")); }
			ScriptFunction AddChatToConsole() { return mAddChatToConsole ? mAddChatToConsole : (mAddChatToConsole = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AddChatToConsole")); }
			ScriptFunction GetLastTellSender() { return mGetLastTellSender ? mGetLastTellSender : (mGetLastTellSender = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetLastTellSender")); }
			ScriptFunction ReplyTalk() { return mReplyTalk ? mReplyTalk : (mReplyTalk = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ReplyTalk")); }
			ScriptFunction CanCommunicate() { return mCanCommunicate ? mCanCommunicate : (mCanCommunicate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CanCommunicate")); }
			ScriptFunction Talk() { return mTalk ? mTalk : (mTalk = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.Talk")); }
			ScriptFunction ChatConsole() { return mChatConsole ? mChatConsole : (mChatConsole = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ChatConsole")); }
			ScriptFunction TalkConsole() { return mTalkConsole ? mTalkConsole : (mTalkConsole = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TalkConsole")); }
			ScriptFunction TeamTalk() { return mTeamTalk ? mTeamTalk : (mTeamTalk = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TeamTalk")); }
			ScriptFunction TeamSay() { return mTeamSay ? mTeamSay : (mTeamSay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TeamSay")); }
			ScriptFunction AllowTextMessage() { return mAllowTextMessage ? mAllowTextMessage : (mAllowTextMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AllowTextMessage")); }
			ScriptFunction WarnPlayerAboutSpam() { return mWarnPlayerAboutSpam ? mWarnPlayerAboutSpam : (mWarnPlayerAboutSpam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.WarnPlayerAboutSpam")); }
			ScriptFunction BeginVGS() { return mBeginVGS ? mBeginVGS : (mBeginVGS = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.BeginVGS")); }
			ScriptFunction SpotTarget() { return mSpotTarget ? mSpotTarget : (mSpotTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SpotTarget")); }
			ScriptFunction ServerRequestVGSContextCommand() { return mServerRequestVGSContextCommand ? mServerRequestVGSContextCommand : (mServerRequestVGSContextCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerRequestVGSContextCommand")); }
			ScriptFunction ServerRequestVGSCommand() { return mServerRequestVGSCommand ? mServerRequestVGSCommand : (mServerRequestVGSCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerRequestVGSCommand")); }
			ScriptFunction ClientReceiveVGSCommand() { return mClientReceiveVGSCommand ? mClientReceiveVGSCommand : (mClientReceiveVGSCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientReceiveVGSCommand")); }
			ScriptFunction ClientReceiveVGSContextCommand() { return mClientReceiveVGSContextCommand ? mClientReceiveVGSContextCommand : (mClientReceiveVGSContextCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientReceiveVGSContextCommand")); }
			ScriptFunction ShowMoveErrors() { return mShowMoveErrors ? mShowMoveErrors : (mShowMoveErrors = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ShowMoveErrors")); }
			ScriptFunction OnSkiHelpTextDistanceThresholdReached() { return mOnSkiHelpTextDistanceThresholdReached ? mOnSkiHelpTextDistanceThresholdReached : (mOnSkiHelpTextDistanceThresholdReached = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnSkiHelpTextDistanceThresholdReached")); }
			ScriptFunction OnJetpackHelpTextDistanceThresholdReached() { return mOnJetpackHelpTextDistanceThresholdReached ? mOnJetpackHelpTextDistanceThresholdReached : (mOnJetpackHelpTextDistanceThresholdReached = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnJetpackHelpTextDistanceThresholdReached")); }
			ScriptFunction LoadPlayerProfile() { return mLoadPlayerProfile ? mLoadPlayerProfile : (mLoadPlayerProfile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.LoadPlayerProfile")); }
			ScriptFunction GetNewPlayerAssistAmount() { return mGetNewPlayerAssistAmount ? mGetNewPlayerAssistAmount : (mGetNewPlayerAssistAmount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetNewPlayerAssistAmount")); }
			ScriptFunction UpdateNewPlayerAssistPoints() { return mUpdateNewPlayerAssistPoints ? mUpdateNewPlayerAssistPoints : (mUpdateNewPlayerAssistPoints = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateNewPlayerAssistPoints")); }
			ScriptFunction BehindView() { return mBehindView ? mBehindView : (mBehindView = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.BehindView")); }
			ScriptFunction ServerSetBehindView() { return mServerSetBehindView ? mServerSetBehindView : (mServerSetBehindView = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerSetBehindView")); }
			ScriptFunction ClientSetBehindView() { return mClientSetBehindView ? mClientSetBehindView : (mClientSetBehindView = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientSetBehindView")); }
			ScriptFunction GetEngineSettings() { return mGetEngineSettings ? mGetEngineSettings : (mGetEngineSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetEngineSettings")); }
			ScriptFunction GetSpectatorSettings() { return mGetSpectatorSettings ? mGetSpectatorSettings : (mGetSpectatorSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetSpectatorSettings")); }
			ScriptFunction ClientOnMotionSensorAlarmSounded() { return mClientOnMotionSensorAlarmSounded ? mClientOnMotionSensorAlarmSounded : (mClientOnMotionSensorAlarmSounded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientOnMotionSensorAlarmSounded")); }
			ScriptFunction ClientOnMotionSensorMineSounded() { return mClientOnMotionSensorMineSounded ? mClientOnMotionSensorMineSounded : (mClientOnMotionSensorMineSounded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientOnMotionSensorMineSounded")); }
			ScriptFunction LoadPendingLoadoutContentData() { return mLoadPendingLoadoutContentData ? mLoadPendingLoadoutContentData : (mLoadPendingLoadoutContentData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.LoadPendingLoadoutContentData")); }
			ScriptFunction LoadPendingDeviceContentData() { return mLoadPendingDeviceContentData ? mLoadPendingDeviceContentData : (mLoadPendingDeviceContentData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.LoadPendingDeviceContentData")); }
			ScriptFunction HideHUDElements() { return mHideHUDElements ? mHideHUDElements : (mHideHUDElements = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.HideHUDElements")); }
			ScriptFunction ClientShowFlagIcon() { return mClientShowFlagIcon ? mClientShowFlagIcon : (mClientShowFlagIcon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientShowFlagIcon")); }
			ScriptFunction ClientSetPlayerClassObjects() { return mClientSetPlayerClassObjects ? mClientSetPlayerClassObjects : (mClientSetPlayerClassObjects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientSetPlayerClassObjects")); }
			ScriptFunction UpdatePotentialSeekingTargets() { return mUpdatePotentialSeekingTargets ? mUpdatePotentialSeekingTargets : (mUpdatePotentialSeekingTargets = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdatePotentialSeekingTargets")); }
			ScriptFunction NotifyHitWall() { return mNotifyHitWall ? mNotifyHitWall : (mNotifyHitWall = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.NotifyHitWall")); }
			ScriptFunction NotifyFallingHitWall() { return mNotifyFallingHitWall ? mNotifyFallingHitWall : (mNotifyFallingHitWall = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.NotifyFallingHitWall")); }
			ScriptFunction Spectate() { return mSpectate ? mSpectate : (mSpectate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.Spectate")); }
			ScriptFunction EndSpectate() { return mEndSpectate ? mEndSpectate : (mEndSpectate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EndSpectate")); }
			ScriptFunction ClientSpectate() { return mClientSpectate ? mClientSpectate : (mClientSpectate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientSpectate")); }
			ScriptFunction ServerSpectate() { return mServerSpectate ? mServerSpectate : (mServerSpectate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerSpectate")); }
			ScriptFunction ServerViewFlags() { return mServerViewFlags ? mServerViewFlags : (mServerViewFlags = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerViewFlags")); }
			ScriptFunction ServerViewFlagStands() { return mServerViewFlagStands ? mServerViewFlagStands : (mServerViewFlagStands = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerViewFlagStands")); }
			ScriptFunction ServerViewGenerators() { return mServerViewGenerators ? mServerViewGenerators : (mServerViewGenerators = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerViewGenerators")); }
			ScriptFunction ServerViewBookmark() { return mServerViewBookmark ? mServerViewBookmark : (mServerViewBookmark = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerViewBookmark")); }
			ScriptFunction ServerViewVehicles() { return mServerViewVehicles ? mServerViewVehicles : (mServerViewVehicles = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerViewVehicles")); }
			ScriptFunction ServerViewFastestPlayer() { return mServerViewFastestPlayer ? mServerViewFastestPlayer : (mServerViewFastestPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerViewFastestPlayer")); }
			ScriptFunction ServerViewActor() { return mServerViewActor ? mServerViewActor : (mServerViewActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerViewActor")); }
			ScriptFunction ClientOnViewTargetChange() { return mClientOnViewTargetChange ? mClientOnViewTargetChange : (mClientOnViewTargetChange = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientOnViewTargetChange")); }
			ScriptFunction ServerIncreaseCamDistance() { return mServerIncreaseCamDistance ? mServerIncreaseCamDistance : (mServerIncreaseCamDistance = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerIncreaseCamDistance")); }
			ScriptFunction ServerDecreaseCamDistance() { return mServerDecreaseCamDistance ? mServerDecreaseCamDistance : (mServerDecreaseCamDistance = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerDecreaseCamDistance")); }
			ScriptFunction ServerSetMoveSpeed() { return mServerSetMoveSpeed ? mServerSetMoveSpeed : (mServerSetMoveSpeed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerSetMoveSpeed")); }
			ScriptFunction OnViewTargetCapturedFlag() { return mOnViewTargetCapturedFlag ? mOnViewTargetCapturedFlag : (mOnViewTargetCapturedFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnViewTargetCapturedFlag")); }
			ScriptFunction OnViewTargetFlagReturned() { return mOnViewTargetFlagReturned ? mOnViewTargetFlagReturned : (mOnViewTargetFlagReturned = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnViewTargetFlagReturned")); }
			ScriptFunction OnViewTargetDroppedFlag() { return mOnViewTargetDroppedFlag ? mOnViewTargetDroppedFlag : (mOnViewTargetDroppedFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnViewTargetDroppedFlag")); }
			ScriptFunction OnViewTargetLeftVehicle() { return mOnViewTargetLeftVehicle ? mOnViewTargetLeftVehicle : (mOnViewTargetLeftVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnViewTargetLeftVehicle")); }
			ScriptFunction GetViewTargetList() { return mGetViewTargetList ? mGetViewTargetList : (mGetViewTargetList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetViewTargetList")); }
			ScriptFunction ServerUnPossess() { return mServerUnPossess ? mServerUnPossess : (mServerUnPossess = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerUnPossess")); }
			ScriptFunction ClientPlayTakeHit() { return mClientPlayTakeHit ? mClientPlayTakeHit : (mClientPlayTakeHit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientPlayTakeHit")); }
			ScriptFunction ClientPlayReticuleHitSound() { return mClientPlayReticuleHitSound ? mClientPlayReticuleHitSound : (mClientPlayReticuleHitSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientPlayReticuleHitSound")); }
			ScriptFunction ClientPlayBluePlateImpact() { return mClientPlayBluePlateImpact ? mClientPlayBluePlateImpact : (mClientPlayBluePlateImpact = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientPlayBluePlateImpact")); }
			ScriptFunction ClientPlayAirMailImpact() { return mClientPlayAirMailImpact ? mClientPlayAirMailImpact : (mClientPlayAirMailImpact = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientPlayAirMailImpact")); }
			ScriptFunction SummarizeAwards() { return mSummarizeAwards ? mSummarizeAwards : (mSummarizeAwards = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SummarizeAwards")); }
			ScriptFunction ClientMatchOver() { return mClientMatchOver ? mClientMatchOver : (mClientMatchOver = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientMatchOver")); }
			ScriptFunction ClientSetEndOfMatch() { return mClientSetEndOfMatch ? mClientSetEndOfMatch : (mClientSetEndOfMatch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientSetEndOfMatch")); }
			ScriptFunction ClientFadeToSummary() { return mClientFadeToSummary ? mClientFadeToSummary : (mClientFadeToSummary = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientFadeToSummary")); }
			ScriptFunction UpdateMatchCountdown() { return mUpdateMatchCountdown ? mUpdateMatchCountdown : (mUpdateMatchCountdown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateMatchCountdown")); }
			ScriptFunction UpdateRoundCountdown() { return mUpdateRoundCountdown ? mUpdateRoundCountdown : (mUpdateRoundCountdown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateRoundCountdown")); }
			ScriptFunction UpdateGameCountdown() { return mUpdateGameCountdown ? mUpdateGameCountdown : (mUpdateGameCountdown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateGameCountdown")); }
			ScriptFunction ServerKickPlayer() { return mServerKickPlayer ? mServerKickPlayer : (mServerKickPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerKickPlayer")); }
			ScriptFunction ClientKickPlayer() { return mClientKickPlayer ? mClientKickPlayer : (mClientKickPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientKickPlayer")); }
			ScriptFunction KickWarning() { return mKickWarning ? mKickWarning : (mKickWarning = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.KickWarning")); }
			ScriptFunction FumbledFlag() { return mFumbledFlag ? mFumbledFlag : (mFumbledFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.FumbledFlag")); }
			ScriptFunction ClientOnFumbledFlag() { return mClientOnFumbledFlag ? mClientOnFumbledFlag : (mClientOnFumbledFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientOnFumbledFlag")); }
			ScriptFunction UpdateCallInAvailability() { return mUpdateCallInAvailability ? mUpdateCallInAvailability : (mUpdateCallInAvailability = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateCallInAvailability")); }
			ScriptFunction UpdateCallInCooldown() { return mUpdateCallInCooldown ? mUpdateCallInCooldown : (mUpdateCallInCooldown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateCallInCooldown")); }
			ScriptFunction CalcCameraOnViewTarget() { return mCalcCameraOnViewTarget ? mCalcCameraOnViewTarget : (mCalcCameraOnViewTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CalcCameraOnViewTarget")); }
			ScriptFunction IsGameTypeArena() { return mIsGameTypeArena ? mIsGameTypeArena : (mIsGameTypeArena = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.IsGameTypeArena")); }
			ScriptFunction IsGameTypeDaD() { return mIsGameTypeDaD ? mIsGameTypeDaD : (mIsGameTypeDaD = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.IsGameTypeDaD")); }
			ScriptFunction IsGameTypeCaH() { return mIsGameTypeCaH ? mIsGameTypeCaH : (mIsGameTypeCaH = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.IsGameTypeCaH")); }
			ScriptFunction SwitchToDeathCamera() { return mSwitchToDeathCamera ? mSwitchToDeathCamera : (mSwitchToDeathCamera = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SwitchToDeathCamera")); }
			ScriptFunction AddProjectileToTetherList() { return mAddProjectileToTetherList ? mAddProjectileToTetherList : (mAddProjectileToTetherList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AddProjectileToTetherList")); }
			ScriptFunction CheckTetherList() { return mCheckTetherList ? mCheckTetherList : (mCheckTetherList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CheckTetherList")); }
			ScriptFunction TetherProjectile() { return mTetherProjectile ? mTetherProjectile : (mTetherProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TetherProjectile")); }
			ScriptFunction ConfigureSkiSpeedSteps() { return mConfigureSkiSpeedSteps ? mConfigureSkiSpeedSteps : (mConfigureSkiSpeedSteps = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ConfigureSkiSpeedSteps")); }
			ScriptFunction LoadingTimer() { return mLoadingTimer ? mLoadingTimer : (mLoadingTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.LoadingTimer")); }
			ScriptFunction FlushAccumulatedDetermination() { return mFlushAccumulatedDetermination ? mFlushAccumulatedDetermination : (mFlushAccumulatedDetermination = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.FlushAccumulatedDetermination")); }
			ScriptFunction ClearDetermination() { return mClearDetermination ? mClearDetermination : (mClearDetermination = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClearDetermination")); }
			ScriptFunction AddDetermination() { return mAddDetermination ? mAddDetermination : (mAddDetermination = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AddDetermination")); }
			ScriptFunction OnMenuMovieOpened() { return mOnMenuMovieOpened ? mOnMenuMovieOpened : (mOnMenuMovieOpened = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnMenuMovieOpened")); }
			ScriptFunction OnMenuMovieClosed() { return mOnMenuMovieClosed ? mOnMenuMovieClosed : (mOnMenuMovieClosed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnMenuMovieClosed")); }
			ScriptFunction ClientPlayVGSAudio() { return mClientPlayVGSAudio ? mClientPlayVGSAudio : (mClientPlayVGSAudio = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientPlayVGSAudio")); }
			ScriptFunction VGSAudioFinished() { return mVGSAudioFinished ? mVGSAudioFinished : (mVGSAudioFinished = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.VGSAudioFinished")); }
			ScriptFunction ClientSetLastDamagerInfo() { return mClientSetLastDamagerInfo ? mClientSetLastDamagerInfo : (mClientSetLastDamagerInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientSetLastDamagerInfo")); }
			ScriptFunction EnableTinyWeapons() { return mEnableTinyWeapons ? mEnableTinyWeapons : (mEnableTinyWeapons = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableTinyWeapons")); }
			ScriptFunction GetTinyWeaponValue() { return mGetTinyWeaponValue ? mGetTinyWeaponValue : (mGetTinyWeaponValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetTinyWeaponValue")); }
			ScriptFunction EnableChatFilter() { return mEnableChatFilter ? mEnableChatFilter : (mEnableChatFilter = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableChatFilter")); }
			ScriptFunction GetChatFilterValue() { return mGetChatFilterValue ? mGetChatFilterValue : (mGetChatFilterValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetChatFilterValue")); }
			ScriptFunction EnableDamageCounter() { return mEnableDamageCounter ? mEnableDamageCounter : (mEnableDamageCounter = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableDamageCounter")); }
			ScriptFunction GetDamageCounterValue() { return mGetDamageCounterValue ? mGetDamageCounterValue : (mGetDamageCounterValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetDamageCounterValue")); }
			ScriptFunction EnableHUDObjectives() { return mEnableHUDObjectives ? mEnableHUDObjectives : (mEnableHUDObjectives = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDObjectives")); }
			ScriptFunction EnableHUDReticule() { return mEnableHUDReticule ? mEnableHUDReticule : (mEnableHUDReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDReticule")); }
			ScriptFunction EnableHUDCredits() { return mEnableHUDCredits ? mEnableHUDCredits : (mEnableHUDCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDCredits")); }
			ScriptFunction EnableHUDAccolades() { return mEnableHUDAccolades ? mEnableHUDAccolades : (mEnableHUDAccolades = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDAccolades")); }
			ScriptFunction EnableHUDBadges() { return mEnableHUDBadges ? mEnableHUDBadges : (mEnableHUDBadges = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDBadges")); }
			ScriptFunction EnableHUDScores() { return mEnableHUDScores ? mEnableHUDScores : (mEnableHUDScores = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDScores")); }
			ScriptFunction EnableHUDHealthBar() { return mEnableHUDHealthBar ? mEnableHUDHealthBar : (mEnableHUDHealthBar = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDHealthBar")); }
			ScriptFunction EnableHUDVisor() { return mEnableHUDVisor ? mEnableHUDVisor : (mEnableHUDVisor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDVisor")); }
			ScriptFunction EnableHUDChat() { return mEnableHUDChat ? mEnableHUDChat : (mEnableHUDChat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDChat")); }
			ScriptFunction EnableHUDCombatLog() { return mEnableHUDCombatLog ? mEnableHUDCombatLog : (mEnableHUDCombatLog = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDCombatLog")); }
			ScriptFunction EnableHUDKillbox() { return mEnableHUDKillbox ? mEnableHUDKillbox : (mEnableHUDKillbox = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDKillbox")); }
			ScriptFunction EnableHUDDeathcam() { return mEnableHUDDeathcam ? mEnableHUDDeathcam : (mEnableHUDDeathcam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDDeathcam")); }
			ScriptFunction EnableHUDHeroText() { return mEnableHUDHeroText ? mEnableHUDHeroText : (mEnableHUDHeroText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDHeroText")); }
			ScriptFunction EnableHUDPromptPanel() { return mEnableHUDPromptPanel ? mEnableHUDPromptPanel : (mEnableHUDPromptPanel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDPromptPanel")); }
			ScriptFunction EnableHUDRespawnTimer() { return mEnableHUDRespawnTimer ? mEnableHUDRespawnTimer : (mEnableHUDRespawnTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDRespawnTimer")); }
			ScriptFunction EnableHUDSkiBars() { return mEnableHUDSkiBars ? mEnableHUDSkiBars : (mEnableHUDSkiBars = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDSkiBars")); }
			ScriptFunction EnableHUDFriendColoring() { return mEnableHUDFriendColoring ? mEnableHUDFriendColoring : (mEnableHUDFriendColoring = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDFriendColoring")); }
			ScriptFunction EnableHUDNotifications() { return mEnableHUDNotifications ? mEnableHUDNotifications : (mEnableHUDNotifications = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDNotifications")); }
			ScriptFunction EnableHUDFriendStateNotifications() { return mEnableHUDFriendStateNotifications ? mEnableHUDFriendStateNotifications : (mEnableHUDFriendStateNotifications = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDFriendStateNotifications")); }
			ScriptFunction EnableHUDCracks() { return mEnableHUDCracks ? mEnableHUDCracks : (mEnableHUDCracks = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EnableHUDCracks")); }
			ScriptFunction ShowAlienFX() { return mShowAlienFX ? mShowAlienFX : (mShowAlienFX = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ShowAlienFX")); }
			ScriptFunction GetHUDObjectivesValue() { return mGetHUDObjectivesValue ? mGetHUDObjectivesValue : (mGetHUDObjectivesValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetHUDObjectivesValue")); }
			ScriptFunction GetHUDNotifications() { return mGetHUDNotifications ? mGetHUDNotifications : (mGetHUDNotifications = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetHUDNotifications")); }
			ScriptFunction GetHUDFriendStateNotifications() { return mGetHUDFriendStateNotifications ? mGetHUDFriendStateNotifications : (mGetHUDFriendStateNotifications = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetHUDFriendStateNotifications")); }
			ScriptFunction GetWhisperFilterValue() { return mGetWhisperFilterValue ? mGetWhisperFilterValue : (mGetWhisperFilterValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetWhisperFilterValue")); }
			ScriptFunction SetWhisperFilter() { return mSetWhisperFilter ? mSetWhisperFilter : (mSetWhisperFilter = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetWhisperFilter")); }
			ScriptFunction SummaryTweenTimer() { return mSummaryTweenTimer ? mSummaryTweenTimer : (mSummaryTweenTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SummaryTweenTimer")); }
			ScriptFunction VoteNo() { return mVoteNo ? mVoteNo : (mVoteNo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.VoteNo")); }
			ScriptFunction VoteYes() { return mVoteYes ? mVoteYes : (mVoteYes = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.VoteYes")); }
			ScriptFunction FlashShooterHitReticule() { return mFlashShooterHitReticule ? mFlashShooterHitReticule : (mFlashShooterHitReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.FlashShooterHitReticule")); }
			ScriptFunction ServerShowOverheadNumber() { return mServerShowOverheadNumber ? mServerShowOverheadNumber : (mServerShowOverheadNumber = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerShowOverheadNumber")); }
			ScriptFunction ClientShowOverheadNumber() { return mClientShowOverheadNumber ? mClientShowOverheadNumber : (mClientShowOverheadNumber = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientShowOverheadNumber")); }
			ScriptFunction GetCreditsForDamageAmount() { return mGetCreditsForDamageAmount ? mGetCreditsForDamageAmount : (mGetCreditsForDamageAmount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetCreditsForDamageAmount")); }
			ScriptFunction CashForDamage() { return mCashForDamage ? mCashForDamage : (mCashForDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CashForDamage")); }
			ScriptFunction AwardTeamAssistCredits() { return mAwardTeamAssistCredits ? mAwardTeamAssistCredits : (mAwardTeamAssistCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AwardTeamAssistCredits")); }
			ScriptFunction AwardTeamRabbitAssistCredits() { return mAwardTeamRabbitAssistCredits ? mAwardTeamRabbitAssistCredits : (mAwardTeamRabbitAssistCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AwardTeamRabbitAssistCredits")); }
			ScriptFunction TypeKeyPressed() { return mTypeKeyPressed ? mTypeKeyPressed : (mTypeKeyPressed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TypeKeyPressed")); }
			ScriptFunction FOV() { return mFOV ? mFOV : (mFOV = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.FOV")); }
			ScriptFunction FixFOV() { return mFixFOV ? mFixFOV : (mFixFOV = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.FixFOV")); }
			ScriptFunction SetFOV() { return mSetFOV ? mSetFOV : (mSetFOV = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetFOV")); }
			ScriptFunction ServerSetClassAffordable() { return mServerSetClassAffordable ? mServerSetClassAffordable : (mServerSetClassAffordable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerSetClassAffordable")); }
			ScriptFunction GetClassBit() { return mGetClassBit ? mGetClassBit : (mGetClassBit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.GetClassBit")); }
			ScriptFunction TestTrainingSlot() { return mTestTrainingSlot ? mTestTrainingSlot : (mTestTrainingSlot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TestTrainingSlot")); }
			ScriptFunction TestSlot() { return mTestSlot ? mTestSlot : (mTestSlot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TestSlot")); }
			ScriptFunction ServerTestSlot() { return mServerTestSlot ? mServerTestSlot : (mServerTestSlot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerTestSlot")); }
			ScriptFunction OnDeviceContentDataClassLoaded() { return mOnDeviceContentDataClassLoaded ? mOnDeviceContentDataClassLoaded : (mOnDeviceContentDataClassLoaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnDeviceContentDataClassLoaded")); }
			ScriptFunction On3PSkinContentLoaded() { return mOn3PSkinContentLoaded ? mOn3PSkinContentLoaded : (mOn3PSkinContentLoaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.On3PSkinContentLoaded")); }
			ScriptFunction On1PSkinContentLoaded() { return mOn1PSkinContentLoaded ? mOn1PSkinContentLoaded : (mOn1PSkinContentLoaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.On1PSkinContentLoaded")); }
			ScriptFunction AddPending3PSkin() { return mAddPending3PSkin ? mAddPending3PSkin : (mAddPending3PSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AddPending3PSkin")); }
			ScriptFunction OnClassSelectedMainMenu() { return mOnClassSelectedMainMenu ? mOnClassSelectedMainMenu : (mOnClassSelectedMainMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnClassSelectedMainMenu")); }
			ScriptFunction OnGiveCredits() { return mOnGiveCredits ? mOnGiveCredits : (mOnGiveCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnGiveCredits")); }
			ScriptFunction OnGiveAccolade() { return mOnGiveAccolade ? mOnGiveAccolade : (mOnGiveAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnGiveAccolade")); }
			ScriptFunction OnPlayVGSCommand() { return mOnPlayVGSCommand ? mOnPlayVGSCommand : (mOnPlayVGSCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnPlayVGSCommand")); }
			ScriptFunction OnRefreshInventory() { return mOnRefreshInventory ? mOnRefreshInventory : (mOnRefreshInventory = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnRefreshInventory")); }
			ScriptFunction StartForceFocusTimer() { return mStartForceFocusTimer ? mStartForceFocusTimer : (mStartForceFocusTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StartForceFocusTimer")); }
			ScriptFunction StartAcquisitionFireTimer() { return mStartAcquisitionFireTimer ? mStartAcquisitionFireTimer : (mStartAcquisitionFireTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StartAcquisitionFireTimer")); }
			ScriptFunction StartSettingBlock() { return mStartSettingBlock ? mStartSettingBlock : (mStartSettingBlock = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StartSettingBlock")); }
			ScriptFunction AutoRevertSetting() { return mAutoRevertSetting ? mAutoRevertSetting : (mAutoRevertSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.AutoRevertSetting")); }
			ScriptFunction StartSendMenuBackTimer() { return mStartSendMenuBackTimer ? mStartSendMenuBackTimer : (mStartSendMenuBackTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StartSendMenuBackTimer")); }
			ScriptFunction QueueTimer() { return mQueueTimer ? mQueueTimer : (mQueueTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.QueueTimer")); }
			ScriptFunction TVTimer() { return mTVTimer ? mTVTimer : (mTVTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.TVTimer")); }
			ScriptFunction DealTimer() { return mDealTimer ? mDealTimer : (mDealTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.DealTimer")); }
			ScriptFunction StartHotkeyBlock() { return mStartHotkeyBlock ? mStartHotkeyBlock : (mStartHotkeyBlock = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StartHotkeyBlock")); }
			ScriptFunction ClientArenaRoundEnded() { return mClientArenaRoundEnded ? mClientArenaRoundEnded : (mClientArenaRoundEnded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientArenaRoundEnded")); }
			ScriptFunction ClientPlayerResettingAndRespawning() { return mClientPlayerResettingAndRespawning ? mClientPlayerResettingAndRespawning : (mClientPlayerResettingAndRespawning = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientPlayerResettingAndRespawning")); }
			ScriptFunction DestroyAllOwnedDeployables() { return mDestroyAllOwnedDeployables ? mDestroyAllOwnedDeployables : (mDestroyAllOwnedDeployables = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.DestroyAllOwnedDeployables")); }
			ScriptFunction DestroyAllOwnedMines() { return mDestroyAllOwnedMines ? mDestroyAllOwnedMines : (mDestroyAllOwnedMines = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.DestroyAllOwnedMines")); }
			ScriptFunction DestroyAllOwnedProjectiles() { return mDestroyAllOwnedProjectiles ? mDestroyAllOwnedProjectiles : (mDestroyAllOwnedProjectiles = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.DestroyAllOwnedProjectiles")); }
			ScriptFunction QueueBadge() { return mQueueBadge ? mQueueBadge : (mQueueBadge = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.QueueBadge")); }
			ScriptFunction ClientQueueAccolade() { return mClientQueueAccolade ? mClientQueueAccolade : (mClientQueueAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClientQueueAccolade")); }
			ScriptFunction ClassHotkeyPTH() { return mClassHotkeyPTH ? mClassHotkeyPTH : (mClassHotkeyPTH = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClassHotkeyPTH")); }
			ScriptFunction ClassHotkeySEN() { return mClassHotkeySEN ? mClassHotkeySEN : (mClassHotkeySEN = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClassHotkeySEN")); }
			ScriptFunction ClassHotkeyINF() { return mClassHotkeyINF ? mClassHotkeyINF : (mClassHotkeyINF = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClassHotkeyINF")); }
			ScriptFunction ClassHotkeySLD() { return mClassHotkeySLD ? mClassHotkeySLD : (mClassHotkeySLD = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClassHotkeySLD")); }
			ScriptFunction ClassHotkeyRDR() { return mClassHotkeyRDR ? mClassHotkeyRDR : (mClassHotkeyRDR = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClassHotkeyRDR")); }
			ScriptFunction ClassHotkeyTCN() { return mClassHotkeyTCN ? mClassHotkeyTCN : (mClassHotkeyTCN = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClassHotkeyTCN")); }
			ScriptFunction ClassHotkeyJUG() { return mClassHotkeyJUG ? mClassHotkeyJUG : (mClassHotkeyJUG = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClassHotkeyJUG")); }
			ScriptFunction ClassHotkeyDMB() { return mClassHotkeyDMB ? mClassHotkeyDMB : (mClassHotkeyDMB = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClassHotkeyDMB")); }
			ScriptFunction ClassHotkeyBRT() { return mClassHotkeyBRT ? mClassHotkeyBRT : (mClassHotkeyBRT = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClassHotkeyBRT")); }
			ScriptFunction QuickClasses() { return mQuickClasses ? mQuickClasses : (mQuickClasses = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.QuickClasses")); }
			ScriptFunction QuickLoadouts() { return mQuickLoadouts ? mQuickLoadouts : (mQuickLoadouts = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.QuickLoadouts")); }
			ScriptFunction EndVGSInput() { return mEndVGSInput ? mEndVGSInput : (mEndVGSInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.EndVGSInput")); }
			ScriptFunction StartUILoadSummaryTimer() { return mStartUILoadSummaryTimer ? mStartUILoadSummaryTimer : (mStartUILoadSummaryTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StartUILoadSummaryTimer")); }
			ScriptFunction OpenVehicleMenu() { return mOpenVehicleMenu ? mOpenVehicleMenu : (mOpenVehicleMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OpenVehicleMenu")); }
			ScriptFunction OnScoreChanged() { return mOnScoreChanged ? mOnScoreChanged : (mOnScoreChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.OnScoreChanged")); }
			ScriptFunction CheckFriendlyFireKills() { return mCheckFriendlyFireKills ? mCheckFriendlyFireKills : (mCheckFriendlyFireKills = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CheckFriendlyFireKills")); }
			ScriptFunction CheckFriendlyFireDamage() { return mCheckFriendlyFireDamage ? mCheckFriendlyFireDamage : (mCheckFriendlyFireDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.CheckFriendlyFireDamage")); }
			ScriptFunction StartRefreshPageTimer() { return mStartRefreshPageTimer ? mStartRefreshPageTimer : (mStartRefreshPageTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StartRefreshPageTimer")); }
			ScriptFunction UpdateMainMenuPaperDoll_Mesh() { return mUpdateMainMenuPaperDoll_Mesh ? mUpdateMainMenuPaperDoll_Mesh : (mUpdateMainMenuPaperDoll_Mesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.UpdateMainMenuPaperDoll_Mesh")); }
			ScriptFunction ClearMainMenuPaperDoll() { return mClearMainMenuPaperDoll ? mClearMainMenuPaperDoll : (mClearMainMenuPaperDoll = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClearMainMenuPaperDoll")); }
			ScriptFunction ClearPaperDoll() { return mClearPaperDoll ? mClearPaperDoll : (mClearPaperDoll = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ClearPaperDoll")); }
			ScriptFunction SpecList() { return mSpecList ? mSpecList : (mSpecList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SpecList")); }
			ScriptFunction SampleVoice() { return mSampleVoice ? mSampleVoice : (mSampleVoice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SampleVoice")); }
			ScriptFunction StripTag() { return mStripTag ? mStripTag : (mStripTag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.StripTag")); }
			ScriptFunction SetAllowSimProjectiles() { return mSetAllowSimProjectiles ? mSetAllowSimProjectiles : (mSetAllowSimProjectiles = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.SetAllowSimProjectiles")); }
			ScriptFunction ServerSetAllowSimProjectiles() { return mServerSetAllowSimProjectiles ? mServerSetAllowSimProjectiles : (mServerSetAllowSimProjectiles = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerController.ServerSetAllowSimProjectiles")); }
		}
	}
	static struct Constants
	{
		enum
		{
			MAX_CLASS_SLOTS = 10,
			TR_QUERY_CTF = 0,
			TR_QUERY_TDM = 1,
			TR_QUERY_RABBIT = 2,
			TR_QUERY_TEAMRABBIT = 3,
			TR_QUERY_ARENA = 4,
			TR_QUERY_DEFENDANDDESTROY = 5,
			TR_QUERY_CTFBLITZ = 6,
			CONTEXT_GAME_MODE_TRCTF = 0,
			CONTEXT_GAME_MODE_TRTDM = 1,
			CONTEXT_GAME_MODE_TRRABBIT = 2,
			CONTEXT_GAME_MODE_TRSIEGE = 3,
			CONTEXT_GAME_MODE_TRTRAINING = 4,
			CONTEXT_GAME_MODE_TRSTORM = 5,
			CONTEXT_GAME_MODE_TRTEAMRABBIT = 6,
			CONTEXT_GAME_MODE_TRARENA = 7,
			CONTEXT_GAME_MODE_TRDEFENDANDDESTROY = 8,
			CONTEXT_GAME_MODE_TRCAPTUREANDHOLD = 9,
			CONTEXT_GAME_MODE_TRCTFBLITZ = 10,
			STAT_VIEW_BASE_PLAYER = 1,
			STAT_VIEW_BASE_GAME = 101,
			STAT_VIEW_BASE_WEAPON_TYPE = 1000,
			GAME_SESSION_NAME = "Game",
			PROPERTY_CUSTOM_MAPNAME = 0x40000001,
			PROPERTY_CUSTOM_GAMEMODE = 0x40000002,
			PROPERTY_SERVER_DESCRIPTION = 0x40000003,
			PROPERTY_CUSTOM_MUTATORS = 0x40000004,
			CLASS_TYPE_UNKNOWN = 1668,
			CLASS_TYPE_LIGHT_INFILTRATOR = 1682,
			CLASS_TYPE_LIGHT_JUMPER = 1696,
			CLASS_TYPE_LIGHT_ARCHITECT = 1697,
			CLASS_TYPE_LIGHT_PATHFINDER = 1683,
			CLASS_TYPE_LIGHT_NAKEDPATHFINDER = 1701,
			CLASS_TYPE_LIGHT_WRAITH = 1685,
			CLASS_TYPE_LIGHT_SENTINEL = 1686,
			CLASS_TYPE_MEDIUM_ENGINEER = 1698,
			CLASS_TYPE_MEDIUM_RANGER = 1687,
			CLASS_TYPE_MEDIUM_SCRAMBLER = 1688,
			CLASS_TYPE_MEDIUM_SOLDIER = 1693,
			CLASS_TYPE_MEDIUM_RAIDER = 1699,
			CLASS_TYPE_MEDIUM_TECHNICIAN = 1694,
			CLASS_TYPE_MEDIUM_WARDER = 1700,
			CLASS_TYPE_HEAVY_BRUTE = 1689,
			CLASS_TYPE_HEAVY_ROOK = 1690,
			CLASS_TYPE_HEAVY_DOOMBRINGER = 1691,
			CLASS_TYPE_HEAVY_JUGGERNAUGHT = 1692,
			CLASS_TYPE_HEAVY_MARAUDER = 1695,
			CLASS_PURCHASE_LIGHT_INFILTRATOR = 7476,
			CLASS_PURCHASE_LIGHT_PATHFINDER = 7466,
			CLASS_PURCHASE_LIGHT_SENTINEL = 7478,
			CLASS_PURCHASE_MEDIUM_SOLDIER = 7470,
			CLASS_PURCHASE_MEDIUM_RAIDER = 7494,
			CLASS_PURCHASE_MEDIUM_TECHNICIAN = 7472,
			CLASS_PURCHASE_HEAVY_BRUTE = 7486,
			CLASS_PURCHASE_HEAVY_DOOMBRINGER = 7488,
			CLASS_PURCHASE_HEAVY_JUGGERNAUGHT = 7474,
			CLASS_INFO_BIT_NONE = 0x00000000,
			CLASS_INFO_BIT_INFILTRATOR = 0x00000001,
			CLASS_INFO_BIT_JUMPER = 0x00000002,
			CLASS_INFO_BIT_ARCHITECT = 0x00000004,
			CLASS_INFO_BIT_PATHFINDER = 0x00000008,
			CLASS_INFO_BIT_WRAITH = 0x00000010,
			CLASS_INFO_BIT_SENTINEL = 0x00000020,
			CLASS_INFO_BIT_ENGINEER = 0x00000040,
			CLASS_INFO_BIT_RANGER = 0x00000080,
			CLASS_INFO_BIT_SCRAMBLER = 0x00000100,
			CLASS_INFO_BIT_SOLDIER = 0x00000200,
			CLASS_INFO_BIT_RAIDER = 0x00000400,
			CLASS_INFO_BIT_TECHNICIAN = 0x00000800,
			CLASS_INFO_BIT_WARDER = 0x00001000,
			CLASS_INFO_BIT_BRUTE = 0x00002000,
			CLASS_INFO_BIT_ROOK = 0x00004000,
			CLASS_INFO_BIT_DOOMBRINGER = 0x00008000,
			CLASS_INFO_BIT_JUGGERNAUT = 0x00010000,
			CLASS_INFO_BIT_MARAUDER = 0x00020000,
			CLASS_INFO_BIT_NAKEDPATHFINDER = 0x00040000,
			WEAPON_ID_UNKNOWN = 102000,
			WEAPON_ID_AVMINE = 102003,
			WEAPON_ID_DUALRHINO = 102024,
			WEAPON_ID_LACERATOR = 102016,
			WEAPON_ID_ARX_BUSTER = 7384,
			WEAPON_ID_CHAINGUN = 7386,
			WEAPON_ID_DROPJAMMER = 7456,
			WEAPON_ID_FORCEFIELD = 7411,
			WEAPON_ID_FORCEFIELD_PERSONAL = 7460,
			WEAPON_ID_GRENADE = 7390,
			WEAPON_ID_GRENADE_AP = 7434,
			WEAPON_ID_GRENADE_AP_HEAVY = 7447,
			WEAPON_ID_GRENADE_EMP = 7444,
			WEAPON_ID_GRENADE_FLARE = 7389,
			WEAPON_ID_GRENADE_NITRON = 7387,
			WEAPON_ID_GRENADE_NITRON_HEAVY = 7450,
			WEAPON_ID_GRENADE_SPIKE = 7428,
			WEAPON_ID_GRENADE_ST = 7437,
			WEAPON_ID_GRENADE_STICKY = 7402,
			WEAPON_ID_GRENADE_STICKY_LIGHT = 7455,
			WEAPON_ID_GRENADE_WHITEOUT = 7432,
			WEAPON_ID_GRENADE_XL = 7430,
			WEAPON_ID_GUNNER_BEOWULF = 7405,
			WEAPON_ID_GUNNER_HERC = 7404,
			WEAPON_ID_LAUNCHER_BOLT = 7425,
			WEAPON_ID_LAUNCHER_BOLT_HEAVY = 7452,
			WEAPON_ID_LAUNCHER_GRENADE = 7416,
			WEAPON_ID_LAUNCHER_MIRV = 7457,
			WEAPON_ID_LAUNCHER_MORTAR = 7393,
			WEAPON_ID_LAUNCHER_SABER = 7398,
			WEAPON_ID_MELEE = 7391,
			WEAPON_ID_MINE = 7392,
			WEAPON_ID_MINE_CLAYMORE = 7421,
			WEAPON_ID_MINE_PRISM = 7440,
			WEAPON_ID_MOTIONALARM = 7426,
			WEAPON_ID_PILOT_BEOWULF = 7406,
			WEAPON_ID_PILOT_GRAVCYCLE = 7410,
			WEAPON_ID_PILOT_HAVOC = 7409,
			WEAPON_ID_PILOT_HERC = 7403,
			WEAPON_ID_PILOT_SHRIKE = 7407,
			WEAPON_ID_PISTOL_EAGLE = 7388,
			WEAPON_ID_PISTOL_EAGLE_CUSTOM = 7439,
			WEAPON_ID_PISTOL_NOVA_COLT = 7394,
			WEAPON_ID_PISTOL_NOVA_SLUG = 7431,
			WEAPON_ID_PISTOL_FALCON = 7419,
			WEAPON_ID_PISTOL_H1 = 7435,
			WEAPON_ID_PISTOL_SN7 = 7418,
			WEAPON_ID_PISTOL_SPARROW = 7433,
			WEAPON_ID_TURRET_EXR = 7417,
			WEAPON_ID_TURRET_BASE = 7412,
			WEAPON_ID_TURRET_LIGHT = 7413,
			WEAPON_ID_TURRET_WALL = 7445,
			WEAPON_ID_REPAIR_TOOL = 7396,
			WEAPON_ID_REPAIR_TOOL_SD = 7436,
			WEAPON_ID_RIFLE_ASSAULT = 7385,
			WEAPON_ID_RIFLE_ASSAULT_LIGHT = 7438,
			WEAPON_ID_RIFLE_ASSAULT_S22 = 7424,
			WEAPON_ID_RIFLE_ASSAULT_X1 = 7458,
			WEAPON_ID_RIFLE_PHASE = 7395,
			WEAPON_ID_RIFLE_SNIPER = 7400,
			WEAPON_ID_SMG_NJ4 = 7441,
			WEAPON_ID_SMG_RHINO = 7397,
			WEAPON_ID_SMG_TCN4 = 7443,
			WEAPON_ID_SHOTGUN = 7399,
			WEAPON_ID_SHOTGUN_ARX = 7454,
			WEAPON_ID_SHOTGUN_AUTO = 7449,
			WEAPON_ID_SHOTGUN_SAWED_OFF = 7427,
			WEAPON_ID_SPINFUSOR = 7401,
			WEAPON_ID_SPINFUSOR_D = 7446,
			WEAPON_ID_SPINFUSOR_HEAVY = 7448,
			WEAPON_ID_SPINFUSOR_LIGHT = 7422,
			WEAPON_ID_SPINFUSOR_TOSS = 7459,
			WEAPON_ID_CALLIN_TACTICALSTRIKE = 7609,
			WEAPON_ID_CALLIN_INVENTORYDROP = 7610,
			WEAPON_ID_CALLIN_ORBITALSTRIKE = 7611,
			WEAPON_ID_TCNG = 7736,
			WEAPON_ID_FALLING = 7815,
			WEAPON_ID_HITWALL = 7816,
			WEAPON_ID_RANOVER = 7817,
			WEAPON_ID_THUMPER = 7461,
			WEAPON_ID_THUMPER_D = 7462,
			WEAPON_ID_STEALTHLIGHTSPINFUSOR = 7902,
			WEAPON_ID_GRENADE_T5 = 7914,
			WEAPON_ID_PROXIMITY_GRENADE = 8222,
			WEAPON_ID_INFILTRATORBLANK = 8230,
			WEAPON_ID_ACCURIZEDSHOTGUN = 8239,
			WEAPON_ID_MINE_ARMOREDCLAYMORE = 8240,
			WEAPON_ID_BUCKLER = 8242,
			WEAPON_ID_IMPACTBOMBLETS = 8244,
			WEAPON_ID_LIGHTTWINFUSOR = 8245,
			WEAPON_ID_LR1MORTAR = 8246,
			WEAPON_ID_MIRV_GRENADE = 8247,
			WEAPON_ID_GRENADE_NINJASMOKE = 8248,
			WEAPON_ID_NJ5SMG = 8249,
			WEAPON_ID_PLASMA_CANNON = 8250,
			WEAPON_ID_PLASMA_GUN = 8251,
			WEAPON_ID_REMOTE_ARX_BUSTER = 8252,
			WEAPON_ID_ROCKETLAUNCHER = 8253,
			WEAPON_ID_SAP20 = 8254,
			WEAPON_ID_THROWINGKNIVES = 8256,
			WEAPON_ID_TWINFUSOR = 8257,
			WEAPON_ID_HEAVYTWINFUSOR = 8656,
			WEAPON_ID_SPIKELAUNCHER = 8357,
			WEAPON_ID_TARGETINGBEACON = 8358,
			ITEM_PACK_AMMO = 7821,
			ITEM_PACK_BLINK = 7822,
			ITEM_PACK_DAMAGE = 7823,
			ITEM_PACK_ENERGY_SOLDIER = 7824,
			ITEM_PACK_ENERGY_JUGGERNAUT = 7901,
			ITEM_PACK_ENERGY_BRUTE = 7830,
			ITEM_PACK_RECHARGE_PATHFINDER = 7825,
			ITEM_PACK_RECHARGE_SENTINEL = 7900,
			ITEM_PACK_HEAVYSHIELD = 7826,
			ITEM_PACK_JAMMER = 7827,
			ITEM_PACK_LIGHTREGEN = 7828,
			ITEM_PACK_POWERPOOL = 7829,
			ITEM_PACK_MINORENERGY = 7830,
			ITEM_PACK_REGEN = 7831,
			ITEM_PACK_SHIELD = 7832,
			ITEM_PACK_STEALTH = 7833,
			ITEM_PACK_UTILITY_SOLDIER = 8223,
			ITEM_PACK_HIGHSPEEDSTEALTH = 8243,
			ITEM_PACK_SURVIVAL = 8255,
			WEAPON_BASE_UNKNOWN = 0,
			WEAPON_BASE_SPINFUSOR = 1,
			WEAPON_BASE_PISTOL = 2,
			WEAPON_BASE_SNIPERRIFLE = 3,
			WEAPON_BASE_ASSAULTRIFLE = 4,
			WEAPON_BASE_GRENADE = 5,
			WEAPON_BASE_REPAIRTOOL = 6,
			WEAPON_BASE_CALLIN = 7,
			WEAPON_BASE_SMG = 8,
			WEAPON_BASE_SHOTGUN = 9,
			WEAPON_BASE_VEHICLE = 10,
			WEAPON_TYPE_UNKNOWN = 0,
			WEAPON_TYPE_PROJECTILE = 1,
			WEAPON_TYPE_INSTANTFIRE = 2,
			ITEM_PERK_BOUNTYHUNTER = 8153,
			ITEM_PERK_CLOSECOMBAT = 8156,
			ITEM_PERK_DETERMINATION = 8157,
			ITEM_PERK_EGOCENTRIC = 7917,
			ITEM_PERK_LOOTER = 8158,
			ITEM_PERK_MECHANIC = 8170,
			ITEM_PERK_PILOT = 8159,
			ITEM_PERK_POTENTIALENERGY = 8160,
			ITEM_PERK_QUICKDRAW = 8161,
			ITEM_PERK_REACH = 7916,
			ITEM_PERK_SAFEFALL = 8162,
			ITEM_PERK_SAFETYTHIRD = 8163,
			ITEM_PERK_STEALTHY = 8164,
			ITEM_PERK_SUPERCAPACITOR = 8165,
			ITEM_PERK_SUPERHEAVY = 8166,
			ITEM_PERK_SURVIVALIST = 8167,
			ITEM_PERK_ULTRACAPACITOR = 8168,
			ITEM_PERK_WHEELDEAL = 8169,
			ITEM_PERK_RAGE = 8232,
			ITEM_PERK_SONICPUNCH = 8231,
			ITEM_PERK_LIGHTWEIGHT = 8646,
			ITEM_SKILL_PATHFINDER_PRIMARY_AMMO_I = 7508,
			ITEM_SKILL_PATHFINDER_PRIMARY_AMMO_II = 7637,
			ITEM_SKILL_PATHFINDER_PRIMARY_ANTIARMOR = 7509,
			ITEM_SKILL_PATHFINDER_SECONDARY_AMMO_I = 7638,
			ITEM_SKILL_PATHFINDER_SECONDARY_AMMO_II = 7640,
			ITEM_SKILL_PATHFINDER_SECONDARY_CLIP = 7639,
			ITEM_SKILL_PATHFINDER_SECONDARY_FALLOFF = 7641,
			ITEM_SKILL_PATHFINDER_GRENADE_AMMO = 7504,
			ITEM_SKILL_PATHFINDER_GRENADE_RADIUS = 7505,
			ITEM_SKILL_PATHFINDER_HEALTH_POOL = 7636,
			ITEM_SKILL_PATHFINDER_HEALTH_REGEN_RATE = 7507,
			ITEM_SKILL_PATHFINDER_HEALTH_REGEN_DELAY = 7506,
			ITEM_SKILL_PATHFINDER_ENERGY_REGEN_I = 7501,
			ITEM_SKILL_PATHFINDER_ENERGY_REGEN_II = 7635,
			ITEM_SKILL_PATHFINDER_SPEED_I = 7502,
			ITEM_SKILL_PATHFINDER_SPEED_II = 7503,
			ITEM_SKILL_PATHFINDER_GROUND_SPEED = 7754,
			ITEM_SKILL_PATHFINDER_STOP_DISTANCE = 7755,
			ITEM_SKILL_JUMPER_PRIMARY_AMMO_I = 7564,
			ITEM_SKILL_JUMPER_PRIMARY_AMMO_II = 7646,
			ITEM_SKILL_JUMPER_PRIMARY_ANTIARMOR = 7645,
			ITEM_SKILL_JUMPER_SECONDARY_AMMO = 7647,
			ITEM_SKILL_JUMPER_SECONDARY_RELOAD = 7565,
			ITEM_SKILL_JUMPER_SECONDARY_FALLOFF = 7648,
			ITEM_SKILL_JUMPER_GRENADE_AMMO = 7563,
			ITEM_SKILL_JUMPER_PACK_COST_I = 7558,
			ITEM_SKILL_JUMPER_PACK_COST_II = 7643,
			ITEM_SKILL_JUMPER_PACK_POTENCY = 7560,
			ITEM_SKILL_JUMPER_HEALTH_POOL = 7562,
			ITEM_SKILL_JUMPER_HEALTH_REGEN_RATE = 7644,
			ITEM_SKILL_JUMPER_HEALTH_REGEN_DELAY = 7561,
			ITEM_SKILL_JUMPER_ENERGY_POOL = 7642,
			ITEM_SKILL_JUMPER_CONTROL = 7557,
			ITEM_SKILL_JUMPER_SPEED = 7559,
			ITEM_SKILL_JUMPER_GROUND_SPEED = 7756,
			ITEM_SKILL_JUMPER_STOP_DISTANCE = 7757,
			ITEM_SKILL_SOLDIER_PRIMARY_AMMO_I = 7551,
			ITEM_SKILL_SOLDIER_PRIMARY_AMMO_II = 7667,
			ITEM_SKILL_SOLDIER_PRIMARY_ANTIARMOR = 7552,
			ITEM_SKILL_SOLDIER_SECONDARY_AMMO = 7670,
			ITEM_SKILL_SOLDIER_SECONDARY_CLIP = 7671,
			ITEM_SKILL_SOLDIER_SECONDARY_RELOAD = 7556,
			ITEM_SKILL_SOLDIER_GRENADE_AMMO = 7540,
			ITEM_SKILL_SOLDIER_HEALTH_POOL_I = 7555,
			ITEM_SKILL_SOLDIER_HEALTH_POOL_II = 7668,
			ITEM_SKILL_SOLDIER_HEALTH_REGEN_RATE = 7669,
			ITEM_SKILL_SOLDIER_HEALTH_REGEN_DELAY = 7554,
			ITEM_SKILL_SOLDIER_ENERGY_POOL_I = 7541,
			ITEM_SKILL_SOLDIER_ENERGY_POOL_II = 7665,
			ITEM_SKILL_SOLDIER_CONTROL = 7664,
			ITEM_SKILL_SOLDIER_SPEED_I = 7548,
			ITEM_SKILL_SOLDIER_SPEED_II = 7666,
			ITEM_SKILL_SOLDIER_GROUND_SPEED = 7759,
			ITEM_SKILL_SOLDIER_STOP_DISTANCE = 7760,
			ITEM_SKILL_SOLDIER_WEAPON_SWITCH = 7761,
			ITEM_SKILL_JUGGERNAUGHT_PRIMARY_AMMO_I = 7568,
			ITEM_SKILL_JUGGERNAUGHT_PRIMARY_AMMO_II = 7658,
			ITEM_SKILL_JUGGERNAUGHT_PRIMARY_ANTIARMOR = 7569,
			ITEM_SKILL_JUGGERNAUGHT_SECONDARY_AMMO_I = 7573,
			ITEM_SKILL_JUGGERNAUGHT_SECONDARY_AMMO_II = 7660,
			ITEM_SKILL_JUGGERNAUGHT_SECONDARY_ANTIARMOR = 7574,
			ITEM_SKILL_JUGGERNAUGHT_GRENADE_AMMO_I = 7566,
			ITEM_SKILL_JUGGERNAUGHT_GRENADE_AMMO_II = 7663,
			ITEM_SKILL_JUGGERNAUGHT_GRENADE_RADIUS = 7662,
			ITEM_SKILL_JUGGERNAUGHT_HEALTH_POOL_I = 7576,
			ITEM_SKILL_JUGGERNAUGHT_HEALTH_POOL_II = 7661,
			ITEM_SKILL_JUGGERNAUGHT_ENERGY_POOL_I = 7572,
			ITEM_SKILL_JUGGERNAUGHT_ENERGY_POOL_II = 7659,
			ITEM_SKILL_JUGGERNAUGHT_HEALTH_REGEN_DELAY = 7575,
			ITEM_SKILL_JUGGERNAUGHT_CONTROL = 7657,
			ITEM_SKILL_JUGGERNAUGHT_SPEED = 7570,
			ITEM_SKILL_JUGGERNAUGHT_GROUND_SPEED = 7770,
			ITEM_SKILL_JUGGERNAUGHT_WEAPON_SWITCH = 7771,
			ITEM_SKILL_TECHNICIAN_PRIMARY_AMMO = 7685,
			ITEM_SKILL_TECHNICIAN_PRIMARY_RELOAD = 7686,
			ITEM_SKILL_TECHNICIAN_REPAIR_RATE_I = 7519,
			ITEM_SKILL_TECHNICIAN_REPAIR_RATE_II = 7681,
			ITEM_SKILL_TECHNICIAN_GRENADE_AMMO_I = 7518,
			ITEM_SKILL_TECHNICIAN_GRENADE_AMMO_II = 7687,
			ITEM_SKILL_TECHNICIAN_DEPLOY_ACQUIRE = 7512,
			ITEM_SKILL_TECHNICIAN_DEPLOY_LIMIT = 7513,
			ITEM_SKILL_TECHNICIAN_DEPLOY_ANTIARMOR = 7514,
			ITEM_SKILL_TECHNICIAN_HEALTH_POOL_I = 7520,
			ITEM_SKILL_TECHNICIAN_HEALTH_POOL_II = 7684,
			ITEM_SKILL_TECHNICIAN_HEALTH_REGEN_DELAY = 7516,
			ITEM_SKILL_TECHNICIAN_ENERGY_POOL = 7515,
			ITEM_SKILL_TECHNICIAN_CONTROL = 7517,
			ITEM_SKILL_TECHNICIAN_SPEED_I = 7682,
			ITEM_SKILL_TECHNICIAN_SPEED_II = 7683,
			ITEM_SKILL_TECHNICIAN_GROUND_SPEED = 7765,
			ITEM_SKILL_TECHNICIAN_STOP_DISTANCE = 7766,
			ITEM_SKILL_TECHNICIAN_WEAPON_SWITCH = 7767,
			ITEM_SKILL_SENTINEL_PRIMARY_AMMO_I = 7528,
			ITEM_SKILL_SENTINEL_PRIMARY_AMMO_II = 7655,
			ITEM_SKILL_SENTINEL_PRIMARY_CLIP = 7654,
			ITEM_SKILL_SENTINEL_PRIMARY_FALLOFF = 7529,
			ITEM_SKILL_SENTINEL_SECONDARY_AMMO = 7651,
			ITEM_SKILL_SENTINEL_SECONDARY_CLIP = 7652,
			ITEM_SKILL_SENTINEL_GRENADE_AMMO = 7527,
			ITEM_SKILL_SENTINEL_GRENADE_RADIUS = 7656,
			ITEM_SKILL_SENTINEL_DEPLOY_HEALTH = 7649,
			ITEM_SKILL_SENTINEL_DEPLOY_RADIUS_I = 7521,
			ITEM_SKILL_SENTINEL_DEPLOY_RADIUS_II = 7650,
			ITEM_SKILL_SENTINEL_HEALTH_REGEN_RATE = 7526,
			ITEM_SKILL_SENTINEL_HEALTH_REGEN_DELAY = 7525,
			ITEM_SKILL_SENTINEL_ENERGY_POOL_I = 7523,
			ITEM_SKILL_SENTINEL_ENERGY_POOL_II = 7653,
			ITEM_SKILL_SENTINEL_SPEED = 7524,
			ITEM_SKILL_SENTINEL_WEAPON_SWITCH = 7758,
			ITEM_SKILL_RANGER_PRIMARY_AMMO = 7679,
			ITEM_SKILL_RANGER_PRIMARY_CLIP = 7680,
			ITEM_SKILL_RANGER_PRIMARY_RELOAD = 7582,
			ITEM_SKILL_RANGER_SECONDARY_AMMO_I = 7581,
			ITEM_SKILL_RANGER_SECONDARY_AMMO_II = 7675,
			ITEM_SKILL_RANGER_SECONDARY_ANTIARMOR = 7674,
			ITEM_SKILL_RANGER_GRENADE_AMMO_I = 7580,
			ITEM_SKILL_RANGER_GRENADE_AMMO_II = 7677,
			ITEM_SKILL_RANGER_PACK_COST = 7583,
			ITEM_SKILL_RANGER_HEALTH_POOL_I = 7585,
			ITEM_SKILL_RANGER_HEALTH_POOL_II = 7676,
			ITEM_SKILL_RANGER_HEALTH_REGEN_DELAY = 7584,
			ITEM_SKILL_RANGER_ENERGY_POOL_I = 7577,
			ITEM_SKILL_RANGER_ENERGY_POOL_II = 7678,
			ITEM_SKILL_RANGER_CONTROL = 7672,
			ITEM_SKILL_RANGER_SPEED_I = 7578,
			ITEM_SKILL_RANGER_SPEED_II = 7673,
			ITEM_SKILL_RANGER_GROUND_SPEED = 7762,
			ITEM_SKILL_RANGER_STOP_DISTANCE = 7763,
			ITEM_SKILL_RANGER_WEAPON_SWITCH = 7764,
			ITEM_SKILL_DOOMBRINGER_PRIMARY_AMMO_I = 7598,
			ITEM_SKILL_DOOMBRINGER_PRIMARY_AMMO_II = 7632,
			ITEM_SKILL_DOOMBRINGER_PRIMARY_SPINUP = 7597,
			ITEM_SKILL_DOOMBRINGER_GRENADE_AMMO_I = 7590,
			ITEM_SKILL_DOOMBRINGER_GRENADE_AMMO_II = 7634,
			ITEM_SKILL_DOOMBRINGER_DEPLOY_AMMO = 7591,
			ITEM_SKILL_DOOMBRINGER_GRENADE_ANTIARMOR = 7633,
			ITEM_SKILL_DOOMBRINGER_DEPLOY_HEALTH_I = 7592,
			ITEM_SKILL_DOOMBRINGER_DEPLOY_HEALTH_II = 7629,
			ITEM_SKILL_DOOMBRINGER_HEALTH_POOL_I = 7596,
			ITEM_SKILL_DOOMBRINGER_HEALTH_POOL_II = 7631,
			ITEM_SKILL_DOOMBRINGER_HEALTH_REGEN_DELAY = 7595,
			ITEM_SKILL_DOOMBRINGER_ENERGY_POOL = 7628,
			ITEM_SKILL_DOOMBRINGER_CONTROL = 7594,
			ITEM_SKILL_DOOMBRINGER_SPEED_I = 7593,
			ITEM_SKILL_DOOMBRINGER_SPEED_II = 7630,
			ITEM_SKILL_DOOMBRINGER_GROUND_SPEED = 7772,
			ITEM_SKILL_DOOMBRINGER_STOP_DISTANCE = 7773,
			ITEM_SKILL_DOOMBRINGER_WEAPON_SWITCH = 7774,
			ITEM_SKILL_INFILTRATOR_PRIMARY_AMMO_I = 7612,
			ITEM_SKILL_INFILTRATOR_PRIMARY_AMMO_II = 7818,
			ITEM_SKILL_INFILTRATOR_PRIMARY_RELOAD = 7614,
			ITEM_SKILL_INFILTRATOR_PRIMARY_FALLOFF = 7613,
			ITEM_SKILL_INFILTRATOR_SECONDARY_AMMO = 7623,
			ITEM_SKILL_INFILTRATOR_SECONDARY_CLIP = 7625,
			ITEM_SKILL_INFILTRATOR_SECONDARY_RELOAD = 7624,
			ITEM_SKILL_INFILTRATOR_GRENADE_AMMO_I = 7615,
			ITEM_SKILL_INFILTRATOR_GRENADE_AMMO_II = 7618,
			ITEM_SKILL_INFILTRATOR_GRENADE_RADIUS = 7617,
			ITEM_SKILL_INFILTRATOR_GRENADE_ANTIARMOR = 7616,
			ITEM_SKILL_INFILTRATOR_PACK_COST_I = 7620,
			ITEM_SKILL_INFILTRATOR_PACK_COST_II = 7622,
			ITEM_SKILL_INFILTRATOR_PACK_POTENCY = 7621,
			ITEM_SKILL_INFILTRATOR_HEALTH_REGEN_RATE = 7627,
			ITEM_SKILL_INFILTRATOR_HEALTH_REGEN_DELAY = 7626,
			ITEM_SKILL_INFILTRATOR_ENERGY_POOL = 7619,
			ITEM_SKILL_RAIDER_PRIMARY_AMMO = 7688,
			ITEM_SKILL_RAIDER_PRIMARY_RELOAD = 7690,
			ITEM_SKILL_RAIDER_PRIMARY_FALLOFF = 7689,
			ITEM_SKILL_RAIDER_SECONDARY_AMMO = 7691,
			ITEM_SKILL_RAIDER_SECONDARY_CLIP = 7693,
			ITEM_SKILL_RAIDER_SECONDARY_ANTIARMOR = 7692,
			ITEM_SKILL_RAIDER_GRENADE_AMMO = 7694,
			ITEM_SKILL_RAIDER_GRENADE_EFFECT = 7695,
			ITEM_SKILL_RAIDER_GRENADE_RADIUS = 7696,
			ITEM_SKILL_RAIDER_PACK_COST_I = 7700,
			ITEM_SKILL_RAIDER_PACK_COST_II = 7703,
			ITEM_SKILL_RAIDER_PACK_POTENCY = 7701,
			ITEM_SKILL_RAIDER_HEALTH_POOL_I = 7698,
			ITEM_SKILL_RAIDER_HEALTH_POOL_II = 7699,
			ITEM_SKILL_RAIDER_HEALTH_REGEN_DELAY = 7697,
			ITEM_SKILL_RAIDER_ENERGY_POOL = 7702,
			ITEM_SKILL_BRUTE_ENERGY_POOL = 7723,
			ITEM_SKILL_BRUTE_GRENADE_AMMO = 7720,
			ITEM_SKILL_BRUTE_GRENADE_DURATION = 7721,
			ITEM_SKILL_BRUTE_GRENADE_RADIUS = 7722,
			ITEM_SKILL_BRUTE_HEALTH_POOL_I = 7729,
			ITEM_SKILL_BRUTE_HEALTH_POOL_II = 7732,
			ITEM_SKILL_BRUTE_HEALTH_REGEN_DELAY = 7730,
			ITEM_SKILL_BRUTE_HEALTH_REGEN_RATE = 7731,
			ITEM_SKILL_BRUTE_PRIMARY_AMMO_I = 7726,
			ITEM_SKILL_BRUTE_PRIMARY_AMMO_II = 7728,
			ITEM_SKILL_BRUTE_PRIMARY_ANTIARMOR = 7727,
			ITEM_SKILL_BRUTE_SECONARY_AMMO = 7733,
			ITEM_SKILL_BRUTE_SECONDARY_CLIP = 7735,
			ITEM_SKILL_BRUTE_SECONDARY_RELOAD = 7734,
			ITEM_SKILL_BRUTE_CONTROL = 7725,
			ITEM_SKILL_BRUTE_SPEED = 7724,
			ITEM_SKILL_BRUTE_GROUND_SPEED = 7775,
			ITEM_SKILL_BRUTE_WEAPON_SWITCH = 7776,
			ITEM_SKILL_SCRAMBLER_ENERGY_POOL = 7707,
			ITEM_SKILL_SCRAMBLER_GRENADE_AMMO = 7704,
			ITEM_SKILL_SCRAMBLER_GRENADE_DURATION = 7706,
			ITEM_SKILL_SCRAMBLER_GRENADE_RADIUS = 7705,
			ITEM_SKILL_SCRAMBLER_HEALTH_POOL_I = 7714,
			ITEM_SKILL_SCRAMBLER_HEALTH_POOL_II = 7715,
			ITEM_SKILL_SCRAMBLER_HEALTH_REGEN_DELAY = 7713,
			ITEM_SKILL_SCRAMBLER_PACK_COST_I = 7716,
			ITEM_SKILL_SCRAMBLER_PACK_COST_II = 7718,
			ITEM_SKILL_SCRAMBLER_PACK_EFFECTIVENESS_I = 7717,
			ITEM_SKILL_SCRAMBLER_PACK_EFFECTIVENESS_II = 7719,
			ITEM_SKILL_SCRAMBLER_PRIMARY_AMMO_I = 7710,
			ITEM_SKILL_SCRAMBLER_PRIMARY_AMMO_II = 7712,
			ITEM_SKILL_SCRAMBLER_PRIMARY_ANTIARMOR = 7711,
			ITEM_SKILL_SCRAMBLER_CONTROL = 7709,
			ITEM_SKILL_SCRAMBLER_SPEED = 7708,
			ITEM_SKILL_SCRAMBLER_GROUND_SPEED = 7768,
			ITEM_SKILL_SCRAMBLER_WEAPON_SWITCH = 7769,
			ITEM_SKILL_WRAITH_ENERGY_POOL = 7790,
			ITEM_SKILL_WRAITH_ENERGY_REGEN_I = 7781,
			ITEM_SKILL_WRAITH_ENERGY_REGEN_II = 7783,
			ITEM_SKILL_WRAITH_GRENADE_AMMO = 7788,
			ITEM_SKILL_WRAITH_GRENADE_RADIUS = 7789,
			ITEM_SKILL_WRAITH_GROUND_SPEED = 7782,
			ITEM_SKILL_WRAITH_HEALTH_REGEN_DELAY = 7791,
			ITEM_SKILL_WRAITH_HEALTH_REGEN_RATE = 7792,
			ITEM_SKILL_WRAITH_PRIMARY_AMMO_I = 7793,
			ITEM_SKILL_WRAITH_PRIMARY_AMMO_II = 7796,
			ITEM_SKILL_WRAITH_PRIMARY_CLIP = 7795,
			ITEM_SKILL_WRAITH_PRIMARY_ENERGY_COST = 7794,
			ITEM_SKILL_WRAITH_SECONDARY_AMMO = 7784,
			ITEM_SKILL_WRAITH_SECONDARY_CLIP_I = 7785,
			ITEM_SKILL_WRAITH_SECONDARY_CLIP_II = 7786,
			ITEM_SKILL_WRAITH_WEAPON_SWITCH = 7787,
			TR_MAX_CALLINS = 3,
			PROPERTY_CALLIN_ORBITALSTRIKE = 10241,
			PROPERTY_CALLIN_TACTICALSTRIKE = 10201,
			PROPERTY_CALLIN_SUPPORTINVENTORY = 10234,
			ITEM_SKIN_PATHFINDER = 7834,
			ITEM_SKIN_PATHFINDER_MERC = 8326,
			ITEM_SKIN_INFILTRATOR = 7835,
			ITEM_SKIN_INFILTRATOR_ASSASSIN = 8337,
			ITEM_SKIN_INFILTRATOR_MERC = 8336,
			ITEM_SKIN_SENTINEL = 8327,
			ITEM_SKIN_SENTINEL_MERC = 8665,
			ITEM_SKIN_SOLDIER = 8328,
			ITEM_SKIN_TECHNICIAN = 8329,
			ITEM_SKIN_TECHNICIAN_MERC = 8731,
			ITEM_SKIN_RAIDER = 8330,
			ITEM_SKIN_RAIDER_GRIEVER = 8351,
			ITEM_SKIN_RAIDER_MERC = 8352,
			ITEM_SKIN_JUGGERNAUT = 8331,
			ITEM_SKIN_DOOMBRINGER = 8332,
			ITEM_SKIN_BRUTE = 8333,
			ITEM_SKIN_BRUTE_MERC = 8663,
			ITEM_VOICE_LIGHT_STANDARD = 7903,
			ITEM_VOICE_MEDIUM_STANDARD = 7904,
			ITEM_VOICE_HEAVY_STANDARD = 7905,
			ITEM_ARMOR_MOD_PATHFINDER_1 = 7836,
			ITEM_ARMOR_MOD_SENTINEL_1 = 7837,
			ITEM_ARMOR_MOD_INFILTRATOR_1 = 7838,
			ITEM_ARMOR_MOD_SOLDIER_1 = 7839,
			ITEM_ARMOR_MOD_TECHNICIAN_1 = 7840,
			ITEM_ARMOR_MOD_RAIDER_1 = 7841,
			ITEM_ARMOR_MOD_JUGGERNAUT_1 = 7842,
			ITEM_ARMOR_MOD_DOOMBRINGER_1 = 7843,
			ITEM_ARMOR_MOD_BRUTE_1 = 7844,
			WEAPON_ID_ARX_BUSTER_MKD = 8391,
			WEAPON_ID_CHAINGUN_MKD = 8392,
			WEAPON_ID_GRENADE_MKD = 8393,
			WEAPON_ID_GRENADE_AP_HEAVY_MKD = 8394,
			WEAPON_ID_GRENADE_EMP_MKD = 8395,
			WEAPON_ID_GRENADE_NITRON_MKD = 8396,
			WEAPON_ID_GRENADE_SPIKE_MKD = 8397,
			WEAPON_ID_GRENADE_STICKY_MKD = 8398,
			WEAPON_ID_GRENADE_XL_MKD = 8399,
			WEAPON_ID_LAUNCHER_MORTAR_MKD = 8400,
			WEAPON_ID_LAUNCHER_SABER_MKD = 8401,
			WEAPON_ID_MINE_CLAYMORE_MKD = 8402,
			WEAPON_ID_PISTOL_NOVA_COLT_MKD = 8403,
			WEAPON_ID_PISTOL_SN7_MKD = 8404,
			WEAPON_ID_REPAIR_TOOL_SD_MKD = 8405,
			WEAPON_ID_RIFLE_ASSAULT_MKD = 8406,
			WEAPON_ID_RIFLE_SNIPER_MKD = 8407,
			WEAPON_ID_SMG_NJ4_MKD = 8408,
			WEAPON_ID_SMG_RHINO_MKD = 8409,
			WEAPON_ID_SMG_TCN4_MKD = 8410,
			WEAPON_ID_SHOTGUN_MKD = 8411,
			WEAPON_ID_SHOTGUN_AUTO_MKD = 8412,
			WEAPON_ID_SPINFUSOR_D_MKD = 8413,
			WEAPON_ID_SPINFUSOR_HEAVY_MKD = 8414,
			WEAPON_ID_SPINFUSOR_LIGHT_MKD = 8415,
			WEAPON_ID_TCNG_MKD = 8416,
			WEAPON_ID_THUMPERD_MKD = 8417,
			WEAPON_ID_REPAIR_DEPLOYABLE = 8698,
			WEAPON_ID_SPINFUSOR_LIGHT_100X = 8696,
			WEAPON_ID_SPINFUSOR_100X = 8697,
			WEAPON_ID_TC24 = 8699,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_1 = 8700,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_2 = 8701,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_3 = 8702,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_1 = 8703,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_2 = 8704,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_3 = 8705,
			ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_1 = 8706,
			ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_2 = 8707,
			ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_3 = 8708,
			ITEM_UPGRADE_TECHNICIAN_TC24_1 = 8709,
			ITEM_UPGRADE_TECHNICIAN_TC24_2 = 8710,
			ITEM_UPGRADE_TECHNICIAN_TC24_3 = 8711,
			ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR_100X = 265,
			ACTIVITY_TECHNICIAN_BELT_REPAIR_DEPLOYABLE = 266,
			ACTIVITY_SOLDIER_PRIMARY_SPINFUSOR_100X = 264,
			ACTIVITY_TECHNICIAN_PRIMARY_TC24 = 267,
			ACTIVITY_SENTINEL_PRIMARY_SAP20 = 268,
			ACTIVITY_SENTINEL_SECONDARY_ACCURIZEDSHOTGUN = 269,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_1 = 8418,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_2 = 8419,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_3 = 8420,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_1 = 8421,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_2 = 8422,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_3 = 8423,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_4 = 8424,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_1 = 8425,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_2 = 8426,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_3 = 8427,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_4 = 8428,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_1 = 8429,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_2 = 8430,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_3 = 8431,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_4 = 8432,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_1 = 8433,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_2 = 8434,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_3 = 8435,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_4 = 8436,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_1 = 8437,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_2 = 8438,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_3 = 8439,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_1 = 8440,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_2 = 8441,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_3 = 8442,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_1 = 8443,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_2 = 8444,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_3 = 8445,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_4 = 8446,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_1 = 8447,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_2 = 8448,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_3 = 8449,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_1 = 8657,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_2 = 8658,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_3 = 8659,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_1 = 8450,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_2 = 8451,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_3 = 8452,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_1 = 8453,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_2 = 8454,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_3 = 8455,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_1 = 8456,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_2 = 8457,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_3 = 8458,
			ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_1 = 8459,
			ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_2 = 8460,
			ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_3 = 8461,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_1 = 8462,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_2 = 8463,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_3 = 8464,
			ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_1 = 8465,
			ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_2 = 8466,
			ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_3 = 8467,
			ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_4 = 8468,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_1 = 8469,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_2 = 8470,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_3 = 8471,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_1 = 8472,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_2 = 8473,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_3 = 8474,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_1 = 8475,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_2 = 8476,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_3 = 8477,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_4 = 8478,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_1 = 8479,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_2 = 8480,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_3 = 8481,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_1 = 8482,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_2 = 8483,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_3 = 8484,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_1 = 8486,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_2 = 8487,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_3 = 8488,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_4 = 8489,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_1 = 8490,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_2 = 8491,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_3 = 8492,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_1 = 8493,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_2 = 8494,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_3 = 8495,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_1 = 8496,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_2 = 8497,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_3 = 8498,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_1 = 8499,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_2 = 8500,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_3 = 8501,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_1 = 8502,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_2 = 8503,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_3 = 8504,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_1 = 8505,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_2 = 8506,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_3 = 8507,
			ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_1 = 7850,
			ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_2 = 7851,
			ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_3 = 7852,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_1 = 7855,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_2 = 7860,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_3 = 7857,
			ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_1 = 8277,
			ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_2 = 8278,
			ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_3 = 8279,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_1 = 7927,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_2 = 7929,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_3 = 7930,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_4 = 7931,
			ITEM_UPGRADE_SENTINEL_PHASERIFLE_1 = 7932,
			ITEM_UPGRADE_SENTINEL_PHASERIFLE_2 = 7933,
			ITEM_UPGRADE_SENTINEL_PHASERIFLE_3 = 7934,
			ITEM_UPGRADE_SENTINEL_PHASERIFLE_4 = 7935,
			ITEM_UPGRADE_SENTINEL_SAP20_1 = 8305,
			ITEM_UPGRADE_SENTINEL_SAP20_2 = 8306,
			ITEM_UPGRADE_SENTINEL_SAP20_3 = 8307,
			ITEM_UPGRADE_SENTINEL_SAP20_4 = 8308,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_1 = 7960,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_2 = 7961,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_3 = 7962,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_4 = 7963,
			ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_1 = 7964,
			ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_2 = 7965,
			ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_3 = 7966,
			ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_1 = 8298,
			ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_2 = 8299,
			ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_3 = 8300,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_1 = 7985,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_2 = 7986,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_3 = 7987,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_4 = 7988,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_1 = 7992,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_2 = 7993,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_3 = 7994,
			ITEM_UPGRADE_SOLDIER_TWINFUSOR_1 = 8316,
			ITEM_UPGRADE_SOLDIER_TWINFUSOR_2 = 8317,
			ITEM_UPGRADE_SOLDIER_TWINFUSOR_3 = 8318,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_1 = 8012,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_2 = 8013,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_3 = 8014,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_4 = 8015,
			ITEM_UPGRADE_TECHNICIAN_THUMPER_1 = 8016,
			ITEM_UPGRADE_TECHNICIAN_THUMPER_2 = 8017,
			ITEM_UPGRADE_TECHNICIAN_THUMPER_3 = 8018,
			ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_1 = 8045,
			ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_2 = 8046,
			ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_3 = 8047,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_1 = 8042,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_2 = 8043,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_3 = 8044,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_1 = 8070,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_2 = 8071,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_3 = 8072,
			ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_1 = 8073,
			ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_2 = 8074,
			ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_3 = 8075,
			ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_1 = 8280,
			ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_2 = 8281,
			ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_3 = 8282,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_1 = 8100,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_2 = 8101,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_3 = 8102,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_4 = 8103,
			ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_1 = 8104,
			ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_2 = 8105,
			ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_3 = 8106,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_1 = 8124,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_2 = 8125,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_3 = 8126,
			ITEM_UPGRADE_BRUTE_PLASMACANNON_1 = 8292,
			ITEM_UPGRADE_BRUTE_PLASMACANNON_2 = 8293,
			ITEM_UPGRADE_BRUTE_PLASMACANNON_3 = 8294,
			ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_1 = 8386,
			ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_2 = 8387,
			ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_3 = 8388,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_1 = 7861,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_2 = 7862,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_3 = 7863,
			ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_1 = 7866,
			ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_2 = 7867,
			ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_3 = 7868,
			ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_4 = 7869,
			ITEM_UPGRADE_PATHFINDER_BUCKLER_1 = 8265,
			ITEM_UPGRADE_PATHFINDER_BUCKLER_2 = 8266,
			ITEM_UPGRADE_PATHFINDER_BUCKLER_3 = 8267,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_1 = 7936,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_2 = 7937,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_3 = 7938,
			ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_1 = 7939,
			ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_2 = 7940,
			ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_3 = 7941,
			ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_4 = 7942,
			ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_1 = 8258,
			ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_2 = 8259,
			ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_3 = 8260,
			ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_4 = 8261,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_1 = 7967,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_2 = 7968,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_3 = 7969,
			ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_1 = 8312,
			ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_2 = 8313,
			ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_3 = 8314,
			ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_4 = 8315,
			ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_1 = 7995,
			ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_2 = 7996,
			ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_3 = 7997,
			ITEM_UPGRADE_SOLDIER_THUMPERD_1 = 7989,
			ITEM_UPGRADE_SOLDIER_THUMPERD_2 = 7990,
			ITEM_UPGRADE_SOLDIER_THUMPERD_3 = 7991,
			ITEM_UPGRADE_SOLDIER_PLASMAGUN_1 = 8295,
			ITEM_UPGRADE_SOLDIER_PLASMAGUN_2 = 8296,
			ITEM_UPGRADE_SOLDIER_PLASMAGUN_3 = 8297,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_1 = 8019,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_2 = 8020,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_3 = 8021,
			ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_1 = 8022,
			ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_2 = 8023,
			ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_3 = 8024,
			ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_1 = 8025,
			ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_2 = 8026,
			ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_3 = 8027,
			ITEM_UPGRADE_RAIDER_NJ4SMG_1 = 8048,
			ITEM_UPGRADE_RAIDER_NJ4SMG_2 = 8049,
			ITEM_UPGRADE_RAIDER_NJ4SMG_3 = 8050,
			ITEM_UPGRADE_RAIDER_NJ4SMG_4 = 8051,
			ITEM_UPGRADE_RAIDER_NJ5SMG_1 = 8289,
			ITEM_UPGRADE_RAIDER_NJ5SMG_2 = 8290,
			ITEM_UPGRADE_RAIDER_NJ5SMG_3 = 8291,
			ITEM_UPGRADE_RAIDER_NJ5SMG_4 = 8304,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_1 = 8076,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_2 = 8077,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_3 = 8078,
			ITEM_UPGRADE_JUGGERNAUT_LMG_1 = 8079,
			ITEM_UPGRADE_JUGGERNAUT_LMG_2 = 8080,
			ITEM_UPGRADE_JUGGERNAUT_LMG_3 = 8081,
			ITEM_UPGRADE_JUGGERNAUT_LMG_4 = 8082,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_1 = 8107,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_2 = 8108,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_3 = 8109,
			ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_1 = 8301,
			ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_2 = 8302,
			ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_3 = 8303,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_1 = 8127,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_2 = 8128,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_3 = 8129,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_4 = 8130,
			ITEM_UPGRADE_BRUTE_NOVACOLT_1 = 8131,
			ITEM_UPGRADE_BRUTE_NOVACOLT_2 = 8132,
			ITEM_UPGRADE_BRUTE_NOVACOLT_3 = 8133,
			ITEM_UPGRADE_BRUTE_NOVACOLT_4 = 8134,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_1 = 7881,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_2 = 7882,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_3 = 7883,
			ITEM_UPGRADE_PATHFINDER_GRENADE_ST_1 = 7888,
			ITEM_UPGRADE_PATHFINDER_GRENADE_ST_2 = 7889,
			ITEM_UPGRADE_PATHFINDER_GRENADE_ST_3 = 7890,
			ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_1 = 8274,
			ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_2 = 8275,
			ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_3 = 8276,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_1 = 7943,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_2 = 7944,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_3 = 7945,
			ITEM_UPGRADE_SENTINEL_GRENADEXL_1 = 7946,
			ITEM_UPGRADE_SENTINEL_GRENADEXL_2 = 7947,
			ITEM_UPGRADE_SENTINEL_GRENADEXL_3 = 7948,
			ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_1 = 8262,
			ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_2 = 8263,
			ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_3 = 8264,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_1 = 7970,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_2 = 7971,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_3 = 7972,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_4 = 7973,
			ITEM_UPGRADE_INFILTRATOR_PRISMMINES_1 = 7974,
			ITEM_UPGRADE_INFILTRATOR_PRISMMINES_2 = 7975,
			ITEM_UPGRADE_INFILTRATOR_PRISMMINES_3 = 7976,
			ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_1 = 8286,
			ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_2 = 8287,
			ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_3 = 8288,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_1 = 7998,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_2 = 7999,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_3 = 8000,
			ITEM_UPGRADE_SOLDIER_APGRENADE_1 = 8001,
			ITEM_UPGRADE_SOLDIER_APGRENADE_2 = 8002,
			ITEM_UPGRADE_SOLDIER_APGRENADE_3 = 8003,
			ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_1 = 8227,
			ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_2 = 8228,
			ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_3 = 8229,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_1 = 8028,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_2 = 8029,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_3 = 8030,
			ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_1 = 8031,
			ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_2 = 8032,
			ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_3 = 8033,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_1 = 8052,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_2 = 8053,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_3 = 8054,
			ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_1 = 8055,
			ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_2 = 8056,
			ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_3 = 8057,
			ITEM_UPGRADE_RAIDER_MIRVGRENADE_1 = 8283,
			ITEM_UPGRADE_RAIDER_MIRVGRENADE_2 = 8284,
			ITEM_UPGRADE_RAIDER_MIRVGRENADE_3 = 8285,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_1 = 8083,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_2 = 8084,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_3 = 8085,
			ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_1 = 8086,
			ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_2 = 8087,
			ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_3 = 8088,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_1 = 8110,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_2 = 8111,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_3 = 8112,
			ITEM_UPGRADE_DOOMBRINGER_MINES_1 = 8113,
			ITEM_UPGRADE_DOOMBRINGER_MINES_2 = 8114,
			ITEM_UPGRADE_DOOMBRINGER_MINES_3 = 8115,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_1 = 8135,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_2 = 8136,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_3 = 8137,
			ITEM_UPGRADE_BRUTE_STICKYGRENADE_1 = 8138,
			ITEM_UPGRADE_BRUTE_STICKYGRENADE_2 = 8139,
			ITEM_UPGRADE_BRUTE_STICKYGRENADE_3 = 8140,
			ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_1 = 7871,
			ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_2 = 7872,
			ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_3 = 7873,
			ITEM_UPGRADE_PATHFINDER_JUMPPACK_1 = 7876,
			ITEM_UPGRADE_PATHFINDER_JUMPPACK_2 = 7877,
			ITEM_UPGRADE_PATHFINDER_JUMPPACK_3 = 7878,
			ITEM_UPGRADE_SENTINEL_DROPJAMMER_1 = 7949,
			ITEM_UPGRADE_SENTINEL_DROPJAMMER_2 = 7950,
			ITEM_UPGRADE_SENTINEL_DROPJAMMER_3 = 7951,
			ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_1 = 7952,
			ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_2 = 7953,
			ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_3 = 7954,
			ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_1 = 7977,
			ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_2 = 7978,
			ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_3 = 7979,
			ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_1 = 8271,
			ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_2 = 8272,
			ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_3 = 8273,
			ITEM_UPGRADE_SOLDIER_ENERGYPACK_1 = 8004,
			ITEM_UPGRADE_SOLDIER_ENERGYPACK_2 = 8005,
			ITEM_UPGRADE_SOLDIER_ENERGYPACK_3 = 8006,
			ITEM_UPGRADE_SOLDIER_UTILITYPACK_1 = 8224,
			ITEM_UPGRADE_SOLDIER_UTILITYPACK_2 = 8225,
			ITEM_UPGRADE_SOLDIER_UTILITYPACK_3 = 8226,
			ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_1 = 8034,
			ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_2 = 8035,
			ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_3 = 8036,
			ITEM_UPGRADE_TECHNICIAN_EXRTURRET_1 = 8268,
			ITEM_UPGRADE_TECHNICIAN_EXRTURRET_2 = 8269,
			ITEM_UPGRADE_TECHNICIAN_EXRTURRET_3 = 8270,
			ITEM_UPGRADE_RAIDER_SHIELDPACK_1 = 8058,
			ITEM_UPGRADE_RAIDER_SHIELDPACK_2 = 8059,
			ITEM_UPGRADE_RAIDER_SHIELDPACK_3 = 8060,
			ITEM_UPGRADE_RAIDER_JAMMERPACK_1 = 8061,
			ITEM_UPGRADE_RAIDER_JAMMERPACK_2 = 8062,
			ITEM_UPGRADE_RAIDER_JAMMERPACK_3 = 8063,
			ITEM_UPGRADE_RAIDER_JAMMERPACK_4 = 8064,
			ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_1 = 8089,
			ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_2 = 8090,
			ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_3 = 8091,
			ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_1 = 8092,
			ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_2 = 8093,
			ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_3 = 8094,
			ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_1 = 8309,
			ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_2 = 8310,
			ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_3 = 8311,
			ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_1 = 8116,
			ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_2 = 8117,
			ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_3 = 8118,
			ITEM_UPGRADE_BRUTE_ENERGYPACK_1 = 8141,
			ITEM_UPGRADE_BRUTE_ENERGYPACK_2 = 8142,
			ITEM_UPGRADE_BRUTE_ENERGYPACK_3 = 8143,
			ITEM_UPGRADE_BRUTE_SHIELDPACK_1 = 8144,
			ITEM_UPGRADE_BRUTE_SHIELDPACK_2 = 8145,
			ITEM_UPGRADE_BRUTE_SHIELDPACK_3 = 8146,
			ITEM_UPGRADE_PATHFINDER_ARMOR_1 = 7893,
			ITEM_UPGRADE_PATHFINDER_ARMOR_2 = 7894,
			ITEM_UPGRADE_PATHFINDER_ARMOR_3 = 7895,
			ITEM_UPGRADE_PATHFINDER_ARMOR_4 = 7896,
			ITEM_UPGRADE_PATHFINDER_ARMOR_5 = 7897,
			ITEM_UPGRADE_SENTINEL_ARMOR_1 = 7955,
			ITEM_UPGRADE_SENTINEL_ARMOR_2 = 7956,
			ITEM_UPGRADE_SENTINEL_ARMOR_3 = 7957,
			ITEM_UPGRADE_SENTINEL_ARMOR_4 = 7958,
			ITEM_UPGRADE_SENTINEL_ARMOR_5 = 7959,
			ITEM_UPGRADE_INFILTRATOR_ARMOR_1 = 7980,
			ITEM_UPGRADE_INFILTRATOR_ARMOR_2 = 7981,
			ITEM_UPGRADE_INFILTRATOR_ARMOR_3 = 7982,
			ITEM_UPGRADE_INFILTRATOR_ARMOR_4 = 7983,
			ITEM_UPGRADE_INFILTRATOR_ARMOR_5 = 7984,
			ITEM_UPGRADE_SOLDIER_ARMOR_1 = 8007,
			ITEM_UPGRADE_SOLDIER_ARMOR_2 = 8008,
			ITEM_UPGRADE_SOLDIER_ARMOR_3 = 8009,
			ITEM_UPGRADE_SOLDIER_ARMOR_4 = 8010,
			ITEM_UPGRADE_SOLDIER_ARMOR_5 = 8011,
			ITEM_UPGRADE_TECHNICIAN_ARMOR_1 = 8037,
			ITEM_UPGRADE_TECHNICIAN_ARMOR_2 = 8038,
			ITEM_UPGRADE_TECHNICIAN_ARMOR_3 = 8039,
			ITEM_UPGRADE_TECHNICIAN_ARMOR_4 = 8040,
			ITEM_UPGRADE_TECHNICIAN_ARMOR_5 = 8041,
			ITEM_UPGRADE_RAIDER_ARMOR_1 = 8065,
			ITEM_UPGRADE_RAIDER_ARMOR_2 = 8066,
			ITEM_UPGRADE_RAIDER_ARMOR_3 = 8067,
			ITEM_UPGRADE_RAIDER_ARMOR_4 = 8068,
			ITEM_UPGRADE_RAIDER_ARMOR_5 = 8069,
			ITEM_UPGRADE_JUGGERNAUT_ARMOR_1 = 8095,
			ITEM_UPGRADE_JUGGERNAUT_ARMOR_2 = 8096,
			ITEM_UPGRADE_JUGGERNAUT_ARMOR_3 = 8097,
			ITEM_UPGRADE_JUGGERNAUT_ARMOR_4 = 8098,
			ITEM_UPGRADE_JUGGERNAUT_ARMOR_5 = 8099,
			ITEM_UPGRADE_DOOMBRINGER_ARMOR_1 = 8119,
			ITEM_UPGRADE_DOOMBRINGER_ARMOR_2 = 8120,
			ITEM_UPGRADE_DOOMBRINGER_ARMOR_3 = 8121,
			ITEM_UPGRADE_DOOMBRINGER_ARMOR_4 = 8122,
			ITEM_UPGRADE_DOOMBRINGER_ARMOR_5 = 8123,
			ITEM_UPGRADE_BRUTE_ARMOR_1 = 8147,
			ITEM_UPGRADE_BRUTE_ARMOR_2 = 8148,
			ITEM_UPGRADE_BRUTE_ARMOR_3 = 8149,
			ITEM_UPGRADE_BRUTE_ARMOR_4 = 8150,
			ITEM_UPGRADE_BRUTE_ARMOR_5 = 8151,
			ITEM_PERK_UPGRADE_BOUNTYHUNTER_1 = 8188,
			ITEM_PERK_UPGRADE_BOUNTYHUNTER_2 = 8189,
			ITEM_PERK_UPGRADE_BOUNTYHUNTER_3 = 8190,
			ITEM_PERK_UPGRADE_CLOSECOMBAT_1 = 8194,
			ITEM_PERK_UPGRADE_CLOSECOMBAT_2 = 8195,
			ITEM_PERK_UPGRADE_CLOSECOMBAT_3 = 8196,
			ITEM_PERK_UPGRADE_EGOCENTRIC_1 = 8173,
			ITEM_PERK_UPGRADE_EGOCENTRIC_2 = 8174,
			ITEM_PERK_UPGRADE_EGOCENTRIC_3 = 8175,
			ITEM_PERK_UPGRADE_LOOTER_1 = 8185,
			ITEM_PERK_UPGRADE_LOOTER_2 = 8186,
			ITEM_PERK_UPGRADE_LOOTER_3 = 8187,
			ITEM_PERK_UPGRADE_MECHANIC_1 = 8215,
			ITEM_PERK_UPGRADE_MECHANIC_2 = 8216,
			ITEM_PERK_UPGRADE_MECHANIC_3 = 8217,
			ITEM_PERK_UPGRADE_PILOT_1 = 8179,
			ITEM_PERK_UPGRADE_PILOT_2 = 8180,
			ITEM_PERK_UPGRADE_PILOT_3 = 8181,
			ITEM_PERK_UPGRADE_POTENTIALENERGY_1 = 8200,
			ITEM_PERK_UPGRADE_POTENTIALENERGY_2 = 8201,
			ITEM_PERK_UPGRADE_POTENTIALENERGY_3 = 8202,
			ITEM_PERK_UPGRADE_QUICKDRAW_1 = 8209,
			ITEM_PERK_UPGRADE_QUICKDRAW_2 = 8210,
			ITEM_PERK_UPGRADE_QUICKDRAW_3 = 8211,
			ITEM_PERK_UPGRADE_REACH_1 = 8152,
			ITEM_PERK_UPGRADE_REACH_2 = 8171,
			ITEM_PERK_UPGRADE_REACH_3 = 8172,
			ITEM_PERK_UPGRADE_SAFEFALL_1 = 8176,
			ITEM_PERK_UPGRADE_SAFEFALL_2 = 8177,
			ITEM_PERK_UPGRADE_SAFEFALL_3 = 8178,
			ITEM_PERK_UPGRADE_SAFETYTHIRD_1 = 8212,
			ITEM_PERK_UPGRADE_SAFETYTHIRD_2 = 8213,
			ITEM_PERK_UPGRADE_SAFETYTHIRD_3 = 8214,
			ITEM_PERK_UPGRADE_STEALTHY_1 = 8206,
			ITEM_PERK_UPGRADE_STEALTHY_2 = 8207,
			ITEM_PERK_UPGRADE_STEALTHY_3 = 8208,
			ITEM_PERK_UPGRADE_SUPERHEAVY_1 = 8197,
			ITEM_PERK_UPGRADE_SUPERHEAVY_2 = 8198,
			ITEM_PERK_UPGRADE_SUPERHEAVY_3 = 8199,
			ITEM_PERK_UPGRADE_SURVIVALIST_1 = 8191,
			ITEM_PERK_UPGRADE_SURVIVALIST_2 = 8192,
			ITEM_PERK_UPGRADE_SURVIVALIST_3 = 8193,
			ITEM_PERK_UPGRADE_ULTRACAPACITOR_1 = 8203,
			ITEM_PERK_UPGRADE_ULTRACAPACITOR_2 = 8204,
			ITEM_PERK_UPGRADE_ULTRACAPACITOR_3 = 8205,
			ITEM_PERK_UPGRADE_WHEELDEAL_1 = 8182,
			ITEM_PERK_UPGRADE_WHEELDEAL_2 = 8183,
			ITEM_PERK_UPGRADE_WHEELDEAL_3 = 8184,
			ITEM_PERK_UPGRADE_RAGE_1 = 8236,
			ITEM_PERK_UPGRADE_RAGE_2 = 8237,
			ITEM_PERK_UPGRADE_RAGE_3 = 8238,
			ITEM_PERK_UPGRADE_SONICPUNCH_1 = 8233,
			ITEM_PERK_UPGRADE_SONICPUNCH_2 = 8234,
			ITEM_PERK_UPGRADE_SONICPUNCH_3 = 8235,
			ITEM_UPGRADE_TEMP = 99999,
			SHOP_VENDOR_GOLD = 507,
			SHOP_VENDOR_BUNDLES = 518,
			SHOP_VENDOR_BOOSTERS = 508,
			SHOP_VENDOR_NAMECHANGE = 512,
			SHOP_VENDOR_CLANTAG = 545,
			SKIN_INFILTRATOR_BE = 6,
			SKIN_INFILTRATOR_DS = 7,
			SKIN_SENTINEL_BE = 8,
			SKIN_SENTINEL_DS = 9,
			SKIN_RAIDER_BE = 10,
			SKIN_RAIDER_DS = 11,
			SKIN_TECHNICIAN_BE = 12,
			SKIN_TECHNICIAN_DS = 13,
			SKIN_DOOMBRINGER_BE = 14,
			SKIN_DOOMBRINGER_DS = 15,
			SKIN_JUGGERNAUT_BE = 16,
			SKIN_JUGGERNAUT_DS = 17,
			SKIN_BRUTE_BE = 18,
			SKIN_BRUTE_DS = 19,
			SKIN_SOLDIER_BE = 20,
			SKIN_SOLDIER_DS = 21,
			SKIN_PATHFINDER_BE = 22,
			SKIN_PATHFINDER_DS = 23,
			SKIN_PATHFINDER_MC = 24,
			SKIN_INFILTRATOR_AS = 25,
			SKIN_INFILTRATOR_MC = 26,
			SKIN_RAIDER_GV = 25,
			SKIN_RAIDER_MC = 26,
			SKIN_SENTINEL_MC = 27,
			SKIN_BRUTE_MC = 28,
			SKIN_TECHNICIAN_MC = 29,
			QUEUE_CONFIG_SERVERNAME = 1243,
			QUEUE_CONFIG_ADMINPASSWORD = 1245,
			QUEUE_CONFIG_GENPASSWORD = 1246,
			QUEUE_CONFIG_SLOTS = 1247,
			QUEUE_CONFIG_MATCHQUEUEID = 1253,
			QUEUE_CONFIG_SERVERDESCRIPTION = 1255,
			QUEUE_CONFIG_MAPROTATIONTYPE = 1256,
			QUEUE_CONFIG_MAPSLOT1 = 1257,
			QUEUE_CONFIG_MAPSLOT2 = 1258,
			QUEUE_CONFIG_MAPSLOT3 = 1259,
			QUEUE_CONFIG_MAPSLOT4 = 1260,
			QUEUE_CONFIG_MAPSLOT5 = 1261,
			QUEUE_CONFIG_MAPSLOT6 = 1262,
			QUEUE_CONFIG_MAPSLOT7 = 1263,
			QUEUE_CONFIG_MAPSLOT8 = 1264,
			QUEUE_CONFIG_SITEID = 1272,
			QUEUE_CONFIG_MINLEVEL = 1296,
			QUEUE_CONFIG_MAXLEVEL = 1297,
			GAME_CONFIG_TIMELIMIT = 1059,
			GAME_CONFIG_MAXPLAYERS = 1060,
			GAME_CONFIG_AUTOBALANCE = 1062,
			GAME_CONFIG_OVERTIMELIMIT = 1063,
			GAME_CONFIG_RESPAWNTIME = 1064,
			GAME_CONFIG_FRIENDLYFIRE = 1065,
			GAME_CONFIG_GENAUTOREGEN = 1066,
			GAME_CONFIG_UPGRADES = 1067,
			GAME_CONFIG_SPAWNNAKED = 1068,
			GAME_CONFIG_BASEASSETS = 1070,
			GAME_CONFIG_POWERDEPLOYS = 1072,
			GAME_CONFIG_VEHICLELIMITS = 1075,
			GAME_CONFIG_VGRAVCYCLELIMIT = 1268,
			GAME_CONFIG_VBEOWULFLIMIT = 1269,
			GAME_CONFIG_VSHRIKELIMIT = 1270,
			GAME_CONFIG_VBEOWULFPRICE = 1076,
			GAME_CONFIG_VGRAVPRICE = 1077,
			GAME_CONFIG_VSHRIKEPRICE = 1080,
			GAME_CONFIG_TEAMJOINTYPE = 1081,
			GAME_CONFIG_FFMULTIPLIER = 1123,
			GAME_CONFIG_CALLINSDENIED = 1233,
			GAME_CONFIG_CALLINPRICETAC = 1234,
			GAME_CONFIG_CALLINPRICESUP = 1235,
			GAME_CONFIG_CALLINPRICEORB = 1236,
			GAME_CONFIG_CALLINCLDWNTAC = 1237,
			GAME_CONFIG_CALLINCLDWNSUP = 1238,
			GAME_CONFIG_CALLINCLDWNORB = 1239,
			GAME_CONFIG_CALLINBLDUPTAC = 1249,
			GAME_CONFIG_CALLINBLDUPSUP = 1250,
			GAME_CONFIG_CALLINBLDUPORB = 1251,
			GAME_CONFIG_BASEDESTLIMIT = 1241,
			GAME_CONFIG_WARMUPTIME = 1248,
			GAME_CONFIG_TEAMDISPARITY = 1252,
			GAME_CONFIG_CONFIGCASEID = 1254,
			GAME_CONFIG_ARENAROUNDS = 1265,
			GAME_CONFIG_SCORELIMIT_CTF = 1061,
			GAME_CONFIG_SCORELIMIT_RAB = 1278,
			GAME_CONFIG_SCORELIMIT_TDM = 1276,
			GAME_CONFIG_SCORELIMIT_ARN = 1277,
			GAME_CONFIG_SCORELIMIT_CAH = 1279,
			GAME_CONFIG_GAMETYPE = 1244,
			GAME_CONFIG_GENDESTROYABLE = 1280,
			GAME_CONFIG_INVDESTROYABLE = 1281,
			GAME_CONFIG_FFDEPLOYABLES = 1282,
			GAME_CONFIG_FFBASEASSETS = 1283,
			GAME_CONFIG_FFDMGLIMIT = 1284,
			GAME_CONFIG_FFKILLLIMIT = 1285,
			GAME_CONFIG_SUPPLYDROPAMMOONLY = 1286,
			GAME_CONFIG_CLASSCOUNT_PTH = 1287,
			GAME_CONFIG_CLASSCOUNT_SEN = 1289,
			GAME_CONFIG_CLASSCOUNT_INF = 1288,
			GAME_CONFIG_CLASSCOUNT_SLD = 1290,
			GAME_CONFIG_CLASSCOUNT_TCN = 1291,
			GAME_CONFIG_CLASSCOUNT_RDR = 1292,
			GAME_CONFIG_CLASSCOUNT_JUG = 1293,
			GAME_CONFIG_CLASSCOUNT_DMB = 1294,
			GAME_CONFIG_CLASSCOUNT_BRT = 1295,
			GAME_CONFIG_POWEREDCALLINS = 1298,
			GAME_CONFIG_TEAMCREDITS = 1299,
			GAME_CONFIG_VEHICLEHEALTHMULT = 1327,
			GAME_CONFIG_SKIENABLED = 1373,
			GAME_CONFIG_ENERGYMULTIPLIER = 1374,
			GAME_CONFIG_AOESIZEMULTIPLIER = 1375,
			GAME_CONFIG_AOEDAMAGEMULTIPLIER = 1376,
			GAME_CONFIG_CTFBLITZALLFLAGSMOVE = 1377,
			GAME_CONFIG_MAXSPEEDWITHFLAGLIGHT = 1391,
			GAME_CONFIG_DECELERATIONRATEWITHFLAG = 1392,
			GAME_CONFIG_MAXSPEEDWITHFLAGMEDIUM = 1395,
			GAME_CONFIG_MAXSPEEDWITHFLAGHEAVY = 1396,
			SERVER_RT_METHOD_RANDOM = 10070,
			SERVER_RT_METHOD_LINEAR = 10071,
			SERVER_RT_METHOD_LINEAR2 = 10072,
			SERVER_RT_METHOD_LINEAR4 = 10073,
			TR_MAX_GAMETYPES = 5,
			SERVER_GAMECLASSID_CTF = 197,
			SERVER_GAMECLASSID_RAB = 8012,
			SERVER_GAMECLASSID_TDM = 8036,
			SERVER_GAMECLASSID_ARN = 8086,
			SERVER_GAMECLASSID_CAH = 8094,
			SERVER_GAMECLASSID_BTZ = 8118,
			SERVER_DEFAULT_MAP_CTF = 1462,
			SERVER_DEFAULT_MAP_RAB = 1465,
			SERVER_DEFAULT_MAP_TDM = 1488,
			SERVER_DEFAULT_MAP_ARN = 1495,
			SERVER_DEFAULT_MAP_CAH = 1519,
			SERVER_DEFAULT_MAP_BTZ = 1539,
			PTH_LOADOUT_ONE = 8359,
			PTH_LOADOUT_TWO = 8360,
			PTH_LOADOUT_THREE = 8361,
			PTH_LOADOUT_FOUR = 8674,
			PTH_LOADOUT_FIVE = 8675,
			INF_LOADOUT_ONE = 8362,
			INF_LOADOUT_TWO = 8363,
			INF_LOADOUT_THREE = 8364,
			INF_LOADOUT_FOUR = 8676,
			INF_LOADOUT_FIVE = 8677,
			SEN_LOADOUT_ONE = 8365,
			SEN_LOADOUT_TWO = 8366,
			SEN_LOADOUT_THREE = 8367,
			SEN_LOADOUT_FOUR = 8678,
			SEN_LOADOUT_FIVE = 8679,
			SLD_LOADOUT_ONE = 8368,
			SLD_LOADOUT_TWO = 8369,
			SLD_LOADOUT_THREE = 8370,
			SLD_LOADOUT_FOUR = 8680,
			SLD_LOADOUT_FIVE = 8681,
			TCN_LOADOUT_ONE = 8371,
			TCN_LOADOUT_TWO = 8372,
			TCN_LOADOUT_THREE = 8373,
			TCN_LOADOUT_FOUR = 8682,
			TCN_LOADOUT_FIVE = 8683,
			RDR_LOADOUT_ONE = 8374,
			RDR_LOADOUT_TWO = 8375,
			RDR_LOADOUT_THREE = 8376,
			RDR_LOADOUT_FOUR = 8684,
			RDR_LOADOUT_FIVE = 8685,
			JUG_LOADOUT_ONE = 8377,
			JUG_LOADOUT_TWO = 8378,
			JUG_LOADOUT_THREE = 8379,
			JUG_LOADOUT_FOUR = 8686,
			JUG_LOADOUT_FIVE = 8687,
			DMB_LOADOUT_ONE = 8380,
			DMB_LOADOUT_TWO = 8381,
			DMB_LOADOUT_THREE = 8382,
			DMB_LOADOUT_FOUR = 8688,
			DMB_LOADOUT_FIVE = 8689,
			BRT_LOADOUT_ONE = 8383,
			BRT_LOADOUT_TWO = 8384,
			BRT_LOADOUT_THREE = 8385,
			BRT_LOADOUT_FOUR = 8690,
			BRT_LOADOUT_FIVE = 8691,
			ACTIVITY_DEVICE_NONE = 0,
			ACTIVITY_SENTINEL_PRIMARY_BXT1 = 124,
			ACTIVITY_SENTINEL_BELT_MINE_CLAYMORE_MKD = 125,
			ACTIVITY_SENTINEL_PRIMARY_SNIPERRIFLE_MKD = 126,
			ACTIVITY_BRUTE_PRIMARY_HEAVYSPINFUSOR = 127,
			ACTIVITY_BRUTE_PRIMARY_HEAVYSPINFUSOR_MKD = 128,
			ACTIVITY_BRUTE_PRIMARY_SPIKELAUNCHER = 129,
			ACTIVITY_DOOMBRINGER_PRIMARY_CHAINGUN = 131,
			ACTIVITY_DOOMBRINGER_PRIMARY_CHAINGUN_MKD = 132,
			ACTIVITY_DOOMBRINGER_PRIMARY_HEAVYBOLTLAUNCHER = 133,
			ACTIVITY_INFILTRATOR_PRIMARY_REMOTEARXBUSTER = 134,
			ACTIVITY_INFILTRATOR_PRIMARY_RHINOSMG = 135,
			ACTIVITY_INFILTRATOR_PRIMARY_RHINOSMG_MKD = 136,
			ACTIVITY_INFILTRATOR_PRIMARY_STEALTHLIGHTSPINFUSOR = 137,
			ACTIVITY_JUGGERNAUT_PRIMARY_FUSIONMORTAR = 138,
			ACTIVITY_JUGGERNAUT_PRIMARY_FUSIONMORTAR_MKD = 139,
			ACTIVITY_JUGGERNAUT_PRIMARY_MIRVLAUNCHER = 140,
			ACTIVITY_PATHFINDER_PRIMARY_BOLTLAUNCHER = 141,
			ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR = 142,
			ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR_MKD = 143,
			ACTIVITY_RAIDER_PRIMARY_ARXBUSTER = 144,
			ACTIVITY_RAIDER_PRIMARY_ARXBUSTER_MKD = 145,
			ACTIVITY_RAIDER_PRIMARY_GRENADELAUNCHER = 146,
			ACTIVITY_RAIDER_PRIMARY_PLASMAGUN = 147,
			ACTIVITY_SENTINEL_PRIMARY_PHASERIFLE = 148,
			ACTIVITY_SOLDIER_PRIMARY_ASSAULTRIFLE = 149,
			ACTIVITY_SOLDIER_PRIMARY_ASSAULTRIFLE_MKD = 150,
			ACTIVITY_SOLDIER_PRIMARY_SPINFUSOR = 151,
			ACTIVITY_TECHNICIAN_PRIMARY_TCN4 = 152,
			ACTIVITY_TECHNICIAN_PRIMARY_TCN4_MKD = 153,
			ACTIVITY_TECHNICIAN_PRIMARY_THUMPER = 154,
			ACTIVITY_BRUTE_SECONDARY_AUTOSHOTGUN = 155,
			ACTIVITY_BRUTE_SECONDARY_AUTOSHOTGUN_MKD = 156,
			ACTIVITY_BRUTE_SECONDARY_NOVACOLT = 157,
			ACTIVITY_BRUTE_SECONDARY_PLASMACANNON = 158,
			ACTIVITY_DOOMBRINGER_SECONDARY_SABERLAUNCHER = 159,
			ACTIVITY_DOOMBRINGER_SECONDARY_SABERLAUNCHER_MKD = 160,
			ACTIVITY_INFILTRATOR_SECONDARY_SN7 = 161,
			ACTIVITY_INFILTRATOR_SECONDARY_SN7_MKD = 162,
			ACTIVITY_INFILTRATOR_SECONDARY_THROWINGKNIVES = 163,
			ACTIVITY_JUGGERNAUT_SECONDARY_SPINFUSORD = 164,
			ACTIVITY_JUGGERNAUT_SECONDARY_SPINFUSORD_MKD = 165,
			ACTIVITY_JUGGERNAUT_SECONDARY_X1LMG = 166,
			ACTIVITY_PATHFINDER_SECONDARY_LIGHTASSAULTRIFLE = 167,
			ACTIVITY_PATHFINDER_SECONDARY_SHOTGUN = 168,
			ACTIVITY_PATHFINDER_SECONDARY_SHOTGUN_MKD = 169,
			ACTIVITY_RAIDER_SECONDARY_NJ4SMG = 170,
			ACTIVITY_RAIDER_SECONDARY_NJ4SMG_MKD = 171,
			ACTIVITY_RAIDER_SECONDARY_NJ5SMG = 172,
			ACTIVITY_SENTINEL_SECONDARY_FALCON = 173,
			ACTIVITY_SENTINEL_SECONDARY_NOVABLASTER = 174,
			ACTIVITY_SENTINEL_SECONDARY_NOVABLASTER_MKD = 175,
			ACTIVITY_SOLDIER_SECONDARY_EAGLE = 176,
			ACTIVITY_SOLDIER_SECONDARY_THUMPERD = 177,
			ACTIVITY_SOLDIER_SECONDARY_THUMPERD_MKD = 178,
			ACTIVITY_TECHNICIAN_SECONDARY_REPAIRTOOLSD = 179,
			ACTIVITY_TECHNICIAN_SECONDARY_REPAIRTOOLSD_MKD = 180,
			ACTIVITY_TECHNICIAN_SECONDARY_SAWEDOFF = 181,
			ACTIVITY_TECHNICIAN_SECONDARY_SPARROW = 182,
			ACTIVITY_ARMOR_MOD_BRUTE_1 = 183,
			ACTIVITY_ARMOR_MOD_DOOMBRINGER_1 = 184,
			ACTIVITY_ARMOR_MOD_INFILTRATOR_1 = 185,
			ACTIVITY_ARMOR_MOD_JUGGERNAUT_1 = 186,
			ACTIVITY_ARMOR_MOD_PATHFINDER_1 = 187,
			ACTIVITY_ARMOR_MOD_RAIDER_1 = 188,
			ACTIVITY_ARMOR_MOD_SENTINEL_1 = 189,
			ACTIVITY_ARMOR_MOD_TECHNICIAN_1 = 190,
			ACTIVITY_ARMOR_MOD_SOLDIER_1 = 191,
			ACTIVITY_BRUTE_BELT_FRACTALGRENADE = 192,
			ACTIVITY_BRUTE_BELT_FRACTALGRENADE_MKD = 193,
			ACTIVITY_BRUTE_BELT_LIGHTSTICKYGRENADE = 194,
			ACTIVITY_DOOMBRINGER_BELT_MINE = 195,
			ACTIVITY_DOOMBRINGER_BELT_STANDARDGRENADE = 196,
			ACTIVITY_DOOMBRINGER_BELT_STANDARDGRENADE_MKD = 197,
			ACTIVITY_INFILTRATOR_BELT_NINJASMOKE = 198,
			ACTIVITY_INFILTRATOR_BELT_PRISMMINES = 199,
			ACTIVITY_INFILTRATOR_BELT_STICKYGRENADE = 200,
			ACTIVITY_INFILTRATOR_BELT_STICKYGRENADE_MKD = 201,
			ACTIVITY_JUGGERNAUT_BELT_DISKTOSS = 202,
			ACTIVITY_JUGGERNAUT_BELT_HEAVYAPGRENADE = 203,
			ACTIVITY_JUGGERNAUT_BELT_HEAVYAPGRENADE_MKD = 204,
			ACTIVITY_PATHFINDER_BELT_IMPACTNITRON = 205,
			ACTIVITY_PATHFINDER_BELT_IMPACTNITRON_MKD = 206,
			ACTIVITY_PATHFINDER_BELT_STGRENADE = 207,
			ACTIVITY_RAIDER_BELT_EMPGRENADE = 208,
			ACTIVITY_RAIDER_BELT_EMPGRENADE_MKD = 209,
			ACTIVITY_RAIDER_BELT_MIRVGRENADE = 210,
			ACTIVITY_RAIDER_BELT_WHITEOUT = 211,
			ACTIVITY_SENTINEL_BELT_ARMOREDCLAYMORE = 212,
			ACTIVITY_SENTINEL_BELT_CLAYMORE = 213,
			ACTIVITY_SENTINEL_BELT_CLAYMORE_MKD = 214,
			ACTIVITY_SENTINEL_BELT_GRENADET5 = 215,
			ACTIVITY_SOLDIER_BELT_APGRENADE = 216,
			ACTIVITY_SOLDIER_BELT_FRAGGRENADEXL = 217,
			ACTIVITY_SOLDIER_BELT_FRAGGRENADEXL_MKD = 218,
			ACTIVITY_SOLDIER_BELT_PROXIMITYGRENADE = 219,
			ACTIVITY_TECHNICIAN_BELT_MOTIONALARM = 220,
			ACTIVITY_TECHNICIAN_BELT_TCNG = 221,
			ACTIVITY_TECHNICIAN_BELT_TCNG_MKD = 222,
			ACTIVITY_BRUTE_PACK_HEAVYSHIELD = 223,
			ACTIVITY_BRUTE_PACK_MINORENERGY = 224,
			ACTIVITY_BRUTE_PACK_SURVIVALPACK = 225,
			ACTIVITY_DOOMBRINGER_PACK_FORCEFIELD = 226,
			ACTIVITY_INFILTRATOR_PACK_STEALTH = 227,
			ACTIVITY_JUGGERNAUT_PACK_HEALTHREGEN = 228,
			ACTIVITY_PATHFINDER_PACK_ENERGYRECHARGE = 229,
			ACTIVITY_PATHFINDER_PACK_JUMPPACK = 230,
			ACTIVITY_RAIDER_PACK_JAMMER = 231,
			ACTIVITY_RAIDER_PACK_SHIELD = 232,
			ACTIVITY_SENTINEL_PACK_DROPJAMMER = 233,
			ACTIVITY_SENTINEL_PACK_ENERGYRECHARGE = 234,
			ACTIVITY_SOLDIER_PACK_ENERGYPOOL = 235,
			ACTIVITY_SOLDIER_PACK_UTILITY = 236,
			ACTIVITY_TECHNICIAN_PACK_EXRTURRET = 237,
			ACTIVITY_TECHNICIAN_PACK_LIGHTTURRET = 238,
			ACTIVITY_PERK_BOUNTY_HUNTER = 239,
			ACTIVITY_PERK_CLOSE_COMBAT = 240,
			ACTIVITY_PERK_LOOTER = 241,
			ACTIVITY_PERK_RAGE = 242,
			ACTIVITY_PERK_REACH = 243,
			ACTIVITY_PERK_SAFE_FALL = 244,
			ACTIVITY_PERK_SAFETY_THIRD = 245,
			ACTIVITY_PERK_STEALTHY = 246,
			ACTIVITY_PERK_SUPER_CAPACITOR = 247,
			ACTIVITY_PERK_WHEEL_DEAL = 248,
			ACTIVITY_PERK_DETERMINATION = 249,
			ACTIVITY_PERK_EGOCENTRIC = 250,
			ACTIVITY_PERK_MECHANIC = 253,
			ACTIVITY_PERK_PILOT = 254,
			ACTIVITY_PERK_POTENTIAL_ENERGY = 255,
			ACTIVITY_PERK_QUICKDRAW = 256,
			ACTIVITY_PERK_SONIC_PUNCH = 257,
			ACTIVITY_PERK_SUPER_HEAVY = 258,
			ACTIVITY_PERK_SURVIVALIST = 259,
			ACTIVITY_PERK_ULTRA_CAPACITOR = 260,
			ACTIVITY_PATHFINDER_PRIMARY_LIGHTTWINFUSOR = 261,
			ACTIVITY_SOLDIER_PRIMARY_TWINFUSOR = 262,
			ACTIVITY_JUGGERNAUT_SECONDARY_HEAVYTWINFUSOR = 263,
			BUNDLE_LOOT_ID_CAD_ASSASSIN = 8918,
			BUNDLE_LOOT_ID_CAD_MERCENARY = 8919,
			BUNDLE_LOOT_ID_CAD_PREMIUM = 8912,
			BUNDLE_LOOT_ID_CAD_WEAPONS = 8920,
			BUNDLE_LOOT_ID_RAP_GRIEVER = 8982,
			BUNDLE_LOOT_ID_RAP_MERCENARY = 8983,
			BUNDLE_LOOT_ID_RAP_PREMIUM = 8981,
			BUNDLE_LOOT_ID_RAP_WEAPONS = 8984,
			BUNDLE_LOOT_ID_NEWPLAYER = 9214,
			BUNDLE_LOOT_ID_SHAZBUNDLE = 9213,
			BUNDLE_LOOT_ID_STAYINALIVE = 9035,
			BUNDLE_LOOT_ID_TWINFUSOR = 9449,
			BUNDLE_LOOT_ID_SKINPACK = 9457,
			BUNDLE_LOOT_ID_SPECIALIST = 9496,
			BUNDLE_LOOT_ID_SENTINEL = 9510,
			ITEM_VOICE_LIGHT = 8666,
			ITEM_VOICE_MEDIUM = 8667,
			ITEM_VOICE_HEAVY = 8668,
			ITEM_VOICE_DARK = 8669,
			ITEM_VOICE_FEM1 = 8670,
			ITEM_VOICE_FEM2 = 8671,
			ITEM_VOICE_AUS = 8695,
			ITEM_VOICE_T2FEM01 = 8712,
			ITEM_VOICE_T2FEM02 = 8714,
			ITEM_VOICE_T2FEM03 = 8715,
			ITEM_VOICE_T2FEM04 = 8716,
			ITEM_VOICE_T2FEM05 = 8717,
			ITEM_VOICE_T2MALE01 = 8719,
			ITEM_VOICE_T2MALE02 = 8720,
			ITEM_VOICE_T2MALE03 = 8721,
			ITEM_VOICE_T2MALE04 = 8722,
			ITEM_VOICE_T2MALE05 = 8723,
			ITEM_VOICE_T2BDERM01 = 8724,
			ITEM_VOICE_T2BDERM02 = 8725,
			ITEM_VOICE_T2BDERM03 = 8726,
		}
	}
	struct TrCameraShakeInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrPlayerController.TrCameraShakeInfo")); }
		@property final auto ref
		{
			ScriptName ShakeName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			CameraShake Shake() { return *cast(CameraShake*)(cast(size_t)&this + 0); }
		}
	}
	struct VGSAudioCommand
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrPlayerController.VGSAudioCommand")); }
		@property final auto ref
		{
			SoundCue QueuedSoundCue() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
			TrPlayerReplicationInfo VGSInstigator() { return *cast(TrPlayerReplicationInfo*)(cast(size_t)&this + 0); }
		}
	}
	struct SpectatorKeybindViewTargetMap
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrPlayerController.SpectatorKeybindViewTargetMap")); }
		@property final auto ref
		{
			Actor ViewTarget() { return *cast(Actor*)(cast(size_t)&this + 24); }
			Input.KeyBind KeyBinding() { return *cast(Input.KeyBind*)(cast(size_t)&this + 0); }
		}
	}
	struct PendingSkin
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrPlayerController.PendingSkin")); }
		@property final auto ref
		{
			int skinId() { return *cast(int*)(cast(size_t)&this + 4); }
			TrPlayerReplicationInfo TrPRI() { return *cast(TrPlayerReplicationInfo*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			TrEquipInterface m_TrEquipInterface() { return *cast(TrEquipInterface*)(cast(size_t)cast(void*)this + 3376); }
			float r_fRespawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2372); }
			AlienFXManager AlienFX() { return *cast(AlienFXManager*)(cast(size_t)cast(void*)this + 3344); }
			int m_nLastDamagerUpgradeLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 2396); }
			int m_nLastDamagerHealthPercent() { return *cast(int*)(cast(size_t)cast(void*)this + 2392); }
			TrStrings Strings() { return *cast(TrStrings*)(cast(size_t)cast(void*)this + 3428); }
			TrInventoryHelper m_TrInventoryHelper() { return *cast(TrInventoryHelper*)(cast(size_t)cast(void*)this + 3380); }
			int m_RequestedTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 2240); }
			float m_fLastHitEnemyTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2356); }
			TrPlayerController m_LastKilledBy() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 2380); }
			ubyte r_nHitEnemyHeadshot() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2326); }
			TrHelpTextManager m_HelpTextManager() { return *cast(TrHelpTextManager*)(cast(size_t)cast(void*)this + 2944); }
			Rotator m_rCurrentKickbackDirection() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2220); }
			MaterialEffect m_ZoomedEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 2340); }
			TrStatsInterface Stats() { return *cast(TrStatsInterface*)(cast(size_t)cast(void*)this + 3144); }
			TrAccoladeManager m_AccoladeManager() { return *cast(TrAccoladeManager*)(cast(size_t)cast(void*)this + 2348); }
			Vector m_vDeathCamOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3112); }
			float m_fDeathCameraCurrentScale() { return *cast(float*)(cast(size_t)cast(void*)this + 3104); }
			float m_fDeathCameraInnerScale() { return *cast(float*)(cast(size_t)cast(void*)this + 3100); }
			float m_fDeathCameraInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 3108); }
			ScriptClass m_OldPossessedFamilyInfo() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2936); }
			int m_BeginPlayedTime() { return *cast(int*)(cast(size_t)cast(void*)this + 2416); }
			Actor m_LastDamagedBy() { return *cast(Actor*)(cast(size_t)cast(void*)this + 2388); }
			int FriendlyFireDamage() { return *cast(int*)(cast(size_t)cast(void*)this + 3412); }
			float m_fLastFlagGrabTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 3080); }
			int FriendlyFireKills() { return *cast(int*)(cast(size_t)cast(void*)this + 3408); }
			UTWeapon.EZoomState m_ZoomState() { return *cast(UTWeapon.EZoomState*)(cast(size_t)cast(void*)this + 2324); }
			float m_fFreeCamYawOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 3024); }
			float m_fFreeCamPitchOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 3028); }
			float m_fCallInCooldown() { return *cast(float*)(cast(size_t)cast(void*)this + 3328); }
			ubyte r_nCallinCooldownFlash() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2328); }
			TrChatConsoleCommands m_PlayerCommands() { return *cast(TrChatConsoleCommands*)(cast(size_t)cast(void*)this + 3324); }
			ScriptArray!(TrObject.TrEventCredits) m_EventCreditMap() { return *cast(ScriptArray!(TrObject.TrEventCredits)*)(cast(size_t)cast(void*)this + 2292); }
			ScriptArray!(TrPlayerController.TrCameraShakeInfo) m_CameraShakes() { return *cast(ScriptArray!(TrPlayerController.TrCameraShakeInfo)*)(cast(size_t)cast(void*)this + 2432); }
			ScriptArray!(TrWeatherVolume) m_CurrentWeatherVolumes() { return *cast(ScriptArray!(TrWeatherVolume)*)(cast(size_t)cast(void*)this + 2452); }
			ScriptArray!(float) m_fLastBroadcastTimes() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 3040); }
			ScriptArray!(Actor) m_PotentialSeekingTargets() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 3064); }
			ScriptArray!(TrProjectile) m_ProjectilesNeedingTethering() { return *cast(ScriptArray!(TrProjectile)*)(cast(size_t)cast(void*)this + 3084); }
			ScriptArray!(TrPlayerController.VGSAudioCommand) m_VGSAudioCommands() { return *cast(ScriptArray!(TrPlayerController.VGSAudioCommand)*)(cast(size_t)cast(void*)this + 3160); }
			ScriptArray!(CameraActor) m_SpectatorCameraBookmarks() { return *cast(ScriptArray!(CameraActor)*)(cast(size_t)cast(void*)this + 3176); }
			ScriptArray!(TrPowerGenerator) m_SpectatorGenerators() { return *cast(ScriptArray!(TrPowerGenerator)*)(cast(size_t)cast(void*)this + 3188); }
			ScriptArray!(TrCTFBase) m_SpectatorFlagStands() { return *cast(ScriptArray!(TrCTFBase)*)(cast(size_t)cast(void*)this + 3200); }
			ScriptArray!(TrFlagBase) m_SpectatorFlags() { return *cast(ScriptArray!(TrFlagBase)*)(cast(size_t)cast(void*)this + 3212); }
			ScriptArray!(TrVehicle) m_SpectatorVehicles() { return *cast(ScriptArray!(TrVehicle)*)(cast(size_t)cast(void*)this + 3224); }
			ScriptArray!(TrPlayerController.SpectatorKeybindViewTargetMap) m_SpectatorTransientKeybinds() { return *cast(ScriptArray!(TrPlayerController.SpectatorKeybindViewTargetMap)*)(cast(size_t)cast(void*)this + 3312); }
			ScriptArray!(ScriptClass) m_CachedPendingClassDeviceContentData() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 3352); }
			ScriptArray!(ScriptClass) m_PendingLoadoutDeviceClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 3364); }
			ScriptArray!(TrPlayerController.PendingSkin) m_Pending3PSkins() { return *cast(ScriptArray!(TrPlayerController.PendingSkin)*)(cast(size_t)cast(void*)this + 3384); }
			ScriptArray!(TrPlayerController.PendingSkin) m_Pending1PSkins() { return *cast(ScriptArray!(TrPlayerController.PendingSkin)*)(cast(size_t)cast(void*)this + 3396); }
			float fSniperRespawnDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 3424); }
			float m_fLastSuicideTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 3420); }
			int VGSClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 3416); }
			TrContentLoader c_ContentLoader() { return *cast(TrContentLoader*)(cast(size_t)cast(void*)this + 3348); }
			int m_WhisperFilter() { return *cast(int*)(cast(size_t)cast(void*)this + 3340); }
			Rotator r_rViewTargetViewRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3300); }
			Vector r_vViewTargetViewLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3288); }
			PlayerReplicationInfo r_ViewTargetVehiclePassengerPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 3284); }
			PlayerReplicationInfo r_ViewTargetVehicleDriverPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 3280); }
			float r_fViewTargetVehicleMaxPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 3276); }
			float r_fViewTargetVehicleCurrentPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 3272); }
			int r_nViewTargetPackAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3268); }
			int r_nViewTargetOffhandAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3264); }
			int r_nViewTargetSecondaryMaxAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3260); }
			int r_nViewTargetPrimaryMaxAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3256); }
			int r_nViewTargetSecondaryAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3252); }
			int r_nViewTargetPrimaryAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3248); }
			float r_fViewTargetMaxPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 3244); }
			float r_fViewTargetCurrentPowerpool() { return *cast(float*)(cast(size_t)cast(void*)this + 3240); }
			float r_fViewTargetNextRegenTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 3236); }
			int m_nMaxVGSSoundChannels() { return *cast(int*)(cast(size_t)cast(void*)this + 3172); }
			int m_TeamRabbitAssistCredit() { return *cast(int*)(cast(size_t)cast(void*)this + 3156); }
			int m_TeamAssistCredit() { return *cast(int*)(cast(size_t)cast(void*)this + 3152); }
			int m_DamageNeededForCredit() { return *cast(int*)(cast(size_t)cast(void*)this + 3148); }
			MaterialEffect m_RoundEndedME() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 3140); }
			float m_fDeterminationAccumulator() { return *cast(float*)(cast(size_t)cast(void*)this + 3136); }
			float m_fDeterminationAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 3132); }
			float LoadingScreenTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 3128); }
			TrPaperDoll m_PaperDoll() { return *cast(TrPaperDoll*)(cast(size_t)cast(void*)this + 3124); }
			float m_fDeathCameraOuterScale() { return *cast(float*)(cast(size_t)cast(void*)this + 3096); }
			float m_fUserSuicideTimePenalty() { return *cast(float*)(cast(size_t)cast(void*)this + 3076); }
			float m_fSpamLockoutTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 3060); }
			float m_fLockoutFromSpamTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3056); }
			float m_fMessageSpamTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3052); }
			int m_fMaxBroadcastSpamCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3036); }
			float m_fLastSpotTargetTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3032); }
			int s_nNewPlayerAssistPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 3020); }
			int s_nMaxNewPlayerAssistPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 3016); }
			float s_fNewPlayerAssistMitigateCauseDamageMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3012); }
			float s_fNewPlayerAssistMitigateTakeDamageMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3008); }
			float m_fFlagGrabSpeedRecord() { return *cast(float*)(cast(size_t)cast(void*)this + 3004); }
			float m_fFlagCapSpeedRecord() { return *cast(float*)(cast(size_t)cast(void*)this + 3000); }
			float m_fSkiSpeedRecord() { return *cast(float*)(cast(size_t)cast(void*)this + 2996); }
			float m_fSpeedCheckTotal() { return *cast(float*)(cast(size_t)cast(void*)this + 2992); }
			float m_fLastSpeedCheckCount() { return *cast(float*)(cast(size_t)cast(void*)this + 2988); }
			float m_fLastSpeedCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2984); }
			float m_fSpeedCheckInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 2980); }
			float m_fHideJetpackHelpTextDistanceThresholdSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2976); }
			float m_fTotalDistanceJetpackedSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2972); }
			float m_fHideSkiHelpTextDistanceThresholdSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2968); }
			float m_fLastDistanceSkiedSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2964); }
			float m_fLastDistanceCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2960); }
			float m_fDistanceCheckInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 2956); }
			float m_fTotalDistanceSkiedSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2952); }
			ScriptClass m_HelpTextManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2948); }
			TrVehicle m_LastAcknowledgedVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 2940); }
			int m_ActiveClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 2932); }
			int m_LastVGSUse() { return *cast(int*)(cast(size_t)cast(void*)this + 2928); }
			float m_fIdleCheckTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 2924); }
			float m_RoundEndedVZeroSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2920); }
			float m_RoundEndedPPTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 2916); }
			float m_RoundEndedPPAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 2912); }
			float m_RoundEndedPPInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2908); }
			PostProcessVolume.PostProcessSettings m_RoundEndedPPSettings() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)cast(void*)this + 2688); }
			PostProcessVolume.PostProcessSettings m_DefaultPPSettings() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)cast(void*)this + 2468); }
			float m_fSpeedCameraSpeedSqared() { return *cast(float*)(cast(size_t)cast(void*)this + 2464); }
			UDKEmitCameraEffect m_WeatherCameraEffect() { return *cast(UDKEmitCameraEffect*)(cast(size_t)cast(void*)this + 2448); }
			UDKEmitCameraEffect m_SpeedCameraEffect() { return *cast(UDKEmitCameraEffect*)(cast(size_t)cast(void*)this + 2444); }
			int m_nLatestAccoladeIcon() { return *cast(int*)(cast(size_t)cast(void*)this + 2428); }
			TrCameraModifier_CameraShake m_CameraShake() { return *cast(TrCameraModifier_CameraShake*)(cast(size_t)cast(void*)this + 2424); }
			Weapon m_LastWeaponEquipped() { return *cast(Weapon*)(cast(size_t)cast(void*)this + 2420); }
			int m_VehicleSeatIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 2412); }
			float m_LastPressedSkiTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2408); }
			float m_fMinActiveSkiTimeToEnableFollowthough() { return *cast(float*)(cast(size_t)cast(void*)this + 2404); }
			float m_fSkiFollowthroughTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2400); }
			Actor r_KilledBy() { return *cast(Actor*)(cast(size_t)cast(void*)this + 2384); }
			float m_LastLoadoutRequestTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2376); }
			int m_nClientSpawnTimeRemaining() { return *cast(int*)(cast(size_t)cast(void*)this + 2368); }
			int m_nRespawnTimeRemaining() { return *cast(int*)(cast(size_t)cast(void*)this + 2364); }
			float m_fPlayBeginTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2360); }
			TrAnnouncer m_Announcer() { return *cast(TrAnnouncer*)(cast(size_t)cast(void*)this + 2352); }
			TrMusicManager m_MusicManager() { return *cast(TrMusicManager*)(cast(size_t)cast(void*)this + 2344); }
			float c_fHUDZoomDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 2336); }
			TrPawn.WalkingDeceleration m_CurrentDecelerationFactor() { return *cast(TrPawn.WalkingDeceleration*)(cast(size_t)cast(void*)this + 2334); }
			ubyte m_nCallinCooldownFlashStored() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2331); }
			ubyte m_nLastHitEnemyHeadshot() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2327); }
			ubyte r_nHitEnemy() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2325); }
			float c_fZoomButtonPressedTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2320); }
			float m_fZoomRate() { return *cast(float*)(cast(size_t)cast(void*)this + 2316); }
			float m_fDesiredMagnifiedZoomFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 2312); }
			float m_fDesiredZoomFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 2308); }
			TrStation m_CurrentStation() { return *cast(TrStation*)(cast(size_t)cast(void*)this + 2304); }
			int r_nCurrentCredits() { return *cast(int*)(cast(size_t)cast(void*)this + 2288); }
			SoundCue m_RicochetSound3P() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2284); }
			SoundCue m_MissileSeekingSelfCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2280); }
			SoundCue m_MissileFiredCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2276); }
			SoundCue m_MissileLockedCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2272); }
			SoundCue m_MissileLockingCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2268); }
			int m_OverwatchTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 2236); }
			CameraActor m_OverwatchCam() { return *cast(CameraActor*)(cast(size_t)cast(void*)this + 2232); }
			Rotator m_rKickbackAim() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2208); }
			float m_fLastKickbackViewTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2204); }
			float m_fKickbackViewBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2200); }
			float m_fKickbackViewBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2196); }
			float m_fRemainingInitiatingJettingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2192); }
			float m_fLastWeaponSwitchTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2180); }
			Actor m_aHoverActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 2176); }
		}
		bool m_bShowHUDCracks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x100000) != 0; }
		bool m_bShowHUDCracks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x100000; } return val; }
		bool m_bShowSpectatorHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x10000000) != 0; }
		bool m_bShowSpectatorHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x10000000; } return val; }
		bool m_bShowSpectatorControls() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x8000000) != 0; }
		bool m_bShowSpectatorControls(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x8000000; } return val; }
		bool m_bShowHUDVisor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x100) != 0; }
		bool m_bShowHUDVisor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x100; } return val; }
		bool m_bShowHUDHealthBar() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x80) != 0; }
		bool m_bShowHUDHealthBar(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x80; } return val; }
		bool m_bShowHUDHeroText() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x2000) != 0; }
		bool m_bShowHUDHeroText(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x2000; } return val; }
		bool m_bShowHUDKillbox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x800) != 0; }
		bool m_bShowHUDKillbox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x800; } return val; }
		bool m_bShowHUDCombatLog() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x400) != 0; }
		bool m_bShowHUDCombatLog(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x400; } return val; }
		bool m_bShowHUDSkiBars() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x10000) != 0; }
		bool m_bShowHUDSkiBars(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x10000; } return val; }
		bool m_bShowHUDCredits() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x8) != 0; }
		bool m_bShowHUDCredits(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x8; } return val; }
		bool m_bShowHUDReticule() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x4) != 0; }
		bool m_bShowHUDReticule(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x4; } return val; }
		bool m_bShowHUDChat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x200) != 0; }
		bool m_bShowHUDChat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x200; } return val; }
		bool m_bShowHUDPromptPanel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x4000) != 0; }
		bool m_bShowHUDPromptPanel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x4000; } return val; }
		bool m_bShowHUDDeathcam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x1000) != 0; }
		bool m_bShowHUDDeathcam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x1000; } return val; }
		bool m_bShowHUDRespawnTimer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x8000) != 0; }
		bool m_bShowHUDRespawnTimer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x8000; } return val; }
		bool m_bIsRovingSpectating() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x20000000) != 0; }
		bool m_bIsRovingSpectating(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x20000000; } return val; }
		bool m_bViewThroughDeathCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x400000) != 0; }
		bool m_bViewThroughDeathCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x400000; } return val; }
		bool EnableAlienFX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x800000) != 0; }
		bool EnableAlienFX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x800000; } return val; }
		bool m_bShowHUDScores() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x40) != 0; }
		bool m_bShowHUDScores(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x40; } return val; }
		bool m_bShowHUDBadges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x20) != 0; }
		bool m_bShowHUDBadges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x20; } return val; }
		bool m_bShowHUDAccolades() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x10) != 0; }
		bool m_bShowHUDAccolades(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x10; } return val; }
		bool r_bNeedTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x8000) != 0; }
		bool r_bNeedTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x8000; } return val; }
		bool r_bNeedLoadout() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x10000) != 0; }
		bool r_bNeedLoadout(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x10000; } return val; }
		bool r_bDailyCompleted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x2000000) != 0; }
		bool r_bDailyCompleted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x2000000; } return val; }
		bool bAutoRevertSetting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x2000000) != 0; }
		bool bAutoRevertSetting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x2000000; } return val; }
		bool m_bAllowSimulatedProjectiles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x400000) != 0; }
		bool m_bAllowSimulatedProjectiles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x400000; } return val; }
		bool c_bPressingZoomButton() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x200) != 0; }
		bool c_bPressingZoomButton(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x200; } return val; }
		bool m_bPressingJetpack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x4) != 0; }
		bool m_bPressingJetpack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x4; } return val; }
		bool m_bShowHUDFriendColoring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x20000) != 0; }
		bool m_bShowHUDFriendColoring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x20000; } return val; }
		bool m_bEjectedFromVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x10000000) != 0; }
		bool m_bEjectedFromVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x10000000; } return val; }
		bool m_bLastDeathWasUserSuicide() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x200000) != 0; }
		bool m_bLastDeathWasUserSuicide(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x200000; } return val; }
		bool bWarmingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x20000000) != 0; }
		bool bWarmingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x20000000; } return val; }
		bool m_bAirSpeedBoundToGroundSpeed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x8000000) != 0; }
		bool m_bAirSpeedBoundToGroundSpeed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x8000000; } return val; }
		bool m_bEnableChatFilter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x4000000) != 0; }
		bool m_bEnableChatFilter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x4000000; } return val; }
		bool bBlockForAcquisition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x1000000) != 0; }
		bool bBlockForAcquisition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x1000000; } return val; }
		bool m_bAnimMenu() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x200000) != 0; }
		bool m_bAnimMenu(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x200000; } return val; }
		bool m_bShowHUDFriendStateNotifications() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x80000) != 0; }
		bool m_bShowHUDFriendStateNotifications(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x80000; } return val; }
		bool m_bShowHUDNotifications() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x40000) != 0; }
		bool m_bShowHUDNotifications(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x40000; } return val; }
		bool m_bShowHUDObjectives() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x2) != 0; }
		bool m_bShowHUDObjectives(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x2; } return val; }
		bool m_bEnableOverheadDamageIndicators() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x1) != 0; }
		bool m_bEnableOverheadDamageIndicators(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x1; } return val; }
		bool r_bViewTargetVehicleSecondaryWeaponReady() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x80000000) != 0; }
		bool r_bViewTargetVehicleSecondaryWeaponReady(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x80000000; } return val; }
		bool r_bViewTargetVehiclePrimaryWeaponReady() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x40000000) != 0; }
		bool r_bViewTargetVehiclePrimaryWeaponReady(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x40000000; } return val; }
		bool r_bWeeklyCompleted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x4000000) != 0; }
		bool r_bWeeklyCompleted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x4000000; } return val; }
		bool m_bIsJumpJetting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x1000000) != 0; }
		bool m_bIsJumpJetting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x1000000; } return val; }
		bool m_bJustJoined() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x800000) != 0; }
		bool m_bJustJoined(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x800000; } return val; }
		bool m_bMonkeyMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x100000) != 0; }
		bool m_bMonkeyMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x100000; } return val; }
		bool m_bJetpackHelpTextThresholdReached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x80000) != 0; }
		bool m_bJetpackHelpTextThresholdReached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x80000; } return val; }
		bool m_bSkiHelpTextThresholdReached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x40000) != 0; }
		bool m_bSkiHelpTextThresholdReached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x40000; } return val; }
		bool m_bEnableCameraSpeedEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x20000) != 0; }
		bool m_bEnableCameraSpeedEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x20000; } return val; }
		bool m_bLoadoutChangeAlerted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x4000) != 0; }
		bool m_bLoadoutChangeAlerted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x4000; } return val; }
		bool m_bRequestingSki() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x2000) != 0; }
		bool m_bRequestingSki(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x2000; } return val; }
		bool m_bPlayerSwappedTeams() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x1000) != 0; }
		bool m_bPlayerSwappedTeams(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x1000; } return val; }
		bool m_bReturnTo3PAfterZoom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x800) != 0; }
		bool m_bReturnTo3PAfterZoom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x800; } return val; }
		bool m_bZoomMagnified() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x400) != 0; }
		bool m_bZoomMagnified(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x400; } return val; }
		bool m_bPlayCreditsSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x100) != 0; }
		bool m_bPlayCreditsSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x100; } return val; }
		bool bWasAutoBalanced() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x80) != 0; }
		bool bWasAutoBalanced(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x80; } return val; }
		bool m_bAftermathKill() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x40) != 0; }
		bool m_bAftermathKill(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x40; } return val; }
		bool m_bKickbackBlendingIn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x20) != 0; }
		bool m_bKickbackBlendingIn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x20; } return val; }
		bool m_bBlink() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x10) != 0; }
		bool m_bBlink(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x10; } return val; }
		bool m_bJumpJet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x8) != 0; }
		bool m_bJumpJet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x8; } return val; }
		bool m_bPressingJetpackButton() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x2) != 0; }
		bool m_bPressingJetpackButton(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x2; } return val; }
		bool m_bEditorMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2184) & 0x1) != 0; }
		bool m_bEditorMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2184) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2184) &= ~0x1; } return val; }
	}
final:
	int GetLanguageFontIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLanguageFontIndex, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool InTraining()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InTraining, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptClass GetFamilyInfoFromId(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFamilyInfoFromId, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	TrDevice GetDeviceByEquipPoint(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDeviceByEquipPoint, params.ptr, cast(void*)0);
		return *cast(TrDevice*)&params[4];
	}
	UTWeapon.EZoomState GetZoomedState()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetZoomedState, params.ptr, cast(void*)0);
		return *cast(UTWeapon.EZoomState*)params.ptr;
	}
	bool InRovingSpectate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InRovingSpectate, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsTrPlayerMuted(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsTrPlayerMuted, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	int GetActiveClassId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActiveClassId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetTeamClassCount(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamClassCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool RegisterPendingClass(int ClassId, int Loadout)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterPendingClass, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	int GetAllowedClassCount(TrObject.TrClassType ClassType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.TrClassType*)params.ptr = ClassType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAllowedClassCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool SendPrivateChatMessage(ScriptString PlayerName, ScriptString Message)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendPrivateChatMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool BroadcastChatMessage(TgSupportCommands.GC_CHAT_CHANNEL pChannel, ScriptString Message)
	{
		ubyte params[20];
		params[] = 0;
		*cast(TgSupportCommands.GC_CHAT_CHANNEL*)params.ptr = pChannel;
		*cast(ScriptString*)&params[4] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastChatMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool ServerRequestPickTeam(ubyte RequestedTeamNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = RequestedTeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRequestPickTeam, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ChooseBloodEagle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChooseBloodEagle, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ChooseDiamondSword()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChooseDiamondSword, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetVehicleCost(ScriptClass VehicleClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = VehicleClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVehicleCost, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetCurrentCredits()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentCredits, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool IsBassBoostToggled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsBassBoostToggled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool AllowHelpTextToDisplay()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowHelpTextToDisplay, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool NeedToVisitInventoryStation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedToVisitInventoryStation, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float GetCurrentDetermination()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentDetermination, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetNewPlayerAssistToApply()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNewPlayerAssistToApply, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PlayReliableSound(SoundCue InSoundCue, bool bNotReplicated, bool bNoRepToOwner, bool bStopWhenOwnerDestroyed, Vector SoundLocation, bool bNoRepToRelevant)
	{
		ubyte params[32];
		params[] = 0;
		*cast(SoundCue*)params.ptr = InSoundCue;
		*cast(bool*)&params[4] = bNotReplicated;
		*cast(bool*)&params[8] = bNoRepToOwner;
		*cast(bool*)&params[12] = bStopWhenOwnerDestroyed;
		*cast(Vector*)&params[16] = SoundLocation;
		*cast(bool*)&params[28] = bNoRepToRelevant;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayReliableSound, params.ptr, cast(void*)0);
	}
	void SendCtrlRequest(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendCtrlRequest, params.ptr, cast(void*)0);
	}
	void SendGameRequest(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendGameRequest, params.ptr, cast(void*)0);
	}
	void TestSteamPurchase()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TestSteamPurchase, cast(void*)0, cast(void*)0);
	}
	void ShowAdminPage(ScriptString ServerURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ServerURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowAdminPage, params.ptr, cast(void*)0);
	}
	void SetHitValidationMode(int loggingMode, int validationMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = loggingMode;
		*cast(int*)&params[4] = validationMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHitValidationMode, params.ptr, cast(void*)0);
	}
	void KickPlayerFromMatch(int Reason)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.KickPlayerFromMatch, params.ptr, cast(void*)0);
	}
	bool MainMenuIsOpen()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MainMenuIsOpen, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetMenuInGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMenuInGame, cast(void*)0, cast(void*)0);
	}
	void SendMenuToLobby()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMenuToLobby, cast(void*)0, cast(void*)0);
	}
	void TweenSummaryScreen()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TweenSummaryScreen, cast(void*)0, cast(void*)0);
	}
	void SetMenuSummaryScreen()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMenuSummaryScreen, cast(void*)0, cast(void*)0);
	}
	void SetMenuEndOfMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMenuEndOfMatch, cast(void*)0, cast(void*)0);
	}
	void BeginExperienceTweens()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginExperienceTweens, cast(void*)0, cast(void*)0);
	}
	void KickVoteReply(bool bVote)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVote;
		(cast(ScriptObject)this).ProcessEvent(Functions.KickVoteReply, params.ptr, cast(void*)0);
	}
	void SetMenuMatchCountdown(int Seconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMenuMatchCountdown, params.ptr, cast(void*)0);
	}
	int GetUserSelectedClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUserSelectedClass, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void RevertSetting()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RevertSetting, cast(void*)0, cast(void*)0);
	}
	void SendMenuBack()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMenuBack, cast(void*)0, cast(void*)0);
	}
	void FireAcquisition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAcquisition, cast(void*)0, cast(void*)0);
	}
	void ForceFocus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceFocus, cast(void*)0, cast(void*)0);
	}
	void UpdateTVTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTVTimer, cast(void*)0, cast(void*)0);
	}
	void UpdateDealTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDealTimer, cast(void*)0, cast(void*)0);
	}
	void UpdateQueueTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateQueueTimer, cast(void*)0, cast(void*)0);
	}
	void ToggleWorkingGraphic(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleWorkingGraphic, params.ptr, cast(void*)0);
	}
	void EndHotkeyBlock()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndHotkeyBlock, cast(void*)0, cast(void*)0);
	}
	void MutePlayer(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.MutePlayer, params.ptr, cast(void*)0);
	}
	void UnmutePlayer(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnmutePlayer, params.ptr, cast(void*)0);
	}
	bool HaveMenu()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HaveMenu, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsChatFiltered(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsChatFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void RequestKickVote(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestKickVote, params.ptr, cast(void*)0);
	}
	void HideMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideMenu, cast(void*)0, cast(void*)0);
	}
	void OpenMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenMenu, cast(void*)0, cast(void*)0);
	}
	void OpenClasses()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenClasses, cast(void*)0, cast(void*)0);
	}
	void ToggleFriends()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleFriends, cast(void*)0, cast(void*)0);
	}
	void ToggleSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleSettings, cast(void*)0, cast(void*)0);
	}
	void ToggleMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleMainMenu, cast(void*)0, cast(void*)0);
	}
	void ClaimPromotion(ScriptString PromoCode)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PromoCode;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClaimPromotion, params.ptr, cast(void*)0);
	}
	void FireUILoadSummary()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireUILoadSummary, cast(void*)0, cast(void*)0);
	}
	void FireRefreshPage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireRefreshPage, cast(void*)0, cast(void*)0);
	}
	void ToggleBassBoost(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleBassBoost, params.ptr, cast(void*)0);
	}
	void ForwardChatFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForwardChatFlag, cast(void*)0, cast(void*)0);
	}
	void ShowNotification(ScriptString Message, ScriptString Message2)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(ScriptString*)&params[12] = Message2;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowNotification, params.ptr, cast(void*)0);
	}
	void HideNotification()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideNotification, cast(void*)0, cast(void*)0);
	}
	void ChatMessageReceived(int pChannel, ScriptString Sender, ScriptString Message)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = pChannel;
		*cast(ScriptString*)&params[4] = Sender;
		*cast(ScriptString*)&params[16] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChatMessageReceived, params.ptr, cast(void*)0);
	}
	void ShowChat()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowChat, cast(void*)0, cast(void*)0);
	}
	void HideChat()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideChat, cast(void*)0, cast(void*)0);
	}
	void ToggleChat()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleChat, cast(void*)0, cast(void*)0);
	}
	void PushChat(ScriptString chatStr)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = chatStr;
		(cast(ScriptObject)this).ProcessEvent(Functions.PushChat, params.ptr, cast(void*)0);
	}
	void Bug()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Bug, cast(void*)0, cast(void*)0);
	}
	void _Crash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions._Crash, cast(void*)0, cast(void*)0);
	}
	bool IsGameUsingSeekFreeLoading()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsGameUsingSeekFreeLoading, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ResetRunaway()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetRunaway, cast(void*)0, cast(void*)0);
	}
	void ClearVehicleMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearVehicleMenu, cast(void*)0, cast(void*)0);
	}
	void ShowVehicleMenu(int Credits)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Credits;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowVehicleMenu, params.ptr, cast(void*)0);
	}
	void AddVehicleMenuOption(ScriptString ClassName, ScriptString DisplayName, int Cost, int Icon, int CountSpawned, int CountAllowed)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		*cast(ScriptString*)&params[12] = DisplayName;
		*cast(int*)&params[24] = Cost;
		*cast(int*)&params[28] = Icon;
		*cast(int*)&params[32] = CountSpawned;
		*cast(int*)&params[36] = CountAllowed;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVehicleMenuOption, params.ptr, cast(void*)0);
	}
	void GetOnlineFriends(ScriptArray!(ScriptString)* vFriends)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *vFriends;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOnlineFriends, params.ptr, cast(void*)0);
		*vFriends = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void InitHelpTextManager()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitHelpTextManager, cast(void*)0, cast(void*)0);
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitInputSystem, cast(void*)0, cast(void*)0);
	}
	void PlayAnnouncerSound(SoundCue AnnouncementCue, bool bPlayRightNow)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = AnnouncementCue;
		*cast(bool*)&params[4] = bPlayRightNow;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAnnouncerSound, params.ptr, cast(void*)0);
	}
	void TestAnnouncement(bool bPlayRightNow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayRightNow;
		(cast(ScriptObject)this).ProcessEvent(Functions.TestAnnouncement, params.ptr, cast(void*)0);
	}
	void ClientHearReliableSound(SoundCue ASound, Actor SourceActor, Vector SourceLocation, bool bStopWhenOwnerDestroyed, bool bIsOccluded)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(Actor*)&params[4] = SourceActor;
		*cast(Vector*)&params[8] = SourceLocation;
		*cast(bool*)&params[20] = bStopWhenOwnerDestroyed;
		*cast(bool*)&params[24] = bIsOccluded;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientHearReliableSound, params.ptr, cast(void*)0);
	}
	void ClientMySaberLauncherTargetingUpdated(TrObject.EMissileLock MissileLockValue)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.EMissileLock*)params.ptr = MissileLockValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientMySaberLauncherTargetingUpdated, params.ptr, cast(void*)0);
	}
	void ClientSeekingMissileTargetingSelfEvent(int EventSwitch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EventSwitch;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSeekingMissileTargetingSelfEvent, params.ptr, cast(void*)0);
	}
	void OnMissileIntercepted()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMissileIntercepted, cast(void*)0, cast(void*)0);
	}
	void ShowHUDNotification(ScriptString Message, ScriptString Message2)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(ScriptString*)&params[12] = Message2;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowHUDNotification, params.ptr, cast(void*)0);
	}
	void HideHUDNotification()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideHUDNotification, cast(void*)0, cast(void*)0);
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
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void ProcessCreditEvent(TrObject.TrCreditEventType EventType, bool bProxyEvent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.TrCreditEventType*)params.ptr = EventType;
		*cast(bool*)&params[4] = bProxyEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessCreditEvent, params.ptr, cast(void*)0);
	}
	void ModifyCredits(int Count, bool bFreeCredits)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		*cast(bool*)&params[4] = bFreeCredits;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyCredits, params.ptr, cast(void*)0);
	}
	void UpdateCurrentCredits(int Count)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCurrentCredits, params.ptr, cast(void*)0);
	}
	void CreditsSoundFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreditsSoundFinished, params.ptr, cast(void*)0);
	}
	void ClientUpdateCredits(int Count)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientUpdateCredits, params.ptr, cast(void*)0);
	}
	int GetLatestAccoladeIconIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLatestAccoladeIconIndex, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void ClientShowAccoladeIcon(int IconIndex, ScriptString Description, ScriptString Points)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = IconIndex;
		*cast(ScriptString*)&params[4] = Description;
		*cast(ScriptString*)&params[16] = Points;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientShowAccoladeIcon, params.ptr, cast(void*)0);
	}
	void ClientShowAccoladeText(ScriptString Message, int ShowTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(int*)&params[12] = ShowTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientShowAccoladeText, params.ptr, cast(void*)0);
	}
	void ResetStreaks()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetStreaks, cast(void*)0, cast(void*)0);
	}
	void GiveCredits(int Count)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveCredits, params.ptr, cast(void*)0);
	}
	void ServerGiveCreditsCheat(int Count)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerGiveCreditsCheat, params.ptr, cast(void*)0);
	}
	bool AimingHelp(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(Functions.AimingHelp, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void NotifyChangedWeapon(Weapon PreviousWeapon, Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = PreviousWeapon;
		*cast(Weapon*)&params[4] = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyChangedWeapon, params.ptr, cast(void*)0);
	}
	void ReloadWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReloadWeapon, cast(void*)0, cast(void*)0);
	}
	void ServerReloadWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerReloadWeapon, cast(void*)0, cast(void*)0);
	}
	void ServerSetCharFamily(ScriptString FamilyClassStr)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FamilyClassStr;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetCharFamily, params.ptr, cast(void*)0);
	}
	void Suicide()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Suicide, cast(void*)0, cast(void*)0);
	}
	void ServerSuicide()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSuicide, cast(void*)0, cast(void*)0);
	}
	TrObject.EArmorType GetArmorType()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetArmorType, params.ptr, cast(void*)0);
		return *cast(TrObject.EArmorType*)params.ptr;
	}
	float GetRespawnDelayTotalTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRespawnDelayTotalTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
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
	void PressedMelee()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PressedMelee, cast(void*)0, cast(void*)0);
	}
	void PressedLaser()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PressedLaser, cast(void*)0, cast(void*)0);
	}
	void PressedBelt()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PressedBelt, cast(void*)0, cast(void*)0);
	}
	void PressedPack()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PressedPack, cast(void*)0, cast(void*)0);
	}
	void PressedDeployable()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PressedDeployable, cast(void*)0, cast(void*)0);
	}
	void SetShowEquip(bool bShow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShow;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetShowEquip, params.ptr, cast(void*)0);
	}
	void PressedConsoleUse()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PressedConsoleUse, cast(void*)0, cast(void*)0);
	}
	void PressedWeaponSwitch(bool bFilterTimeStamp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFilterTimeStamp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PressedWeaponSwitch, params.ptr, cast(void*)0);
	}
	void EquipPrimary()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EquipPrimary, cast(void*)0, cast(void*)0);
	}
	void EquipSecondary()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EquipSecondary, cast(void*)0, cast(void*)0);
	}
	void SwitchWeapon(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchWeapon, params.ptr, cast(void*)0);
	}
	void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PrevWeapon, cast(void*)0, cast(void*)0);
	}
	void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NextWeapon, cast(void*)0, cast(void*)0);
	}
	void ActivateDevice(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateDevice, params.ptr, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	void UpdateLockedTarget(Actor LockedActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = LockedActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLockedTarget, params.ptr, cast(void*)0);
	}
	void IdentifyTeamMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.IdentifyTeamMessage, cast(void*)0, cast(void*)0);
	}
	void PlayStartupMessage(ubyte StartupStage)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = StartupStage;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStartupMessage, params.ptr, cast(void*)0);
	}
	void FindValidGRI()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FindValidGRI, cast(void*)0, cast(void*)0);
	}
	void InitHUDObjects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitHUDObjects, cast(void*)0, cast(void*)0);
	}
	void ClientStartSpawnTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientStartSpawnTimer, cast(void*)0, cast(void*)0);
	}
	void CompletePickTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CompletePickTeam, cast(void*)0, cast(void*)0);
	}
	void ServerRequestAutoAssignTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRequestAutoAssignTeam, cast(void*)0, cast(void*)0);
	}
	void ClientEndTeamSelect(int RequestedTeamNum)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RequestedTeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientEndTeamSelect, params.ptr, cast(void*)0);
	}
	void ChangeTeam(ScriptString TeamName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TeamName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeTeam, params.ptr, cast(void*)0);
	}
	void ViewAPlayer(int Dir)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewAPlayer, params.ptr, cast(void*)0);
	}
	void ServerPlayerTick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerPlayerTick, params.ptr, cast(void*)0);
	}
	void PlayerTick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerTick, params.ptr, cast(void*)0);
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
	void StartWeather()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartWeather, cast(void*)0, cast(void*)0);
	}
	void StopWeather()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopWeather, cast(void*)0, cast(void*)0);
	}
	void PawnEnteredWeatherVolume(bool bDeactivatePawnCentricWeather, TrWeatherVolume WeatherVolume)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDeactivatePawnCentricWeather;
		*cast(TrWeatherVolume*)&params[4] = WeatherVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredWeatherVolume, params.ptr, cast(void*)0);
	}
	void PawnLeftWeatherVolume(bool bDeactivatePawnCentricWeather, TrWeatherVolume WeatherVolume)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDeactivatePawnCentricWeather;
		*cast(TrWeatherVolume*)&params[4] = WeatherVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeftWeatherVolume, params.ptr, cast(void*)0);
	}
	void PlayLowHealthFX()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayLowHealthFX, cast(void*)0, cast(void*)0);
	}
	void StopLowHealthFX()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopLowHealthFX, cast(void*)0, cast(void*)0);
	}
	void PlayRechargeHealthFX()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRechargeHealthFX, cast(void*)0, cast(void*)0);
	}
	void StopRechargeHealthFX()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopRechargeHealthFX, cast(void*)0, cast(void*)0);
	}
	void ToggleJetpack(bool bEnabled, bool bJump)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		*cast(bool*)&params[4] = bJump;
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleJetpack, params.ptr, cast(void*)0);
	}
	void EnableJetpack(bool bEnabled, bool bJump, bool bForcedOff)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		*cast(bool*)&params[4] = bJump;
		*cast(bool*)&params[8] = bForcedOff;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableJetpack, params.ptr, cast(void*)0);
	}
	void IgnoreMoveInput(bool bNewMoveInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewMoveInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.IgnoreMoveInput, params.ptr, cast(void*)0);
	}
	void DoJump()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoJump, cast(void*)0, cast(void*)0);
	}
	void PerformBlink()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformBlink, cast(void*)0, cast(void*)0);
	}
	void GetBlinkPackAccel(Vector* newAccel, float* BlinkPackPctEffectiveness)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = *newAccel;
		*cast(float*)&params[12] = *BlinkPackPctEffectiveness;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBlinkPackAccel, params.ptr, cast(void*)0);
		*newAccel = *cast(Vector*)params.ptr;
		*BlinkPackPctEffectiveness = *cast(float*)&params[12];
	}
	void InitRespawnTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitRespawnTimer, cast(void*)0, cast(void*)0);
	}
	void UpdateRespawnTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRespawnTimer, cast(void*)0, cast(void*)0);
	}
	void ServerRequestRespawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRequestRespawn, cast(void*)0, cast(void*)0);
	}
	void RequestRespawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestRespawn, cast(void*)0, cast(void*)0);
	}
	void Respawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Respawn, cast(void*)0, cast(void*)0);
	}
	void PlayRespawnSoonSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRespawnSoonSound, cast(void*)0, cast(void*)0);
	}
	void CleanupGameplayEffectsOnDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanupGameplayEffectsOnDeath, cast(void*)0, cast(void*)0);
	}
	void OnCrossedOffArenaList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCrossedOffArenaList, cast(void*)0, cast(void*)0);
	}
	void Possess(Pawn aPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.Possess, params.ptr, cast(void*)0);
	}
	void RefreshHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshHUD, cast(void*)0, cast(void*)0);
	}
	bool GetAirVehicleInversion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAirVehicleInversion, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ServerSetAirVehicleControls(bool bInvert)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInvert;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetAirVehicleControls, params.ptr, cast(void*)0);
	}
	void SetAirVehicleControls(bool bInvert)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInvert;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAirVehicleControls, params.ptr, cast(void*)0);
	}
	bool IsInVehicle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClientVehiclePhysUpdated(TrVehicle InVehicle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = InVehicle;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientVehiclePhysUpdated, params.ptr, cast(void*)0);
	}
	void ServerVehiclePhysUpdated(TrVehicle InVehicle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = InVehicle;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerVehiclePhysUpdated, params.ptr, cast(void*)0);
	}
	void ServerVerifyVehiclePhys(float TimeStamp, float InForward, float InStrafe, float InUp, int View, Actor.RigidBodyState InRBState)
	{
		ubyte params[96];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(float*)&params[4] = InForward;
		*cast(float*)&params[8] = InStrafe;
		*cast(float*)&params[12] = InUp;
		*cast(int*)&params[16] = View;
		*cast(Actor.RigidBodyState*)&params[32] = InRBState;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerVerifyVehiclePhys, params.ptr, cast(void*)0);
	}
	void ServerCorrectClientPhys(float TimeStamp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerCorrectClientPhys, params.ptr, cast(void*)0);
	}
	void ServerToggleVehicleJets(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerToggleVehicleJets, params.ptr, cast(void*)0);
	}
	void ToggleVehicleJets(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleVehicleJets, params.ptr, cast(void*)0);
	}
	void ProcessRiding(Rotator ViewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = ViewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessRiding, params.ptr, cast(void*)0);
	}
	void ServerRiding(float TimeStamp, int View)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(int*)&params[4] = View;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRiding, params.ptr, cast(void*)0);
	}
	void SwitchToCallIn(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchToCallIn, params.ptr, cast(void*)0);
	}
	void ServerRequestCallInChange(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRequestCallInChange, params.ptr, cast(void*)0);
	}
	void SwitchToSeat(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchToSeat, params.ptr, cast(void*)0);
	}
	void ServerSwitchToSeat(ubyte T, TrVehicle V)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = T;
		*cast(TrVehicle*)&params[4] = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSwitchToSeat, params.ptr, cast(void*)0);
	}
	bool TriggerInteracted()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerInteracted, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ServerRequestLoadoutChange(ScriptClass FamilyInfo, int Loadout)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRequestLoadoutChange, params.ptr, cast(void*)0);
	}
	void UpdatePaperDoll(ScriptClass FamilyInfo, ScriptClass DeviceClass, ScriptClass skinClass, int TeamNum)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		*cast(ScriptClass*)&params[4] = DeviceClass;
		*cast(ScriptClass*)&params[8] = skinClass;
		*cast(int*)&params[12] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePaperDoll, params.ptr, cast(void*)0);
	}
	void UpdatePaperDoll_Device(ScriptClass DeviceClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePaperDoll_Device, params.ptr, cast(void*)0);
	}
	void SpawnVehicle(ScriptString vehicleClassStr)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = vehicleClassStr;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnVehicle, params.ptr, cast(void*)0);
	}
	void RequestBuyVehicle(ScriptString vehicleClassStr)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = vehicleClassStr;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestBuyVehicle, params.ptr, cast(void*)0);
	}
	void PressedSki(bool bJump)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bJump;
		(cast(ScriptObject)this).ProcessEvent(Functions.PressedSki, params.ptr, cast(void*)0);
	}
	void ReleasedSki()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReleasedSki, cast(void*)0, cast(void*)0);
	}
	void ToggleSki()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleSki, cast(void*)0, cast(void*)0);
	}
	void DelayReleasedSki()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DelayReleasedSki, cast(void*)0, cast(void*)0);
	}
	void SetBindSkiJet(int method)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = method;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBindSkiJet, params.ptr, cast(void*)0);
	}
	void ToggleShowObjectMarkers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleShowObjectMarkers, cast(void*)0, cast(void*)0);
	}
	void ServerStartSki(bool bJump)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bJump;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerStartSki, params.ptr, cast(void*)0);
	}
	void ServerStopSki()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerStopSki, cast(void*)0, cast(void*)0);
	}
	void ClientSetHUD(ScriptClass newHUDType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = newHUDType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetHUD, params.ptr, cast(void*)0);
	}
	void SwitchHud()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchHud, cast(void*)0, cast(void*)0);
	}
	void OnKickback(Rotator KickbackAim, float KickbackBlendOutTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = KickbackAim;
		*cast(float*)&params[12] = KickbackBlendOutTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnKickback, params.ptr, cast(void*)0);
	}
	void UpdateKickbackDirection(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateKickbackDirection, params.ptr, cast(void*)0);
	}
	void RestoreMoveInput()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RestoreMoveInput, cast(void*)0, cast(void*)0);
	}
	void ClientRestoreMoveInput()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRestoreMoveInput, cast(void*)0, cast(void*)0);
	}
	void ServerRequestSpawnVehicle(ScriptClass VehicleClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = VehicleClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRequestSpawnVehicle, params.ptr, cast(void*)0);
	}
	bool PerformedUseAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformedUseAction, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PressedZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PressedZoom, cast(void*)0, cast(void*)0);
	}
	void ReleasedZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReleasedZoom, cast(void*)0, cast(void*)0);
	}
	void MagnifyZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MagnifyZoom, cast(void*)0, cast(void*)0);
	}
	void DemagnifyZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DemagnifyZoom, cast(void*)0, cast(void*)0);
	}
	void ReleaseZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReleaseZoom, cast(void*)0, cast(void*)0);
	}
	void CheckZoomButton()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckZoomButton, cast(void*)0, cast(void*)0);
	}
	void TrStartZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TrStartZoom, cast(void*)0, cast(void*)0);
	}
	void TrStopZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TrStopZoom, cast(void*)0, cast(void*)0);
	}
	void TrEndZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TrEndZoom, cast(void*)0, cast(void*)0);
	}
	void ResetZoomDuration(bool bPlayRechargeSoundOnWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayRechargeSoundOnWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetZoomDuration, params.ptr, cast(void*)0);
	}
	void ServerSetZoom(UTWeapon.EZoomState NewZoomState)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTWeapon.EZoomState*)params.ptr = NewZoomState;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetZoom, params.ptr, cast(void*)0);
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
	void ReceiveLocalizedNagMessage(ScriptClass Message, int Switch, float Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Message;
		*cast(int*)&params[4] = Switch;
		*cast(float*)&params[8] = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceiveLocalizedNagMessage, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void TrClientMusicEvent(int EventIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EventIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.TrClientMusicEvent, params.ptr, cast(void*)0);
	}
	void ClientRestart(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRestart, params.ptr, cast(void*)0);
	}
	void UpdateClientSpawnTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateClientSpawnTimer, cast(void*)0, cast(void*)0);
	}
	void GameHasEnded(Actor EndGameFocus, bool bIsWinner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = EndGameFocus;
		*cast(bool*)&params[4] = bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(Functions.GameHasEnded, params.ptr, cast(void*)0);
	}
	void CheckJumpOrDuck()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckJumpOrDuck, cast(void*)0, cast(void*)0);
	}
	void ClientGameEnded(Actor EndGameFocus, bool bIsWinner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = EndGameFocus;
		*cast(bool*)&params[4] = bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientGameEnded, params.ptr, cast(void*)0);
	}
	void ServerDropFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerDropFlag, cast(void*)0, cast(void*)0);
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
	void ActivateFreeCam()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateFreeCam, cast(void*)0, cast(void*)0);
	}
	void DeactivateFreeCam()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeactivateFreeCam, cast(void*)0, cast(void*)0);
	}
	void SetViewTargetAsOverwatch(bool bForce)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewTargetAsOverwatch, params.ptr, cast(void*)0);
	}
	void PlayCameraShake(ScriptName ShakeName, float Scale, CameraShake SourceShake)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ShakeName;
		*cast(float*)&params[8] = Scale;
		*cast(CameraShake*)&params[12] = SourceShake;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCameraShake, params.ptr, cast(void*)0);
	}
	void ClientPlayForceFeedbackWaveform(ForceFeedbackWaveform FFWaveform, Actor FFWaveformInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ForceFeedbackWaveform*)params.ptr = FFWaveform;
		*cast(Actor*)&params[4] = FFWaveformInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayForceFeedbackWaveform, params.ptr, cast(void*)0);
	}
	void UpdateSpeedCameraEffect(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSpeedCameraEffect, params.ptr, cast(void*)0);
	}
	void SpeedCamEffect(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpeedCamEffect, params.ptr, cast(void*)0);
	}
	void ClientPulseHUD(ubyte Reason)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPulseHUD, params.ptr, cast(void*)0);
	}
	void PulseShield()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PulseShield, cast(void*)0, cast(void*)0);
	}
	void AddTimePlayed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddTimePlayed, cast(void*)0, cast(void*)0);
	}
	void AcknowledgePossession(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AcknowledgePossession, params.ptr, cast(void*)0);
	}
	void MatchEndSoundMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchEndSoundMode, cast(void*)0, cast(void*)0);
	}
	void ResetSoundMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetSoundMode, cast(void*)0, cast(void*)0);
	}
	void SuppressHelpText()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SuppressHelpText, cast(void*)0, cast(void*)0);
	}
	void TalkVGS(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.TalkVGS, params.ptr, cast(void*)0);
	}
	void Say(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.Say, params.ptr, cast(void*)0);
	}
	bool IsPlayerCommand(ScriptString msg)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPlayerCommand, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void ShowFeedbackMessage(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowFeedbackMessage, params.ptr, cast(void*)0);
	}
	UObject.Color GetChatColor(TgSupportCommands.GC_CHAT_CHANNEL pChannel, bool bSameTeam, int* ChatColorIdx)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TgSupportCommands.GC_CHAT_CHANNEL*)params.ptr = pChannel;
		*cast(bool*)&params[4] = bSameTeam;
		*cast(int*)&params[8] = *ChatColorIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetChatColor, params.ptr, cast(void*)0);
		*ChatColorIdx = *cast(int*)&params[8];
		return *cast(UObject.Color*)&params[12];
	}
	void AddChatToConsole(ScriptString Sender, ScriptString ChatMessage, TgSupportCommands.GC_CHAT_CHANNEL pChannel)
	{
		ubyte params[25];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Sender;
		*cast(ScriptString*)&params[12] = ChatMessage;
		*cast(TgSupportCommands.GC_CHAT_CHANNEL*)&params[24] = pChannel;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddChatToConsole, params.ptr, cast(void*)0);
	}
	ScriptString GetLastTellSender()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLastTellSender, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void ReplyTalk()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplyTalk, cast(void*)0, cast(void*)0);
	}
	bool CanCommunicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanCommunicate, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Talk()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Talk, cast(void*)0, cast(void*)0);
	}
	void ChatConsole(bool bTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChatConsole, params.ptr, cast(void*)0);
	}
	void TalkConsole(bool bTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.TalkConsole, params.ptr, cast(void*)0);
	}
	void TeamTalk()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamTalk, cast(void*)0, cast(void*)0);
	}
	void TeamSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamSay, params.ptr, cast(void*)0);
	}
	bool AllowTextMessage(ScriptString msg)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowTextMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void WarnPlayerAboutSpam()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WarnPlayerAboutSpam, cast(void*)0, cast(void*)0);
	}
	void BeginVGS()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginVGS, cast(void*)0, cast(void*)0);
	}
	void SpotTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpotTarget, cast(void*)0, cast(void*)0);
	}
	void ServerRequestVGSContextCommand(TrVGSCommandList.EVGSContextActor ContextActor, TrVGSCommandList.EVGSContextLocation ContextLocation, bool bEnemyLocation, Actor SpottedActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrVGSCommandList.EVGSContextActor*)params.ptr = ContextActor;
		*cast(TrVGSCommandList.EVGSContextLocation*)&params[1] = ContextLocation;
		*cast(bool*)&params[4] = bEnemyLocation;
		*cast(Actor*)&params[8] = SpottedActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRequestVGSContextCommand, params.ptr, cast(void*)0);
	}
	void ServerRequestVGSCommand(TrVGSCommandList.VGSCommandType VGSCommandIndex, bool bGlobal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrVGSCommandList.VGSCommandType*)params.ptr = VGSCommandIndex;
		*cast(bool*)&params[4] = bGlobal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRequestVGSCommand, params.ptr, cast(void*)0);
	}
	void ClientReceiveVGSCommand(PlayerReplicationInfo PRI, TrVGSCommandList.VGSCommandType VGSCommandIndex)
	{
		ubyte params[5];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(TrVGSCommandList.VGSCommandType*)&params[4] = VGSCommandIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReceiveVGSCommand, params.ptr, cast(void*)0);
	}
	void ClientReceiveVGSContextCommand(PlayerReplicationInfo PRI, TrVGSCommandList.EVGSContextActor ContextActor, TrVGSCommandList.EVGSContextLocation ContextLocation, bool bEnemyLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(TrVGSCommandList.EVGSContextActor*)&params[4] = ContextActor;
		*cast(TrVGSCommandList.EVGSContextLocation*)&params[5] = ContextLocation;
		*cast(bool*)&params[8] = bEnemyLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReceiveVGSContextCommand, params.ptr, cast(void*)0);
	}
	void ShowMoveErrors(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMoveErrors, params.ptr, cast(void*)0);
	}
	void OnSkiHelpTextDistanceThresholdReached()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSkiHelpTextDistanceThresholdReached, cast(void*)0, cast(void*)0);
	}
	void OnJetpackHelpTextDistanceThresholdReached()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnJetpackHelpTextDistanceThresholdReached, cast(void*)0, cast(void*)0);
	}
	void LoadPlayerProfile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadPlayerProfile, cast(void*)0, cast(void*)0);
	}
	float GetNewPlayerAssistAmount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNewPlayerAssistAmount, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void UpdateNewPlayerAssistPoints(int AmoutToSubtract)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = AmoutToSubtract;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateNewPlayerAssistPoints, params.ptr, cast(void*)0);
	}
	void BehindView()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BehindView, cast(void*)0, cast(void*)0);
	}
	void ServerSetBehindView(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetBehindView, params.ptr, cast(void*)0);
	}
	void ClientSetBehindView(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetBehindView, params.ptr, cast(void*)0);
	}
	PlayerInput GetEngineSettings(bool bUse)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUse;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEngineSettings, params.ptr, cast(void*)0);
		return *cast(PlayerInput*)&params[4];
	}
	TrPlayerInput_Spectator GetSpectatorSettings()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorSettings, params.ptr, cast(void*)0);
		return *cast(TrPlayerInput_Spectator*)params.ptr;
	}
	void ClientOnMotionSensorAlarmSounded(TrDeployable_MotionSensor MotionSensor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable_MotionSensor*)params.ptr = MotionSensor;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientOnMotionSensorAlarmSounded, params.ptr, cast(void*)0);
	}
	void ClientOnMotionSensorMineSounded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientOnMotionSensorMineSounded, cast(void*)0, cast(void*)0);
	}
	void LoadPendingLoadoutContentData(int ClassId, int Loadout)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadPendingLoadoutContentData, params.ptr, cast(void*)0);
	}
	void LoadPendingDeviceContentData(ScriptClass DeviceClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadPendingDeviceContentData, params.ptr, cast(void*)0);
	}
	void HideHUDElements()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideHUDElements, cast(void*)0, cast(void*)0);
	}
	void ClientShowFlagIcon(bool bShow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShow;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientShowFlagIcon, params.ptr, cast(void*)0);
	}
	void ClientSetPlayerClassObjects(ScriptString ClassName, int PerkIcon1, int PerkIcon2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		*cast(int*)&params[12] = PerkIcon1;
		*cast(int*)&params[16] = PerkIcon2;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetPlayerClassObjects, params.ptr, cast(void*)0);
	}
	void UpdatePotentialSeekingTargets(ScriptArray!(Actor) NewPotentialTargets)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(Actor)*)params.ptr = NewPotentialTargets;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePotentialSeekingTargets, params.ptr, cast(void*)0);
	}
	bool NotifyHitWall(Vector HitNormal, Actor Wall)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyHitWall, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void NotifyFallingHitWall(Vector HitNormal, Actor Wall)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyFallingHitWall, params.ptr, cast(void*)0);
	}
	void Spectate(bool bNeutral)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNeutral;
		(cast(ScriptObject)this).ProcessEvent(Functions.Spectate, params.ptr, cast(void*)0);
	}
	void EndSpectate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndSpectate, cast(void*)0, cast(void*)0);
	}
	void ClientSpectate(bool bNeutral)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNeutral;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSpectate, params.ptr, cast(void*)0);
	}
	void ServerSpectate(bool bNeutral)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNeutral;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSpectate, params.ptr, cast(void*)0);
	}
	void ServerViewFlags(int Dir)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewFlags, params.ptr, cast(void*)0);
	}
	void ServerViewFlagStands(int Dir)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewFlagStands, params.ptr, cast(void*)0);
	}
	void ServerViewGenerators(int Dir)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewGenerators, params.ptr, cast(void*)0);
	}
	void ServerViewBookmark(int Dir)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewBookmark, params.ptr, cast(void*)0);
	}
	void ServerViewVehicles(int Dir)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewVehicles, params.ptr, cast(void*)0);
	}
	void ServerViewFastestPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewFastestPlayer, cast(void*)0, cast(void*)0);
	}
	void ServerViewActor(Actor ActorToView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = ActorToView;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewActor, params.ptr, cast(void*)0);
	}
	void ClientOnViewTargetChange(Actor NewViewTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientOnViewTargetChange, params.ptr, cast(void*)0);
	}
	void ServerIncreaseCamDistance(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerIncreaseCamDistance, params.ptr, cast(void*)0);
	}
	void ServerDecreaseCamDistance(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerDecreaseCamDistance, params.ptr, cast(void*)0);
	}
	void ServerSetMoveSpeed(float NewSpeed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewSpeed;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetMoveSpeed, params.ptr, cast(void*)0);
	}
	void OnViewTargetCapturedFlag(TrFlagCTF NewFlagToWatch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrFlagCTF*)params.ptr = NewFlagToWatch;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewTargetCapturedFlag, params.ptr, cast(void*)0);
	}
	void OnViewTargetFlagReturned()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewTargetFlagReturned, cast(void*)0, cast(void*)0);
	}
	void OnViewTargetDroppedFlag(TrFlagBase NewFlagToWatch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrFlagBase*)params.ptr = NewFlagToWatch;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewTargetDroppedFlag, params.ptr, cast(void*)0);
	}
	void OnViewTargetLeftVehicle(PlayerReplicationInfo NewPRIToWatch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = NewPRIToWatch;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewTargetLeftVehicle, params.ptr, cast(void*)0);
	}
	void GetViewTargetList(TrPawn* PawnViewTarget, TrVehicle* VehicleViewTarget, TrCamera_SpectatorBookmark* BookmarkViewTarget, Actor* ObjectiveViewTarget)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrPawn*)params.ptr = *PawnViewTarget;
		*cast(TrVehicle*)&params[4] = *VehicleViewTarget;
		*cast(TrCamera_SpectatorBookmark*)&params[8] = *BookmarkViewTarget;
		*cast(Actor*)&params[12] = *ObjectiveViewTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewTargetList, params.ptr, cast(void*)0);
		*PawnViewTarget = *cast(TrPawn*)params.ptr;
		*VehicleViewTarget = *cast(TrVehicle*)&params[4];
		*BookmarkViewTarget = *cast(TrCamera_SpectatorBookmark*)&params[8];
		*ObjectiveViewTarget = *cast(Actor*)&params[12];
	}
	void ServerUnPossess()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerUnPossess, cast(void*)0, cast(void*)0);
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
	void ClientPlayReticuleHitSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayReticuleHitSound, cast(void*)0, cast(void*)0);
	}
	void ClientPlayBluePlateImpact()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayBluePlateImpact, cast(void*)0, cast(void*)0);
	}
	void ClientPlayAirMailImpact()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayAirMailImpact, cast(void*)0, cast(void*)0);
	}
	void SummarizeAwards()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SummarizeAwards, cast(void*)0, cast(void*)0);
	}
	void ClientMatchOver(int Winner, ScriptString WinnerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = WinnerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientMatchOver, params.ptr, cast(void*)0);
	}
	void ClientSetEndOfMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetEndOfMatch, cast(void*)0, cast(void*)0);
	}
	void ClientFadeToSummary()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientFadeToSummary, cast(void*)0, cast(void*)0);
	}
	void UpdateMatchCountdown(int Seconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateMatchCountdown, params.ptr, cast(void*)0);
	}
	void UpdateRoundCountdown(int Seconds, int Round)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		*cast(int*)&params[4] = Round;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRoundCountdown, params.ptr, cast(void*)0);
	}
	void UpdateGameCountdown(int Seconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGameCountdown, params.ptr, cast(void*)0);
	}
	void ServerKickPlayer(int Reason)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerKickPlayer, params.ptr, cast(void*)0);
	}
	void ClientKickPlayer(int Reason)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientKickPlayer, params.ptr, cast(void*)0);
	}
	void KickWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KickWarning, cast(void*)0, cast(void*)0);
	}
	void FumbledFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FumbledFlag, cast(void*)0, cast(void*)0);
	}
	void ClientOnFumbledFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientOnFumbledFlag, cast(void*)0, cast(void*)0);
	}
	void UpdateCallInAvailability()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCallInAvailability, cast(void*)0, cast(void*)0);
	}
	void UpdateCallInCooldown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCallInCooldown, cast(void*)0, cast(void*)0);
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
	bool IsGameTypeArena()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsGameTypeArena, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsGameTypeDaD()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsGameTypeDaD, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsGameTypeCaH()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsGameTypeCaH, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SwitchToDeathCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchToDeathCamera, cast(void*)0, cast(void*)0);
	}
	void AddProjectileToTetherList(TrProjectile P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrProjectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddProjectileToTetherList, params.ptr, cast(void*)0);
	}
	void CheckTetherList(TrProjectile P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrProjectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckTetherList, params.ptr, cast(void*)0);
	}
	TrProjectile TetherProjectile(TrProjectile ProjectileFromServer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrProjectile*)params.ptr = ProjectileFromServer;
		(cast(ScriptObject)this).ProcessEvent(Functions.TetherProjectile, params.ptr, cast(void*)0);
		return *cast(TrProjectile*)&params[4];
	}
	void ConfigureSkiSpeedSteps(float SoftCap)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = SoftCap;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConfigureSkiSpeedSteps, params.ptr, cast(void*)0);
	}
	void LoadingTimer(bool bStart)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bStart;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadingTimer, params.ptr, cast(void*)0);
	}
	void FlushAccumulatedDetermination()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FlushAccumulatedDetermination, cast(void*)0, cast(void*)0);
	}
	void ClearDetermination()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDetermination, cast(void*)0, cast(void*)0);
	}
	void AddDetermination()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDetermination, cast(void*)0, cast(void*)0);
	}
	void OnMenuMovieOpened()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMenuMovieOpened, cast(void*)0, cast(void*)0);
	}
	void OnMenuMovieClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMenuMovieClosed, cast(void*)0, cast(void*)0);
	}
	void ClientPlayVGSAudio(SoundCue ASound, PlayerReplicationInfo InstigatorPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(PlayerReplicationInfo*)&params[4] = InstigatorPRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayVGSAudio, params.ptr, cast(void*)0);
	}
	void VGSAudioFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(Functions.VGSAudioFinished, params.ptr, cast(void*)0);
	}
	void ClientSetLastDamagerInfo(int Health, int UpgradeLevel)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Health;
		*cast(int*)&params[4] = UpgradeLevel;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetLastDamagerInfo, params.ptr, cast(void*)0);
	}
	void EnableTinyWeapons(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableTinyWeapons, params.ptr, cast(void*)0);
	}
	bool GetTinyWeaponValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTinyWeaponValue, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void EnableChatFilter(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableChatFilter, params.ptr, cast(void*)0);
	}
	bool GetChatFilterValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetChatFilterValue, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void EnableDamageCounter(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableDamageCounter, params.ptr, cast(void*)0);
	}
	bool GetDamageCounterValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDamageCounterValue, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void EnableHUDObjectives(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDObjectives, params.ptr, cast(void*)0);
	}
	void EnableHUDReticule(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDReticule, params.ptr, cast(void*)0);
	}
	void EnableHUDCredits(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDCredits, params.ptr, cast(void*)0);
	}
	void EnableHUDAccolades(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDAccolades, params.ptr, cast(void*)0);
	}
	void EnableHUDBadges(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDBadges, params.ptr, cast(void*)0);
	}
	void EnableHUDScores(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDScores, params.ptr, cast(void*)0);
	}
	void EnableHUDHealthBar(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDHealthBar, params.ptr, cast(void*)0);
	}
	void EnableHUDVisor(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDVisor, params.ptr, cast(void*)0);
	}
	void EnableHUDChat(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDChat, params.ptr, cast(void*)0);
	}
	void EnableHUDCombatLog(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDCombatLog, params.ptr, cast(void*)0);
	}
	void EnableHUDKillbox(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDKillbox, params.ptr, cast(void*)0);
	}
	void EnableHUDDeathcam(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDDeathcam, params.ptr, cast(void*)0);
	}
	void EnableHUDHeroText(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDHeroText, params.ptr, cast(void*)0);
	}
	void EnableHUDPromptPanel(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDPromptPanel, params.ptr, cast(void*)0);
	}
	void EnableHUDRespawnTimer(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDRespawnTimer, params.ptr, cast(void*)0);
	}
	void EnableHUDSkiBars(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDSkiBars, params.ptr, cast(void*)0);
	}
	void EnableHUDFriendColoring(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDFriendColoring, params.ptr, cast(void*)0);
	}
	void EnableHUDNotifications(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDNotifications, params.ptr, cast(void*)0);
	}
	void EnableHUDFriendStateNotifications(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDFriendStateNotifications, params.ptr, cast(void*)0);
	}
	void EnableHUDCracks(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHUDCracks, params.ptr, cast(void*)0);
	}
	void ShowAlienFX(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowAlienFX, params.ptr, cast(void*)0);
	}
	bool GetHUDObjectivesValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHUDObjectivesValue, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool GetHUDNotifications()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHUDNotifications, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool GetHUDFriendStateNotifications()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHUDFriendStateNotifications, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetWhisperFilterValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWhisperFilterValue, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void SetWhisperFilter(int FilterValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FilterValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWhisperFilter, params.ptr, cast(void*)0);
	}
	void SummaryTweenTimer(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.SummaryTweenTimer, params.ptr, cast(void*)0);
	}
	void VoteNo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.VoteNo, cast(void*)0, cast(void*)0);
	}
	void VoteYes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.VoteYes, cast(void*)0, cast(void*)0);
	}
	void FlashShooterHitReticule(int DamageAmount, bool isInstantHit, int TeamNum)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(bool*)&params[4] = isInstantHit;
		*cast(int*)&params[8] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlashShooterHitReticule, params.ptr, cast(void*)0);
	}
	void ServerShowOverheadNumber(int NumberToShow, Vector WorldLocation, float fScreenDepth)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = NumberToShow;
		*cast(Vector*)&params[4] = WorldLocation;
		*cast(float*)&params[16] = fScreenDepth;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerShowOverheadNumber, params.ptr, cast(void*)0);
	}
	void ClientShowOverheadNumber(int NumberToShow, Vector WorldLocation, float fScreenDepth)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = NumberToShow;
		*cast(Vector*)&params[4] = WorldLocation;
		*cast(float*)&params[16] = fScreenDepth;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientShowOverheadNumber, params.ptr, cast(void*)0);
	}
	int GetCreditsForDamageAmount(int DamageAmount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCreditsForDamageAmount, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void CashForDamage(int DamageAmount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.CashForDamage, params.ptr, cast(void*)0);
	}
	void AwardTeamAssistCredits()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AwardTeamAssistCredits, cast(void*)0, cast(void*)0);
	}
	void AwardTeamRabbitAssistCredits(int Multiplier)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Multiplier;
		(cast(ScriptObject)this).ProcessEvent(Functions.AwardTeamRabbitAssistCredits, params.ptr, cast(void*)0);
	}
	void TypeKeyPressed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TypeKeyPressed, cast(void*)0, cast(void*)0);
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
	void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFOV, params.ptr, cast(void*)0);
	}
	void ServerSetClassAffordable(int BitMask)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = BitMask;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetClassAffordable, params.ptr, cast(void*)0);
	}
	int GetClassBit(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClassBit, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void TestTrainingSlot(TrObject.TR_EQUIP_POINT equipType, int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = equipType;
		*cast(int*)&params[4] = EquipId;
		(cast(ScriptObject)this).ProcessEvent(Functions.TestTrainingSlot, params.ptr, cast(void*)0);
	}
	void TestSlot(TrObject.TR_EQUIP_POINT equipType, int EquipId, bool bTraining)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = equipType;
		*cast(int*)&params[4] = EquipId;
		*cast(bool*)&params[8] = bTraining;
		(cast(ScriptObject)this).ProcessEvent(Functions.TestSlot, params.ptr, cast(void*)0);
	}
	void ServerTestSlot(TrObject.TR_EQUIP_POINT EquipId, int EquipItem)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipId;
		*cast(int*)&params[4] = EquipItem;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerTestSlot, params.ptr, cast(void*)0);
	}
	void OnDeviceContentDataClassLoaded(ScriptClass DeviceContentDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceContentDataClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDeviceContentDataClassLoaded, params.ptr, cast(void*)0);
	}
	void On3PSkinContentLoaded(ScriptClass Skin3PDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Skin3PDataClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.On3PSkinContentLoaded, params.ptr, cast(void*)0);
	}
	void On1PSkinContentLoaded(ScriptClass Skin1PDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Skin1PDataClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.On1PSkinContentLoaded, params.ptr, cast(void*)0);
	}
	void AddPending3PSkin(TrPlayerReplicationInfo TrPRI, int skinId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = TrPRI;
		*cast(int*)&params[4] = skinId;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPending3PSkin, params.ptr, cast(void*)0);
	}
	void OnClassSelectedMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnClassSelectedMainMenu, cast(void*)0, cast(void*)0);
	}
	void OnGiveCredits(TrSeqAct_GiveCredits Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_GiveCredits*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGiveCredits, params.ptr, cast(void*)0);
	}
	void OnGiveAccolade(TrSeqAct_GiveAccolade Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_GiveAccolade*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGiveAccolade, params.ptr, cast(void*)0);
	}
	void OnPlayVGSCommand(TrSeqAct_PlayVGSCommand Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_PlayVGSCommand*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayVGSCommand, params.ptr, cast(void*)0);
	}
	void OnRefreshInventory(TrSeqAct_RefreshInventory Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrSeqAct_RefreshInventory*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRefreshInventory, params.ptr, cast(void*)0);
	}
	void StartForceFocusTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartForceFocusTimer, cast(void*)0, cast(void*)0);
	}
	void StartAcquisitionFireTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartAcquisitionFireTimer, cast(void*)0, cast(void*)0);
	}
	void StartSettingBlock()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartSettingBlock, cast(void*)0, cast(void*)0);
	}
	void AutoRevertSetting()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AutoRevertSetting, cast(void*)0, cast(void*)0);
	}
	void StartSendMenuBackTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartSendMenuBackTimer, cast(void*)0, cast(void*)0);
	}
	void QueueTimer(bool bStart)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bStart;
		(cast(ScriptObject)this).ProcessEvent(Functions.QueueTimer, params.ptr, cast(void*)0);
	}
	void TVTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TVTimer, cast(void*)0, cast(void*)0);
	}
	void DealTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DealTimer, cast(void*)0, cast(void*)0);
	}
	void StartHotkeyBlock()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartHotkeyBlock, cast(void*)0, cast(void*)0);
	}
	void ClientArenaRoundEnded(int WinningTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = WinningTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientArenaRoundEnded, params.ptr, cast(void*)0);
	}
	void ClientPlayerResettingAndRespawning()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayerResettingAndRespawning, cast(void*)0, cast(void*)0);
	}
	void DestroyAllOwnedDeployables(ScriptClass DestroyIfNotOfType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DestroyIfNotOfType;
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyAllOwnedDeployables, params.ptr, cast(void*)0);
	}
	void DestroyAllOwnedMines(ScriptClass DestroyIfNotOfType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DestroyIfNotOfType;
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyAllOwnedMines, params.ptr, cast(void*)0);
	}
	void DestroyAllOwnedProjectiles()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyAllOwnedProjectiles, cast(void*)0, cast(void*)0);
	}
	void QueueBadge(int Icon, ScriptString Title, ScriptString XPReward)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Icon;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = XPReward;
		(cast(ScriptObject)this).ProcessEvent(Functions.QueueBadge, params.ptr, cast(void*)0);
	}
	void ClientQueueAccolade(int Icon, ScriptString Title, ScriptString Subtitle, bool bIsBadge)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Icon;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Subtitle;
		*cast(bool*)&params[28] = bIsBadge;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientQueueAccolade, params.ptr, cast(void*)0);
	}
	void ClassHotkeyPTH()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassHotkeyPTH, cast(void*)0, cast(void*)0);
	}
	void ClassHotkeySEN()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassHotkeySEN, cast(void*)0, cast(void*)0);
	}
	void ClassHotkeyINF()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassHotkeyINF, cast(void*)0, cast(void*)0);
	}
	void ClassHotkeySLD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassHotkeySLD, cast(void*)0, cast(void*)0);
	}
	void ClassHotkeyRDR()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassHotkeyRDR, cast(void*)0, cast(void*)0);
	}
	void ClassHotkeyTCN()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassHotkeyTCN, cast(void*)0, cast(void*)0);
	}
	void ClassHotkeyJUG()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassHotkeyJUG, cast(void*)0, cast(void*)0);
	}
	void ClassHotkeyDMB()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassHotkeyDMB, cast(void*)0, cast(void*)0);
	}
	void ClassHotkeyBRT()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassHotkeyBRT, cast(void*)0, cast(void*)0);
	}
	void QuickClasses()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.QuickClasses, cast(void*)0, cast(void*)0);
	}
	void QuickLoadouts(int ClassId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.QuickLoadouts, params.ptr, cast(void*)0);
	}
	void EndVGSInput()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndVGSInput, cast(void*)0, cast(void*)0);
	}
	void StartUILoadSummaryTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartUILoadSummaryTimer, cast(void*)0, cast(void*)0);
	}
	void OpenVehicleMenu(TrVehicleStation VehicleStation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrVehicleStation*)params.ptr = VehicleStation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenVehicleMenu, params.ptr, cast(void*)0);
	}
	void OnScoreChanged(UTTeamInfo T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTTeamInfo*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnScoreChanged, params.ptr, cast(void*)0);
	}
	void CheckFriendlyFireKills()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckFriendlyFireKills, cast(void*)0, cast(void*)0);
	}
	void CheckFriendlyFireDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckFriendlyFireDamage, cast(void*)0, cast(void*)0);
	}
	void StartRefreshPageTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartRefreshPageTimer, cast(void*)0, cast(void*)0);
	}
	void UpdateMainMenuPaperDoll_Mesh(TrObject.EContentDataType Type)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.EContentDataType*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateMainMenuPaperDoll_Mesh, params.ptr, cast(void*)0);
	}
	void ClearMainMenuPaperDoll()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearMainMenuPaperDoll, cast(void*)0, cast(void*)0);
	}
	void ClearPaperDoll()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPaperDoll, cast(void*)0, cast(void*)0);
	}
	void SpecList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecList, cast(void*)0, cast(void*)0);
	}
	void SampleVoice(ScriptClass VoiceClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = VoiceClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.SampleVoice, params.ptr, cast(void*)0);
	}
	ScriptString StripTag(ScriptString sValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.StripTag, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void SetAllowSimProjectiles(bool bAllow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAllow;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAllowSimProjectiles, params.ptr, cast(void*)0);
	}
	void ServerSetAllowSimProjectiles(bool bAllow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAllow;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetAllowSimProjectiles, params.ptr, cast(void*)0);
	}
}
