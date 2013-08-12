module UnrealScript.TribesGame.TrPageManager;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPageManager")); }
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
			ScriptFunction GetActivePage() { return mGetActivePage ? mGetActivePage : (mGetActivePage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.GetActivePage")); }
			ScriptFunction PopPage() { return mPopPage ? mPopPage : (mPopPage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.PopPage")); }
			ScriptFunction NavigateGold() { return mNavigateGold ? mNavigateGold : (mNavigateGold = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.NavigateGold")); }
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.Initialize")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.PopupComplete")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.TakeFocus")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.TakeAction")); }
			ScriptFunction ActionUp() { return mActionUp ? mActionUp : (mActionUp = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.ActionUp")); }
			ScriptFunction ActionDown() { return mActionDown ? mActionDown : (mActionDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.ActionDown")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.ModifyAction")); }
			ScriptFunction ModifyFocus() { return mModifyFocus ? mModifyFocus : (mModifyFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.ModifyFocus")); }
			ScriptFunction HelpButton() { return mHelpButton ? mHelpButton : (mHelpButton = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.HelpButton")); }
			ScriptFunction ProfileUp() { return mProfileUp ? mProfileUp : (mProfileUp = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.ProfileUp")); }
			ScriptFunction ProfileDown() { return mProfileDown ? mProfileDown : (mProfileDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.ProfileDown")); }
			ScriptFunction PushPage() { return mPushPage ? mPushPage : (mPushPage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.PushPage")); }
			ScriptFunction PushOpen() { return mPushOpen ? mPushOpen : (mPushOpen = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.PushOpen")); }
			ScriptFunction PopBack() { return mPopBack ? mPopBack : (mPopBack = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.PopBack")); }
			ScriptFunction ClearStack() { return mClearStack ? mClearStack : (mClearStack = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.ClearStack")); }
			ScriptFunction PushOpenMain() { return mPushOpenMain ? mPushOpenMain : (mPushOpenMain = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.PushOpenMain")); }
			ScriptFunction PushOpenParty() { return mPushOpenParty ? mPushOpenParty : (mPushOpenParty = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.PushOpenParty")); }
			ScriptFunction PushOpenClassSelect() { return mPushOpenClassSelect ? mPushOpenClassSelect : (mPushOpenClassSelect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.PushOpenClassSelect")); }
			ScriptFunction PushOpenLogin() { return mPushOpenLogin ? mPushOpenLogin : (mPushOpenLogin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.PushOpenLogin")); }
			ScriptFunction TravelToMain() { return mTravelToMain ? mTravelToMain : (mTravelToMain = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.TravelToMain")); }
			ScriptFunction TravelToClasses() { return mTravelToClasses ? mTravelToClasses : (mTravelToClasses = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.TravelToClasses")); }
			ScriptFunction TravelToFriends() { return mTravelToFriends ? mTravelToFriends : (mTravelToFriends = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.TravelToFriends")); }
			ScriptFunction TravelToSettings() { return mTravelToSettings ? mTravelToSettings : (mTravelToSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.TravelToSettings")); }
			ScriptFunction TravelToBundles() { return mTravelToBundles ? mTravelToBundles : (mTravelToBundles = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.TravelToBundles")); }
			ScriptFunction TravelToStore() { return mTravelToStore ? mTravelToStore : (mTravelToStore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.TravelToStore")); }
			ScriptFunction ShowInGameModel() { return mShowInGameModel ? mShowInGameModel : (mShowInGameModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.ShowInGameModel")); }
			ScriptFunction PromoAction() { return mPromoAction ? mPromoAction : (mPromoAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.PromoAction")); }
			ScriptFunction SelectedFeature() { return mSelectedFeature ? mSelectedFeature : (mSelectedFeature = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.SelectedFeature")); }
			ScriptFunction ShowReticule() { return mShowReticule ? mShowReticule : (mShowReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.ShowReticule")); }
			ScriptFunction SaveReticule() { return mSaveReticule ? mSaveReticule : (mSaveReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPageManager.SaveReticule")); }
		}
	}
	@property final
	{
		auto ref
		{
			GFxTrPage_Classes ClassesPage() { return *cast(GFxTrPage_Classes*)(cast(size_t)cast(void*)this + 124); }
			GFxTrPage_Store StorePage() { return *cast(GFxTrPage_Store*)(cast(size_t)cast(void*)this + 92); }
			GFxTrPage_Main MainPage() { return *cast(GFxTrPage_Main*)(cast(size_t)cast(void*)this + 72); }
			GFxTrPage_RegionSettings RegionSettingsPage() { return *cast(GFxTrPage_RegionSettings*)(cast(size_t)cast(void*)this + 268); }
			GFxTrPage_Party PartyPage() { return *cast(GFxTrPage_Party*)(cast(size_t)cast(void*)this + 340); }
			GFxTrPage_ClassSelect ClassSelectPage() { return *cast(GFxTrPage_ClassSelect*)(cast(size_t)cast(void*)this + 224); }
			GFxTrPage_Equip EquipPage() { return *cast(GFxTrPage_Equip*)(cast(size_t)cast(void*)this + 88); }
			GFxTrPage_Class ClassPage() { return *cast(GFxTrPage_Class*)(cast(size_t)cast(void*)this + 84); }
			GFxTrPage_Loadouts LoadoutsPage() { return *cast(GFxTrPage_Loadouts*)(cast(size_t)cast(void*)this + 188); }
			GFxTrPage_Bundles BundlesPage() { return *cast(GFxTrPage_Bundles*)(cast(size_t)cast(void*)this + 168); }
			GFxTrPage_ClanTagChange ClanTagChangePage() { return *cast(GFxTrPage_ClanTagChange*)(cast(size_t)cast(void*)this + 176); }
			GFxTrPage_ManageServers ManageServersPage() { return *cast(GFxTrPage_ManageServers*)(cast(size_t)cast(void*)this + 296); }
			GFxTrPage_ServerActions ServerActionsPage() { return *cast(GFxTrPage_ServerActions*)(cast(size_t)cast(void*)this + 400); }
			GFxTrPage_ServerAddTime ServerAddTimePage() { return *cast(GFxTrPage_ServerAddTime*)(cast(size_t)cast(void*)this + 404); }
			GFxTrPage_Game GamePage() { return *cast(GFxTrPage_Game*)(cast(size_t)cast(void*)this + 76); }
			GFxTrPage_Login LoginPage() { return *cast(GFxTrPage_Login*)(cast(size_t)cast(void*)this + 80); }
			GFxTrPage_Vehicle VehiclePage() { return *cast(GFxTrPage_Vehicle*)(cast(size_t)cast(void*)this + 160); }
			GFxTrPage_VideoTexture VideoTexturePage() { return *cast(GFxTrPage_VideoTexture*)(cast(size_t)cast(void*)this + 248); }
			GFxTrPage_BuyGoldSteam BuyGoldSteamPage() { return *cast(GFxTrPage_BuyGoldSteam*)(cast(size_t)cast(void*)this + 152); }
			int FocusIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
			GFxTrPage_Friends FriendsPage() { return *cast(GFxTrPage_Friends*)(cast(size_t)cast(void*)this + 112); }
			GFxTrPage_Followers FollowersPage() { return *cast(GFxTrPage_Followers*)(cast(size_t)cast(void*)this + 116); }
			GFxTrPage_BlockedPlayers BlockedPlayersPage() { return *cast(GFxTrPage_BlockedPlayers*)(cast(size_t)cast(void*)this + 120); }
			GFxTrPage_BuyGoldPortal BuyGoldPortalPage() { return *cast(GFxTrPage_BuyGoldPortal*)(cast(size_t)cast(void*)this + 156); }
			GFxTrPage_GameTypeFilter GameTypeFilterPage() { return *cast(GFxTrPage_GameTypeFilter*)(cast(size_t)cast(void*)this + 328); }
			GFxTrPage_FollowerActions FollowerActionsPage() { return *cast(GFxTrPage_FollowerActions*)(cast(size_t)cast(void*)this + 196); }
			GFxTrPage_Social SocialPage() { return *cast(GFxTrPage_Social*)(cast(size_t)cast(void*)this + 108); }
			GFxTrPage_FriendActions FriendActionsPage() { return *cast(GFxTrPage_FriendActions*)(cast(size_t)cast(void*)this + 192); }
			GFxTrPage_Settings SettingsPage() { return *cast(GFxTrPage_Settings*)(cast(size_t)cast(void*)this + 180); }
			GFxTrPage_GameType GameTypePage() { return *cast(GFxTrPage_GameType*)(cast(size_t)cast(void*)this + 324); }
			GFxTrPage_RotationType RotationTypePage() { return *cast(GFxTrPage_RotationType*)(cast(size_t)cast(void*)this + 332); }
			GFxTrPage_MapRotation MapRotationPage() { return *cast(GFxTrPage_MapRotation*)(cast(size_t)cast(void*)this + 316); }
			GFxTrPage_ServerTime ServerTimePage() { return *cast(GFxTrPage_ServerTime*)(cast(size_t)cast(void*)this + 356); }
			GFxTrPage_ServerScoring ServerScoringPage() { return *cast(GFxTrPage_ServerScoring*)(cast(size_t)cast(void*)this + 360); }
			GFxTrPage_ServerPlayer ServerPlayerPage() { return *cast(GFxTrPage_ServerPlayer*)(cast(size_t)cast(void*)this + 364); }
			GFxTrPage_ServerTeam ServerTeamPage() { return *cast(GFxTrPage_ServerTeam*)(cast(size_t)cast(void*)this + 368); }
			GFxTrPage_ServerBase ServerBasePage() { return *cast(GFxTrPage_ServerBase*)(cast(size_t)cast(void*)this + 372); }
			GFxTrPage_ServerVehicle ServerVehiclePage() { return *cast(GFxTrPage_ServerVehicle*)(cast(size_t)cast(void*)this + 376); }
			GFxTrPage_ServerCallin ServerCallinPage() { return *cast(GFxTrPage_ServerCallin*)(cast(size_t)cast(void*)this + 380); }
			GFxTrPage_ServerFF ServerFFPage() { return *cast(GFxTrPage_ServerFF*)(cast(size_t)cast(void*)this + 408); }
			GFxTrPage_KeybindMovement KeybindMovementPage() { return *cast(GFxTrPage_KeybindMovement*)(cast(size_t)cast(void*)this + 436); }
			GFxTrPage_KeybindGameplay KeybindGameplayPage() { return *cast(GFxTrPage_KeybindGameplay*)(cast(size_t)cast(void*)this + 424); }
			GFxTrPage_KeybindWeapon KeybindWeaponPage() { return *cast(GFxTrPage_KeybindWeapon*)(cast(size_t)cast(void*)this + 444); }
			GFxTrPage_KeybindVehicle KeybindVehiclePage() { return *cast(GFxTrPage_KeybindVehicle*)(cast(size_t)cast(void*)this + 440); }
			GFxTrPage_KeybindCommunication KeybindCommunicationPage() { return *cast(GFxTrPage_KeybindCommunication*)(cast(size_t)cast(void*)this + 420); }
			GFxTrPage_KeybindInterface KeybindInterfacePage() { return *cast(GFxTrPage_KeybindInterface*)(cast(size_t)cast(void*)this + 432); }
			GFxTrPage_KeybindHotkeys KeybindHotkeysPage() { return *cast(GFxTrPage_KeybindHotkeys*)(cast(size_t)cast(void*)this + 428); }
			GFxTrPage_KeybindSpectator KeybindSpectatorPage() { return *cast(GFxTrPage_KeybindSpectator*)(cast(size_t)cast(void*)this + 460); }
			GFxTrPage_KeybindSpecMovement KeybindSpecMovementPage() { return *cast(GFxTrPage_KeybindSpecMovement*)(cast(size_t)cast(void*)this + 452); }
			GFxTrPage_KeybindSpecTargeting KeybindSpecTargetingPage() { return *cast(GFxTrPage_KeybindSpecTargeting*)(cast(size_t)cast(void*)this + 456); }
			GFxTrPage_KeybindSpecInterface KeybindSpecInterfacePage() { return *cast(GFxTrPage_KeybindSpecInterface*)(cast(size_t)cast(void*)this + 448); }
			GFxTrPage_PlayNow PlayNowPage() { return *cast(GFxTrPage_PlayNow*)(cast(size_t)cast(void*)this + 128); }
			GFxTrPage_TrainingMatch TrainingMatchPage() { return *cast(GFxTrPage_TrainingMatch*)(cast(size_t)cast(void*)this + 256); }
			GFxTrPage_WatchNow WatchNowPage() { return *cast(GFxTrPage_WatchNow*)(cast(size_t)cast(void*)this + 132); }
			int NumGold() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int NumBundle() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			int NumDeal() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
			GFxTrPage_ServerSettings ServerSettingsPage() { return *cast(GFxTrPage_ServerSettings*)(cast(size_t)cast(void*)this + 396); }
			GFxTrPage_GameMapSetup GameMapSetupPage() { return *cast(GFxTrPage_GameMapSetup*)(cast(size_t)cast(void*)this + 320); }
			GFxTrPage_GameRules GameRulesPage() { return *cast(GFxTrPage_GameRules*)(cast(size_t)cast(void*)this + 312); }
			GFxTrPage_ManageServer ManageServerPage() { return *cast(GFxTrPage_ManageServer*)(cast(size_t)cast(void*)this + 300); }
			GFxTrPage_ChangeMap ChangeMapPage() { return *cast(GFxTrPage_ChangeMap*)(cast(size_t)cast(void*)this + 336); }
			GFxTrPage_WhisperSettings WhisperSettingsPage() { return *cast(GFxTrPage_WhisperSettings*)(cast(size_t)cast(void*)this + 288); }
			GFxTrPage_PartyInvite PartyInvitePage() { return *cast(GFxTrPage_PartyInvite*)(cast(size_t)cast(void*)this + 348); }
			GFxTrPage_PartyMember PartyMemberPage() { return *cast(GFxTrPage_PartyMember*)(cast(size_t)cast(void*)this + 352); }
			GFxTrPage_PartyAction PartyActionPage() { return *cast(GFxTrPage_PartyAction*)(cast(size_t)cast(void*)this + 344); }
			GFxTrPage_FriendJoin FriendJoinPage() { return *cast(GFxTrPage_FriendJoin*)(cast(size_t)cast(void*)this + 216); }
			GFxTrPage_RankedMatch RankedMatchPage() { return *cast(GFxTrPage_RankedMatch*)(cast(size_t)cast(void*)this + 228); }
			GFxTrPage_CustomMatch CustomMatchPage() { return *cast(GFxTrPage_CustomMatch*)(cast(size_t)cast(void*)this + 232); }
			GFxTrPage_Badges BadgesPage() { return *cast(GFxTrPage_Badges*)(cast(size_t)cast(void*)this + 140); }
			GFxTrPage_Accolades AccoladesPage() { return *cast(GFxTrPage_Accolades*)(cast(size_t)cast(void*)this + 144); }
			GFxTrPage_JoinMatch JoinMatchPage() { return *cast(GFxTrPage_JoinMatch*)(cast(size_t)cast(void*)this + 200); }
			GFxTrPage_RoamTDM RoamTDMPage() { return *cast(GFxTrPage_RoamTDM*)(cast(size_t)cast(void*)this + 104); }
			GFxTrPage_RoamCTF RoamCTFPage() { return *cast(GFxTrPage_RoamCTF*)(cast(size_t)cast(void*)this + 100); }
			GFxTrPage_RoamArena RoamArenaPage() { return *cast(GFxTrPage_RoamArena*)(cast(size_t)cast(void*)this + 208); }
			GFxTrPage_RoamCAH RoamCAHPage() { return *cast(GFxTrPage_RoamCAH*)(cast(size_t)cast(void*)this + 212); }
			GFxTrPage_ServerEditCallin ServerEditCallinPage() { return *cast(GFxTrPage_ServerEditCallin*)(cast(size_t)cast(void*)this + 384); }
			GFxTrPage_ServerClasses ServerClassesPage() { return *cast(GFxTrPage_ServerClasses*)(cast(size_t)cast(void*)this + 388); }
			GFxTrPage_ServerSpawn ServerSpawnPage() { return *cast(GFxTrPage_ServerSpawn*)(cast(size_t)cast(void*)this + 412); }
			GFxTrPage_ServerTeamJoin ServerTeamJoinPage() { return *cast(GFxTrPage_ServerTeamJoin*)(cast(size_t)cast(void*)this + 392); }
			GFxTrPage_VideoSettings VideoSettingsPage() { return *cast(GFxTrPage_VideoSettings*)(cast(size_t)cast(void*)this + 260); }
			GFxTrPage_AudioSettings AudioSettingsPage() { return *cast(GFxTrPage_AudioSettings*)(cast(size_t)cast(void*)this + 264); }
			GFxTrPage_ControlSettings ControlSettingsPage() { return *cast(GFxTrPage_ControlSettings*)(cast(size_t)cast(void*)this + 272); }
			GFxTrPage_HUDSettings HUDSettingsPage() { return *cast(GFxTrPage_HUDSettings*)(cast(size_t)cast(void*)this + 240); }
			GFxTrPage_KeybindSettings KeybindSettingsPage() { return *cast(GFxTrPage_KeybindSettings*)(cast(size_t)cast(void*)this + 416); }
			GFxTrPage_NotificationSettings NotificationSettingsPage() { return *cast(GFxTrPage_NotificationSettings*)(cast(size_t)cast(void*)this + 284); }
			GFxTrPage_Profile ProfilePage() { return *cast(GFxTrPage_Profile*)(cast(size_t)cast(void*)this + 136); }
			GFxTrPage_BuyBoost BuyBoostPage() { return *cast(GFxTrPage_BuyBoost*)(cast(size_t)cast(void*)this + 164); }
			GFxTrPage_NameChange NameChangePage() { return *cast(GFxTrPage_NameChange*)(cast(size_t)cast(void*)this + 172); }
			GFxTrPage_BuyGold BuyGoldPage() { return *cast(GFxTrPage_BuyGold*)(cast(size_t)cast(void*)this + 148); }
			GFxTrPage_TrainVideo TrainVideoPage() { return *cast(GFxTrPage_TrainVideo*)(cast(size_t)cast(void*)this + 472); }
			GFxTrPage_RoamingMatch RoamingMatchPage() { return *cast(GFxTrPage_RoamingMatch*)(cast(size_t)cast(void*)this + 244); }
			GFxTrPage_VideoResolution VideoResolutionPage() { return *cast(GFxTrPage_VideoResolution*)(cast(size_t)cast(void*)this + 276); }
			GFxTrPage_VideoGraphics VideoGraphicsPage() { return *cast(GFxTrPage_VideoGraphics*)(cast(size_t)cast(void*)this + 252); }
			GFxTrPage_VideoWindow VideoWindowPage() { return *cast(GFxTrPage_VideoWindow*)(cast(size_t)cast(void*)this + 236); }
			GFxTrPage_VideoResolutionTypes VideoResolutionTypesPage() { return *cast(GFxTrPage_VideoResolutionTypes*)(cast(size_t)cast(void*)this + 280); }
			GFxTrPage_LiveStream LiveStreamPage() { return *cast(GFxTrPage_LiveStream*)(cast(size_t)cast(void*)this + 464); }
			GFxTrPage_HiRezVideo HiRezVideoPage() { return *cast(GFxTrPage_HiRezVideo*)(cast(size_t)cast(void*)this + 468); }
			GFxTrPage_CmntyVideo CmntyVideoPage() { return *cast(GFxTrPage_CmntyVideo*)(cast(size_t)cast(void*)this + 476); }
			ScriptArray!(GFxTrPage) PageStack() { return *cast(ScriptArray!(GFxTrPage)*)(cast(size_t)cast(void*)this + 480); }
			GFxTrPage_ManageProfile ManageProfilePage() { return *cast(GFxTrPage_ManageProfile*)(cast(size_t)cast(void*)this + 308); }
			GFxTrPage_ManageProfiles ManageProfilesPage() { return *cast(GFxTrPage_ManageProfiles*)(cast(size_t)cast(void*)this + 304); }
			GFxTrPage_RentServer RentServerPage() { return *cast(GFxTrPage_RentServer*)(cast(size_t)cast(void*)this + 292); }
			GFxTrPage_QuickMatch QuickMatchPage() { return *cast(GFxTrPage_QuickMatch*)(cast(size_t)cast(void*)this + 220); }
			GFxTrPage_RoamRabbit RoamRabbitPage() { return *cast(GFxTrPage_RoamRabbit*)(cast(size_t)cast(void*)this + 204); }
			GFxTrPage_Extras ExtrasPage() { return *cast(GFxTrPage_Extras*)(cast(size_t)cast(void*)this + 184); }
			GFxTrPage_Queued QueuedPage() { return *cast(GFxTrPage_Queued*)(cast(size_t)cast(void*)this + 96); }
		}
		bool bPopBack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
		bool bPopBack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
		bool bSelectRequired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x2) != 0; }
		bool bSelectRequired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x2; } return val; }
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
	bool NavigateGold(bool bViaStore)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bViaStore;
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
