module UnrealScript.TribesGame.TrPageManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage_Classes;
import UnrealScript.TribesGame.GFxTrPage_KeybindVehicle;
import UnrealScript.TribesGame.GFxTrPage_ServerSettings;
import UnrealScript.TribesGame.GFxTrPage_ServerClasses;
import UnrealScript.TribesGame.GFxTrPage_NotificationSettings;
import UnrealScript.TribesGame.GFxTrPage_Bundles;
import UnrealScript.TribesGame.GFxTrPage_BlockedPlayers;
import UnrealScript.TribesGame.GFxTrPage_WhisperSettings;
import UnrealScript.TribesGame.GFxTrPage_VideoWindow;
import UnrealScript.TribesGame.GFxTrPage_ClassSelect;
import UnrealScript.TribesGame.GFxTrPage_BuyGoldSteam;
import UnrealScript.TribesGame.GFxTrPage_ServerPlayer;
import UnrealScript.TribesGame.GFxTrPage_RoamCTF;
import UnrealScript.TribesGame.GFxTrPage_BuyBoost;
import UnrealScript.TribesGame.GFxTrPage_QuickMatch;
import UnrealScript.TribesGame.GFxTrPage_Store;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.GFxTrPage_VideoGraphics;
import UnrealScript.TribesGame.GFxTrPage_Class;
import UnrealScript.TribesGame.GFxTrPage_KeybindGameplay;
import UnrealScript.TribesGame.GFxTrPage_ServerSpawn;
import UnrealScript.TribesGame.GFxTrPage_ClanTagChange;
import UnrealScript.TribesGame.GFxTrPage_ChangeMap;
import UnrealScript.TribesGame.GFxTrPage_ServerTeamJoin;
import UnrealScript.TribesGame.GFxTrPage_VideoSettings;
import UnrealScript.TribesGame.GFxTrPage_ServerCallin;
import UnrealScript.TribesGame.GFxTrPage_HUDSettings;
import UnrealScript.TribesGame.GFxTrPage_Main;
import UnrealScript.TribesGame.GFxTrPage_ServerScoring;
import UnrealScript.TribesGame.GFxTrPage_TrainingMatch;
import UnrealScript.TribesGame.GFxTrPage_WatchNow;
import UnrealScript.TribesGame.GFxTrPage_RoamRabbit;
import UnrealScript.TribesGame.GFxTrPage_Login;
import UnrealScript.TribesGame.GFxTrPage_FriendActions;
import UnrealScript.TribesGame.GFxTrPage_ServerTeam;
import UnrealScript.TribesGame.GFxTrPage_PartyAction;
import UnrealScript.TribesGame.GFxTrPage_Accolades;
import UnrealScript.TribesGame.GFxTrPage_BuyGoldPortal;
import UnrealScript.TribesGame.GFxTrPage_RotationType;
import UnrealScript.TribesGame.GFxTrPage_KeybindCommunication;
import UnrealScript.TribesGame.GFxTrPage_Vehicle;
import UnrealScript.TribesGame.GFxTrPage_ServerVehicle;
import UnrealScript.TribesGame.GFxTrPage_KeybindHotkeys;
import UnrealScript.TribesGame.GFxTrPage_KeybindSpecMovement;
import UnrealScript.TribesGame.GFxTrPage_RankedMatch;
import UnrealScript.TribesGame.GFxTrPage_ManageProfiles;
import UnrealScript.TribesGame.GFxTrPage_RentServer;
import UnrealScript.TribesGame.GFxTrPage_PartyInvite;
import UnrealScript.TribesGame.GFxTrPage_RoamCAH;
import UnrealScript.TribesGame.GFxTrPage_CmntyVideo;
import UnrealScript.TribesGame.GFxTrPage_ServerAddTime;
import UnrealScript.TribesGame.GFxTrPage_ManageServers;
import UnrealScript.TribesGame.GFxTrPage_FollowerActions;
import UnrealScript.TribesGame.GFxTrPage_KeybindSpecTargeting;
import UnrealScript.TribesGame.GFxTrPage_Loadouts;
import UnrealScript.TribesGame.GFxTrPage_KeybindWeapon;
import UnrealScript.TribesGame.GFxTrPage_AudioSettings;
import UnrealScript.TribesGame.GFxTrPage_VideoResolutionTypes;
import UnrealScript.TribesGame.GFxTrPage_Party;
import UnrealScript.TribesGame.GFxTrPage_KeybindMovement;
import UnrealScript.TribesGame.GFxTrPage_KeybindInterface;
import UnrealScript.TribesGame.GFxTrPage_Social;
import UnrealScript.TribesGame.GFxTrPage_PlayNow;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.TribesGame.GFxTrPage_RegionSettings;
import UnrealScript.TribesGame.GFxTrPage_KeybindSettings;
import UnrealScript.TribesGame.GFxTrPage_LiveStream;
import UnrealScript.TribesGame.GFxTrPage_KeybindSpecInterface;
import UnrealScript.TribesGame.GFxTrPage_ServerEditCallin;
import UnrealScript.TribesGame.GFxTrPage_GameType;
import UnrealScript.TribesGame.GFxTrPage_MapRotation;
import UnrealScript.TribesGame.GFxTrPage_FriendJoin;
import UnrealScript.TribesGame.GFxTrPage_GameTypeFilter;
import UnrealScript.TribesGame.GFxTrPage_VideoResolution;
import UnrealScript.TribesGame.GFxTrPage_VideoTexture;
import UnrealScript.TribesGame.GFxTrPage_Extras;
import UnrealScript.TribesGame.GFxTrPage_Game;
import UnrealScript.TribesGame.GFxTrPage_ServerActions;
import UnrealScript.TribesGame.GFxTrPage_Profile;
import UnrealScript.TribesGame.GFxTrPage_ManageProfile;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.TribesGame.GFxTrPage_ServerFF;
import UnrealScript.TribesGame.GFxTrPage_ControlSettings;
import UnrealScript.TribesGame.GFxTrPage_RoamingMatch;
import UnrealScript.TribesGame.GFxTrPage_Queued;
import UnrealScript.TribesGame.GFxTrPage_Equip;
import UnrealScript.TribesGame.GFxTrPage_ManageServer;
import UnrealScript.TribesGame.GFxTrPage_JoinMatch;
import UnrealScript.TribesGame.GFxTrPage_BuyGold;
import UnrealScript.TribesGame.GFxTrPage_Settings;
import UnrealScript.TribesGame.GFxTrPage_GameRules;
import UnrealScript.TribesGame.GFxTrPage_Friends;
import UnrealScript.TribesGame.GFxTrPage_ServerTime;
import UnrealScript.TribesGame.GFxTrPage_KeybindSpectator;
import UnrealScript.TribesGame.GFxTrPage_PartyMember;
import UnrealScript.TribesGame.GFxTrPage_RoamArena;
import UnrealScript.TribesGame.GFxTrPage_NameChange;
import UnrealScript.TribesGame.GFxTrPage_TrainVideo;
import UnrealScript.TribesGame.GFxTrPage_HiRezVideo;
import UnrealScript.TribesGame.GFxTrPage_Followers;
import UnrealScript.TribesGame.GFxTrPage_ServerBase;
import UnrealScript.TribesGame.GFxTrPage_GameMapSetup;
import UnrealScript.TribesGame.GFxTrPage_CustomMatch;
import UnrealScript.TribesGame.GFxTrPage_Badges;
import UnrealScript.TribesGame.GFxTrPage_RoamTDM;

