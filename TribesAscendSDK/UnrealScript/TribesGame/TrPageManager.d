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
	public @property final auto ref GFxTrPage_Classes ClassesPage() { return *cast(GFxTrPage_Classes*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref GFxTrPage_Store StorePage() { return *cast(GFxTrPage_Store*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref GFxTrPage_Main MainPage() { return *cast(GFxTrPage_Main*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref GFxTrPage_RegionSettings RegionSettingsPage() { return *cast(GFxTrPage_RegionSettings*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref GFxTrPage_Party PartyPage() { return *cast(GFxTrPage_Party*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref GFxTrPage_ClassSelect ClassSelectPage() { return *cast(GFxTrPage_ClassSelect*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref GFxTrPage_Equip EquipPage() { return *cast(GFxTrPage_Equip*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref GFxTrPage_Class ClassPage() { return *cast(GFxTrPage_Class*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref GFxTrPage_Loadouts LoadoutsPage() { return *cast(GFxTrPage_Loadouts*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref GFxTrPage_Bundles BundlesPage() { return *cast(GFxTrPage_Bundles*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref GFxTrPage_ClanTagChange ClanTagChangePage() { return *cast(GFxTrPage_ClanTagChange*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref GFxTrPage_ManageServers ManageServersPage() { return *cast(GFxTrPage_ManageServers*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref GFxTrPage_ServerActions ServerActionsPage() { return *cast(GFxTrPage_ServerActions*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref GFxTrPage_ServerAddTime ServerAddTimePage() { return *cast(GFxTrPage_ServerAddTime*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref GFxTrPage_Game GamePage() { return *cast(GFxTrPage_Game*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref GFxTrPage_Login LoginPage() { return *cast(GFxTrPage_Login*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref GFxTrPage_Vehicle VehiclePage() { return *cast(GFxTrPage_Vehicle*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref GFxTrPage_VideoTexture VideoTexturePage() { return *cast(GFxTrPage_VideoTexture*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref GFxTrPage_BuyGoldSteam BuyGoldSteamPage() { return *cast(GFxTrPage_BuyGoldSteam*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref int FocusIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
	public @property final bool bPopBack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
	public @property final bool bPopBack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
	public @property final auto ref GFxTrPage_Friends FriendsPage() { return *cast(GFxTrPage_Friends*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref GFxTrPage_Followers FollowersPage() { return *cast(GFxTrPage_Followers*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref GFxTrPage_BlockedPlayers BlockedPlayersPage() { return *cast(GFxTrPage_BlockedPlayers*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref GFxTrPage_BuyGoldPortal BuyGoldPortalPage() { return *cast(GFxTrPage_BuyGoldPortal*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref GFxTrPage_GameTypeFilter GameTypeFilterPage() { return *cast(GFxTrPage_GameTypeFilter*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref GFxTrPage_FollowerActions FollowerActionsPage() { return *cast(GFxTrPage_FollowerActions*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref GFxTrPage_Social SocialPage() { return *cast(GFxTrPage_Social*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref GFxTrPage_FriendActions FriendActionsPage() { return *cast(GFxTrPage_FriendActions*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref GFxTrPage_Settings SettingsPage() { return *cast(GFxTrPage_Settings*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref GFxTrPage_GameType GameTypePage() { return *cast(GFxTrPage_GameType*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref GFxTrPage_RotationType RotationTypePage() { return *cast(GFxTrPage_RotationType*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref GFxTrPage_MapRotation MapRotationPage() { return *cast(GFxTrPage_MapRotation*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref GFxTrPage_ServerTime ServerTimePage() { return *cast(GFxTrPage_ServerTime*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref GFxTrPage_ServerScoring ServerScoringPage() { return *cast(GFxTrPage_ServerScoring*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref GFxTrPage_ServerPlayer ServerPlayerPage() { return *cast(GFxTrPage_ServerPlayer*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref GFxTrPage_ServerTeam ServerTeamPage() { return *cast(GFxTrPage_ServerTeam*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref GFxTrPage_ServerBase ServerBasePage() { return *cast(GFxTrPage_ServerBase*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref GFxTrPage_ServerVehicle ServerVehiclePage() { return *cast(GFxTrPage_ServerVehicle*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref GFxTrPage_ServerCallin ServerCallinPage() { return *cast(GFxTrPage_ServerCallin*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref GFxTrPage_ServerFF ServerFFPage() { return *cast(GFxTrPage_ServerFF*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref GFxTrPage_KeybindMovement KeybindMovementPage() { return *cast(GFxTrPage_KeybindMovement*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref GFxTrPage_KeybindGameplay KeybindGameplayPage() { return *cast(GFxTrPage_KeybindGameplay*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref GFxTrPage_KeybindWeapon KeybindWeaponPage() { return *cast(GFxTrPage_KeybindWeapon*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref GFxTrPage_KeybindVehicle KeybindVehiclePage() { return *cast(GFxTrPage_KeybindVehicle*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref GFxTrPage_KeybindCommunication KeybindCommunicationPage() { return *cast(GFxTrPage_KeybindCommunication*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref GFxTrPage_KeybindInterface KeybindInterfacePage() { return *cast(GFxTrPage_KeybindInterface*)(cast(size_t)cast(void*)this + 432); }
	public @property final auto ref GFxTrPage_KeybindHotkeys KeybindHotkeysPage() { return *cast(GFxTrPage_KeybindHotkeys*)(cast(size_t)cast(void*)this + 428); }
	public @property final auto ref GFxTrPage_KeybindSpectator KeybindSpectatorPage() { return *cast(GFxTrPage_KeybindSpectator*)(cast(size_t)cast(void*)this + 460); }
	public @property final auto ref GFxTrPage_KeybindSpecMovement KeybindSpecMovementPage() { return *cast(GFxTrPage_KeybindSpecMovement*)(cast(size_t)cast(void*)this + 452); }
	public @property final auto ref GFxTrPage_KeybindSpecTargeting KeybindSpecTargetingPage() { return *cast(GFxTrPage_KeybindSpecTargeting*)(cast(size_t)cast(void*)this + 456); }
	public @property final auto ref GFxTrPage_KeybindSpecInterface KeybindSpecInterfacePage() { return *cast(GFxTrPage_KeybindSpecInterface*)(cast(size_t)cast(void*)this + 448); }
	public @property final auto ref GFxTrPage_PlayNow PlayNowPage() { return *cast(GFxTrPage_PlayNow*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref GFxTrPage_TrainingMatch TrainingMatchPage() { return *cast(GFxTrPage_TrainingMatch*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref GFxTrPage_WatchNow WatchNowPage() { return *cast(GFxTrPage_WatchNow*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref int NumGold() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int NumBundle() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int NumDeal() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref GFxTrPage_ServerSettings ServerSettingsPage() { return *cast(GFxTrPage_ServerSettings*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref GFxTrPage_GameMapSetup GameMapSetupPage() { return *cast(GFxTrPage_GameMapSetup*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref GFxTrPage_GameRules GameRulesPage() { return *cast(GFxTrPage_GameRules*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref GFxTrPage_ManageServer ManageServerPage() { return *cast(GFxTrPage_ManageServer*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref GFxTrPage_ChangeMap ChangeMapPage() { return *cast(GFxTrPage_ChangeMap*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref GFxTrPage_WhisperSettings WhisperSettingsPage() { return *cast(GFxTrPage_WhisperSettings*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref GFxTrPage_PartyInvite PartyInvitePage() { return *cast(GFxTrPage_PartyInvite*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref GFxTrPage_PartyMember PartyMemberPage() { return *cast(GFxTrPage_PartyMember*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref GFxTrPage_PartyAction PartyActionPage() { return *cast(GFxTrPage_PartyAction*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref GFxTrPage_FriendJoin FriendJoinPage() { return *cast(GFxTrPage_FriendJoin*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref GFxTrPage_RankedMatch RankedMatchPage() { return *cast(GFxTrPage_RankedMatch*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref GFxTrPage_CustomMatch CustomMatchPage() { return *cast(GFxTrPage_CustomMatch*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref GFxTrPage_Badges BadgesPage() { return *cast(GFxTrPage_Badges*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref GFxTrPage_Accolades AccoladesPage() { return *cast(GFxTrPage_Accolades*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref GFxTrPage_JoinMatch JoinMatchPage() { return *cast(GFxTrPage_JoinMatch*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref GFxTrPage_RoamTDM RoamTDMPage() { return *cast(GFxTrPage_RoamTDM*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref GFxTrPage_RoamCTF RoamCTFPage() { return *cast(GFxTrPage_RoamCTF*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref GFxTrPage_RoamArena RoamArenaPage() { return *cast(GFxTrPage_RoamArena*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref GFxTrPage_RoamCAH RoamCAHPage() { return *cast(GFxTrPage_RoamCAH*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref GFxTrPage_ServerEditCallin ServerEditCallinPage() { return *cast(GFxTrPage_ServerEditCallin*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref GFxTrPage_ServerClasses ServerClassesPage() { return *cast(GFxTrPage_ServerClasses*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref GFxTrPage_ServerSpawn ServerSpawnPage() { return *cast(GFxTrPage_ServerSpawn*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref GFxTrPage_ServerTeamJoin ServerTeamJoinPage() { return *cast(GFxTrPage_ServerTeamJoin*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref GFxTrPage_VideoSettings VideoSettingsPage() { return *cast(GFxTrPage_VideoSettings*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref GFxTrPage_AudioSettings AudioSettingsPage() { return *cast(GFxTrPage_AudioSettings*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref GFxTrPage_ControlSettings ControlSettingsPage() { return *cast(GFxTrPage_ControlSettings*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref GFxTrPage_HUDSettings HUDSettingsPage() { return *cast(GFxTrPage_HUDSettings*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref GFxTrPage_KeybindSettings KeybindSettingsPage() { return *cast(GFxTrPage_KeybindSettings*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref GFxTrPage_NotificationSettings NotificationSettingsPage() { return *cast(GFxTrPage_NotificationSettings*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref GFxTrPage_Profile ProfilePage() { return *cast(GFxTrPage_Profile*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref GFxTrPage_BuyBoost BuyBoostPage() { return *cast(GFxTrPage_BuyBoost*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref GFxTrPage_NameChange NameChangePage() { return *cast(GFxTrPage_NameChange*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref GFxTrPage_BuyGold BuyGoldPage() { return *cast(GFxTrPage_BuyGold*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref GFxTrPage_TrainVideo TrainVideoPage() { return *cast(GFxTrPage_TrainVideo*)(cast(size_t)cast(void*)this + 472); }
	public @property final auto ref GFxTrPage_RoamingMatch RoamingMatchPage() { return *cast(GFxTrPage_RoamingMatch*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref GFxTrPage_VideoResolution VideoResolutionPage() { return *cast(GFxTrPage_VideoResolution*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref GFxTrPage_VideoGraphics VideoGraphicsPage() { return *cast(GFxTrPage_VideoGraphics*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref GFxTrPage_VideoWindow VideoWindowPage() { return *cast(GFxTrPage_VideoWindow*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref GFxTrPage_VideoResolutionTypes VideoResolutionTypesPage() { return *cast(GFxTrPage_VideoResolutionTypes*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref GFxTrPage_LiveStream LiveStreamPage() { return *cast(GFxTrPage_LiveStream*)(cast(size_t)cast(void*)this + 464); }
	public @property final auto ref GFxTrPage_HiRezVideo HiRezVideoPage() { return *cast(GFxTrPage_HiRezVideo*)(cast(size_t)cast(void*)this + 468); }
	public @property final auto ref GFxTrPage_CmntyVideo CmntyVideoPage() { return *cast(GFxTrPage_CmntyVideo*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref ScriptArray!(GFxTrPage) PageStack() { return *cast(ScriptArray!(GFxTrPage)*)(cast(size_t)cast(void*)this + 480); }
	public @property final bool bSelectRequired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x2) != 0; }
	public @property final bool bSelectRequired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x2; } return val; }
	public @property final auto ref GFxTrPage_ManageProfile ManageProfilePage() { return *cast(GFxTrPage_ManageProfile*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref GFxTrPage_ManageProfiles ManageProfilesPage() { return *cast(GFxTrPage_ManageProfiles*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref GFxTrPage_RentServer RentServerPage() { return *cast(GFxTrPage_RentServer*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref GFxTrPage_QuickMatch QuickMatchPage() { return *cast(GFxTrPage_QuickMatch*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref GFxTrPage_RoamRabbit RoamRabbitPage() { return *cast(GFxTrPage_RoamRabbit*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref GFxTrPage_Extras ExtrasPage() { return *cast(GFxTrPage_Extras*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref GFxTrPage_Queued QueuedPage() { return *cast(GFxTrPage_Queued*)(cast(size_t)cast(void*)this + 96); }
	final GFxTrPage GetActivePage()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54632], params.ptr, cast(void*)0);
		return *cast(GFxTrPage*)params.ptr;
	}
	final GFxTrPage PopPage()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56728], params.ptr, cast(void*)0);
		return *cast(GFxTrPage*)params.ptr;
	}
	final bool NavigateGold(bool bViaStore)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bViaStore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56739], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100332], cast(void*)0, cast(void*)0);
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100333], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100335], params.ptr, cast(void*)0);
	}
	final int TakeFocus(int Index, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100341], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int TakeAction(int Index, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100345], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void ActionUp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100350], cast(void*)0, cast(void*)0);
	}
	final void ActionDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100351], cast(void*)0, cast(void*)0);
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100352], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void ModifyFocus(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100356], params.ptr, cast(void*)0);
	}
	final void HelpButton(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100358], params.ptr, cast(void*)0);
	}
	final void ProfileUp(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100360], params.ptr, cast(void*)0);
	}
	final void ProfileDown(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100362], params.ptr, cast(void*)0);
	}
	final void PushPage(GFxTrPage Page)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrPage*)params.ptr = Page;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100364], params.ptr, cast(void*)0);
	}
	final void PushOpen(GFxTrPage Page)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrPage*)params.ptr = Page;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100366], params.ptr, cast(void*)0);
	}
	final void PopBack()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100368], cast(void*)0, cast(void*)0);
	}
	final void ClearStack()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100369], cast(void*)0, cast(void*)0);
	}
	final void PushOpenMain()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100371], cast(void*)0, cast(void*)0);
	}
	final void PushOpenParty()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100372], cast(void*)0, cast(void*)0);
	}
	final void PushOpenClassSelect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100373], cast(void*)0, cast(void*)0);
	}
	final void PushOpenLogin()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100374], cast(void*)0, cast(void*)0);
	}
	final void TravelToMain()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100375], cast(void*)0, cast(void*)0);
	}
	final void TravelToClasses()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100376], cast(void*)0, cast(void*)0);
	}
	final void TravelToFriends()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100377], cast(void*)0, cast(void*)0);
	}
	final void TravelToSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100378], cast(void*)0, cast(void*)0);
	}
	final void TravelToBundles()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100379], cast(void*)0, cast(void*)0);
	}
	final void TravelToStore()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100380], cast(void*)0, cast(void*)0);
	}
	final void ShowInGameModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100382], cast(void*)0, cast(void*)0);
	}
	final void PromoAction(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100383], params.ptr, cast(void*)0);
	}
	final void SelectedFeature(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100385], params.ptr, cast(void*)0);
	}
	final void ShowReticule(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100387], params.ptr, cast(void*)0);
	}
	final void SaveReticule(GFxObject Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100389], params.ptr, cast(void*)0);
	}
}
