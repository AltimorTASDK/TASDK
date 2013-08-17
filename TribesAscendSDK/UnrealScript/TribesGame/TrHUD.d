module UnrealScript.TribesGame.TrHUD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.PlatformCommon.TgSupportCommands;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.GFxTrUI_TeamSelectionMenu;
import UnrealScript.TribesGame.GFxTrUI_VehicleMenu;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrHUDTeamCTFStats;
import UnrealScript.UTGame.UTGFxHudWrapper;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrDaDStats;
import UnrealScript.TribesGame.TrRabbitLeaderboard;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.UberPostProcessEffect;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrCamera_SpectatorBookmark;
import UnrealScript.TribesGame.TrCaHStats;
import UnrealScript.TribesGame.TrSpectatorHUDCache;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrVehicle;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.Engine.MaterialEffect;
import UnrealScript.TribesGame.TrScoreboard;
import UnrealScript.TribesGame.TrTeamRabbitStats;
import UnrealScript.TribesGame.TrArenaStats;

extern(C++) interface TrHUD : UTGFxHudWrapper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrHUD")()); }
	private static __gshared TrHUD mDefaultProperties;
	@property final static TrHUD DefaultProperties() { mixin(MGDPC!(TrHUD, "TrHUD TribesGame.Default__TrHUD")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDrawMarkerText;
			ScriptFunction mDrawMICMarker;
			ScriptFunction mGetEdgeScreenCoordinates;
			ScriptFunction mDrawMarker;
			ScriptFunction mDrawRotatedMarker;
			ScriptFunction mShowDebugInfo;
			ScriptFunction mCreateHUDMovie;
			ScriptFunction mShowSpectatorControls;
			ScriptFunction mSetShowScores;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mInitializeGameHUD;
			ScriptFunction mFadeInTimer;
			ScriptFunction mFade;
			ScriptFunction mPlayRoundOver;
			ScriptFunction mShowRoundEnding;
			ScriptFunction mPlayMatchOver;
			ScriptFunction mShowEnding;
			ScriptFunction mFadeInSummary;
			ScriptFunction mScaleformJoystickInputEvent;
			ScriptFunction mToggleSkiEffect;
			ScriptFunction mTogglePauseMenu;
			ScriptFunction mToggleMovieHUD;
			ScriptFunction mToggleVehicleMenu;
			ScriptFunction mToggleTeamSelectionMenu;
			ScriptFunction mSetPowerOscillation;
			ScriptFunction mAddUpdateToCombatLog;
			ScriptFunction mAddToPromptPanel;
			ScriptFunction mAddToPromptPanelTime;
			ScriptFunction mClearPromptPanel;
			ScriptFunction mAddToHeroStatus;
			ScriptFunction mClearHeroStatus;
			ScriptFunction mClearPromptPanelMessage;
			ScriptFunction mUpdateVGSMenu;
			ScriptFunction mHideVGSMenu;
			ScriptFunction mAddToHelpText;
			ScriptFunction mClearHelpText;
			ScriptFunction mAddUpdateToKillMessage;
			ScriptFunction mAddFlyingIcon;
			ScriptFunction mOnSpectate;
			ScriptFunction mCreateSpectatorHUDCache;
			ScriptFunction mClearSpectatorHUDCache;
			ScriptFunction mHideHUDElements;
			ScriptFunction mShowHUDPlayerSpawning;
			ScriptFunction mShowHUDPlayerAlive;
			ScriptFunction mShowCenterHUDElements;
			ScriptFunction mUpdateRespawnText;
			ScriptFunction mUpdateRespawnTimer;
			ScriptFunction mUpdateHUDCredits;
			ScriptFunction mTeamScoreboardShow;
			ScriptFunction mRabbitScoreboardShow;
			ScriptFunction mTeamScoreboardUpdateSlot;
			ScriptFunction mRabbitScoreboardUpdateSlot;
			ScriptFunction mTeamScoreboardUpdateTeamScore;
			ScriptFunction mTeamScoreboardUpdateTime;
			ScriptFunction mRabbitScoreboardUpdateTime;
			ScriptFunction mTeamScoreboardActivePlayer;
			ScriptFunction mRabbitScoreboardActivePlayer;
			ScriptFunction mResolutionChanged;
			ScriptFunction mRestoreHUDState;
			ScriptFunction mHideMenus;
			ScriptFunction mRemoveMovies;
			ScriptFunction mCompleteVehicleMenuClose;
			ScriptFunction mCompleteTeamSelectionMenuClose;
			ScriptFunction mClearCrosshairOnFriendly;
			ScriptFunction mCheckCrosshairOnFriendly;
			ScriptFunction mDrawColoredMarkerText;
			ScriptFunction mDrawSmallText;
			ScriptFunction mDrawHealthBar;
			ScriptFunction mPostRender;
			ScriptFunction mGetRemainingFriendlyGeneratorRestoreTime;
			ScriptFunction mGetRemainingEnemyGeneratorRestoreTime;
			ScriptFunction mUpdateSkiEffect;
			ScriptFunction mUpdatePickupFlashEffect;
			ScriptFunction mPulsePickupFlashEffect;
			ScriptFunction mUpdateInvulnerableEfect;
			ScriptFunction mUpdateShieldEffect;
			ScriptFunction mPulseShieldEffect;
			ScriptFunction mUpdateJammerEffect;
			ScriptFunction mUpdateFadeEffect;
			ScriptFunction mFumbleFlag;
			ScriptFunction mUpdateFumbledFlagEffect;
			ScriptFunction mWhiteout;
			ScriptFunction mClearWhiteout;
			ScriptFunction mUpdateWhiteoutEffect;
			ScriptFunction mLocalizedMessage;
			ScriptFunction mChatMessageReceived;
			ScriptFunction mStripTag;
			ScriptFunction mSendLocalMessageToGlobalAlert;
			ScriptFunction mSendLocalMessageToChat;
			ScriptFunction mSetPlayerClassObjects;
			ScriptFunction mHideGlobalAlert;
			ScriptFunction mKickVoteMessage;
			ScriptFunction mEnableGameTypeHUD;
			ScriptFunction mShowSpectatorPlayer;
			ScriptFunction mHideSpectatorPlayer;
			ScriptFunction mUpdateSpectatorPlayerPanel;
			ScriptFunction mShowSpectatorVehicle;
			ScriptFunction mHideSpectatorVehicle;
			ScriptFunction mUpdateSpectatorVehiclePanel;
			ScriptFunction mShowSpectatorBookmark;
			ScriptFunction mHideSpectatorBookmark;
			ScriptFunction mUpdateSpectatorBookmarkPanel;
			ScriptFunction mShowSpectatorObjectivePanel;
			ScriptFunction mHideSpectatorObjectivePanel;
			ScriptFunction mUpdateSpectatorObjectivePanel;
			ScriptFunction mShowSpectatorFloatCameraPanel;
			ScriptFunction mHideSpectatorFloatCameraPanel;
			ScriptFunction mUpdateSpectatorFloatCameraPanel;
			ScriptFunction mHideAllSpectatorPanels;
			ScriptFunction mOnViewTargetChange;
			ScriptFunction mTestNumber;
			ScriptFunction mAddOverheadNumber;
			ScriptFunction mUpdateOverheadNumbers;
			ScriptFunction mTick;
			ScriptFunction mPostRenderFor;
			ScriptFunction mPlayAward;
			ScriptFunction mQueueAccolade;
			ScriptFunction mCheckQueuedAccolades;
			ScriptFunction mRunQueuedAccoladesTimer;
			ScriptFunction mClearQueuedAccoladesTimer;
			ScriptFunction mDeployableReplicated;
			ScriptFunction mMineReplicated;
			ScriptFunction mUpdateOwnedItems;
		}
		public @property static final
		{
			ScriptFunction DrawMarkerText() { mixin(MGF!("mDrawMarkerText", "Function TribesGame.TrHUD.DrawMarkerText")()); }
			ScriptFunction DrawMICMarker() { mixin(MGF!("mDrawMICMarker", "Function TribesGame.TrHUD.DrawMICMarker")()); }
			ScriptFunction GetEdgeScreenCoordinates() { mixin(MGF!("mGetEdgeScreenCoordinates", "Function TribesGame.TrHUD.GetEdgeScreenCoordinates")()); }
			ScriptFunction DrawMarker() { mixin(MGF!("mDrawMarker", "Function TribesGame.TrHUD.DrawMarker")()); }
			ScriptFunction DrawRotatedMarker() { mixin(MGF!("mDrawRotatedMarker", "Function TribesGame.TrHUD.DrawRotatedMarker")()); }
			ScriptFunction ShowDebugInfo() { mixin(MGF!("mShowDebugInfo", "Function TribesGame.TrHUD.ShowDebugInfo")()); }
			ScriptFunction CreateHUDMovie() { mixin(MGF!("mCreateHUDMovie", "Function TribesGame.TrHUD.CreateHUDMovie")()); }
			ScriptFunction ShowSpectatorControls() { mixin(MGF!("mShowSpectatorControls", "Function TribesGame.TrHUD.ShowSpectatorControls")()); }
			ScriptFunction SetShowScores() { mixin(MGF!("mSetShowScores", "Function TribesGame.TrHUD.SetShowScores")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrHUD.PostBeginPlay")()); }
			ScriptFunction InitializeGameHUD() { mixin(MGF!("mInitializeGameHUD", "Function TribesGame.TrHUD.InitializeGameHUD")()); }
			ScriptFunction FadeInTimer() { mixin(MGF!("mFadeInTimer", "Function TribesGame.TrHUD.FadeInTimer")()); }
			ScriptFunction Fade() { mixin(MGF!("mFade", "Function TribesGame.TrHUD.Fade")()); }
			ScriptFunction PlayRoundOver() { mixin(MGF!("mPlayRoundOver", "Function TribesGame.TrHUD.PlayRoundOver")()); }
			ScriptFunction ShowRoundEnding() { mixin(MGF!("mShowRoundEnding", "Function TribesGame.TrHUD.ShowRoundEnding")()); }
			ScriptFunction PlayMatchOver() { mixin(MGF!("mPlayMatchOver", "Function TribesGame.TrHUD.PlayMatchOver")()); }
			ScriptFunction ShowEnding() { mixin(MGF!("mShowEnding", "Function TribesGame.TrHUD.ShowEnding")()); }
			ScriptFunction FadeInSummary() { mixin(MGF!("mFadeInSummary", "Function TribesGame.TrHUD.FadeInSummary")()); }
			ScriptFunction ScaleformJoystickInputEvent() { mixin(MGF!("mScaleformJoystickInputEvent", "Function TribesGame.TrHUD.ScaleformJoystickInputEvent")()); }
			ScriptFunction ToggleSkiEffect() { mixin(MGF!("mToggleSkiEffect", "Function TribesGame.TrHUD.ToggleSkiEffect")()); }
			ScriptFunction TogglePauseMenu() { mixin(MGF!("mTogglePauseMenu", "Function TribesGame.TrHUD.TogglePauseMenu")()); }
			ScriptFunction ToggleMovieHUD() { mixin(MGF!("mToggleMovieHUD", "Function TribesGame.TrHUD.ToggleMovieHUD")()); }
			ScriptFunction ToggleVehicleMenu() { mixin(MGF!("mToggleVehicleMenu", "Function TribesGame.TrHUD.ToggleVehicleMenu")()); }
			ScriptFunction ToggleTeamSelectionMenu() { mixin(MGF!("mToggleTeamSelectionMenu", "Function TribesGame.TrHUD.ToggleTeamSelectionMenu")()); }
			ScriptFunction SetPowerOscillation() { mixin(MGF!("mSetPowerOscillation", "Function TribesGame.TrHUD.SetPowerOscillation")()); }
			ScriptFunction AddUpdateToCombatLog() { mixin(MGF!("mAddUpdateToCombatLog", "Function TribesGame.TrHUD.AddUpdateToCombatLog")()); }
			ScriptFunction AddToPromptPanel() { mixin(MGF!("mAddToPromptPanel", "Function TribesGame.TrHUD.AddToPromptPanel")()); }
			ScriptFunction AddToPromptPanelTime() { mixin(MGF!("mAddToPromptPanelTime", "Function TribesGame.TrHUD.AddToPromptPanelTime")()); }
			ScriptFunction ClearPromptPanel() { mixin(MGF!("mClearPromptPanel", "Function TribesGame.TrHUD.ClearPromptPanel")()); }
			ScriptFunction AddToHeroStatus() { mixin(MGF!("mAddToHeroStatus", "Function TribesGame.TrHUD.AddToHeroStatus")()); }
			ScriptFunction ClearHeroStatus() { mixin(MGF!("mClearHeroStatus", "Function TribesGame.TrHUD.ClearHeroStatus")()); }
			ScriptFunction ClearPromptPanelMessage() { mixin(MGF!("mClearPromptPanelMessage", "Function TribesGame.TrHUD.ClearPromptPanelMessage")()); }
			ScriptFunction UpdateVGSMenu() { mixin(MGF!("mUpdateVGSMenu", "Function TribesGame.TrHUD.UpdateVGSMenu")()); }
			ScriptFunction HideVGSMenu() { mixin(MGF!("mHideVGSMenu", "Function TribesGame.TrHUD.HideVGSMenu")()); }
			ScriptFunction AddToHelpText() { mixin(MGF!("mAddToHelpText", "Function TribesGame.TrHUD.AddToHelpText")()); }
			ScriptFunction ClearHelpText() { mixin(MGF!("mClearHelpText", "Function TribesGame.TrHUD.ClearHelpText")()); }
			ScriptFunction AddUpdateToKillMessage() { mixin(MGF!("mAddUpdateToKillMessage", "Function TribesGame.TrHUD.AddUpdateToKillMessage")()); }
			ScriptFunction AddFlyingIcon() { mixin(MGF!("mAddFlyingIcon", "Function TribesGame.TrHUD.AddFlyingIcon")()); }
			ScriptFunction OnSpectate() { mixin(MGF!("mOnSpectate", "Function TribesGame.TrHUD.OnSpectate")()); }
			ScriptFunction CreateSpectatorHUDCache() { mixin(MGF!("mCreateSpectatorHUDCache", "Function TribesGame.TrHUD.CreateSpectatorHUDCache")()); }
			ScriptFunction ClearSpectatorHUDCache() { mixin(MGF!("mClearSpectatorHUDCache", "Function TribesGame.TrHUD.ClearSpectatorHUDCache")()); }
			ScriptFunction HideHUDElements() { mixin(MGF!("mHideHUDElements", "Function TribesGame.TrHUD.HideHUDElements")()); }
			ScriptFunction ShowHUDPlayerSpawning() { mixin(MGF!("mShowHUDPlayerSpawning", "Function TribesGame.TrHUD.ShowHUDPlayerSpawning")()); }
			ScriptFunction ShowHUDPlayerAlive() { mixin(MGF!("mShowHUDPlayerAlive", "Function TribesGame.TrHUD.ShowHUDPlayerAlive")()); }
			ScriptFunction ShowCenterHUDElements() { mixin(MGF!("mShowCenterHUDElements", "Function TribesGame.TrHUD.ShowCenterHUDElements")()); }
			ScriptFunction UpdateRespawnText() { mixin(MGF!("mUpdateRespawnText", "Function TribesGame.TrHUD.UpdateRespawnText")()); }
			ScriptFunction UpdateRespawnTimer() { mixin(MGF!("mUpdateRespawnTimer", "Function TribesGame.TrHUD.UpdateRespawnTimer")()); }
			ScriptFunction UpdateHUDCredits() { mixin(MGF!("mUpdateHUDCredits", "Function TribesGame.TrHUD.UpdateHUDCredits")()); }
			ScriptFunction TeamScoreboardShow() { mixin(MGF!("mTeamScoreboardShow", "Function TribesGame.TrHUD.TeamScoreboardShow")()); }
			ScriptFunction RabbitScoreboardShow() { mixin(MGF!("mRabbitScoreboardShow", "Function TribesGame.TrHUD.RabbitScoreboardShow")()); }
			ScriptFunction TeamScoreboardUpdateSlot() { mixin(MGF!("mTeamScoreboardUpdateSlot", "Function TribesGame.TrHUD.TeamScoreboardUpdateSlot")()); }
			ScriptFunction RabbitScoreboardUpdateSlot() { mixin(MGF!("mRabbitScoreboardUpdateSlot", "Function TribesGame.TrHUD.RabbitScoreboardUpdateSlot")()); }
			ScriptFunction TeamScoreboardUpdateTeamScore() { mixin(MGF!("mTeamScoreboardUpdateTeamScore", "Function TribesGame.TrHUD.TeamScoreboardUpdateTeamScore")()); }
			ScriptFunction TeamScoreboardUpdateTime() { mixin(MGF!("mTeamScoreboardUpdateTime", "Function TribesGame.TrHUD.TeamScoreboardUpdateTime")()); }
			ScriptFunction RabbitScoreboardUpdateTime() { mixin(MGF!("mRabbitScoreboardUpdateTime", "Function TribesGame.TrHUD.RabbitScoreboardUpdateTime")()); }
			ScriptFunction TeamScoreboardActivePlayer() { mixin(MGF!("mTeamScoreboardActivePlayer", "Function TribesGame.TrHUD.TeamScoreboardActivePlayer")()); }
			ScriptFunction RabbitScoreboardActivePlayer() { mixin(MGF!("mRabbitScoreboardActivePlayer", "Function TribesGame.TrHUD.RabbitScoreboardActivePlayer")()); }
			ScriptFunction ResolutionChanged() { mixin(MGF!("mResolutionChanged", "Function TribesGame.TrHUD.ResolutionChanged")()); }
			ScriptFunction RestoreHUDState() { mixin(MGF!("mRestoreHUDState", "Function TribesGame.TrHUD.RestoreHUDState")()); }
			ScriptFunction HideMenus() { mixin(MGF!("mHideMenus", "Function TribesGame.TrHUD.HideMenus")()); }
			ScriptFunction RemoveMovies() { mixin(MGF!("mRemoveMovies", "Function TribesGame.TrHUD.RemoveMovies")()); }
			ScriptFunction CompleteVehicleMenuClose() { mixin(MGF!("mCompleteVehicleMenuClose", "Function TribesGame.TrHUD.CompleteVehicleMenuClose")()); }
			ScriptFunction CompleteTeamSelectionMenuClose() { mixin(MGF!("mCompleteTeamSelectionMenuClose", "Function TribesGame.TrHUD.CompleteTeamSelectionMenuClose")()); }
			ScriptFunction ClearCrosshairOnFriendly() { mixin(MGF!("mClearCrosshairOnFriendly", "Function TribesGame.TrHUD.ClearCrosshairOnFriendly")()); }
			ScriptFunction CheckCrosshairOnFriendly() { mixin(MGF!("mCheckCrosshairOnFriendly", "Function TribesGame.TrHUD.CheckCrosshairOnFriendly")()); }
			ScriptFunction DrawColoredMarkerText() { mixin(MGF!("mDrawColoredMarkerText", "Function TribesGame.TrHUD.DrawColoredMarkerText")()); }
			ScriptFunction DrawSmallText() { mixin(MGF!("mDrawSmallText", "Function TribesGame.TrHUD.DrawSmallText")()); }
			ScriptFunction DrawHealthBar() { mixin(MGF!("mDrawHealthBar", "Function TribesGame.TrHUD.DrawHealthBar")()); }
			ScriptFunction PostRender() { mixin(MGF!("mPostRender", "Function TribesGame.TrHUD.PostRender")()); }
			ScriptFunction GetRemainingFriendlyGeneratorRestoreTime() { mixin(MGF!("mGetRemainingFriendlyGeneratorRestoreTime", "Function TribesGame.TrHUD.GetRemainingFriendlyGeneratorRestoreTime")()); }
			ScriptFunction GetRemainingEnemyGeneratorRestoreTime() { mixin(MGF!("mGetRemainingEnemyGeneratorRestoreTime", "Function TribesGame.TrHUD.GetRemainingEnemyGeneratorRestoreTime")()); }
			ScriptFunction UpdateSkiEffect() { mixin(MGF!("mUpdateSkiEffect", "Function TribesGame.TrHUD.UpdateSkiEffect")()); }
			ScriptFunction UpdatePickupFlashEffect() { mixin(MGF!("mUpdatePickupFlashEffect", "Function TribesGame.TrHUD.UpdatePickupFlashEffect")()); }
			ScriptFunction PulsePickupFlashEffect() { mixin(MGF!("mPulsePickupFlashEffect", "Function TribesGame.TrHUD.PulsePickupFlashEffect")()); }
			ScriptFunction UpdateInvulnerableEfect() { mixin(MGF!("mUpdateInvulnerableEfect", "Function TribesGame.TrHUD.UpdateInvulnerableEfect")()); }
			ScriptFunction UpdateShieldEffect() { mixin(MGF!("mUpdateShieldEffect", "Function TribesGame.TrHUD.UpdateShieldEffect")()); }
			ScriptFunction PulseShieldEffect() { mixin(MGF!("mPulseShieldEffect", "Function TribesGame.TrHUD.PulseShieldEffect")()); }
			ScriptFunction UpdateJammerEffect() { mixin(MGF!("mUpdateJammerEffect", "Function TribesGame.TrHUD.UpdateJammerEffect")()); }
			ScriptFunction UpdateFadeEffect() { mixin(MGF!("mUpdateFadeEffect", "Function TribesGame.TrHUD.UpdateFadeEffect")()); }
			ScriptFunction FumbleFlag() { mixin(MGF!("mFumbleFlag", "Function TribesGame.TrHUD.FumbleFlag")()); }
			ScriptFunction UpdateFumbledFlagEffect() { mixin(MGF!("mUpdateFumbledFlagEffect", "Function TribesGame.TrHUD.UpdateFumbledFlagEffect")()); }
			ScriptFunction Whiteout() { mixin(MGF!("mWhiteout", "Function TribesGame.TrHUD.Whiteout")()); }
			ScriptFunction ClearWhiteout() { mixin(MGF!("mClearWhiteout", "Function TribesGame.TrHUD.ClearWhiteout")()); }
			ScriptFunction UpdateWhiteoutEffect() { mixin(MGF!("mUpdateWhiteoutEffect", "Function TribesGame.TrHUD.UpdateWhiteoutEffect")()); }
			ScriptFunction LocalizedMessage() { mixin(MGF!("mLocalizedMessage", "Function TribesGame.TrHUD.LocalizedMessage")()); }
			ScriptFunction ChatMessageReceived() { mixin(MGF!("mChatMessageReceived", "Function TribesGame.TrHUD.ChatMessageReceived")()); }
			ScriptFunction StripTag() { mixin(MGF!("mStripTag", "Function TribesGame.TrHUD.StripTag")()); }
			ScriptFunction SendLocalMessageToGlobalAlert() { mixin(MGF!("mSendLocalMessageToGlobalAlert", "Function TribesGame.TrHUD.SendLocalMessageToGlobalAlert")()); }
			ScriptFunction SendLocalMessageToChat() { mixin(MGF!("mSendLocalMessageToChat", "Function TribesGame.TrHUD.SendLocalMessageToChat")()); }
			ScriptFunction SetPlayerClassObjects() { mixin(MGF!("mSetPlayerClassObjects", "Function TribesGame.TrHUD.SetPlayerClassObjects")()); }
			ScriptFunction HideGlobalAlert() { mixin(MGF!("mHideGlobalAlert", "Function TribesGame.TrHUD.HideGlobalAlert")()); }
			ScriptFunction KickVoteMessage() { mixin(MGF!("mKickVoteMessage", "Function TribesGame.TrHUD.KickVoteMessage")()); }
			ScriptFunction EnableGameTypeHUD() { mixin(MGF!("mEnableGameTypeHUD", "Function TribesGame.TrHUD.EnableGameTypeHUD")()); }
			ScriptFunction ShowSpectatorPlayer() { mixin(MGF!("mShowSpectatorPlayer", "Function TribesGame.TrHUD.ShowSpectatorPlayer")()); }
			ScriptFunction HideSpectatorPlayer() { mixin(MGF!("mHideSpectatorPlayer", "Function TribesGame.TrHUD.HideSpectatorPlayer")()); }
			ScriptFunction UpdateSpectatorPlayerPanel() { mixin(MGF!("mUpdateSpectatorPlayerPanel", "Function TribesGame.TrHUD.UpdateSpectatorPlayerPanel")()); }
			ScriptFunction ShowSpectatorVehicle() { mixin(MGF!("mShowSpectatorVehicle", "Function TribesGame.TrHUD.ShowSpectatorVehicle")()); }
			ScriptFunction HideSpectatorVehicle() { mixin(MGF!("mHideSpectatorVehicle", "Function TribesGame.TrHUD.HideSpectatorVehicle")()); }
			ScriptFunction UpdateSpectatorVehiclePanel() { mixin(MGF!("mUpdateSpectatorVehiclePanel", "Function TribesGame.TrHUD.UpdateSpectatorVehiclePanel")()); }
			ScriptFunction ShowSpectatorBookmark() { mixin(MGF!("mShowSpectatorBookmark", "Function TribesGame.TrHUD.ShowSpectatorBookmark")()); }
			ScriptFunction HideSpectatorBookmark() { mixin(MGF!("mHideSpectatorBookmark", "Function TribesGame.TrHUD.HideSpectatorBookmark")()); }
			ScriptFunction UpdateSpectatorBookmarkPanel() { mixin(MGF!("mUpdateSpectatorBookmarkPanel", "Function TribesGame.TrHUD.UpdateSpectatorBookmarkPanel")()); }
			ScriptFunction ShowSpectatorObjectivePanel() { mixin(MGF!("mShowSpectatorObjectivePanel", "Function TribesGame.TrHUD.ShowSpectatorObjectivePanel")()); }
			ScriptFunction HideSpectatorObjectivePanel() { mixin(MGF!("mHideSpectatorObjectivePanel", "Function TribesGame.TrHUD.HideSpectatorObjectivePanel")()); }
			ScriptFunction UpdateSpectatorObjectivePanel() { mixin(MGF!("mUpdateSpectatorObjectivePanel", "Function TribesGame.TrHUD.UpdateSpectatorObjectivePanel")()); }
			ScriptFunction ShowSpectatorFloatCameraPanel() { mixin(MGF!("mShowSpectatorFloatCameraPanel", "Function TribesGame.TrHUD.ShowSpectatorFloatCameraPanel")()); }
			ScriptFunction HideSpectatorFloatCameraPanel() { mixin(MGF!("mHideSpectatorFloatCameraPanel", "Function TribesGame.TrHUD.HideSpectatorFloatCameraPanel")()); }
			ScriptFunction UpdateSpectatorFloatCameraPanel() { mixin(MGF!("mUpdateSpectatorFloatCameraPanel", "Function TribesGame.TrHUD.UpdateSpectatorFloatCameraPanel")()); }
			ScriptFunction HideAllSpectatorPanels() { mixin(MGF!("mHideAllSpectatorPanels", "Function TribesGame.TrHUD.HideAllSpectatorPanels")()); }
			ScriptFunction OnViewTargetChange() { mixin(MGF!("mOnViewTargetChange", "Function TribesGame.TrHUD.OnViewTargetChange")()); }
			ScriptFunction TestNumber() { mixin(MGF!("mTestNumber", "Function TribesGame.TrHUD.TestNumber")()); }
			ScriptFunction AddOverheadNumber() { mixin(MGF!("mAddOverheadNumber", "Function TribesGame.TrHUD.AddOverheadNumber")()); }
			ScriptFunction UpdateOverheadNumbers() { mixin(MGF!("mUpdateOverheadNumbers", "Function TribesGame.TrHUD.UpdateOverheadNumbers")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrHUD.Tick")()); }
			ScriptFunction PostRenderFor() { mixin(MGF!("mPostRenderFor", "Function TribesGame.TrHUD.PostRenderFor")()); }
			ScriptFunction PlayAward() { mixin(MGF!("mPlayAward", "Function TribesGame.TrHUD.PlayAward")()); }
			ScriptFunction QueueAccolade() { mixin(MGF!("mQueueAccolade", "Function TribesGame.TrHUD.QueueAccolade")()); }
			ScriptFunction CheckQueuedAccolades() { mixin(MGF!("mCheckQueuedAccolades", "Function TribesGame.TrHUD.CheckQueuedAccolades")()); }
			ScriptFunction RunQueuedAccoladesTimer() { mixin(MGF!("mRunQueuedAccoladesTimer", "Function TribesGame.TrHUD.RunQueuedAccoladesTimer")()); }
			ScriptFunction ClearQueuedAccoladesTimer() { mixin(MGF!("mClearQueuedAccoladesTimer", "Function TribesGame.TrHUD.ClearQueuedAccoladesTimer")()); }
			ScriptFunction DeployableReplicated() { mixin(MGF!("mDeployableReplicated", "Function TribesGame.TrHUD.DeployableReplicated")()); }
			ScriptFunction MineReplicated() { mixin(MGF!("mMineReplicated", "Function TribesGame.TrHUD.MineReplicated")()); }
			ScriptFunction UpdateOwnedItems() { mixin(MGF!("mUpdateOwnedItems", "Function TribesGame.TrHUD.UpdateOwnedItems")()); }
		}
	}
	static struct Constants
	{
		enum
		{
			THR_SPINFUSOR = 1,
			THR_SMG = 2,
			THR_RIFLE = 3,
			THR_LOCKED_ON = 4,
			THR_CROSSBOW = 5,
			THR_FLAME_THROWER = 6,
			THR_CHAIN_GUN = 7,
			THR_MISSILE = 8,
			THR_NANITE = 9,
			THR_SHOTGUN = 10,
			THR_UNKNOWN = 11,
			THR_LASER = 12,
			THR_CH_V13 = 13,
			THR_SCOPE = 14,
			THR_STANDARD = 15,
			THR_GRENADE_LAUNCHER = 16,
			THR_MELEE = 17,
			THR_SHRIKE = 18,
			THR_FREE_SPECTATOR = 19,
			THR_RED_DOT = 20,
			THR_BXT1 = 21,
			THR_PHASERIFLE = 22,
			THR_SAP20 = 23,
			THR_PLASMAGUN = 24,
			HAE_KILL_STREAK_LEVEL_1 = 1,
			HAE_KILL_STREAK_LEVEL_2 = 2,
			HAE_KILL_STREAK_LEVEL_3 = 3,
			HAE_KILL_STREAK_LEVEL_4 = 4,
			HAE_KILL_STREAK_LEVEL_5 = 5,
			TRHUD_PACK_STEALTH = 1,
			TRHUD_PACK_DAMAGE = 2,
			TRHUD_PACK_OMNI = 3,
			TRHUD_PACK_ERECHARGE = 4,
			TRHUD_PACK_AIRTURRET = 5,
			TRHUD_PACK_BLINK = 6,
			TRHUD_PACK_ENERGY = 7,
			TRHUD_PACK_SHIELD = 8,
			TRHUD_PACK_JAMMER = 9,
			TRHUD_PACK_LIGHTTURRET = 10,
			TRHUD_PACK_FORCEFIELD = 11,
			TRHUD_PACK_WALLTURRET = 12,
			TRHUD_PACK_REGEN = 13,
			TRHUD_PACK_DROPJAMMER = 14,
			TRHUD_TBD1 = 15,
			TRHUD_TBD2 = 16,
			TRHUD_TBD3 = 17,
			TRHUD_BELT_STICKYGREN = 18,
			TRHUD_BELT_FRAG = 19,
			TRHUD_BELT_CLAYMORE = 20,
			TRHUD_BELT_NITRON = 21,
			TRHUD_BELT_MOTIONALARM = 22,
			TRHUD_BELT_SPIKEGREN = 23,
			TRHUD_BELT_WHITEOUT = 24,
			TRHUD_BELT_APGREN = 25,
			TRHUD_BELT_STGREN = 26,
			TRHUD_BELT_PRISMMINES = 27,
			TRHUD_BELT_FLARE = 28,
			TRHUD_BELT_EMPGREN = 29,
			TRHUD_BELT_MINES = 30,
			TRHUD_BELT_DISKTOSS = 31,
			TRHUD_TBD4 = 32,
			TRHUD_TBD5 = 33,
			TRHUD_MEDAL_ASSIST = 34,
			TRHUD_CLAYMOREMINE = 35,
			TRHUD_PRISMMINE = 36,
			TRHUD_LIGHTTURRET = 37,
			TRHUD_AATURRET = 38,
			TRHUD_MOTIONSENSOR = 39,
			TRHUD_MINES = 40,
			TRHUD_FORCESHIELD = 41,
			TRHUD_DROPJAMMER = 42,
			TRHUD_GENERATOR = 43,
			TRHUD_SKIING = 44,
			TRHUD_MEDAL_KILLINGSPREE = 45,
			TRHUD_MEDAL_KILLINGRAMPAGE = 46,
			TRHUD_MEDAL_UNSTOPPABLE = 47,
			TRHUD_MEDAL_RELENTLESS = 48,
			TRHUD_MEDAL_THESLAYER = 49,
			TRHUD_MEDAL_SNIPINGSPREE = 50,
			TRHUD_MEDAL_MARKSMAN = 51,
			TRHUD_MEDAL_SHARPSHOOTER = 52,
			TRHUD_MEDAL_AIRMAIL = 53,
			TRHUD_MEDAL_DEMOLITIONSEXPERT = 54,
			TRHUD_MEDAL_HURTLOCKER = 55,
			TRHUD_MEDAL_CLASSICSPREE = 56,
			TRHUD_MEDAL_DISKJOCKEY = 57,
			TRHUD_MEDAL_TRIBALFANATIC = 58,
			TRHUD_MEDAL_DOUBLEKILL = 59,
			TRHUD_MEDAL_TRIPLEKILL = 60,
			TRHUD_MEDAL_QUATRAKILL = 61,
			TRHUD_MEDAL_ULTRAKILL = 62,
			TRHUD_MEDAL_TEAMKILL = 63,
			TRHUD_MEDAL_NOJOY = 64,
			TRHUD_MEDAL_REVENGE = 65,
			TRHUD_MEDAL_AFTERMATH = 66,
			TRHUD_MEDAL_FIRSTBLOOD = 67,
			TRHUD_MEDAL_BLUEPLATE = 68,
			TRHUD_MEDAL_STICKYKILL = 69,
			TRHUD_MEDAL_HEADSHOT = 70,
			TRHUD_MEDAL_ARTILLERYSHOT = 71,
			TRHUD_MEDAL_MARTIALART = 72,
			TRHUD_MEDAL_SQUISH = 73,
			TRHUD_MEDAL_FLAGGOLD = 74,
			TRHUD_MEDAL_FLAGSILVER = 75,
			TRHUD_MEDAL_FLAGBRONZE = 75,
			TRHUD_MEDAL_FLAGLLAMA = 75,
			TRHUD_MEDAL_GENERHATER = 76,
			TRHUD_MEDAL_RABBITHUNTER = 77,
			TRHUD_MEDAL_CAERBANNOG = 78,
			TRHUD_MEDAL_FINALBLOW = 79,
			TRHUD_MEDAL_GENDEFENSE = 76,
			TRHUD_MEDAL_FLAGDEFENSE = 75,
			TRHUD_MEDAL_VDESTROY = 73,
			TRHUD_MEDAL_HOTAIR = 284,
			TRICON_RANK_1 = 80,
			TRICON_RANK_2 = 81,
			TRICON_RANK_3 = 82,
			TRICON_RANK_4 = 83,
			TRICON_RANK_5 = 84,
			TRICON_RANK_6 = 85,
			TRICON_RANK_7 = 86,
			TRICON_RANK_8 = 87,
			TRICON_RANK_9 = 88,
			TRICON_RANK_10 = 89,
			TRICON_RANK_11 = 90,
			TRICON_RANK_12 = 91,
			TRICON_RANK_13 = 92,
			TRICON_RANK_14 = 93,
			TRICON_RANK_15 = 94,
			TRICON_RANK_16 = 95,
			TRICON_RANK_17 = 96,
			TRICON_RANK_18 = 97,
			TRICON_RANK_19 = 98,
			TRICON_RANK_20 = 99,
			TRICON_RANK_21 = 100,
			TRICON_RANK_22 = 101,
			TRICON_RANK_23 = 102,
			TRICON_RANK_24 = 103,
			TRICON_RANK_25 = 104,
			TRICON_RANK_26 = 105,
			TRICON_RANK_27 = 106,
			TRICON_RANK_28 = 107,
			TRICON_RANK_29 = 108,
			TRICON_RANK_30 = 109,
			TRICON_RANK_31 = 110,
			TRICON_RANK_32 = 111,
			TRICON_RANK_33 = 112,
			TRICON_RANK_34 = 113,
			TRICON_RANK_35 = 114,
			TRICON_RANK_36 = 115,
			TRICON_RANK_37 = 116,
			TRICON_RANK_38 = 117,
			TRICON_RANK_39 = 118,
			TRICON_RANK_40 = 119,
			TRICON_RANK_41 = 120,
			TRICON_RANK_42 = 121,
			TRICON_RANK_43 = 122,
			TRICON_RANK_44 = 123,
			TRICON_RANK_45 = 124,
			TRICON_RANK_46 = 125,
			TRICON_RANK_47 = 126,
			TRICON_RANK_48 = 127,
			TRICON_RANK_49 = 128,
			TRICON_RANK_50 = 129,
			TRICON_KILLTYPE_EXPLOSIVE = 130,
			TRICON_KILLTYPE_STICKY = 131,
			TRICON_KILLTYPE_SQUISH = 132,
			TRICON_KILLTYPE_MELEE = 133,
			TRICON_KILLTYPE_FALLING = 134,
			TRICON_KILLTYPE_VEHICLE = 135,
			TRICON_KILLTYPE_BULLET = 136,
			TRICON_KILLTYPE_SNIPER = 137,
			TRICON_KILLTYPE_BASE_TURRET = 138,
			TRICON_KILLTYPE_HEADSHOT = 139,
			TRICON_KILLTYPE_GENERIC = 140,
			TRICON_KILLTYPE_SPINFUSOR = 141,
			TRICON_KILLTYPE_TURRET = 142,
			TRICON_ACCOLADE_BASE_DESTROY = 143,
			TRICON_ACCOLADE_BASE_REPAIR = 144,
			TRICON_ACCOLADE_MIRACLE = 145,
			TRICON_ACCOLADE_ULTRAKILLNORED = 146,
			TRICON_ACCOLADE_NOTAMONGEQUALS = 147,
			TRICON_ACCOLADE_EXPLOSIVESPREE = 148,
			TRICON_ACCOLADE_ULTRAFASTGRAB = 149,
			TRICON_ACCOLADE_ONEMANARMY = 150,
			TRICON_ACCOLADE_GAMEWINNER = 151,
			TRICON_ACCOLADE_UNITEDWESTAND = 152,
			TRICON_ACCOLADE_DOUBLEDOWN = 153,
			TRICON_ACCOLADE_FASTFLAGGRAB = 154,
			TRICON_ACCOLADE_SHRIKEDOWN = 155,
			TRICON_ACCOLADE_GRAVCYCLEDOWN = 156,
			TRICON_ACCOLADE_BEOWULFDOWN = 157,
			TRICON_ACCOLADE_FINALBLOW = 158,
			TRICON_ACCOLADE_BENCHEM = 159,
			TRICON_ACCOLADE_LASTMANSTANDING = 160,
			TRICON_ACCOLADE_TRIBALHONOR = 161,
			TRICON_ACCOLADE_FLAGKILLER = 162,
			TRICON_ACCOLADE_GAMECOMPLETE = 163,
			TRICON_ACCOLADE_FLAGDEFENSE = 164,
			TRICON_ACCOLADE_GENERATORDEFENSE = 165,
			TRICON_ACCOLADE_LLAMAGRAB = 166,
			TRICON_ACCOLADE_EGRAB = 167,
			TRICON_ACCOLADE_TURRETDESTROYED = 168,
			TRICON_ACCOLADE_ALTFLAGCARRY = 169,
			TRICON_ACCOLADE_HOLDTHELINE = 281,
			TRICON_ACCOLADE_CAPTUREANDHOLD = 282,
			TRICON_BADGE_FLAGDEFENSE_4 = 170,
			TRICON_BADGE_FLAGDEFENSE_3 = 171,
			TRICON_BADGE_FLAGDEFENSE_2 = 172,
			TRICON_BADGE_FLAGDEFENSE_1 = 173,
			TRICON_BADGE_OPERATOR_4 = 174,
			TRICON_BADGE_OPERATOR_3 = 175,
			TRICON_BADGE_OPERATOR_2 = 176,
			TRICON_BADGE_OPERATOR_1 = 177,
			TRICON_BADGE_CALLINKILLS_4 = 178,
			TRICON_BADGE_CALLINKILLS_3 = 179,
			TRICON_BADGE_CALLINKILLS_2 = 180,
			TRICON_BADGE_CALLINKILLS_1 = 181,
			TRICON_BADGE_MELEEKILLS_4 = 182,
			TRICON_BADGE_MELEEKILLS_3 = 183,
			TRICON_BADGE_MELEEKILLS_2 = 184,
			TRICON_BADGE_MELEEKILLS_1 = 185,
			TRICON_BADGE_ONEMANARMY_4 = 186,
			TRICON_BADGE_ONEMANARMY_3 = 187,
			TRICON_BADGE_ONEMANARMY_2 = 188,
			TRICON_BADGE_ONEMANARMY_1 = 189,
			TRICON_BADGE_FLAGCAPPER_4 = 190,
			TRICON_BADGE_FLAGCAPPER_3 = 191,
			TRICON_BADGE_FLAGCAPPER_2 = 192,
			TRICON_BADGE_FLAGCAPPER_1 = 193,
			TRICON_BADGE_TOUROFDUTY_4 = 194,
			TRICON_BADGE_TOUROFDUTY_3 = 195,
			TRICON_BADGE_TOUROFDUTY_2 = 196,
			TRICON_BADGE_TOUROFDUTY_1 = 197,
			TRICON_BADGE_MULTIKILL_4 = 198,
			TRICON_BADGE_MULTIKILL_3 = 199,
			TRICON_BADGE_MULTIKILL_2 = 200,
			TRICON_BADGE_MULTIKILL_1 = 201,
			TRICON_BADGE_COMBATSTAR_4 = 202,
			TRICON_BADGE_COMBATSTAR_3 = 203,
			TRICON_BADGE_COMBATSTAR_2 = 204,
			TRICON_BADGE_COMBATSTAR_1 = 205,
			TRICON_BADGE_CROSSCOUNTRY_4 = 206,
			TRICON_BADGE_CROSSCOUNTRY_3 = 207,
			TRICON_BADGE_CROSSCOUNTRY_2 = 208,
			TRICON_BADGE_CROSSCOUNTRY_1 = 209,
			TRICON_BADGE_POWERPLAYER_4 = 210,
			TRICON_BADGE_POWERPLAYER_3 = 211,
			TRICON_BADGE_POWERPLAYER_2 = 212,
			TRICON_BADGE_POWERPLAYER_1 = 213,
			TRICON_BADGE_DEMOMAN_4 = 214,
			TRICON_BADGE_DEMOMAN_3 = 215,
			TRICON_BADGE_DEMOMAN_2 = 216,
			TRICON_BADGE_DEMOMAN_1 = 217,
			TRICON_BADGE_SPEEDRUNNER_4 = 218,
			TRICON_BADGE_SPEEDRUNNER_3 = 219,
			TRICON_BADGE_SPEEDRUNNER_2 = 220,
			TRICON_BADGE_SPEEDRUNNER_1 = 221,
			TRICON_BADGE_GOODDRIVER_4 = 222,
			TRICON_BADGE_GOODDRIVER_3 = 223,
			TRICON_BADGE_GOODDRIVER_2 = 224,
			TRICON_BADGE_GOODDRIVER_1 = 225,
			TRICON_BADGE_PURPLEHEART_4 = 226,
			TRICON_BADGE_PURPLEHEART_3 = 227,
			TRICON_BADGE_PURPLEHEART_2 = 228,
			TRICON_BADGE_PURPLEHEART_1 = 229,
			TRICON_BADGE_HAPPENSTOUSALL = 230,
			TRICON_BADGE_INVSTATION = 231,
			TRICON_BADGE_ANTIVEHICLE_4 = 232,
			TRICON_BADGE_ANTIVEHICLE_3 = 233,
			TRICON_BADGE_ANTIVEHICLE_2 = 234,
			TRICON_BADGE_ANTIVEHICLE_1 = 235,
			TRICON_BADGE_UTILITYBELT_4 = 236,
			TRICON_BADGE_UTILITYBELT_3 = 237,
			TRICON_BADGE_UTILITYBELT_2 = 238,
			TRICON_BADGE_UTILITYBELT_1 = 239,
			TRICON_BADGE_ONCALL_4 = 240,
			TRICON_BADGE_ONCALL_3 = 241,
			TRICON_BADGE_ONCALL_2 = 242,
			TRICON_BADGE_ONCALL_1 = 243,
			TRICON_BADGE_SUPPORT_4 = 244,
			TRICON_BADGE_SUPPORT_3 = 245,
			TRICON_BADGE_SUPPORT_2 = 246,
			TRICON_BADGE_SUPPORT_1 = 247,
			TRICON_BADGE_MARKSMAN_4 = 248,
			TRICON_BADGE_MARKSMAN_3 = 249,
			TRICON_BADGE_MARKSMAN_2 = 250,
			TRICON_BADGE_MARKSMAN_1 = 251,
			TRICON_BADGE_ASSISTOR_4 = 252,
			TRICON_BADGE_ASSISTOR_3 = 253,
			TRICON_BADGE_ASSISTOR_2 = 254,
			TRICON_BADGE_ASSISTOR_1 = 255,
			TRICON_BADGE_BUILDER_4 = 256,
			TRICON_BADGE_BUILDER_3 = 257,
			TRICON_BADGE_BUILDER_2 = 258,
			TRICON_BADGE_BUILDER_1 = 259,
			TRICON_BADGE_GOINGFAST_4 = 260,
			TRICON_BADGE_GOINGFAST_3 = 261,
			TRICON_BADGE_GOINGFAST_2 = 262,
			TRICON_BADGE_GOINGFAST_1 = 263,
			RANK_XP_1 = 0,
			RANK_XP_2 = 1350,
			RANK_XP_3 = 2781,
			RANK_XP_4 = 4298,
			RANK_XP_5 = 5906,
			RANK_XP_6 = 11212,
			RANK_XP_7 = 16836,
			RANK_XP_8 = 22798,
			RANK_XP_9 = 31741,
			RANK_XP_10 = 41130,
			RANK_XP_11 = 50990,
			RANK_XP_12 = 61342,
			RANK_XP_13 = 76870,
			RANK_XP_14 = 93020,
			RANK_XP_15 = 109815,
			RANK_XP_16 = 127283,
			RANK_XP_17 = 145449,
			RANK_XP_18 = 172698,
			RANK_XP_19 = 200765,
			RANK_XP_20 = 229673,
			RANK_XP_21 = 259449,
			RANK_XP_22 = 290118,
			RANK_XP_23 = 321707,
			RANK_XP_24 = 369091,
			RANK_XP_25 = 417896,
			RANK_XP_26 = 468166,
			RANK_XP_27 = 519943,
			RANK_XP_28 = 573274,
			RANK_XP_29 = 628205,
			RANK_XP_30 = 684783,
			RANK_XP_31 = 743059,
			RANK_XP_32 = 803084,
			RANK_XP_33 = 864909,
			RANK_XP_34 = 928589,
			RANK_XP_35 = 994179,
			RANK_XP_36 = 1061737,
			RANK_XP_37 = 1131321,
			RANK_XP_38 = 1202994,
			RANK_XP_39 = 1276816,
			RANK_XP_40 = 1352853,
			RANK_XP_41 = 1431171,
			RANK_XP_42 = 1511839,
			RANK_XP_43 = 1594926,
			RANK_XP_44 = 1680507,
			RANK_XP_45 = 1768654,
			RANK_XP_46 = 1859447,
			RANK_XP_47 = 1952963,
			RANK_XP_48 = 2049284,
			RANK_XP_49 = 2148495,
			RANK_XP_50 = 2250682,
			ACCOLADE_TYPE_MISC = 0,
			ACCOLADE_TYPE_MULTIKILL = 1,
			ACCOLADE_TYPE_KILLSTREAK = 2,
			TRICON_PERK_ICON_WIP = 1,
			TRICON_PERK_BONUS_KILL_CREDITS = 1,
			TRICON_PERK_STICKY_HANDS = 2,
			TRICON_PERK_REDUCED_VEHICLE_COST = 3,
			TRICON_PERK_REDUCED_SELF_DAMAGE = 4,
			TRICON_PERK_REDUCED_RUN_OVER = 5,
			TRICON_PERK_REDUCED_BASE_UPGRADE_COST = 6,
			TRICON_PERK_REDUCED_FALL_DMG = 7,
			TRICON_PERK_REDUCED_AIR_VEHICLE_COST = 8,
			TRICON_PERK_TRAP_DETECTION = 9,
			TRICON_PERK_PICKUP_ENERGY_HEALTH = 10,
			TRICON_PERK_MELEE_FLAG_DROP = 11,
			TRICON_PERK_EXTRA_MINES = 12,
			TRICON_PERK_EXTRA_ENERGY = 13,
			TRICON_PERK_EXTRA_GRENADE_PICKUP = 14,
			TRICON_PERK_EXTRA_AMMO = 15,
			TRICON_PERK_EXTRA_GRENADE = 16,
			TRICON_PERK_BEOWULF_HEALTH_INCREASE = 17,
			TRICON_PERK_EJECTION_SEAT = 18,
			TRICON_PERK_ORBITAL_STRIKE = 19,
			TRICON_PERK_REDUCED_MELEE_DAMAGE = 20,
			TRICON_PERK_MELEE_BACKSTAB = 21,
			TRICON_PERK_DEMOLITIONS = 22,
			TRICON_PERK_SQUIRRELLY = 23,
			TRICON_PERK_STEALTHY = 24,
			TRICON_PERK_ULTRA_CAPACITOR = 25,
			TRICON_PERK_DETERMINATION = 26,
			TRICON_SKILL_SPEED = 1,
			TRICON_SKILL_ENERGY = 2,
			TRICON_SKILL_PING = 3,
			TRICON_SKILL_AMMO = 4,
			TRICON_SKILL_ANTI_ARMOR = 5,
			TRICON_SKILL_GRENADE = 6,
			TRICON_SKILL_RADIUS = 7,
			TRICON_SKILL_HEALTH = 8,
			TRICON_SKILL_BOOT = 9,
			TRICON_SKILL_TIMER = 10,
			TRICON_CLASS_SENTINEL = 1,
			TRICON_CLASS_PATHFINDER = 2,
			TRICON_CLASS_JUMPER = 3,
			TRICON_CLASS_INFILTRATOR = 4,
			TRICON_CLASS_WARDER = 30,
			TRICON_CLASS_TECHNICIAN = 31,
			TRICON_CLASS_SOLDIER = 32,
			TRICON_CLASS_SCRAMBLER = 33,
			TRICON_CLASS_RANGER = 34,
			TRICON_CLASS_RAIDER = 35,
			TRICON_CLASS_ENGINEER = 36,
			TRICON_CLASS_ROOK = 60,
			TRICON_CLASS_MARAUDER = 61,
			TRICON_CLASS_JUGGERNAUT = 62,
			TRICON_CLASS_DOOMBRINGER = 63,
			TRICON_CLASS_BRUTE = 64,
			TRICON_CLASS_WIP = 88,
			ICON_UPGRADE_NONE = 0,
			MOD_TYPE_NONE = 1,
			MOD_TYPE_HEALTH = 2,
			MOD_TYPE_MASSPCT = 3,
			MOD_TYPE_RADARLINK = 4,
			MOD_TYPE_FLAGREACH = 5,
			MOD_TYPE_BUILDUPPCT = 6,
			MOD_TYPE_CLOTHESLINE = 7,
			MOD_TYPE_STICKYHANDS = 8,
			MOD_TYPE_MAXSKISPEED = 9,
			MOD_TYPE_EXTRAENERGY = 10,
			MOD_TYPE_EJECTIONSEAT = 11,
			MOD_TYPE_SELFDAMAGEPCT = 12,
			MOD_TYPE_REPAIRRATEPCT = 13,
			MOD_TYPE_EXTRAMINESOUT = 14,
			MOD_TYPE_VEHICLEEXTRAHEALTH = 15,
			MOD_TYPE_GROUNDSPEEDPCT = 16,
			MOD_TYPE_ENERGYDRAINPCT = 17,
			MOD_TYPE_UPGRADECOSTPCT = 18,
			MOD_TYPE_CANDETECTTRAPS = 19,
			MOD_TYPE_SPLATDAMAGEPCT = 20,
			MOD_TYPE_WEAPONSWITCHPCT = 21,
			MOD_TYPE_POTENTIALENERGY = 22,
			MOD_TYPE_MAXJETTINGSPEED = 23,
			MOD_TYPE_CREDITSFROMKILLS = 24,
			MOD_TYPE_TERMINALSKISPEED = 25,
			MOD_TYPE_MAXSKICONTROLPCT = 26,
			MOD_TYPE_HASDETERMINATION = 27,
			MOD_TYPE_DEPLOYABLEHEALTH = 28,
			MOD_TYPE_EXTRAOFFHANDAMMO = 29,
			MOD_TYPE_EXTRAPRIMARYAMMO = 30,
			MOD_TYPE_PRIMARYRELOADPCT = 31,
			MOD_TYPE_SENSORDISTANCEPCT = 32,
			MOD_TYPE_PACKENERGYCOSTPCT = 33,
			MOD_TYPE_AMMOFROMPICKUPPCT = 34,
			MOD_TYPE_TIMETOREGENENERGY = 35,
			MOD_TYPE_SECONDARYRELOADPCT = 36,
			MOD_TYPE_EXTRASECONDARYAMMO = 37,
			MOD_TYPE_ENERGYREGENRATEPCT = 38,
			MOD_TYPE_HEALTHREGENRATEPCT = 39,
			MOD_TYPE_DEPLOYABLERANGEPCT = 40,
			MOD_TYPE_JAMMERPACKRADIUSPCT = 41,
			MOD_TYPE_BLINKPACKPOTENCYPCT = 42,
			MOD_TYPE_PEAKSKICONTROLSPEED = 43,
			MOD_TYPE_CANCALLINSUPPLYDROP = 44,
			MOD_TYPE_EXTRADEPLOYABLESOUT = 45,
			MOD_TYPE_HEALTHFROMPICKUPPCT = 46,
			MOD_TYPE_ENERGYFROMPICKUPPCT = 47,
			MOD_TYPE_TERMINALJETTINGSPEED = 48,
			MOD_TYPE_TIMETOREGENHEALTHPCT = 49,
			MOD_TYPE_VEHICLECOSTPCT = 50,
			MOD_TYPE_SKICONTROLSIGMASQUARE = 51,
			MOD_TYPE_RECEIVEMELEEDAMAGEPCT = 52,
			MOD_TYPE_VICTIMDROPFLAGONMELEE = 53,
			MOD_TYPE_PRIMARYWEAPONRANGEPCT = 54,
			MOD_TYPE_OFFHANDDAMAGERADIUSPCT = 55,
			MOD_TYPE_TURRETACQUIRETARGETPCT = 56,
			MOD_TYPE_WHITEOUTINTERPSPEEDPCT = 57,
			MOD_TYPE_BACKSTABMELEEDAMAGEPCT = 58,
			MOD_TYPE_MAXSTOPPINGDISTANCEPCT = 59,
			MOD_TYPE_SECONDARYWEAPONRANGEPCT = 60,
			MOD_TYPE_EXTRAGRENADESFROMPICKUP = 61,
			MOD_TYPE_SHIELDPACKEFFECTIVENESS = 62,
			MOD_TYPE_STEALTHPACKPULSETIMEPCT = 63,
			MOD_TYPE_PRIMARYINCREASEDCLIPSIZE = 64,
			MOD_TYPE_EXTRACREDITSFROMBELTKILLS = 65,
			MOD_TYPE_TURRETARMORPENETRATIONPCT = 66,
			MOD_TYPE_SECONDARYINCREASEDCLIPSIZE = 67,
			MOD_TYPE_OFFHANDARMORPENETRATIONPCT = 68,
			MOD_TYPE_PRIMARYARMORPENETRATIONPCT = 69,
			MOD_TYPE_RUNOVERDAMAGEPROTECTIONPCT = 70,
			MOD_TYPE_PRIMARYWEAPONENERGYCOSTPCT = 71,
			MOD_TYPE_ACQUIRETIMEBYENEMYTURRETPCT = 72,
			MOD_TYPE_SECONDARYARMORPENETRATIONPCT = 73,
			MOD_TYPE_VEHICLEEXTRAENERGY = 74,
			MOD_TYPE_AMMOPICKUPREACH = 75,
			MOD_TYPE_VEHICLEPASSENGERDMGPROTPCT = 76,
			MOD_TYPE_DAMAGEREPAIRENEMYOBJECTIVES = 77,
			MOD_TYPE_POTENTIALENERGYFALLDAMAGE = 78,
			MOD_TYPE_FASTERTHROWBELTBUFFPCT = 79,
			MOD_TYPE_IGNOREGRENADESECONDARYONSELF = 80,
			MOD_TYPE_POTENTIALENERGYDMGTRANSFERPCT = 81,
			MOD_TYPE_FLAGREACHTIER = 82,
			MOD_TYPE_SONICPUNCH = 83,
			MOD_TYPE_SONICPUNCHDIST = 84,
			MOD_TYPE_SONICPUNCHKNOCKBACK = 85,
			MOD_TYPE_RAGE = 86,
			MOD_TYPE_RAGEENERGYREGEN = 87,
			MOD_TYPE_RAGETIMELENGTH = 88,
			MOD_TYPE_RAGEHEALTHRESTOREPCT = 89,
			MOD_TYPE_IGNOREPULSESTEALTHTIME = 90,
			MOD_TYPE_RAGEMASSREDUCTION = 91,
			MOD_TYPE_REPAIRDEPLOYABLERATEPCT = 92,
		}
	}
	struct QueuedAccolade
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrHUD.QueuedAccolade")()); }
		@property final
		{
			auto ref
			{
				ScriptString Subtitle() { mixin(MGPS!(ScriptString, 20)()); }
				ScriptString Title() { mixin(MGPS!(ScriptString, 8)()); }
				int Icon() { mixin(MGPS!(int, 0)()); }
			}
			bool bIsBadge() { mixin(MGBPS!(4, 0x1)()); }
			bool bIsBadge(bool val) { mixin(MSBPS!(4, 0x1)()); }
		}
	}
	struct OverheadNumber
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrHUD.OverheadNumber")()); }
		@property final auto ref
		{
			float CurrentScale() { mixin(MGPS!(float, 36)()); }
			UObject.Color CurrentColor() { mixin(MGPS!(UObject.Color, 32)()); }
			UObject.Vector4 WorldSpaceLocation() { mixin(MGPS!(UObject.Vector4, 16)()); }
			float RemainingTime() { mixin(MGPS!(float, 4)()); }
			int NumberValue() { mixin(MGPS!(int, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			TrSpectatorHUDCache m_SpectatorHUDCache() { mixin(MGPC!(TrSpectatorHUDCache, 2424)()); }
			GFxTrUI_TeamSelectionMenu TeamSelectionMenuMovie() { mixin(MGPC!(GFxTrUI_TeamSelectionMenu, 2044)()); }
			TrPlayerController TrPlayerOwner() { mixin(MGPC!(TrPlayerController, 2096)()); }
			MaterialInstanceConstant MarkerBaseMIC() { mixin(MGPC!(MaterialInstanceConstant, 1632)()); }
			UObject.LinearColor MarkerColorFriendly() { mixin(MGPC!(UObject.LinearColor, 1668)()); }
			UObject.LinearColor MarkerColorEnemy() { mixin(MGPC!(UObject.LinearColor, 1636)()); }
			Texture2D BaseDeployableLevel1() { mixin(MGPC!(Texture2D, 1820)()); }
			Texture2D BaseDeployableLevel2() { mixin(MGPC!(Texture2D, 1824)()); }
			Texture2D BaseDeployableLevel3() { mixin(MGPC!(Texture2D, 1828)()); }
			Texture2D BaseDeployableLevel4() { mixin(MGPC!(Texture2D, 1832)()); }
			Texture2D BaseDeployableLevel5() { mixin(MGPC!(Texture2D, 1836)()); }
			Texture2D BaseNoPower() { mixin(MGPC!(Texture2D, 1816)()); }
			Texture2D DeployableTurret() { mixin(MGPC!(Texture2D, 1980)()); }
			Texture2D BaseTurretLevel1() { mixin(MGPC!(Texture2D, 1920)()); }
			Texture2D BaseTurretLevel2() { mixin(MGPC!(Texture2D, 1924)()); }
			Texture2D BaseTurretLevel3() { mixin(MGPC!(Texture2D, 1928)()); }
			Texture2D BaseTurretLevel4() { mixin(MGPC!(Texture2D, 1932)()); }
			Texture2D BaseTurretLevel5() { mixin(MGPC!(Texture2D, 1936)()); }
			Texture2D BaseTurretLevel1_Down() { mixin(MGPC!(Texture2D, 1940)()); }
			Texture2D BaseTurretLevel2_Down() { mixin(MGPC!(Texture2D, 1944)()); }
			Texture2D BaseTurretLevel3_Down() { mixin(MGPC!(Texture2D, 1948)()); }
			Texture2D BaseTurretLevel4_Down() { mixin(MGPC!(Texture2D, 1952)()); }
			Texture2D BaseTurretLevel5_Down() { mixin(MGPC!(Texture2D, 1956)()); }
			int m_nPotentialSeekingTargetHUDRotationRate() { mixin(MGPC!(int, 2276)()); }
			float m_fPotentialSeekingTargetHUDZoomTime() { mixin(MGPC!(float, 2280)()); }
			float m_fSeekingTargetHUDZoomTime() { mixin(MGPC!(float, 2300)()); }
			Texture2D HUDMarkerMissileLocked() { mixin(MGPC!(Texture2D, 1784)()); }
			float m_fSeekingTargetHUDZoomEnd() { mixin(MGPC!(float, 2308)()); }
			float m_fSeekingTargetHUDZoomOpacityStart() { mixin(MGPC!(float, 2312)()); }
			float m_fSeekingTargetHUDZoomOpacityEnd() { mixin(MGPC!(float, 2316)()); }
			float m_fSeekingTargetHUDZoomStart() { mixin(MGPC!(float, 2304)()); }
			float m_fInitialSeekingTargetYaw() { mixin(MGPC!(float, 2320)()); }
			Texture2D HUDMarkerMissileLocking() { mixin(MGPC!(Texture2D, 1780)()); }
			Texture2D HUDMarkerMissileTargetLocked() { mixin(MGPC!(Texture2D, 1792)()); }
			Texture2D HUDMarkerMissileTarget() { mixin(MGPC!(Texture2D, 1788)()); }
			float m_fPotentialSeekingTargetHUDZoomOpacityStart() { mixin(MGPC!(float, 2292)()); }
			float m_fPotentialSeekingTargetHUDZoomOpacityEnd() { mixin(MGPC!(float, 2296)()); }
			float m_fPotentialSeekingTargetHUDZoomStart() { mixin(MGPC!(float, 2284)()); }
			float m_fPotentialSeekingTargetHUDZoomEnd() { mixin(MGPC!(float, 2288)()); }
			float m_fCaratPlacementX() { mixin(MGPC!(float, 2348)()); }
			float m_fCaratPlacementY() { mixin(MGPC!(float, 2352)()); }
			float m_fMarker2DDistance() { mixin(MGPC!(float, 2488)()); }
			float m_fCurrentWhiteoutValue() { mixin(MGPC!(float, 2232)()); }
			float TeamPlayerInfoMaxDist() { mixin(MGPC!(float, 1576)()); }
			Texture2D DeployableSensor() { mixin(MGPC!(Texture2D, 1972)()); }
			Texture2D MarkerLight() { mixin(MGPC!(Texture2D, 1716)()); }
			Texture2D MarkerMedium() { mixin(MGPC!(Texture2D, 1720)()); }
			Texture2D MarkerHeavy() { mixin(MGPC!(Texture2D, 1724)()); }
			Texture2D FlagHeldLight() { mixin(MGPC!(Texture2D, 1756)()); }
			Texture2D FlagHeldMedium() { mixin(MGPC!(Texture2D, 1760)()); }
			Texture2D FlagHeldHeavy() { mixin(MGPC!(Texture2D, 1764)()); }
			UObject.LinearColor MarkerColorEnemy_IsFriend() { mixin(MGPC!(UObject.LinearColor, 1652)()); }
			float m_fNamePlacementX() { mixin(MGPC!(float, 2340)()); }
			float m_fNamePlacementY() { mixin(MGPC!(float, 2344)()); }
			float m_fHealthBarPlacementX() { mixin(MGPC!(float, 2324)()); }
			float m_fHealthBarPlacementY() { mixin(MGPC!(float, 2328)()); }
			float m_fHealthBarWidth() { mixin(MGPC!(float, 2332)()); }
			float m_fHealthBarHeight() { mixin(MGPC!(float, 2336)()); }
			UObject.LinearColor MarkerColorFriendly_IsFriend() { mixin(MGPC!(UObject.LinearColor, 1684)()); }
			GfxTrHud m_GFxHud() { mixin(MGPC!(GfxTrHud, 2076)()); }
			int FriendlyChatColorIdx() { mixin(MGPC!(int, 2004)()); }
			UObject.Color FriendlyChatColor() { mixin(MGPC!(UObject.Color, 2016)()); }
			int EnemyChatColorIdx() { mixin(MGPC!(int, 2000)()); }
			UObject.Color EnemyChatColor() { mixin(MGPC!(UObject.Color, 2020)()); }
			int WhisperChatColorIdx() { mixin(MGPC!(int, 2012)()); }
			UObject.Color WhisperChatColor() { mixin(MGPC!(UObject.Color, 2028)()); }
			int InfoChatColorIdx() { mixin(MGPC!(int, 1996)()); }
			Texture2D FlagEmptyBase() { mixin(MGPC!(Texture2D, 1772)()); }
			Texture2D BaseGeneratorLevel1() { mixin(MGPC!(Texture2D, 1840)()); }
			Texture2D BaseGeneratorLevel1_Down() { mixin(MGPC!(Texture2D, 1860)()); }
			Texture2D DeployableJammer() { mixin(MGPC!(Texture2D, 1964)()); }
			Texture2D DeployableShield() { mixin(MGPC!(Texture2D, 1976)()); }
			Texture2D BaseSensorLevel1() { mixin(MGPC!(Texture2D, 1880)()); }
			Texture2D BaseSensorLevel2() { mixin(MGPC!(Texture2D, 1884)()); }
			Texture2D BaseSensorLevel3() { mixin(MGPC!(Texture2D, 1888)()); }
			Texture2D BaseSensorLevel4() { mixin(MGPC!(Texture2D, 1892)()); }
			Texture2D BaseSensorLevel5() { mixin(MGPC!(Texture2D, 1896)()); }
			Texture2D BaseSensorLevel1_Down() { mixin(MGPC!(Texture2D, 1900)()); }
			Texture2D BaseSensorLevel2_Down() { mixin(MGPC!(Texture2D, 1904)()); }
			Texture2D BaseSensorLevel3_Down() { mixin(MGPC!(Texture2D, 1908)()); }
			Texture2D BaseSensorLevel4_Down() { mixin(MGPC!(Texture2D, 1912)()); }
			Texture2D BaseSensorLevel5_Down() { mixin(MGPC!(Texture2D, 1916)()); }
			Texture2D HUDMarkerLaserTargetAimPoint() { mixin(MGPC!(Texture2D, 1800)()); }
			Texture2D HUDMarkerLaserTarget() { mixin(MGPC!(Texture2D, 1796)()); }
			UObject.Color LaserTargetTracePossible() { mixin(MGPC!(UObject.Color, 1592)()); }
			UObject.Color LaserTargetTraceImprobable() { mixin(MGPC!(UObject.Color, 1596)()); }
			Texture2D AmmoDropPickup() { mixin(MGPC!(Texture2D, 1984)()); }
			Texture2D FlagAtBase() { mixin(MGPC!(Texture2D, 1748)()); }
			Texture2D FlagDropped() { mixin(MGPC!(Texture2D, 1752)()); }
			ScriptArray!(TrDeployable) m_OwnedDeployables() { mixin(MGPC!(ScriptArray!(TrDeployable), 1600)()); }
			ScriptArray!(TrProj_Mine) m_OwnedMines() { mixin(MGPC!(ScriptArray!(TrProj_Mine), 1612)()); }
			ScriptArray!(TrHUD.QueuedAccolade) QueuedAccolades() { mixin(MGPC!(ScriptArray!(TrHUD.QueuedAccolade), 2428)()); }
			ScriptArray!(TrHUD.OverheadNumber) m_OverheadNumbers() { mixin(MGPC!(ScriptArray!(TrHUD.OverheadNumber), 2440)()); }
			float m_fOverheadNumberColorizeTimeMax() { mixin(MGPC!(float, 2484)()); }
			float m_fOverheadNumberColorizeTimeMin() { mixin(MGPC!(float, 2480)()); }
			float m_fOverheadNumberMaxScaleAmount() { mixin(MGPC!(float, 2476)()); }
			float m_fOverheadNumberScaleTime() { mixin(MGPC!(float, 2472)()); }
			float m_fOverheadNumberFadeTime() { mixin(MGPC!(float, 2468)()); }
			float m_fOverheadNumberTotalTime() { mixin(MGPC!(float, 2464)()); }
			UObject.Color m_OverheadNumberColorMax() { mixin(MGPC!(UObject.Color, 2460)()); }
			UObject.Color m_OverheadNumberColorMin() { mixin(MGPC!(UObject.Color, 2456)()); }
			float m_fOverheadNumberZSpeed() { mixin(MGPC!(float, 2452)()); }
			UberPostProcessEffect m_UperPPEffect() { mixin(MGPC!(UberPostProcessEffect, 2420)()); }
			Canvas.FontRenderInfo m_nNameFontRenderInfo() { mixin(MGPC!(Canvas.FontRenderInfo, 2380)()); }
			float m_fMineDeployerNamePlacementY() { mixin(MGPC!(float, 2376)()); }
			float m_fMineDeployerNamePlacementX() { mixin(MGPC!(float, 2372)()); }
			float m_fMineNamePlacementY() { mixin(MGPC!(float, 2368)()); }
			float m_fMineNamePlacementX() { mixin(MGPC!(float, 2364)()); }
			float m_fVehicleNamePlacementY() { mixin(MGPC!(float, 2360)()); }
			float m_fVehicleNamePlacementX() { mixin(MGPC!(float, 2356)()); }
			MaterialInstanceConstant AwardMIC() { mixin(MGPC!(MaterialInstanceConstant, 2272)()); }
			float AwardTimelineLoc() { mixin(MGPC!(float, 2268)()); }
			float AwardFadeInScale() { mixin(MGPC!(float, 2264)()); }
			float AwardTimelineLength() { mixin(MGPC!(float, 2260)()); }
			float AwardBaseHeight() { mixin(MGPC!(float, 2256)()); }
			float AwardBaseSize() { mixin(MGPC!(float, 2252)()); }
			float m_fCurrentFumbledFlagValue() { mixin(MGPC!(float, 2248)()); }
			float m_FumbledFlagFadeOutSpeed() { mixin(MGPC!(float, 2244)()); }
			MaterialInstanceConstant m_FumbledFlagMaterialInstance() { mixin(MGPC!(MaterialInstanceConstant, 2240)()); }
			MaterialEffect m_FumbledFlagMaterialEffect() { mixin(MGPC!(MaterialEffect, 2236)()); }
			float m_WhiteoutFadeOutSpeed() { mixin(MGPC!(float, 2228)()); }
			MaterialInstanceConstant m_WhiteoutMaterialInstance() { mixin(MGPC!(MaterialInstanceConstant, 2224)()); }
			MaterialEffect m_WhiteoutMaterialEffect() { mixin(MGPC!(MaterialEffect, 2220)()); }
			float m_VignetteValueMultiplier() { mixin(MGPC!(float, 2216)()); }
			float m_VignetteFadeTarget() { mixin(MGPC!(float, 2212)()); }
			float m_VignetteFadeSpeed() { mixin(MGPC!(float, 2208)()); }
			MaterialInstanceConstant m_VignetteMaterialInstance() { mixin(MGPC!(MaterialInstanceConstant, 2204)()); }
			MaterialEffect m_VignetteMaterialEffect() { mixin(MGPC!(MaterialEffect, 2200)()); }
			int LastChangeResCheckTime() { mixin(MGPC!(int, 2196)()); }
			int LastChangeResTime() { mixin(MGPC!(int, 2192)()); }
			int LastCreditTotal() { mixin(MGPC!(int, 2188)()); }
			float m_JammerPackFadeOutSpeed() { mixin(MGPC!(float, 2184)()); }
			MaterialInstanceConstant m_JammerPackMaterialInstance() { mixin(MGPC!(MaterialInstanceConstant, 2180)()); }
			MaterialEffect m_JammerPackMaterialEffect() { mixin(MGPC!(MaterialEffect, 2176)()); }
			float m_ShieldHitFadeOutSpeed() { mixin(MGPC!(float, 2172)()); }
			float m_ShieldHitFadeInSpeed() { mixin(MGPC!(float, 2168)()); }
			float m_ShieldFadeOutSpeed() { mixin(MGPC!(float, 2164)()); }
			MaterialInstanceConstant m_ShieldMaterialInstance() { mixin(MGPC!(MaterialInstanceConstant, 2160)()); }
			MaterialEffect m_ShieldMaterialEffect() { mixin(MGPC!(MaterialEffect, 2156)()); }
			float m_InvulnerableFadeOutSpeed() { mixin(MGPC!(float, 2152)()); }
			MaterialInstanceConstant m_InvulnerableMaterialInstance() { mixin(MGPC!(MaterialInstanceConstant, 2148)()); }
			MaterialEffect m_InvulnerableMaterialEffect() { mixin(MGPC!(MaterialEffect, 2144)()); }
			float m_PickupFlashFadeOutSpeed() { mixin(MGPC!(float, 2140)()); }
			MaterialInstanceConstant m_PickupFlashMaterialInstance() { mixin(MGPC!(MaterialInstanceConstant, 2136)()); }
			MaterialEffect m_PickupFlashMaterialEffect() { mixin(MGPC!(MaterialEffect, 2132)()); }
			float m_fSkiEffectStrobeTime() { mixin(MGPC!(float, 2128)()); }
			float m_fSkiEffectFadeOutTime() { mixin(MGPC!(float, 2124)()); }
			float m_fSkiEffectFadeInTime() { mixin(MGPC!(float, 2120)()); }
			float m_fSkiEffectMinIntensity() { mixin(MGPC!(float, 2116)()); }
			float m_fSkiEffectMaxIntensity() { mixin(MGPC!(float, 2112)()); }
			float m_fControllerSkiSpeed() { mixin(MGPC!(float, 2108)()); }
			MaterialInstanceConstant m_SkiEffectMaterialInstance() { mixin(MGPC!(MaterialInstanceConstant, 2104)()); }
			MaterialEffect m_SkiEffect() { mixin(MGPC!(MaterialEffect, 2100)()); }
			ScriptClass m_GameClass() { mixin(MGPC!(ScriptClass, 2092)()); }
			ScriptClass m_MusicManagerClass() { mixin(MGPC!(ScriptClass, 2088)()); }
			float m_fEnemyGeneratorRestoreTime() { mixin(MGPC!(float, 2084)()); }
			float m_fFriendlyGeneratorRestoreTime() { mixin(MGPC!(float, 2080)()); }
			TrCaHStats CaHStats() { mixin(MGPC!(TrCaHStats, 2072)()); }
			TrDaDStats DaDStats() { mixin(MGPC!(TrDaDStats, 2068)()); }
			TrArenaStats ArenaStats() { mixin(MGPC!(TrArenaStats, 2064)()); }
			TrTeamRabbitStats TeamRabbitStats() { mixin(MGPC!(TrTeamRabbitStats, 2060)()); }
			TrHUDTeamCTFStats HUDTeamCTFStats() { mixin(MGPC!(TrHUDTeamCTFStats, 2056)()); }
			TrRabbitLeaderboard RabbitLeaderboard() { mixin(MGPC!(TrRabbitLeaderboard, 2052)()); }
			TrScoreboard Scoreboard() { mixin(MGPC!(TrScoreboard, 2048)()); }
			GFxTrUI_VehicleMenu VehicleMenuMovie() { mixin(MGPC!(GFxTrUI_VehicleMenu, 2040)()); }
			Material MapMaterialReference() { mixin(MGPC!(Material, 2036)()); }
			MaterialInstanceConstant LowAmmoMic() { mixin(MGPC!(MaterialInstanceConstant, 2032)()); }
			UObject.Color TeamChatColor() { mixin(MGPC!(UObject.Color, 2024)()); }
			int SelfChatColorIdx() { mixin(MGPC!(int, 2008)()); }
			Texture2D SpottedTarget_MotionMine() { mixin(MGPC!(Texture2D, 1992)()); }
			Texture2D SpottedTarget() { mixin(MGPC!(Texture2D, 1988)()); }
			Texture2D DeployableMine() { mixin(MGPC!(Texture2D, 1968)()); }
			Texture2D DeployableClaymore() { mixin(MGPC!(Texture2D, 1960)()); }
			Texture2D BaseGeneratorLevel5_Down() { mixin(MGPC!(Texture2D, 1876)()); }
			Texture2D BaseGeneratorLevel4_Down() { mixin(MGPC!(Texture2D, 1872)()); }
			Texture2D BaseGeneratorLevel3_Down() { mixin(MGPC!(Texture2D, 1868)()); }
			Texture2D BaseGeneratorLevel2_Down() { mixin(MGPC!(Texture2D, 1864)()); }
			Texture2D BaseGeneratorLevel5() { mixin(MGPC!(Texture2D, 1856)()); }
			Texture2D BaseGeneratorLevel4() { mixin(MGPC!(Texture2D, 1852)()); }
			Texture2D BaseGeneratorLevel3() { mixin(MGPC!(Texture2D, 1848)()); }
			Texture2D BaseGeneratorLevel2() { mixin(MGPC!(Texture2D, 1844)()); }
			Texture2D BaseVehicleStation() { mixin(MGPC!(Texture2D, 1812)()); }
			Texture2D BaseRepairStation() { mixin(MGPC!(Texture2D, 1808)()); }
			Texture2D BaseInventoryStation() { mixin(MGPC!(Texture2D, 1804)()); }
			Texture2D HUDMarkerMissileIncoming() { mixin(MGPC!(Texture2D, 1776)()); }
			Texture2D FlagHeldVehicle() { mixin(MGPC!(Texture2D, 1768)()); }
			Texture2D VehicleMarkerNoDriver() { mixin(MGPC!(Texture2D, 1744)()); }
			Texture2D VehicleMarkerHeavy() { mixin(MGPC!(Texture2D, 1740)()); }
			Texture2D VehicleMarkerMedium() { mixin(MGPC!(Texture2D, 1736)()); }
			Texture2D VehicleMarkerLight() { mixin(MGPC!(Texture2D, 1732)()); }
			Texture2D VehicleMarker() { mixin(MGPC!(Texture2D, 1728)()); }
			UObject.LinearColor MarkerColorNone() { mixin(MGPC!(UObject.LinearColor, 1700)()); }
			int m_LastDeployableCount() { mixin(MGPC!(int, 1628)()); }
			int m_LastMineCount() { mixin(MGPC!(int, 1624)()); }
			UObject.Color ColorEnemy() { mixin(MGPC!(UObject.Color, 1588)()); }
			UObject.Color ColorFriend() { mixin(MGPC!(UObject.Color, 1584)()); }
			float ObjectiveInfoMaxDist() { mixin(MGPC!(float, 1580)()); }
			ScriptString m_sLastClassName() { mixin(MGPC!(ScriptString, 1564)()); }
			ScriptString m_sWinningPlayer() { mixin(MGPC!(ScriptString, 1552)()); }
			int m_nLastPerk2Icon() { mixin(MGPC!(int, 1544)()); }
			int m_nLastPerk1Icon() { mixin(MGPC!(int, 1540)()); }
			int m_nWinningTeam() { mixin(MGPC!(int, 1536)()); }
		}
		bool m_bIsControllerSkiing() { mixin(MGBPC!(1548, 0x8)()); }
		bool m_bIsControllerSkiing(bool val) { mixin(MSBPC!(1548, 0x8)()); }
		bool bIsMainMenuOpen() { mixin(MGBPC!(1548, 0x1000)()); }
		bool bIsMainMenuOpen(bool val) { mixin(MSBPC!(1548, 0x1000)()); }
		bool bShowObjectives() { mixin(MGBPC!(1548, 0x4)()); }
		bool bShowObjectives(bool val) { mixin(MSBPC!(1548, 0x4)()); }
		bool bVotePending() { mixin(MGBPC!(1548, 0x800)()); }
		bool bVotePending(bool val) { mixin(MSBPC!(1548, 0x800)()); }
		bool bAccoladePlaying() { mixin(MGBPC!(1548, 0x40000)()); }
		bool bAccoladePlaying(bool val) { mixin(MSBPC!(1548, 0x40000)()); }
		bool m_bIsSpectatorFloatCameraPanelVisible() { mixin(MGBPC!(1548, 0x20000)()); }
		bool m_bIsSpectatorFloatCameraPanelVisible(bool val) { mixin(MSBPC!(1548, 0x20000)()); }
		bool m_bIsSpectatorObjectivePanelVisible() { mixin(MGBPC!(1548, 0x10000)()); }
		bool m_bIsSpectatorObjectivePanelVisible(bool val) { mixin(MSBPC!(1548, 0x10000)()); }
		bool m_bIsSpectatorBookmarkPanelVisible() { mixin(MGBPC!(1548, 0x8000)()); }
		bool m_bIsSpectatorBookmarkPanelVisible(bool val) { mixin(MSBPC!(1548, 0x8000)()); }
		bool m_bIsSpectatorVehiclePanelVisible() { mixin(MGBPC!(1548, 0x4000)()); }
		bool m_bIsSpectatorVehiclePanelVisible(bool val) { mixin(MSBPC!(1548, 0x4000)()); }
		bool m_bIsSpectatorPlayerPanelVisible() { mixin(MGBPC!(1548, 0x2000)()); }
		bool m_bIsSpectatorPlayerPanelVisible(bool val) { mixin(MSBPC!(1548, 0x2000)()); }
		bool bPlayAward() { mixin(MGBPC!(1548, 0x400)()); }
		bool bPlayAward(bool val) { mixin(MSBPC!(1548, 0x400)()); }
		bool m_bUpdateFumbledFlagEffect() { mixin(MGBPC!(1548, 0x200)()); }
		bool m_bUpdateFumbledFlagEffect(bool val) { mixin(MSBPC!(1548, 0x200)()); }
		bool m_bUpdateWhiteoutEffect() { mixin(MGBPC!(1548, 0x100)()); }
		bool m_bUpdateWhiteoutEffect(bool val) { mixin(MSBPC!(1548, 0x100)()); }
		bool bLoadSequenceComplete() { mixin(MGBPC!(1548, 0x80)()); }
		bool bLoadSequenceComplete(bool val) { mixin(MSBPC!(1548, 0x80)()); }
		bool bRestoreHUDState() { mixin(MGBPC!(1548, 0x40)()); }
		bool bRestoreHUDState(bool val) { mixin(MSBPC!(1548, 0x40)()); }
		bool m_bEffectFadingIn() { mixin(MGBPC!(1548, 0x20)()); }
		bool m_bEffectFadingIn(bool val) { mixin(MSBPC!(1548, 0x20)()); }
		bool m_bStrobeIn() { mixin(MGBPC!(1548, 0x10)()); }
		bool m_bStrobeIn(bool val) { mixin(MSBPC!(1548, 0x10)()); }
		bool HasGlobalChatAsAlert() { mixin(MGBPC!(1548, 0x2)()); }
		bool HasGlobalChatAsAlert(bool val) { mixin(MSBPC!(1548, 0x2)()); }
		bool m_bGameOver() { mixin(MGBPC!(1548, 0x1)()); }
		bool m_bGameOver(bool val) { mixin(MSBPC!(1548, 0x1)()); }
	}
final:
	Vector DrawMarkerText(ScriptString ShowText, bool bFriend, Vector Placement, Canvas DrawCanvas, bool bBuddy)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ShowText;
		*cast(bool*)&params[12] = bFriend;
		*cast(Vector*)&params[16] = Placement;
		*cast(Canvas*)&params[28] = DrawCanvas;
		*cast(bool*)&params[32] = bBuddy;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMarkerText, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[36];
	}
	Vector DrawMICMarker(MaterialInstanceConstant MarkerMIC, Vector Placement, Canvas DrawCanvas, UObject.Vector2D MarkerSize, ScriptString markText, bool bFriend, float distScale)
	{
		ubyte params[60];
		params[] = 0;
		*cast(MaterialInstanceConstant*)params.ptr = MarkerMIC;
		*cast(Vector*)&params[4] = Placement;
		*cast(Canvas*)&params[16] = DrawCanvas;
		*cast(UObject.Vector2D*)&params[20] = MarkerSize;
		*cast(ScriptString*)&params[28] = markText;
		*cast(bool*)&params[40] = bFriend;
		*cast(float*)&params[44] = distScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMICMarker, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[48];
	}
	static bool GetEdgeScreenCoordinates(Canvas inCanvas, Vector CameraPosition, Vector CameraDir, Vector ObjectLocation, ref Vector ScreenLocation)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Canvas*)params.ptr = inCanvas;
		*cast(Vector*)&params[4] = CameraPosition;
		*cast(Vector*)&params[16] = CameraDir;
		*cast(Vector*)&params[28] = ObjectLocation;
		*cast(Vector*)&params[40] = ScreenLocation;
		StaticClass.ProcessEvent(Functions.GetEdgeScreenCoordinates, params.ptr, cast(void*)0);
		*ScreenLocation = *cast(Vector*)&params[40];
		return *cast(bool*)&params[52];
	}
	Vector DrawMarker(Texture2D Marker, Vector Placement, Canvas DrawCanvas, ScriptString markText, bool bFriend, float Alpha, float distScale)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Texture2D*)params.ptr = Marker;
		*cast(Vector*)&params[4] = Placement;
		*cast(Canvas*)&params[16] = DrawCanvas;
		*cast(ScriptString*)&params[20] = markText;
		*cast(bool*)&params[32] = bFriend;
		*cast(float*)&params[36] = Alpha;
		*cast(float*)&params[40] = distScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMarker, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[44];
	}
	Vector DrawRotatedMarker(Texture2D Marker, Vector Placement, Rotator Rot, Canvas DrawCanvas, ScriptString markText, bool bFriend, float Alpha, float distScale)
	{
		ubyte params[68];
		params[] = 0;
		*cast(Texture2D*)params.ptr = Marker;
		*cast(Vector*)&params[4] = Placement;
		*cast(Rotator*)&params[16] = Rot;
		*cast(Canvas*)&params[28] = DrawCanvas;
		*cast(ScriptString*)&params[32] = markText;
		*cast(bool*)&params[44] = bFriend;
		*cast(float*)&params[48] = Alpha;
		*cast(float*)&params[52] = distScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawRotatedMarker, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[56];
	}
	void ShowDebugInfo(ref float out_YL, ref float out_YPos)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = out_YL;
		*cast(float*)&params[4] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowDebugInfo, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)params.ptr;
		*out_YPos = *cast(float*)&params[4];
	}
	void CreateHUDMovie()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateHUDMovie, cast(void*)0, cast(void*)0);
	}
	void ShowSpectatorControls(bool bForceEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorControls, params.ptr, cast(void*)0);
	}
	void SetShowScores(bool bEnableShowScores)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableShowScores;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetShowScores, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void InitializeGameHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeGameHUD, cast(void*)0, cast(void*)0);
	}
	void FadeInTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FadeInTimer, cast(void*)0, cast(void*)0);
	}
	void Fade(float FadeTarget, float FadeSpeed, float bForceFadeInStartAlpha)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = FadeTarget;
		*cast(float*)&params[4] = FadeSpeed;
		*cast(float*)&params[8] = bForceFadeInStartAlpha;
		(cast(ScriptObject)this).ProcessEvent(Functions.Fade, params.ptr, cast(void*)0);
	}
	void PlayRoundOver(int WinningTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = WinningTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRoundOver, params.ptr, cast(void*)0);
	}
	void ShowRoundEnding()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowRoundEnding, cast(void*)0, cast(void*)0);
	}
	void PlayMatchOver(int Winner, ScriptString WinnerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = WinnerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayMatchOver, params.ptr, cast(void*)0);
	}
	void ShowEnding()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowEnding, cast(void*)0, cast(void*)0);
	}
	void FadeInSummary()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FadeInSummary, cast(void*)0, cast(void*)0);
	}
	void ScaleformJoystickInputEvent(float leftAngle, float rightAngle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = leftAngle;
		*cast(float*)&params[4] = rightAngle;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScaleformJoystickInputEvent, params.ptr, cast(void*)0);
	}
	void ToggleSkiEffect(bool bEnabled, float fSpeed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		*cast(float*)&params[4] = fSpeed;
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleSkiEffect, params.ptr, cast(void*)0);
	}
	void TogglePauseMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TogglePauseMenu, cast(void*)0, cast(void*)0);
	}
	void ToggleMovieHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleMovieHUD, cast(void*)0, cast(void*)0);
	}
	void ToggleVehicleMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleVehicleMenu, cast(void*)0, cast(void*)0);
	}
	void ToggleTeamSelectionMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleTeamSelectionMenu, cast(void*)0, cast(void*)0);
	}
	void SetPowerOscillation(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPowerOscillation, params.ptr, cast(void*)0);
	}
	void AddUpdateToCombatLog(int CombatType, ScriptString Aggressor, int WeaponIcon, ScriptString Victim)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = CombatType;
		*cast(ScriptString*)&params[4] = Aggressor;
		*cast(int*)&params[16] = WeaponIcon;
		*cast(ScriptString*)&params[20] = Victim;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddUpdateToCombatLog, params.ptr, cast(void*)0);
	}
	void AddToPromptPanel(ScriptString Message, TgSupportCommands.GC_ALERT_PRIORITY Priority)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(TgSupportCommands.GC_ALERT_PRIORITY*)&params[12] = Priority;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToPromptPanel, params.ptr, cast(void*)0);
	}
	void AddToPromptPanelTime(ScriptString Message, float EndTime, TgSupportCommands.GC_ALERT_PRIORITY Priority)
	{
		ubyte params[17];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(float*)&params[12] = EndTime;
		*cast(TgSupportCommands.GC_ALERT_PRIORITY*)&params[16] = Priority;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToPromptPanelTime, params.ptr, cast(void*)0);
	}
	void ClearPromptPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPromptPanel, cast(void*)0, cast(void*)0);
	}
	void AddToHeroStatus(ScriptString Message, float ShowTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(float*)&params[12] = ShowTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToHeroStatus, params.ptr, cast(void*)0);
	}
	void ClearHeroStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearHeroStatus, cast(void*)0, cast(void*)0);
	}
	void ClearPromptPanelMessage(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPromptPanelMessage, params.ptr, cast(void*)0);
	}
	void UpdateVGSMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateVGSMenu, cast(void*)0, cast(void*)0);
	}
	void HideVGSMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideVGSMenu, cast(void*)0, cast(void*)0);
	}
	void AddToHelpText(ScriptString Title, ScriptString Body, float PictureIndex, ScriptString footer, ScriptString SuppressString)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		*cast(ScriptString*)&params[12] = Body;
		*cast(float*)&params[24] = PictureIndex;
		*cast(ScriptString*)&params[28] = footer;
		*cast(ScriptString*)&params[40] = SuppressString;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToHelpText, params.ptr, cast(void*)0);
	}
	void ClearHelpText()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearHelpText, cast(void*)0, cast(void*)0);
	}
	void AddUpdateToKillMessage(int RankIcon, int PlayerIcon, ScriptString PlayerName, ScriptString Message)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = RankIcon;
		*cast(int*)&params[4] = PlayerIcon;
		*cast(ScriptString*)&params[8] = PlayerName;
		*cast(ScriptString*)&params[20] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddUpdateToKillMessage, params.ptr, cast(void*)0);
	}
	void AddFlyingIcon(int iconNumber, ScriptString Description, ScriptString Points, int bIsBadge)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = iconNumber;
		*cast(ScriptString*)&params[4] = Description;
		*cast(ScriptString*)&params[16] = Points;
		*cast(int*)&params[28] = bIsBadge;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFlyingIcon, params.ptr, cast(void*)0);
	}
	void OnSpectate(bool bUpdateTeamState)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdateTeamState;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSpectate, params.ptr, cast(void*)0);
	}
	void CreateSpectatorHUDCache()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateSpectatorHUDCache, cast(void*)0, cast(void*)0);
	}
	void ClearSpectatorHUDCache()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSpectatorHUDCache, cast(void*)0, cast(void*)0);
	}
	void HideHUDElements(bool bShowStats, bool bForceCredits)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bShowStats;
		*cast(bool*)&params[4] = bForceCredits;
		(cast(ScriptObject)this).ProcessEvent(Functions.HideHUDElements, params.ptr, cast(void*)0);
	}
	void ShowHUDPlayerSpawning()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowHUDPlayerSpawning, cast(void*)0, cast(void*)0);
	}
	void ShowHUDPlayerAlive()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowHUDPlayerAlive, cast(void*)0, cast(void*)0);
	}
	void ShowCenterHUDElements(bool bShow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShow;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowCenterHUDElements, params.ptr, cast(void*)0);
	}
	void UpdateRespawnText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRespawnText, params.ptr, cast(void*)0);
	}
	void UpdateRespawnTimer(int TimeRemaining)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TimeRemaining;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRespawnTimer, params.ptr, cast(void*)0);
	}
	void UpdateHUDCredits(int changeAmount, int newTotal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = changeAmount;
		*cast(int*)&params[4] = newTotal;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHUDCredits, params.ptr, cast(void*)0);
	}
	void TeamScoreboardShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamScoreboardShow, params.ptr, cast(void*)0);
	}
	void RabbitScoreboardShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.RabbitScoreboardShow, params.ptr, cast(void*)0);
	}
	void TeamScoreboardUpdateSlot(int Index, ScriptString PlayerName, ScriptString Score, ScriptString Kills, ScriptString Assists, ScriptString Ping, ScriptString ClassAbb, int Rank, int RankIcon)
	{
		ubyte params[84];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = PlayerName;
		*cast(ScriptString*)&params[16] = Score;
		*cast(ScriptString*)&params[28] = Kills;
		*cast(ScriptString*)&params[40] = Assists;
		*cast(ScriptString*)&params[52] = Ping;
		*cast(ScriptString*)&params[64] = ClassAbb;
		*cast(int*)&params[76] = Rank;
		*cast(int*)&params[80] = RankIcon;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamScoreboardUpdateSlot, params.ptr, cast(void*)0);
	}
	void RabbitScoreboardUpdateSlot(int Index, ScriptString PlayerName, ScriptString Score, ScriptString Kills, ScriptString Assists, ScriptString Ping, ScriptString ClassAbb, int Rank, int RankIcon)
	{
		ubyte params[84];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = PlayerName;
		*cast(ScriptString*)&params[16] = Score;
		*cast(ScriptString*)&params[28] = Kills;
		*cast(ScriptString*)&params[40] = Assists;
		*cast(ScriptString*)&params[52] = Ping;
		*cast(ScriptString*)&params[64] = ClassAbb;
		*cast(int*)&params[76] = Rank;
		*cast(int*)&params[80] = RankIcon;
		(cast(ScriptObject)this).ProcessEvent(Functions.RabbitScoreboardUpdateSlot, params.ptr, cast(void*)0);
	}
	void TeamScoreboardUpdateTeamScore(int Index, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamScoreboardUpdateTeamScore, params.ptr, cast(void*)0);
	}
	void TeamScoreboardUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamScoreboardUpdateTime, params.ptr, cast(void*)0);
	}
	void RabbitScoreboardUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.RabbitScoreboardUpdateTime, params.ptr, cast(void*)0);
	}
	void TeamScoreboardActivePlayer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamScoreboardActivePlayer, params.ptr, cast(void*)0);
	}
	void RabbitScoreboardActivePlayer(int Index, bool bVisible)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.RabbitScoreboardActivePlayer, params.ptr, cast(void*)0);
	}
	void ResolutionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResolutionChanged, cast(void*)0, cast(void*)0);
	}
	void RestoreHUDState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RestoreHUDState, cast(void*)0, cast(void*)0);
	}
	void HideMenus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideMenus, cast(void*)0, cast(void*)0);
	}
	void RemoveMovies()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveMovies, cast(void*)0, cast(void*)0);
	}
	void CompleteVehicleMenuClose()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CompleteVehicleMenuClose, cast(void*)0, cast(void*)0);
	}
	void CompleteTeamSelectionMenuClose()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CompleteTeamSelectionMenuClose, cast(void*)0, cast(void*)0);
	}
	void ClearCrosshairOnFriendly()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCrosshairOnFriendly, cast(void*)0, cast(void*)0);
	}
	bool CheckCrosshairOnFriendly()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckCrosshairOnFriendly, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Vector DrawColoredMarkerText(ScriptString ShowText, UObject.Color TextColor, Vector Placement, Canvas DrawCanvas, float ScaleX, float ScaleY)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ShowText;
		*cast(UObject.Color*)&params[12] = TextColor;
		*cast(Vector*)&params[16] = Placement;
		*cast(Canvas*)&params[28] = DrawCanvas;
		*cast(float*)&params[32] = ScaleX;
		*cast(float*)&params[36] = ScaleY;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawColoredMarkerText, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[40];
	}
	static void DrawSmallText(ScriptString ShowText, bool bFriend, Vector Placement, Canvas DrawCanvas)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ShowText;
		*cast(bool*)&params[12] = bFriend;
		*cast(Vector*)&params[16] = Placement;
		*cast(Canvas*)&params[28] = DrawCanvas;
		StaticClass.ProcessEvent(Functions.DrawSmallText, params.ptr, cast(void*)0);
	}
	void DrawHealthBar(MaterialInstanceConstant HealthBarMIC, bool bFriend, Vector Placement, Canvas DrawCanvas, float PlacementX, float PlacementY, float Width, float Height)
	{
		ubyte params[40];
		params[] = 0;
		*cast(MaterialInstanceConstant*)params.ptr = HealthBarMIC;
		*cast(bool*)&params[4] = bFriend;
		*cast(Vector*)&params[8] = Placement;
		*cast(Canvas*)&params[20] = DrawCanvas;
		*cast(float*)&params[24] = PlacementX;
		*cast(float*)&params[28] = PlacementY;
		*cast(float*)&params[32] = Width;
		*cast(float*)&params[36] = Height;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawHealthBar, params.ptr, cast(void*)0);
	}
	void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, cast(void*)0, cast(void*)0);
	}
	float GetRemainingFriendlyGeneratorRestoreTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRemainingFriendlyGeneratorRestoreTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetRemainingEnemyGeneratorRestoreTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRemainingEnemyGeneratorRestoreTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void UpdateSkiEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSkiEffect, cast(void*)0, cast(void*)0);
	}
	void UpdatePickupFlashEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePickupFlashEffect, cast(void*)0, cast(void*)0);
	}
	void PulsePickupFlashEffect(float PulseAmount, float PulseSpeed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = PulseAmount;
		*cast(float*)&params[4] = PulseSpeed;
		(cast(ScriptObject)this).ProcessEvent(Functions.PulsePickupFlashEffect, params.ptr, cast(void*)0);
	}
	void UpdateInvulnerableEfect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateInvulnerableEfect, cast(void*)0, cast(void*)0);
	}
	void UpdateShieldEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateShieldEffect, cast(void*)0, cast(void*)0);
	}
	void PulseShieldEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PulseShieldEffect, cast(void*)0, cast(void*)0);
	}
	void UpdateJammerEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateJammerEffect, cast(void*)0, cast(void*)0);
	}
	void UpdateFadeEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFadeEffect, cast(void*)0, cast(void*)0);
	}
	void FumbleFlag(float Speed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(Functions.FumbleFlag, params.ptr, cast(void*)0);
	}
	void UpdateFumbledFlagEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFumbledFlagEffect, cast(void*)0, cast(void*)0);
	}
	void Whiteout(float Speed, float Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Speed;
		*cast(float*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.Whiteout, params.ptr, cast(void*)0);
	}
	void ClearWhiteout()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearWhiteout, cast(void*)0, cast(void*)0);
	}
	void UpdateWhiteoutEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateWhiteoutEffect, cast(void*)0, cast(void*)0);
	}
	void LocalizedMessage(ScriptClass InMessageClass, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, ScriptString CriticalString, int Switch, float Position, float Lifetime, int FontSize, UObject.Color DrawColor, UObject OptionalObject)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		*cast(ScriptString*)&params[12] = CriticalString;
		*cast(int*)&params[24] = Switch;
		*cast(float*)&params[28] = Position;
		*cast(float*)&params[32] = Lifetime;
		*cast(int*)&params[36] = FontSize;
		*cast(UObject.Color*)&params[40] = DrawColor;
		*cast(UObject*)&params[44] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.LocalizedMessage, params.ptr, cast(void*)0);
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
	ScriptString StripTag(ScriptString sValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.StripTag, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void SendLocalMessageToGlobalAlert(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendLocalMessageToGlobalAlert, params.ptr, cast(void*)0);
	}
	void SendLocalMessageToChat(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendLocalMessageToChat, params.ptr, cast(void*)0);
	}
	void SetPlayerClassObjects(ScriptString ClassName, int PerkIcon1, int PerkIcon2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		*cast(int*)&params[12] = PerkIcon1;
		*cast(int*)&params[16] = PerkIcon2;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerClassObjects, params.ptr, cast(void*)0);
	}
	void HideGlobalAlert()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideGlobalAlert, cast(void*)0, cast(void*)0);
	}
	void KickVoteMessage(bool bComplete, ScriptString Message)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bComplete;
		*cast(ScriptString*)&params[4] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.KickVoteMessage, params.ptr, cast(void*)0);
	}
	void EnableGameTypeHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableGameTypeHUD, cast(void*)0, cast(void*)0);
	}
	void ShowSpectatorPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorPlayer, cast(void*)0, cast(void*)0);
	}
	void HideSpectatorPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSpectatorPlayer, cast(void*)0, cast(void*)0);
	}
	void UpdateSpectatorPlayerPanel(TrPawn ViewTargetTrPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = ViewTargetTrPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSpectatorPlayerPanel, params.ptr, cast(void*)0);
	}
	void ShowSpectatorVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorVehicle, cast(void*)0, cast(void*)0);
	}
	void HideSpectatorVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSpectatorVehicle, cast(void*)0, cast(void*)0);
	}
	void UpdateSpectatorVehiclePanel(TrVehicle ViewTargetVehicle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = ViewTargetVehicle;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSpectatorVehiclePanel, params.ptr, cast(void*)0);
	}
	void ShowSpectatorBookmark()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorBookmark, cast(void*)0, cast(void*)0);
	}
	void HideSpectatorBookmark()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSpectatorBookmark, cast(void*)0, cast(void*)0);
	}
	void UpdateSpectatorBookmarkPanel(TrCamera_SpectatorBookmark pBookMark)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrCamera_SpectatorBookmark*)params.ptr = pBookMark;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSpectatorBookmarkPanel, params.ptr, cast(void*)0);
	}
	void ShowSpectatorObjectivePanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorObjectivePanel, cast(void*)0, cast(void*)0);
	}
	void HideSpectatorObjectivePanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSpectatorObjectivePanel, cast(void*)0, cast(void*)0);
	}
	void UpdateSpectatorObjectivePanel(Actor ObjectiveActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = ObjectiveActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSpectatorObjectivePanel, params.ptr, cast(void*)0);
	}
	void ShowSpectatorFloatCameraPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorFloatCameraPanel, cast(void*)0, cast(void*)0);
	}
	void HideSpectatorFloatCameraPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSpectatorFloatCameraPanel, cast(void*)0, cast(void*)0);
	}
	void UpdateSpectatorFloatCameraPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSpectatorFloatCameraPanel, cast(void*)0, cast(void*)0);
	}
	void HideAllSpectatorPanels()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideAllSpectatorPanels, cast(void*)0, cast(void*)0);
	}
	void OnViewTargetChange(Actor NewViewTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewTargetChange, params.ptr, cast(void*)0);
	}
	void TestNumber(int Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.TestNumber, params.ptr, cast(void*)0);
	}
	void AddOverheadNumber(int Value, UObject.Vector4 WorldLocation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Value;
		*cast(UObject.Vector4*)&params[16] = WorldLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddOverheadNumber, params.ptr, cast(void*)0);
	}
	void UpdateOverheadNumbers(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateOverheadNumbers, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas DrawCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = DrawCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
	void PlayAward(Canvas DrawCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = DrawCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAward, params.ptr, cast(void*)0);
	}
	void QueueAccolade(int Icon, ScriptString Title, ScriptString Subtitle, bool bIsBadge)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Icon;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Subtitle;
		*cast(bool*)&params[28] = bIsBadge;
		(cast(ScriptObject)this).ProcessEvent(Functions.QueueAccolade, params.ptr, cast(void*)0);
	}
	void CheckQueuedAccolades()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckQueuedAccolades, cast(void*)0, cast(void*)0);
	}
	void RunQueuedAccoladesTimer(bool bIsBadge)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsBadge;
		(cast(ScriptObject)this).ProcessEvent(Functions.RunQueuedAccoladesTimer, params.ptr, cast(void*)0);
	}
	void ClearQueuedAccoladesTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearQueuedAccoladesTimer, cast(void*)0, cast(void*)0);
	}
	void DeployableReplicated(TrDeployable NewDep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable*)params.ptr = NewDep;
		(cast(ScriptObject)this).ProcessEvent(Functions.DeployableReplicated, params.ptr, cast(void*)0);
	}
	void MineReplicated(TrProj_Mine NewMine)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrProj_Mine*)params.ptr = NewMine;
		(cast(ScriptObject)this).ProcessEvent(Functions.MineReplicated, params.ptr, cast(void*)0);
	}
	void UpdateOwnedItems()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateOwnedItems, cast(void*)0, cast(void*)0);
	}
}