extern(C++) interface TrPageManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPageManager")()); }
	private static __gshared TrPageManager mDefaultProperties;
	@property final static TrPageManager DefaultProperties() { mixin(MGDPC!(TrPageManager, "TrPageManager TribesGame.Default__TrPageManager")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetActivePage;
			ScriptFunction mPopPage;
			ScriptFunction mNavigateGold;
			ScriptFunction mInitialize;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mTakeFocus;
			ScriptFunction mTakeAction;
			ScriptFunction mActionUp;
			ScriptFunction mActionDown;
			ScriptFunction mModifyAction;
			ScriptFunction mModifyFocus;
			ScriptFunction mHelpButton;
			ScriptFunction mProfileUp;
			ScriptFunction mProfileDown;
			ScriptFunction mPushPage;
			ScriptFunction mPushOpen;
			ScriptFunction mPopBack;
			ScriptFunction mClearStack;
			ScriptFunction mPushOpenMain;
			ScriptFunction mPushOpenParty;
			ScriptFunction mPushOpenClassSelect;
			ScriptFunction mPushOpenLogin;
			ScriptFunction mTravelToMain;
			ScriptFunction mTravelToClasses;
			ScriptFunction mTravelToFriends;
			ScriptFunction mTravelToSettings;
			ScriptFunction mTravelToBundles;
			ScriptFunction mTravelToStore;
			ScriptFunction mShowInGameModel;
			ScriptFunction mPromoAction;
			ScriptFunction mSelectedFeature;
			ScriptFunction mShowReticule;
			ScriptFunction mSaveReticule;
		}
		public @property static final
		{
			ScriptFunction GetActivePage() { mixin(MGF!("mGetActivePage", "Function TribesGame.TrPageManager.GetActivePage")()); }
			ScriptFunction PopPage() { mixin(MGF!("mPopPage", "Function TribesGame.TrPageManager.PopPage")()); }
			ScriptFunction NavigateGold() { mixin(MGF!("mNavigateGold", "Function TribesGame.TrPageManager.NavigateGold")()); }
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.TrPageManager.Initialize")()); }
			ScriptFunction PopupData() { mixin(MGF!("mPopupData", "Function TribesGame.TrPageManager.PopupData")()); }
			ScriptFunction PopupComplete() { mixin(MGF!("mPopupComplete", "Function TribesGame.TrPageManager.PopupComplete")()); }
			ScriptFunction TakeFocus() { mixin(MGF!("mTakeFocus", "Function TribesGame.TrPageManager.TakeFocus")()); }
			ScriptFunction TakeAction() { mixin(MGF!("mTakeAction", "Function TribesGame.TrPageManager.TakeAction")()); }
			ScriptFunction ActionUp() { mixin(MGF!("mActionUp", "Function TribesGame.TrPageManager.ActionUp")()); }
			ScriptFunction ActionDown() { mixin(MGF!("mActionDown", "Function TribesGame.TrPageManager.ActionDown")()); }
			ScriptFunction ModifyAction() { mixin(MGF!("mModifyAction", "Function TribesGame.TrPageManager.ModifyAction")()); }
			ScriptFunction ModifyFocus() { mixin(MGF!("mModifyFocus", "Function TribesGame.TrPageManager.ModifyFocus")()); }
			ScriptFunction HelpButton() { mixin(MGF!("mHelpButton", "Function TribesGame.TrPageManager.HelpButton")()); }
			ScriptFunction ProfileUp() { mixin(MGF!("mProfileUp", "Function TribesGame.TrPageManager.ProfileUp")()); }
			ScriptFunction ProfileDown() { mixin(MGF!("mProfileDown", "Function TribesGame.TrPageManager.ProfileDown")()); }
			ScriptFunction PushPage() { mixin(MGF!("mPushPage", "Function TribesGame.TrPageManager.PushPage")()); }
			ScriptFunction PushOpen() { mixin(MGF!("mPushOpen", "Function TribesGame.TrPageManager.PushOpen")()); }
			ScriptFunction PopBack() { mixin(MGF!("mPopBack", "Function TribesGame.TrPageManager.PopBack")()); }
			ScriptFunction ClearStack() { mixin(MGF!("mClearStack", "Function TribesGame.TrPageManager.ClearStack")()); }
			ScriptFunction PushOpenMain() { mixin(MGF!("mPushOpenMain", "Function TribesGame.TrPageManager.PushOpenMain")()); }
			ScriptFunction PushOpenParty() { mixin(MGF!("mPushOpenParty", "Function TribesGame.TrPageManager.PushOpenParty")()); }
			ScriptFunction PushOpenClassSelect() { mixin(MGF!("mPushOpenClassSelect", "Function TribesGame.TrPageManager.PushOpenClassSelect")()); }
			ScriptFunction PushOpenLogin() { mixin(MGF!("mPushOpenLogin", "Function TribesGame.TrPageManager.PushOpenLogin")()); }
			ScriptFunction TravelToMain() { mixin(MGF!("mTravelToMain", "Function TribesGame.TrPageManager.TravelToMain")()); }
			ScriptFunction TravelToClasses() { mixin(MGF!("mTravelToClasses", "Function TribesGame.TrPageManager.TravelToClasses")()); }
			ScriptFunction TravelToFriends() { mixin(MGF!("mTravelToFriends", "Function TribesGame.TrPageManager.TravelToFriends")()); }
			ScriptFunction TravelToSettings() { mixin(MGF!("mTravelToSettings", "Function TribesGame.TrPageManager.TravelToSettings")()); }
			ScriptFunction TravelToBundles() { mixin(MGF!("mTravelToBundles", "Function TribesGame.TrPageManager.TravelToBundles")()); }
			ScriptFunction TravelToStore() { mixin(MGF!("mTravelToStore", "Function TribesGame.TrPageManager.TravelToStore")()); }
			ScriptFunction ShowInGameModel() { mixin(MGF!("mShowInGameModel", "Function TribesGame.TrPageManager.ShowInGameModel")()); }
			ScriptFunction PromoAction() { mixin(MGF!("mPromoAction", "Function TribesGame.TrPageManager.PromoAction")()); }
			ScriptFunction SelectedFeature() { mixin(MGF!("mSelectedFeature", "Function TribesGame.TrPageManager.SelectedFeature")()); }
			ScriptFunction ShowReticule() { mixin(MGF!("mShowReticule", "Function TribesGame.TrPageManager.ShowReticule")()); }
			ScriptFunction SaveReticule() { mixin(MGF!("mSaveReticule", "Function TribesGame.TrPageManager.SaveReticule")()); }
		}
	}
	@property final
	{
		auto ref
		{
			GFxTrPage_Classes ClassesPage() { mixin(MGPC!("GFxTrPage_Classes", 124)()); }
			GFxTrPage_Store StorePage() { mixin(MGPC!("GFxTrPage_Store", 92)()); }
			GFxTrPage_Main MainPage() { mixin(MGPC!("GFxTrPage_Main", 72)()); }
			GFxTrPage_RegionSettings RegionSettingsPage() { mixin(MGPC!("GFxTrPage_RegionSettings", 268)()); }
			GFxTrPage_Party PartyPage() { mixin(MGPC!("GFxTrPage_Party", 340)()); }
			GFxTrPage_ClassSelect ClassSelectPage() { mixin(MGPC!("GFxTrPage_ClassSelect", 224)()); }
			GFxTrPage_Equip EquipPage() { mixin(MGPC!("GFxTrPage_Equip", 88)()); }
			GFxTrPage_Class ClassPage() { mixin(MGPC!("GFxTrPage_Class", 84)()); }
			GFxTrPage_Loadouts LoadoutsPage() { mixin(MGPC!("GFxTrPage_Loadouts", 188)()); }
			GFxTrPage_Bundles BundlesPage() { mixin(MGPC!("GFxTrPage_Bundles", 168)()); }
			GFxTrPage_ClanTagChange ClanTagChangePage() { mixin(MGPC!("GFxTrPage_ClanTagChange", 176)()); }
			GFxTrPage_ManageServers ManageServersPage() { mixin(MGPC!("GFxTrPage_ManageServers", 296)()); }
			GFxTrPage_ServerActions ServerActionsPage() { mixin(MGPC!("GFxTrPage_ServerActions", 400)()); }
			GFxTrPage_ServerAddTime ServerAddTimePage() { mixin(MGPC!("GFxTrPage_ServerAddTime", 404)()); }
			GFxTrPage_Game GamePage() { mixin(MGPC!("GFxTrPage_Game", 76)()); }
			GFxTrPage_Login LoginPage() { mixin(MGPC!("GFxTrPage_Login", 80)()); }
			GFxTrPage_Vehicle VehiclePage() { mixin(MGPC!("GFxTrPage_Vehicle", 160)()); }
			GFxTrPage_VideoTexture VideoTexturePage() { mixin(MGPC!("GFxTrPage_VideoTexture", 248)()); }
			GFxTrPage_BuyGoldSteam BuyGoldSteamPage() { mixin(MGPC!("GFxTrPage_BuyGoldSteam", 152)()); }
			int FocusIndex() { mixin(MGPC!("int", 492)()); }
			GFxTrPage_Friends FriendsPage() { mixin(MGPC!("GFxTrPage_Friends", 112)()); }
			GFxTrPage_Followers FollowersPage() { mixin(MGPC!("GFxTrPage_Followers", 116)()); }
			GFxTrPage_BlockedPlayers BlockedPlayersPage() { mixin(MGPC!("GFxTrPage_BlockedPlayers", 120)()); }
			GFxTrPage_BuyGoldPortal BuyGoldPortalPage() { mixin(MGPC!("GFxTrPage_BuyGoldPortal", 156)()); }
			GFxTrPage_GameTypeFilter GameTypeFilterPage() { mixin(MGPC!("GFxTrPage_GameTypeFilter", 328)()); }
			GFxTrPage_FollowerActions FollowerActionsPage() { mixin(MGPC!("GFxTrPage_FollowerActions", 196)()); }
			GFxTrPage_Social SocialPage() { mixin(MGPC!("GFxTrPage_Social", 108)()); }
			GFxTrPage_FriendActions FriendActionsPage() { mixin(MGPC!("GFxTrPage_FriendActions", 192)()); }
			GFxTrPage_Settings SettingsPage() { mixin(MGPC!("GFxTrPage_Settings", 180)()); }
			GFxTrPage_GameType GameTypePage() { mixin(MGPC!("GFxTrPage_GameType", 324)()); }
			GFxTrPage_RotationType RotationTypePage() { mixin(MGPC!("GFxTrPage_RotationType", 332)()); }
			GFxTrPage_MapRotation MapRotationPage() { mixin(MGPC!("GFxTrPage_MapRotation", 316)()); }
			GFxTrPage_ServerTime ServerTimePage() { mixin(MGPC!("GFxTrPage_ServerTime", 356)()); }
			GFxTrPage_ServerScoring ServerScoringPage() { mixin(MGPC!("GFxTrPage_ServerScoring", 360)()); }
			GFxTrPage_ServerPlayer ServerPlayerPage() { mixin(MGPC!("GFxTrPage_ServerPlayer", 364)()); }
			GFxTrPage_ServerTeam ServerTeamPage() { mixin(MGPC!("GFxTrPage_ServerTeam", 368)()); }
			GFxTrPage_ServerBase ServerBasePage() { mixin(MGPC!("GFxTrPage_ServerBase", 372)()); }
			GFxTrPage_ServerVehicle ServerVehiclePage() { mixin(MGPC!("GFxTrPage_ServerVehicle", 376)()); }
			GFxTrPage_ServerCallin ServerCallinPage() { mixin(MGPC!("GFxTrPage_ServerCallin", 380)()); }
			GFxTrPage_ServerFF ServerFFPage() { mixin(MGPC!("GFxTrPage_ServerFF", 408)()); }
			GFxTrPage_KeybindMovement KeybindMovementPage() { mixin(MGPC!("GFxTrPage_KeybindMovement", 436)()); }
			GFxTrPage_KeybindGameplay KeybindGameplayPage() { mixin(MGPC!("GFxTrPage_KeybindGameplay", 424)()); }
			GFxTrPage_KeybindWeapon KeybindWeaponPage() { mixin(MGPC!("GFxTrPage_KeybindWeapon", 444)()); }
			GFxTrPage_KeybindVehicle KeybindVehiclePage() { mixin(MGPC!("GFxTrPage_KeybindVehicle", 440)()); }
			GFxTrPage_KeybindCommunication KeybindCommunicationPage() { mixin(MGPC!("GFxTrPage_KeybindCommunication", 420)()); }
			GFxTrPage_KeybindInterface KeybindInterfacePage() { mixin(MGPC!("GFxTrPage_KeybindInterface", 432)()); }
			GFxTrPage_KeybindHotkeys KeybindHotkeysPage() { mixin(MGPC!("GFxTrPage_KeybindHotkeys", 428)()); }
			GFxTrPage_KeybindSpectator KeybindSpectatorPage() { mixin(MGPC!("GFxTrPage_KeybindSpectator", 460)()); }
			GFxTrPage_KeybindSpecMovement KeybindSpecMovementPage() { mixin(MGPC!("GFxTrPage_KeybindSpecMovement", 452)()); }
			GFxTrPage_KeybindSpecTargeting KeybindSpecTargetingPage() { mixin(MGPC!("GFxTrPage_KeybindSpecTargeting", 456)()); }
			GFxTrPage_KeybindSpecInterface KeybindSpecInterfacePage() { mixin(MGPC!("GFxTrPage_KeybindSpecInterface", 448)()); }
			GFxTrPage_PlayNow PlayNowPage() { mixin(MGPC!("GFxTrPage_PlayNow", 128)()); }
			GFxTrPage_TrainingMatch TrainingMatchPage() { mixin(MGPC!("GFxTrPage_TrainingMatch", 256)()); }
			GFxTrPage_WatchNow WatchNowPage() { mixin(MGPC!("GFxTrPage_WatchNow", 132)()); }
			int NumGold() { mixin(MGPC!("int", 64)()); }
			int NumBundle() { mixin(MGPC!("int", 68)()); }
			int NumDeal() { mixin(MGPC!("int", 60)()); }
			GFxTrPage_ServerSettings ServerSettingsPage() { mixin(MGPC!("GFxTrPage_ServerSettings", 396)()); }
			GFxTrPage_GameMapSetup GameMapSetupPage() { mixin(MGPC!("GFxTrPage_GameMapSetup", 320)()); }
			GFxTrPage_GameRules GameRulesPage() { mixin(MGPC!("GFxTrPage_GameRules", 312)()); }
			GFxTrPage_ManageServer ManageServerPage() { mixin(MGPC!("GFxTrPage_ManageServer", 300)()); }
			GFxTrPage_ChangeMap ChangeMapPage() { mixin(MGPC!("GFxTrPage_ChangeMap", 336)()); }
			GFxTrPage_WhisperSettings WhisperSettingsPage() { mixin(MGPC!("GFxTrPage_WhisperSettings", 288)()); }
			GFxTrPage_PartyInvite PartyInvitePage() { mixin(MGPC!("GFxTrPage_PartyInvite", 348)()); }
			GFxTrPage_PartyMember PartyMemberPage() { mixin(MGPC!("GFxTrPage_PartyMember", 352)()); }
			GFxTrPage_PartyAction PartyActionPage() { mixin(MGPC!("GFxTrPage_PartyAction", 344)()); }
			GFxTrPage_FriendJoin FriendJoinPage() { mixin(MGPC!("GFxTrPage_FriendJoin", 216)()); }
			GFxTrPage_RankedMatch RankedMatchPage() { mixin(MGPC!("GFxTrPage_RankedMatch", 228)()); }
			GFxTrPage_CustomMatch CustomMatchPage() { mixin(MGPC!("GFxTrPage_CustomMatch", 232)()); }
			GFxTrPage_Badges BadgesPage() { mixin(MGPC!("GFxTrPage_Badges", 140)()); }
			GFxTrPage_Accolades AccoladesPage() { mixin(MGPC!("GFxTrPage_Accolades", 144)()); }
			GFxTrPage_JoinMatch JoinMatchPage() { mixin(MGPC!("GFxTrPage_JoinMatch", 200)()); }
			GFxTrPage_RoamTDM RoamTDMPage() { mixin(MGPC!("GFxTrPage_RoamTDM", 104)()); }
			GFxTrPage_RoamCTF RoamCTFPage() { mixin(MGPC!("GFxTrPage_RoamCTF", 100)()); }
			GFxTrPage_RoamArena RoamArenaPage() { mixin(MGPC!("GFxTrPage_RoamArena", 208)()); }
			GFxTrPage_RoamCAH RoamCAHPage() { mixin(MGPC!("GFxTrPage_RoamCAH", 212)()); }
			GFxTrPage_ServerEditCallin ServerEditCallinPage() { mixin(MGPC!("GFxTrPage_ServerEditCallin", 384)()); }
			GFxTrPage_ServerClasses ServerClassesPage() { mixin(MGPC!("GFxTrPage_ServerClasses", 388)()); }
			GFxTrPage_ServerSpawn ServerSpawnPage() { mixin(MGPC!("GFxTrPage_ServerSpawn", 412)()); }
			GFxTrPage_ServerTeamJoin ServerTeamJoinPage() { mixin(MGPC!("GFxTrPage_ServerTeamJoin", 392)()); }
			GFxTrPage_VideoSettings VideoSettingsPage() { mixin(MGPC!("GFxTrPage_VideoSettings", 260)()); }
			GFxTrPage_AudioSettings AudioSettingsPage() { mixin(MGPC!("GFxTrPage_AudioSettings", 264)()); }
			GFxTrPage_ControlSettings ControlSettingsPage() { mixin(MGPC!("GFxTrPage_ControlSettings", 272)()); }
			GFxTrPage_HUDSettings HUDSettingsPage() { mixin(MGPC!("GFxTrPage_HUDSettings", 240)()); }
			GFxTrPage_KeybindSettings KeybindSettingsPage() { mixin(MGPC!("GFxTrPage_KeybindSettings", 416)()); }
			GFxTrPage_NotificationSettings NotificationSettingsPage() { mixin(MGPC!("GFxTrPage_NotificationSettings", 284)()); }
			GFxTrPage_Profile ProfilePage() { mixin(MGPC!("GFxTrPage_Profile", 136)()); }
			GFxTrPage_BuyBoost BuyBoostPage() { mixin(MGPC!("GFxTrPage_BuyBoost", 164)()); }
			GFxTrPage_NameChange NameChangePage() { mixin(MGPC!("GFxTrPage_NameChange", 172)()); }
			GFxTrPage_BuyGold BuyGoldPage() { mixin(MGPC!("GFxTrPage_BuyGold", 148)()); }
			GFxTrPage_TrainVideo TrainVideoPage() { mixin(MGPC!("GFxTrPage_TrainVideo", 472)()); }
			GFxTrPage_RoamingMatch RoamingMatchPage() { mixin(MGPC!("GFxTrPage_RoamingMatch", 244)()); }
			GFxTrPage_VideoResolution VideoResolutionPage() { mixin(MGPC!("GFxTrPage_VideoResolution", 276)()); }
			GFxTrPage_VideoGraphics VideoGraphicsPage() { mixin(MGPC!("GFxTrPage_VideoGraphics", 252)()); }
			GFxTrPage_VideoWindow VideoWindowPage() { mixin(MGPC!("GFxTrPage_VideoWindow", 236)()); }
			GFxTrPage_VideoResolutionTypes VideoResolutionTypesPage() { mixin(MGPC!("GFxTrPage_VideoResolutionTypes", 280)()); }
			GFxTrPage_LiveStream LiveStreamPage() { mixin(MGPC!("GFxTrPage_LiveStream", 464)()); }
			GFxTrPage_HiRezVideo HiRezVideoPage() { mixin(MGPC!("GFxTrPage_HiRezVideo", 468)()); }
			GFxTrPage_CmntyVideo CmntyVideoPage() { mixin(MGPC!("GFxTrPage_CmntyVideo", 476)()); }
			ScriptArray!(GFxTrPage) PageStack() { mixin(MGPC!("ScriptArray!(GFxTrPage)", 480)()); }
			GFxTrPage_ManageProfile ManageProfilePage() { mixin(MGPC!("GFxTrPage_ManageProfile", 308)()); }
			GFxTrPage_ManageProfiles ManageProfilesPage() { mixin(MGPC!("GFxTrPage_ManageProfiles", 304)()); }
			GFxTrPage_RentServer RentServerPage() { mixin(MGPC!("GFxTrPage_RentServer", 292)()); }
			GFxTrPage_QuickMatch QuickMatchPage() { mixin(MGPC!("GFxTrPage_QuickMatch", 220)()); }
			GFxTrPage_RoamRabbit RoamRabbitPage() { mixin(MGPC!("GFxTrPage_RoamRabbit", 204)()); }
			GFxTrPage_Extras ExtrasPage() { mixin(MGPC!("GFxTrPage_Extras", 184)()); }
			GFxTrPage_Queued QueuedPage() { mixin(MGPC!("GFxTrPage_Queued", 96)()); }
		}
		bool bPopBack() { mixin(MGBPC!(496, 0x1)()); }
		bool bPopBack(bool val) { mixin(MSBPC!(496, 0x1)()); }
		bool bSelectRequired() { mixin(MGBPC!(496, 0x2)()); }
		bool bSelectRequired(bool val) { mixin(MSBPC!(496, 0x2)()); }
	}
