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
	public static immutable auto STATS_VIEW_DM_WEAPONS_RANKED_ALLTIME = 8;
	public static immutable auto STATS_VIEW_DM_VEHICLEWEAPONS_RANKED_ALLTIME = 7;
	public static immutable auto STATS_VIEW_DM_VEHICLES_RANKED_ALLTIME = 6;
	public static immutable auto STATS_VIEW_DM_VEHICLEWEAPONS_ALLTIME = 5;
	public static immutable auto STATS_VIEW_DM_VEHICLES_ALLTIME = 4;
	public static immutable auto STATS_VIEW_DM_WEAPONS_ALLTIME = 3;
	public static immutable auto STATS_VIEW_DM_RANKED_ALLTIME = 2;
	public static immutable auto STATS_VIEW_DM_PLAYER_ALLTIME = 1;
	public static immutable auto QUERY_CAMPAIGN = 6;
	public static immutable auto QUERY_DUEL = 5;
	public static immutable auto QUERY_WAR = 4;
	public static immutable auto QUERY_VCTF = 3;
	public static immutable auto QUERY_CTF = 2;
	public static immutable auto QUERY_TDM = 1;
	public static immutable auto QUERY_DM = 0;
	public static immutable auto PROPERTY_CUSTOMMUTATORS = 0x40000004;
	public static immutable auto PROPERTY_SERVERDESCRIPTION = 0x40000003;
	public static immutable auto PROPERTY_CUSTOMGAMEMODE = 0x40000002;
	public static immutable auto PROPERTY_CUSTOMMAPNAME = 0x40000001;
	public static immutable auto PROPERTY_EPICMUTATORS = 0x10000105;
	public static immutable auto PROPERTY_LEADERBOARDRATING = 0x20000004;
	public static immutable auto PROPERTY_GOALSCORE = 0x1000000B;
	public static immutable auto PROPERTY_TIMELIMIT = 0x1000000A;
	public static immutable auto PROPERTY_NUMBOTS = 0x100000F7;
	public static immutable auto CONTEXT_VSBOTS_4_TO_1 = 6;
	public static immutable auto CONTEXT_VSBOTS_3_TO_1 = 5;
	public static immutable auto CONTEXT_VSBOTS_2_TO_1 = 4;
	public static immutable auto CONTEXT_VSBOTS_3_TO_2 = 3;
	public static immutable auto CONTEXT_VSBOTS_1_TO_1 = 2;
	public static immutable auto CONTEXT_VSBOTS_1_TO_2 = 1;
	public static immutable auto CONTEXT_VSBOTS_NONE = 0;
	public static immutable auto CONTEXT_DEDICATEDSERVER_YES = 1;
	public static immutable auto CONTEXT_DEDICATEDSERVER_NO = 0;
	public static immutable auto CONTEXT_EMPTYSERVER_YES = 1;
	public static immutable auto CONTEXT_EMPTYSERVER_NO = 0;
	public static immutable auto CONTEXT_FULLSERVER_YES = 1;
	public static immutable auto CONTEXT_FULLSERVER_NO = 0;
	public static immutable auto CONTEXT_ALLOWKEYBOARD_ANY = 2;
	public static immutable auto CONTEXT_ALLOWKEYBOARD_YES = 1;
	public static immutable auto CONTEXT_ALLOWKEYBOARD_NO = 0;
	public static immutable auto CONTEXT_FORCERESPAWN_YES = 1;
	public static immutable auto CONTEXT_FORCERESPAWN_NO = 0;
	public static immutable auto CONTEXT_CAMPAIGN_YES = 1;
	public static immutable auto CONTEXT_CAMPAIGN_NO = 0;
	public static immutable auto CONTEXT_LOCKEDSERVER_YES = 1;
	public static immutable auto CONTEXT_LOCKEDSERVER_NO = 0;
	public static immutable auto CONTEXT_PURESERVER_ANY = 2;
	public static immutable auto CONTEXT_PURESERVER_YES = 1;
	public static immutable auto CONTEXT_PURESERVER_NO = 0;
	public static immutable auto CONTEXT_TIMELIMIT_30 = 4;
	public static immutable auto CONTEXT_TIMELIMIT_20 = 3;
	public static immutable auto CONTEXT_TIMELIMIT_15 = 2;
	public static immutable auto CONTEXT_TIMELIMIT_10 = 1;
	public static immutable auto CONTEXT_TIMELIMIT_5 = 0;
	public static immutable auto CONTEXT_NUMBOTS_8 = 8;
	public static immutable auto CONTEXT_NUMBOTS_7 = 7;
	public static immutable auto CONTEXT_NUMBOTS_6 = 6;
	public static immutable auto CONTEXT_NUMBOTS_5 = 5;
	public static immutable auto CONTEXT_NUMBOTS_4 = 4;
	public static immutable auto CONTEXT_NUMBOTS_3 = 3;
	public static immutable auto CONTEXT_NUMBOTS_2 = 2;
	public static immutable auto CONTEXT_NUMBOTS_1 = 1;
	public static immutable auto CONTEXT_NUMBOTS_0 = 0;
	public static immutable auto CONTEXT_GOALSCORE_30 = 4;
	public static immutable auto CONTEXT_GOALSCORE_20 = 3;
	public static immutable auto CONTEXT_GOALSCORE_15 = 2;
	public static immutable auto CONTEXT_GOALSCORE_10 = 1;
	public static immutable auto CONTEXT_GOALSCORE_5 = 0;
	public static immutable auto CONTEXT_BOTSKILL_GODLIKE = 7;
	public static immutable auto CONTEXT_BOTSKILL_INHUMAN = 6;
	public static immutable auto CONTEXT_BOTSKILL_MASTERFUL = 5;
	public static immutable auto CONTEXT_BOTSKILL_ADEPT = 4;
	public static immutable auto CONTEXT_BOTSKILL_SKILLED = 3;
	public static immutable auto CONTEXT_BOTSKILL_EXPERIENCED = 2;
	public static immutable auto CONTEXT_BOTSKILL_AVERAGE = 1;
	public static immutable auto CONTEXT_BOTSKILL_NOVICE = 0;
	public static immutable auto CONTEXT_MAPNAME_CUSTOM = 0;
	public static immutable auto CONTEXT_DEDICATEDSERVER = 17;
	public static immutable auto CONTEXT_EMPTYSERVER = 16;
	public static immutable auto CONTEXT_FULLSERVER = 15;
	public static immutable auto CONTEXT_FORCERESPAWN = 14;
	public static immutable auto CONTEXT_CAMPAIGN = 13;
	public static immutable auto CONTEXT_VSBOTS = 12;
	public static immutable auto CONTEXT_PURESERVER = 11;
	public static immutable auto CONTEXT_BOTSKILL = 10;
	public static immutable auto CONTEXT_ALLOWKEYBOARD = 2;
	public static immutable auto CONTEXT_LOCKEDSERVER = 1;
	public static immutable auto CONTEXT_MAPNAME = 0;
	public static immutable auto CONTEXT_GAME_MODE_CAMPAIGN = 7;
	public static immutable auto CONTEXT_GAME_MODE_CUSTOM = 6;
	public static immutable auto CONTEXT_GAME_MODE_DUEL = 5;
	public static immutable auto CONTEXT_GAME_MODE_TDM = 4;
	public static immutable auto CONTEXT_GAME_MODE_VCTF = 3;
	public static immutable auto CONTEXT_GAME_MODE_WAR = 2;
	public static immutable auto CONTEXT_GAME_MODE_CTF = 1;
	public static immutable auto CONTEXT_GAME_MODE_DM = 0;
	public static immutable auto CONTEXT_GAME_MODE = 0x0000800B;
	public static immutable auto CONTEXT_PRESENCE_MENUPRESENCE = 0;
	public static immutable auto GS_CDKEY_PART_MAXLENGTH = 4;
	public static immutable auto GS_EMAIL_MAXLENGTH = 50;
	public static immutable auto GS_MESSAGE_MAXLENGTH = 255;
	public static immutable auto GS_PASSWORD_MAXLENGTH = 30;
	public static immutable auto GS_USERNAME_MAXLENGTH = 15;
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
		public @property final auto ref float Desaturation() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Desaturation[4];
		public @property final auto ref float HighLights() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __HighLights[4];
		public @property final auto ref float MidTones() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __MidTones[4];
		public @property final auto ref float Shadows() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Shadows[4];
	}
	public @property final bool bLateComer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x1) != 0; }
	public @property final bool bLateComer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x1; } return val; }
	public @property final auto ref UTUIDataStore_StringAliasBindingsMap BoundEventsStringDataStore() { return *cast(UTUIDataStore_StringAliasBindingsMap*)(cast(size_t)cast(void*)this + 2152); }
	public @property final bool bQuittingToMainMenu() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x20000) != 0; }
	public @property final bool bQuittingToMainMenu(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x20000; } return val; }
	public @property final bool bJustFoundVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x80000) != 0; }
	public @property final bool bJustFoundVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x80000; } return val; }
	public @property final bool bLandingShake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x4000) != 0; }
	public @property final bool bLandingShake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x4000; } return val; }
	public @property final auto ref float LastWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2100); }
	public @property final auto ref float LastTauntAnimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1992); }
	public @property final bool bIsTyping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x2) != 0; }
	public @property final bool bIsTyping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x2; } return val; }
	public @property final auto ref UTAnnouncer Announcer() { return *cast(UTAnnouncer*)(cast(size_t)cast(void*)this + 1984); }
	public @property final auto ref UTMusicManager MusicManager() { return *cast(UTMusicManager*)(cast(size_t)cast(void*)this + 1988); }
	public @property final bool bBehindView() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x80) != 0; }
	public @property final bool bBehindView(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x80; } return val; }
	public @property final auto ref float LastKickWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1996); }
	public @property final auto ref float OnFootDefaultFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 2160); }
	public @property final auto ref UTPlayerController.EWeaponHand WeaponHandPreference() { return *cast(UTPlayerController.EWeaponHand*)(cast(size_t)cast(void*)this + 1966); }
	public @property final bool bAutoTaunt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x4) != 0; }
	public @property final bool bAutoTaunt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x4; } return val; }
	public @property final bool bCenteredWeaponFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x8000) != 0; }
	public @property final bool bCenteredWeaponFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x8000; } return val; }
	public @property final auto ref UTPlayerController.EAutoObjectivePreference AutoObjectivePreference() { return *cast(UTPlayerController.EAutoObjectivePreference*)(cast(size_t)cast(void*)this + 1968); }
	public @property final auto ref UTPlayerController.EUTVehicleControls VehicleControlType() { return *cast(UTPlayerController.EUTVehicleControls*)(cast(size_t)cast(void*)this + 1969); }
	public @property final auto ref UTPlayerController.EPawnShadowMode PawnShadowMode() { return *cast(UTPlayerController.EPawnShadowMode*)(cast(size_t)cast(void*)this + 1965); }
	public @property final auto ref Actor LastAutoObjective() { return *cast(Actor*)(cast(size_t)cast(void*)this + 2132); }
	public @property final auto ref float LastShowPathTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2128); }
	public @property final bool bUseVehicleRotationOnPossess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x8) != 0; }
	public @property final bool bUseVehicleRotationOnPossess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x8; } return val; }
	public @property final auto ref ubyte IdentifiedTeam() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1964); }
	public @property final auto ref UTPlayerController.EWeaponHand WeaponHand() { return *cast(UTPlayerController.EWeaponHand*)(cast(size_t)cast(void*)this + 1967); }
	public @property final auto ref float LastUseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2140); }
	public @property final bool bAlreadyReset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x400000) != 0; }
	public @property final bool bAlreadyReset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x400000; } return val; }
	public @property final auto ref Actor CalcViewActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 2032); }
	public @property final bool bFreeCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x200) != 0; }
	public @property final bool bFreeCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x200; } return val; }
	public @property final auto ref float LastCameraTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2024); }
	public @property final bool bDebugFreeCam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x40000) != 0; }
	public @property final bool bDebugFreeCam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x40000; } return val; }
	public @property final auto ref Rotator DebugFreeCamRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2116); }
	public @property final auto ref ScriptClass MatineeCameraClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2028); }
	public @property final auto ref Vector CalcViewActorLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2036); }
	public @property final auto ref Rotator CalcViewActorRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2048); }
	public @property final auto ref float CalcEyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2084); }
	public @property final auto ref Vector CalcWalkBob() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2088); }
	public @property final auto ref Vector CalcViewLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2060); }
	public @property final auto ref Rotator CalcViewRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2072); }
	public @property final auto ref CameraAnim DamageCameraAnim() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 2020); }
	public @property final bool bCurrentCamAnimIsDamageShake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x1000) != 0; }
	public @property final bool bCurrentCamAnimIsDamageShake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x1000; } return val; }
	public @property final bool bCurrentCamAnimAffectsFOV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x2000) != 0; }
	public @property final bool bCurrentCamAnimAffectsFOV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x2000; } return val; }
	public @property final auto ref ForceFeedbackWaveform CameraShakeShortWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 2012); }
	public @property final auto ref ForceFeedbackWaveform CameraShakeLongWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 2016); }
	public @property final bool bCameraOutOfWorld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x20) != 0; }
	public @property final bool bCameraOutOfWorld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x20; } return val; }
	public @property final auto ref ScriptString MsgPlayerNotFound() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2000); }
	public @property final bool bServerMutedText() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x800000) != 0; }
	public @property final bool bServerMutedText(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x800000; } return val; }
	public @property final bool bNonlinearZoomInterpolation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x10000) != 0; }
	public @property final bool bNonlinearZoomInterpolation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x10000; } return val; }
	public @property final auto ref float FOVNonlinearZoomInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2108); }
	public @property final auto ref float FOVLinearZoomRate() { return *cast(float*)(cast(size_t)cast(void*)this + 2104); }
	public @property final auto ref float LastBullseyeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2136); }
	public @property final auto ref float LastTeamChangeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2172); }
	public @property final bool bNoTextToSpeechVoiceMessages() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x400) != 0; }
	public @property final bool bNoTextToSpeechVoiceMessages(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x400; } return val; }
	public @property final bool bTextToSpeechTeamMessagesOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x800) != 0; }
	public @property final bool bTextToSpeechTeamMessagesOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x800; } return val; }
	public @property final auto ref float NextAdminCmdTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2156); }
	public @property final bool bRotateMinimap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x10) != 0; }
	public @property final bool bRotateMinimap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x10; } return val; }
	public @property final bool bFirstPersonWeaponsSelfShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x40) != 0; }
	public @property final bool bFirstPersonWeaponsSelfShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x40; } return val; }
	public @property final bool bForceBehindView() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x100) != 0; }
	public @property final bool bForceBehindView(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x100; } return val; }
	public @property final bool bNoCrosshair() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x100000) != 0; }
	public @property final bool bNoCrosshair(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x100000; } return val; }
	public @property final bool bSimpleCrosshair() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x200000) != 0; }
	public @property final bool bSimpleCrosshair(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x200000; } return val; }
	public @property final bool bHideObjectivePaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1960) & 0x1000000) != 0; }
	public @property final bool bHideObjectivePaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1960) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1960) &= ~0x1000000; } return val; }
	public @property final auto ref Vector DesiredLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1972); }
	public @property final auto ref float ZoomRotationModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 2112); }
	public @property final auto ref float OldMessageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2144); }
	public @property final auto ref float LastFriendlyFireTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
	public @property final auto ref float LastIncomingMessageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
	public @property final auto ref float LastCombatUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
	final void ServerThrowWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36302], cast(void*)0, cast(void*)0);
	}
	final void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36303], cast(void*)0, cast(void*)0);
	}
	final void PulseTeamColor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36305], cast(void*)0, cast(void*)0);
	}
	final void ServerSetCharacterClass(ScriptClass CharClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = CharClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36306], params.ptr, cast(void*)0);
	}
	final void ClearStringAliasBindingMapCache()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36314], cast(void*)0, cast(void*)0);
	}
	final void RegisterCustomPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36316], cast(void*)0, cast(void*)0);
	}
	final void UnregisterPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36321], cast(void*)0, cast(void*)0);
	}
	final void AddOnlineDelegates(bool bRegisterVoice)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bRegisterVoice;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36324], params.ptr, cast(void*)0);
	}
	final void ClearOnlineDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36326], cast(void*)0, cast(void*)0);
	}
	final void ClientSetOnlineStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36328], cast(void*)0, cast(void*)0);
	}
	final void OnConnectionStatusChange(OnlineSubsystem.EOnlineServerConnectionStatus ConnectionStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)params.ptr = ConnectionStatus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36337], params.ptr, cast(void*)0);
	}
	final void OnLinkStatusChanged(bool bConnected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bConnected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36341], params.ptr, cast(void*)0);
	}
	final void OnReadProfileSettingsComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36344], params.ptr, cast(void*)0);
	}
	final void OnGameInviteReceived(ubyte LocalUserNum, ScriptString RequestingNick)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = RequestingNick;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36347], params.ptr, cast(void*)0);
	}
	final void OnFriendInviteReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer, ScriptString RequestingNick, ScriptString Message)
	{
		ubyte params[33];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		*cast(ScriptString*)&params[12] = RequestingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36350], params.ptr, cast(void*)0);
	}
	final void OnFriendMessageReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId SendingPlayer, ScriptString SendingNick, ScriptString Message)
	{
		ubyte params[33];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = SendingPlayer;
		*cast(ScriptString*)&params[12] = SendingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36355], params.ptr, cast(void*)0);
	}
	final void NotifyInviteFailed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36360], cast(void*)0, cast(void*)0);
	}
	final void NotifyNotAllPlayersCanJoinInvite()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36361], cast(void*)0, cast(void*)0);
	}
	final void NotifyNotEnoughSpaceInInvite()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36362], cast(void*)0, cast(void*)0);
	}
	final void ClientWasKicked()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36363], cast(void*)0, cast(void*)0);
	}
	final void SetFrontEndErrorMessage(ScriptString Title, ScriptString Message)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36364], params.ptr, cast(void*)0);
	}
	final void QuitToMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36367], cast(void*)0, cast(void*)0);
	}
	final void FinishQuitToMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36369], cast(void*)0, cast(void*)0);
	}
	final bool CleanupOnlineSubsystemSession(bool bWasFromMenu)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bWasFromMenu;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36370], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void OnEndOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36373], params.ptr, cast(void*)0);
	}
	final void OnDestroyOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36376], params.ptr, cast(void*)0);
	}
	final void ClientSetSpeechRecognitionObject(SpeechRecognition NewRecognitionData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SpeechRecognition*)params.ptr = NewRecognitionData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36379], params.ptr, cast(void*)0);
	}
	final void SpeechRecognitionComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36381], cast(void*)0, cast(void*)0);
	}
	final void ServerProcessSpeechRecognition(OnlineSubsystem.SpeechRecognizedWord ReplicatedWords)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.SpeechRecognizedWord*)params.ptr = ReplicatedWords;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36386], params.ptr, cast(void*)0);
	}
	final void ClientHearSound(SoundCue ASound, Actor SourceActor, Vector SourceLocation, bool bStopWhenOwnerDestroyed, bool bIsOccluded)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(Actor*)&params[4] = SourceActor;
		*cast(Vector*)&params[8] = SourceLocation;
		*cast(bool*)&params[20] = bStopWhenOwnerDestroyed;
		*cast(bool*)&params[24] = bIsOccluded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36392], params.ptr, cast(void*)0);
	}
	final bool AimingHelp(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36399], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float AimHelpModifier()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36403], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final Rotator GetAdjustedAimFor(Weapon W, Vector StartFireLoc)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		*cast(Vector*)&params[4] = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36406], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	final bool FindVehicleToDrive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36419], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final UTVehicle CheckPickedVehicle(UTVehicle V, bool bEnterVehicle)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		*cast(bool*)&params[4] = bEnterVehicle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36421], params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[8];
	}
	final void ClientSetRequestedEntryWithFlag(UTVehicle V, bool bNewValue, int MessageIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		*cast(bool*)&params[4] = bNewValue;
		*cast(int*)&params[8] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36432], params.ptr, cast(void*)0);
	}
	final UTVehicle CheckVehicleToDrive(bool bEnterVehicle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnterVehicle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36438], params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[4];
	}
	final void DropFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36455], cast(void*)0, cast(void*)0);
	}
	final void ServerDropFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36456], cast(void*)0, cast(void*)0);
	}
	final bool LandingShake()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36457], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PlayBeepSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36460], cast(void*)0, cast(void*)0);
	}
	final void ReceiveWarning(Pawn shooter, float projSpeed, Vector FireDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = shooter;
		*cast(float*)&params[4] = projSpeed;
		*cast(Vector*)&params[8] = FireDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36461], params.ptr, cast(void*)0);
	}
	final void ReceiveProjectileWarning(Projectile Proj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = Proj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36466], params.ptr, cast(void*)0);
	}
	final void ProjectileWarningTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36468], cast(void*)0, cast(void*)0);
	}
	final void PlayWinMessage(bool bWinner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWinner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36469], params.ptr, cast(void*)0);
	}
	final bool TriggerInteracted()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36471], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PlayVehicleHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36483], cast(void*)0, cast(void*)0);
	}
	final void ServerPlayVehicleHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36486], cast(void*)0, cast(void*)0);
	}
	final void Typing(bool bTyping)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bTyping;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36488], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36491], cast(void*)0, cast(void*)0);
	}
	final void OnControllerChanged(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36494], params.ptr, cast(void*)0);
	}
	final void SoakPause(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36498], params.ptr, cast(void*)0);
	}
	final void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36501], params.ptr, cast(void*)0);
	}
	final void KickWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36503], cast(void*)0, cast(void*)0);
	}
	final void CheckJumpOrDuck()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36506], cast(void*)0, cast(void*)0);
	}
	final void FOV(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36509], params.ptr, cast(void*)0);
	}
	final void FixFOV()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36512], cast(void*)0, cast(void*)0);
	}
	final void Restart(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36513], params.ptr, cast(void*)0);
	}
	final void ClientRestart(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36515], params.ptr, cast(void*)0);
	}
	final void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		*cast(Camera.ViewTargetTransitionParams*)&params[4] = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36524], params.ptr, cast(void*)0);
	}
	final void CheckAutoObjective(bool bOnlyNotifyDifferent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bOnlyNotifyDifferent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36532], params.ptr, cast(void*)0);
	}
	final void SetAutoObjective(Actor ObjectiveActor, bool bOnlyNotifyDifferent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = ObjectiveActor;
		*cast(bool*)&params[4] = bOnlyNotifyDifferent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36538], params.ptr, cast(void*)0);
	}
	final void ClientSetAutoObjective(Actor NewAutoObjective)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewAutoObjective;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36549], params.ptr, cast(void*)0);
	}
	final void Possess(Pawn inPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = inPawn;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36553], params.ptr, cast(void*)0);
	}
	final void AcknowledgePossession(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36556], params.ptr, cast(void*)0);
	}
	final void IdentifyTeamMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36561], cast(void*)0, cast(void*)0);
	}
	final void ReceivedPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36563], cast(void*)0, cast(void*)0);
	}
	final void ServerPlayerPreferences(UTPlayerController.EWeaponHand NewWeaponHand, bool bNewAutoTaunt, bool bNewCenteredWeaponFire, UTPlayerController.EAutoObjectivePreference NewAutoObjectivePreference, UTPlayerController.EUTVehicleControls NewVehicleControls)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController.EWeaponHand*)params.ptr = NewWeaponHand;
		*cast(bool*)&params[4] = bNewAutoTaunt;
		*cast(bool*)&params[8] = bNewCenteredWeaponFire;
		*cast(UTPlayerController.EAutoObjectivePreference*)&params[12] = NewAutoObjectivePreference;
		*cast(UTPlayerController.EUTVehicleControls*)&params[13] = NewVehicleControls;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36564], params.ptr, cast(void*)0);
	}
	final void ServerSetHand(UTPlayerController.EWeaponHand NewWeaponHand)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTPlayerController.EWeaponHand*)params.ptr = NewWeaponHand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36570], params.ptr, cast(void*)0);
	}
	final void SetHand(UTPlayerController.EWeaponHand NewWeaponHand)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTPlayerController.EWeaponHand*)params.ptr = NewWeaponHand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36573], params.ptr, cast(void*)0);
	}
	final void ResetCameraMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36575], cast(void*)0, cast(void*)0);
	}
	final bool UsingFirstPersonCamera()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36576], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ServerSetAutoTaunt(bool Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36578], params.ptr, cast(void*)0);
	}
	final void SetAutoTaunt(bool Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36580], params.ptr, cast(void*)0);
	}
	final void ToggleScreenShotMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36582], cast(void*)0, cast(void*)0);
	}
	final void PlayStartupMessage(ubyte StartupStage)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = StartupStage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36585], params.ptr, cast(void*)0);
	}
	final void NotifyTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass DamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = DamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36589], params.ptr, cast(void*)0);
	}
	final void ClientPlayTakeHit(Vector HitLoc, ubyte Damage, ScriptClass DamageType)
	{
		ubyte params[17];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		params[12] = Damage;
		*cast(ScriptClass*)&params[16] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36596], params.ptr, cast(void*)0);
	}
	final bool ServerUse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36600], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool Use()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36603], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool PerformedUseAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36606], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ClearDoubleClick()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36611], cast(void*)0, cast(void*)0);
	}
	final void ShowScoreboard()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36720], cast(void*)0, cast(void*)0);
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36767], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36772], cast(void*)0, cast(void*)0);
	}
	final void ClientReset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36773], cast(void*)0, cast(void*)0);
	}
	final void BehindView()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36775], cast(void*)0, cast(void*)0);
	}
	final void SetBehindView(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36776], params.ptr, cast(void*)0);
	}
	final void ClientSetBehindView(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36780], params.ptr, cast(void*)0);
	}
	final void SetCameraMode(ScriptName NewCamMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewCamMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36782], params.ptr, cast(void*)0);
	}
	final void SpawnCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36786], cast(void*)0, cast(void*)0);
	}
	final void GetPlayerViewPoint(Vector* POVLocation, Rotator* POVRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *POVLocation;
		*cast(Rotator*)&params[12] = *POVRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36789], params.ptr, cast(void*)0);
		*POVLocation = *cast(Vector*)params.ptr;
		*POVRotation = *cast(Rotator*)&params[12];
	}
	final void CalcCameraOnViewTarget(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36802], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
	}
	final void ClientMusicEvent(int EventIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EventIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36807], params.ptr, cast(void*)0);
	}
	final bool AlreadyInActionMusic()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36809], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ClientPlayAnnouncement(ScriptClass InMessageClass, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36814], params.ptr, cast(void*)0);
	}
	final void PlayAnnouncement(ScriptClass InMessageClass, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36819], params.ptr, cast(void*)0);
	}
	final void DamageShake(int Damage, ScriptClass DamageType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(ScriptClass*)&params[4] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36825], params.ptr, cast(void*)0);
	}
	final void StopViewShaking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36834], cast(void*)0, cast(void*)0);
	}
	final void PlayCameraAnim(CameraAnim AnimToPlay, float Scale, float Rate, float BlendInTime, float BlendOutTime, bool bLoop, bool bIsDamageShake)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36835], params.ptr, cast(void*)0);
	}
	final void StopCameraAnim(bool bImmediate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bImmediate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36847], params.ptr, cast(void*)0);
	}
	final void SetCameraAnimStrength(float NewStrength)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewStrength;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36849], params.ptr, cast(void*)0);
	}
	final void ClientPlayCameraAnim(CameraAnim AnimToPlay, float Scale, float Rate, float BlendInTime, float BlendOutTime, bool bLoop, bool bRandomStartTime, Camera.ECameraAnimPlaySpace Space, Rotator CustomPlaySpace)
	{
		ubyte params[41];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36851], params.ptr, cast(void*)0);
	}
	final void ClientStopCameraAnim(CameraAnim AnimToStop)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = AnimToStop;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36861], params.ptr, cast(void*)0);
	}
	final void OnPlayCameraAnim(UTSeqAct_PlayCameraAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_PlayCameraAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36863], params.ptr, cast(void*)0);
	}
	final void OnStopCameraAnim(UTSeqAct_StopCameraAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_StopCameraAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36871], params.ptr, cast(void*)0);
	}
	final void ViewShake(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36874], params.ptr, cast(void*)0);
	}
	final void ToggleMelee()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36876], cast(void*)0, cast(void*)0);
	}
	final void ToggleTranslocator()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36878], cast(void*)0, cast(void*)0);
	}
	final void CallServerMove(SavedMove NewMove, Vector ClientLoc, ubyte ClientRoll, int View, SavedMove OldMove)
	{
		ubyte params[25];
		params[] = 0;
		*cast(SavedMove*)params.ptr = NewMove;
		*cast(Vector*)&params[4] = ClientLoc;
		params[16] = ClientRoll;
		*cast(int*)&params[20] = View;
		*cast(SavedMove*)&params[24] = OldMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36879], params.ptr, cast(void*)0);
	}
	final void ShortServerMove(float TimeStamp, Vector ClientLoc, ubyte NewFlags, ubyte ClientRoll, int View)
	{
		ubyte params[22];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(Vector*)&params[4] = ClientLoc;
		params[16] = NewFlags;
		params[17] = ClientRoll;
		*cast(int*)&params[20] = View;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36889], params.ptr, cast(void*)0);
	}
	final void LongClientAdjustPosition(float TimeStamp, ScriptName NewState, Actor.EPhysics newPhysics, float NewLocX, float NewLocY, float NewLocZ, float NewVelX, float NewVelY, float NewVelZ, Actor NewBase, float NewFloorX, float NewFloorY, float NewFloorZ)
	{
		ubyte params[53];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36895], params.ptr, cast(void*)0);
	}
	final void ViewNextBot()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36929], cast(void*)0, cast(void*)0);
	}
	final void SwitchWeapon(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36930], params.ptr, cast(void*)0);
	}
	final void ServerViewSelf(Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Camera.ViewTargetTransitionParams*)params.ptr = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36932], params.ptr, cast(void*)0);
	}
	final void ViewPlayerByName(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36936], params.ptr, cast(void*)0);
	}
	final void ServerViewPlayerByName(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36938], params.ptr, cast(void*)0);
	}
	final void ViewObjective()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36942], cast(void*)0, cast(void*)0);
	}
	final void ServerViewObjective()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36943], cast(void*)0, cast(void*)0);
	}
	final void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36944], cast(void*)0, cast(void*)0);
	}
	final void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36945], cast(void*)0, cast(void*)0);
	}
	final void AdjustCameraScale(bool bIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36946], params.ptr, cast(void*)0);
	}
	final bool CanCommunicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36967], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ShowMidGameMenu(ScriptName TabTag, bool bEnableInput)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TabTag;
		*cast(bool*)&params[8] = bEnableInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36970], params.ptr, cast(void*)0);
	}
	final void ClientGameEnded(Actor EndGameFocus, bool bIsWinner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = EndGameFocus;
		*cast(bool*)&params[4] = bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36974], params.ptr, cast(void*)0);
	}
	final void RoundHasEnded(Actor EndRoundFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = EndRoundFocus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36977], params.ptr, cast(void*)0);
	}
	final void ClientRoundEnded(Actor EndRoundFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = EndRoundFocus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36979], params.ptr, cast(void*)0);
	}
	final void CheckBulletWhip(SoundCue BulletWhip, Vector FireLocation, Vector FireDir, Vector HitLocation)
	{
		ubyte params[40];
		params[] = 0;
		*cast(SoundCue*)params.ptr = BulletWhip;
		*cast(Vector*)&params[4] = FireLocation;
		*cast(Vector*)&params[16] = FireDir;
		*cast(Vector*)&params[28] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36981], params.ptr, cast(void*)0);
	}
	final void PawnDied(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36989], params.ptr, cast(void*)0);
	}
	final void ClientPawnDied()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36991], cast(void*)0, cast(void*)0);
	}
	final void OnUpdatePropertyFOVAngle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36992], cast(void*)0, cast(void*)0);
	}
	final void AdjustFOV(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36993], params.ptr, cast(void*)0);
	}
	final void StartZoom(float NewDesiredFOV, float NewZoomRate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewDesiredFOV;
		*cast(float*)&params[4] = NewZoomRate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36999], params.ptr, cast(void*)0);
	}
	final void StartZoomNonlinear(float NewDesiredFOV, float NewZoomInterpSpeed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewDesiredFOV;
		*cast(float*)&params[4] = NewZoomInterpSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37002], params.ptr, cast(void*)0);
	}
	final void StopZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37005], cast(void*)0, cast(void*)0);
	}
	final void EndZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37006], cast(void*)0, cast(void*)0);
	}
	final void EndZoomNonlinear(float ZoomInterpSpeed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ZoomInterpSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37007], params.ptr, cast(void*)0);
	}
	final void ClientEndZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37009], cast(void*)0, cast(void*)0);
	}
	final void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37010], params.ptr, cast(void*)0);
	}
	final void CharacterProcessingComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37013], cast(void*)0, cast(void*)0);
	}
	final bool CanRestartPlayer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37016], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SendMessage(PlayerReplicationInfo Recipient, ScriptName MessageType, float Wait, ScriptClass DamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Recipient;
		*cast(ScriptName*)&params[4] = MessageType;
		*cast(float*)&params[12] = Wait;
		*cast(ScriptClass*)&params[16] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37018], params.ptr, cast(void*)0);
	}
	final void ReceiveBotVoiceMessage(UTPlayerReplicationInfo SenderPRI, int MessageIndex, UObject LocationObject)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = SenderPRI;
		*cast(int*)&params[4] = MessageIndex;
		*cast(UObject*)&params[8] = LocationObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37024], params.ptr, cast(void*)0);
	}
	final void ServerSetNetSpeed(int NewSpeed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37028], params.ptr, cast(void*)0);
	}
	final void BullseyeMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37030], cast(void*)0, cast(void*)0);
	}
	final void ServerChangeTeam(int N)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37035], params.ptr, cast(void*)0);
	}
	final void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37038], params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	final void ServerKickBan(ScriptString PlayerToKick, bool bBan)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerToKick;
		*cast(bool*)&params[12] = bBan;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37042], params.ptr, cast(void*)0);
	}
	final bool AllowTTSMessageFrom(PlayerReplicationInfo PRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37045], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ServerSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37053], params.ptr, cast(void*)0);
	}
	final void ServerTeamSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37055], params.ptr, cast(void*)0);
	}
	final bool AllowTextMessage(ScriptString msg)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37057], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool AdminCmdOk()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37060], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void AdminLogin(ScriptString Password)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37063], params.ptr, cast(void*)0);
	}
	final void ServerAdminLogin(ScriptString Password)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37065], params.ptr, cast(void*)0);
	}
	final void AdminLogout()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37067], cast(void*)0, cast(void*)0);
	}
	final void ServerAdminLogOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37068], cast(void*)0, cast(void*)0);
	}
	// WARNING: Function 'Admin' has the same name as a defined type!
	final void ServerAdmin(ScriptString CommandLine)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = CommandLine;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37071], params.ptr, cast(void*)0);
	}
	final void AdminKickBan(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37074], params.ptr, cast(void*)0);
	}
	final void AdminKick(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37076], params.ptr, cast(void*)0);
	}
	final void AdminPlayerList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37078], cast(void*)0, cast(void*)0);
	}
	final void AdminRestartMap()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37080], cast(void*)0, cast(void*)0);
	}
	final void ServerRestartMap()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37081], cast(void*)0, cast(void*)0);
	}
	final void AdminChangeMap(ScriptString URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37082], params.ptr, cast(void*)0);
	}
	final void ServerChangeMap(ScriptString URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37084], params.ptr, cast(void*)0);
	}
	final void AdminForceVoiceMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37086], params.ptr, cast(void*)0);
	}
	final void ServerForceVoiceMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37088], params.ptr, cast(void*)0);
	}
	final void AdminForceVoiceUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37092], params.ptr, cast(void*)0);
	}
	final void ServerForceVoiceUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37094], params.ptr, cast(void*)0);
	}
	final void AdminForceTextMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37098], params.ptr, cast(void*)0);
	}
	final void ServerForceTextMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37100], params.ptr, cast(void*)0);
	}
	final void AdminForceTextUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37103], params.ptr, cast(void*)0);
	}
	final void ServerForceTextUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37105], params.ptr, cast(void*)0);
	}
	final void Disconnect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37108], cast(void*)0, cast(void*)0);
	}
	final void OnScoreChanged(UTTeamInfo T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTTeamInfo*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37109], params.ptr, cast(void*)0);
	}
}