final:
	GFxTrPage GetActivePage()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActivePage, params.ptr, cast(void*)0);
		return *cast(GFxTrPage*)params.ptr;
	}
	GFxTrPage PopPage()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopPage, params.ptr, cast(void*)0);
		return *cast(GFxTrPage*)params.ptr;
	}
	bool NavigateGold(bool* bViaStore = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bViaStore !is null)
			*cast(bool*)params.ptr = *bViaStore;
		(cast(ScriptObject)this).ProcessEvent(Functions.NavigateGold, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupData, params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupComplete, params.ptr, cast(void*)0);
	}
	int TakeFocus(int Index, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFocus, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int TakeAction(int Index, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void ActionUp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionUp, cast(void*)0, cast(void*)0);
	}
	void ActionDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionDown, cast(void*)0, cast(void*)0);
	}
	int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void ModifyFocus(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyFocus, params.ptr, cast(void*)0);
	}
	void HelpButton(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HelpButton, params.ptr, cast(void*)0);
	}
	void ProfileUp(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProfileUp, params.ptr, cast(void*)0);
	}
	void ProfileDown(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProfileDown, params.ptr, cast(void*)0);
	}
	void PushPage(GFxTrPage Page)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrPage*)params.ptr = Page;
		(cast(ScriptObject)this).ProcessEvent(Functions.PushPage, params.ptr, cast(void*)0);
	}
	void PushOpen(GFxTrPage Page)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrPage*)params.ptr = Page;
		(cast(ScriptObject)this).ProcessEvent(Functions.PushOpen, params.ptr, cast(void*)0);
	}
	void PopBack()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PopBack, cast(void*)0, cast(void*)0);
	}
	void ClearStack()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearStack, cast(void*)0, cast(void*)0);
	}
	void PushOpenMain()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PushOpenMain, cast(void*)0, cast(void*)0);
	}
	void PushOpenParty()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PushOpenParty, cast(void*)0, cast(void*)0);
	}
	void PushOpenClassSelect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PushOpenClassSelect, cast(void*)0, cast(void*)0);
	}
	void PushOpenLogin()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PushOpenLogin, cast(void*)0, cast(void*)0);
	}
	void TravelToMain()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TravelToMain, cast(void*)0, cast(void*)0);
	}
	void TravelToClasses()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TravelToClasses, cast(void*)0, cast(void*)0);
	}
	void TravelToFriends()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TravelToFriends, cast(void*)0, cast(void*)0);
	}
	void TravelToSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TravelToSettings, cast(void*)0, cast(void*)0);
	}
	void TravelToBundles()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TravelToBundles, cast(void*)0, cast(void*)0);
	}
	void TravelToStore()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TravelToStore, cast(void*)0, cast(void*)0);
	}
	void ShowInGameModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowInGameModel, cast(void*)0, cast(void*)0);
	}
	void PromoAction(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PromoAction, params.ptr, cast(void*)0);
	}
	void SelectedFeature(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SelectedFeature, params.ptr, cast(void*)0);
	}
	void ShowReticule(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowReticule, params.ptr, cast(void*)0);
	}
	void SaveReticule(GFxObject Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveReticule, params.ptr, cast(void*)0);
	}
}
