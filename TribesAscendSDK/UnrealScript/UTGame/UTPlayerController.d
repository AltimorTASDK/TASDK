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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36302], cast(void*)0, cast(void*)0);
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36303], cast(void*)0, cast(void*)0);
	}
	void PulseTeamColor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36305], cast(void*)0, cast(void*)0);
	}
	void ServerSetCharacterClass(ScriptClass CharClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = CharClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36306], params.ptr, cast(void*)0);
	}
	void ClearStringAliasBindingMapCache()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36314], cast(void*)0, cast(void*)0);
	}
	void RegisterCustomPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36316], cast(void*)0, cast(void*)0);
	}
	void UnregisterPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36321], cast(void*)0, cast(void*)0);
	}
	void AddOnlineDelegates(bool bRegisterVoice)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bRegisterVoice;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36324], params.ptr, cast(void*)0);
	}
	void ClearOnlineDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36326], cast(void*)0, cast(void*)0);
	}
	void ClientSetOnlineStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36328], cast(void*)0, cast(void*)0);
	}
	void OnConnectionStatusChange(OnlineSubsystem.EOnlineServerConnectionStatus ConnectionStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)params.ptr = ConnectionStatus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36337], params.ptr, cast(void*)0);
	}
	void OnLinkStatusChanged(bool bConnected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bConnected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36341], params.ptr, cast(void*)0);
	}
	void OnReadProfileSettingsComplete(ubyte LocalUserNum, bool bWasSuccessful)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36344], params.ptr, cast(void*)0);
	}
	void OnGameInviteReceived(ubyte LocalUserNum, ScriptString RequestingNick)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = RequestingNick;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36347], params.ptr, cast(void*)0);
	}
	void OnFriendInviteReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer, ScriptString RequestingNick, ScriptString Message)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		*cast(ScriptString*)&params[12] = RequestingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36350], params.ptr, cast(void*)0);
	}
	void OnFriendMessageReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId SendingPlayer, ScriptString SendingNick, ScriptString Message)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = SendingPlayer;
		*cast(ScriptString*)&params[12] = SendingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36355], params.ptr, cast(void*)0);
	}
	void NotifyInviteFailed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36360], cast(void*)0, cast(void*)0);
	}
	void NotifyNotAllPlayersCanJoinInvite()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36361], cast(void*)0, cast(void*)0);
	}
	void NotifyNotEnoughSpaceInInvite()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36362], cast(void*)0, cast(void*)0);
	}
	void ClientWasKicked()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36363], cast(void*)0, cast(void*)0);
	}
	void SetFrontEndErrorMessage(ScriptString Title, ScriptString Message)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36364], params.ptr, cast(void*)0);
	}
	void QuitToMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36367], cast(void*)0, cast(void*)0);
	}
	void FinishQuitToMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36369], cast(void*)0, cast(void*)0);
	}
	bool CleanupOnlineSubsystemSession(bool bWasFromMenu)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bWasFromMenu;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36370], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnEndOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36373], params.ptr, cast(void*)0);
	}
	void OnDestroyOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36376], params.ptr, cast(void*)0);
	}
	void ClientSetSpeechRecognitionObject(SpeechRecognition NewRecognitionData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SpeechRecognition*)params.ptr = NewRecognitionData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36379], params.ptr, cast(void*)0);
	}
	void SpeechRecognitionComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36381], cast(void*)0, cast(void*)0);
	}
	void ServerProcessSpeechRecognition(OnlineSubsystem.SpeechRecognizedWord ReplicatedWords)
	{
		ubyte params[60];
		params[] = 0;
		*cast(OnlineSubsystem.SpeechRecognizedWord*)params.ptr = ReplicatedWords;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36386], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36392], params.ptr, cast(void*)0);
	}
	bool AimingHelp(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36399], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float AimHelpModifier()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36403], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Rotator GetAdjustedAimFor(Weapon W, Vector StartFireLoc)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		*cast(Vector*)&params[4] = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36406], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	bool FindVehicleToDrive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36419], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	UTVehicle CheckPickedVehicle(UTVehicle V, bool bEnterVehicle)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		*cast(bool*)&params[4] = bEnterVehicle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36421], params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[8];
	}
	void ClientSetRequestedEntryWithFlag(UTVehicle V, bool bNewValue, int MessageIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		*cast(bool*)&params[4] = bNewValue;
		*cast(int*)&params[8] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36432], params.ptr, cast(void*)0);
	}
	UTVehicle CheckVehicleToDrive(bool bEnterVehicle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnterVehicle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36438], params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[4];
	}
	void DropFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36455], cast(void*)0, cast(void*)0);
	}
	void ServerDropFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36456], cast(void*)0, cast(void*)0);
	}
	bool LandingShake()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36457], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PlayBeepSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36460], cast(void*)0, cast(void*)0);
	}
	void ReceiveWarning(Pawn shooter, float projSpeed, Vector FireDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = shooter;
		*cast(float*)&params[4] = projSpeed;
		*cast(Vector*)&params[8] = FireDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36461], params.ptr, cast(void*)0);
	}
	void ReceiveProjectileWarning(Projectile Proj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = Proj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36466], params.ptr, cast(void*)0);
	}
	void ProjectileWarningTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36468], cast(void*)0, cast(void*)0);
	}
	void PlayWinMessage(bool bWinner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWinner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36469], params.ptr, cast(void*)0);
	}
	bool TriggerInteracted()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36471], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PlayVehicleHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36483], cast(void*)0, cast(void*)0);
	}
	void ServerPlayVehicleHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36486], cast(void*)0, cast(void*)0);
	}
	void Typing(bool bTyping)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bTyping;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36488], params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36491], cast(void*)0, cast(void*)0);
	}
	void OnControllerChanged(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36494], params.ptr, cast(void*)0);
	}
	void SoakPause(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36498], params.ptr, cast(void*)0);
	}
	void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36501], params.ptr, cast(void*)0);
	}
	void KickWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36503], cast(void*)0, cast(void*)0);
	}
	void CheckJumpOrDuck()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36506], cast(void*)0, cast(void*)0);
	}
	void FOV(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36509], params.ptr, cast(void*)0);
	}
	void FixFOV()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36512], cast(void*)0, cast(void*)0);
	}
	void Restart(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36513], params.ptr, cast(void*)0);
	}
	void ClientRestart(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36515], params.ptr, cast(void*)0);
	}
	void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		*cast(Camera.ViewTargetTransitionParams*)&params[4] = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36524], params.ptr, cast(void*)0);
	}
	void CheckAutoObjective(bool bOnlyNotifyDifferent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bOnlyNotifyDifferent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36532], params.ptr, cast(void*)0);
	}
	void SetAutoObjective(Actor ObjectiveActor, bool bOnlyNotifyDifferent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = ObjectiveActor;
		*cast(bool*)&params[4] = bOnlyNotifyDifferent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36538], params.ptr, cast(void*)0);
	}
	void ClientSetAutoObjective(Actor NewAutoObjective)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewAutoObjective;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36549], params.ptr, cast(void*)0);
	}
	void Possess(Pawn inPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = inPawn;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36553], params.ptr, cast(void*)0);
	}
	void AcknowledgePossession(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36556], params.ptr, cast(void*)0);
	}
	void IdentifyTeamMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36561], cast(void*)0, cast(void*)0);
	}
	void ReceivedPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36563], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36564], params.ptr, cast(void*)0);
	}
	void ServerSetHand(UTPlayerController.EWeaponHand NewWeaponHand)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTPlayerController.EWeaponHand*)params.ptr = NewWeaponHand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36570], params.ptr, cast(void*)0);
	}
	void SetHand(UTPlayerController.EWeaponHand NewWeaponHand)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTPlayerController.EWeaponHand*)params.ptr = NewWeaponHand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36573], params.ptr, cast(void*)0);
	}
	void ResetCameraMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36575], cast(void*)0, cast(void*)0);
	}
	bool UsingFirstPersonCamera()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36576], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ServerSetAutoTaunt(bool Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36578], params.ptr, cast(void*)0);
	}
	void SetAutoTaunt(bool Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36580], params.ptr, cast(void*)0);
	}
	void ToggleScreenShotMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36582], cast(void*)0, cast(void*)0);
	}
	void PlayStartupMessage(ubyte StartupStage)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = StartupStage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36585], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36589], params.ptr, cast(void*)0);
	}
	void ClientPlayTakeHit(Vector HitLoc, ubyte Damage, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		params[12] = Damage;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36596], params.ptr, cast(void*)0);
	}
	bool ServerUse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36600], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool Use()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36603], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool PerformedUseAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36606], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearDoubleClick()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36611], cast(void*)0, cast(void*)0);
	}
	void ShowScoreboard()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36720], cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
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
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36772], cast(void*)0, cast(void*)0);
	}
	void ClientReset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36773], cast(void*)0, cast(void*)0);
	}
	void BehindView()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36775], cast(void*)0, cast(void*)0);
	}
	void SetBehindView(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36776], params.ptr, cast(void*)0);
	}
	void ClientSetBehindView(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36780], params.ptr, cast(void*)0);
	}
	void SetCameraMode(ScriptName NewCamMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewCamMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36782], params.ptr, cast(void*)0);
	}
	void SpawnCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36786], cast(void*)0, cast(void*)0);
	}
	void GetPlayerViewPoint(Vector* POVLocation, Rotator* POVRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *POVLocation;
		*cast(Rotator*)&params[12] = *POVRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36789], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36802], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
	}
	void ClientMusicEvent(int EventIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EventIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36807], params.ptr, cast(void*)0);
	}
	bool AlreadyInActionMusic()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36809], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36814], params.ptr, cast(void*)0);
	}
	void PlayAnnouncement(ScriptClass InMessageClass, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36819], params.ptr, cast(void*)0);
	}
	void DamageShake(int Damage, ScriptClass pDamageType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(ScriptClass*)&params[4] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36825], params.ptr, cast(void*)0);
	}
	void StopViewShaking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36834], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36835], params.ptr, cast(void*)0);
	}
	void StopCameraAnim(bool bImmediate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bImmediate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36847], params.ptr, cast(void*)0);
	}
	void SetCameraAnimStrength(float NewStrength)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewStrength;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36849], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36851], params.ptr, cast(void*)0);
	}
	void ClientStopCameraAnim(CameraAnim AnimToStop)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = AnimToStop;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36861], params.ptr, cast(void*)0);
	}
	void OnPlayCameraAnim(UTSeqAct_PlayCameraAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_PlayCameraAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36863], params.ptr, cast(void*)0);
	}
	void OnStopCameraAnim(UTSeqAct_StopCameraAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_StopCameraAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36871], params.ptr, cast(void*)0);
	}
	void ViewShake(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36874], params.ptr, cast(void*)0);
	}
	void ToggleMelee()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36876], cast(void*)0, cast(void*)0);
	}
	void ToggleTranslocator()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36878], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36879], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36889], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36895], params.ptr, cast(void*)0);
	}
	void ViewNextBot()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36929], cast(void*)0, cast(void*)0);
	}
	void SwitchWeapon(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36930], params.ptr, cast(void*)0);
	}
	void ServerViewSelf(Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Camera.ViewTargetTransitionParams*)params.ptr = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36932], params.ptr, cast(void*)0);
	}
	void ViewPlayerByName(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36936], params.ptr, cast(void*)0);
	}
	void ServerViewPlayerByName(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36938], params.ptr, cast(void*)0);
	}
	void ViewObjective()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36942], cast(void*)0, cast(void*)0);
	}
	void ServerViewObjective()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36943], cast(void*)0, cast(void*)0);
	}
	void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36944], cast(void*)0, cast(void*)0);
	}
	void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36945], cast(void*)0, cast(void*)0);
	}
	void AdjustCameraScale(bool bIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36946], params.ptr, cast(void*)0);
	}
	bool CanCommunicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36967], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ShowMidGameMenu(ScriptName TabTag, bool bEnableInput)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TabTag;
		*cast(bool*)&params[8] = bEnableInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36970], params.ptr, cast(void*)0);
	}
	void ClientGameEnded(Actor EndGameFocus, bool bIsWinner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = EndGameFocus;
		*cast(bool*)&params[4] = bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36974], params.ptr, cast(void*)0);
	}
	void RoundHasEnded(Actor EndRoundFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = EndRoundFocus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36977], params.ptr, cast(void*)0);
	}
	void ClientRoundEnded(Actor EndRoundFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = EndRoundFocus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36979], params.ptr, cast(void*)0);
	}
	void CheckBulletWhip(SoundCue BulletWhip, Vector FireLocation, Vector FireDir, Vector HitLocation)
	{
		ubyte params[40];
		params[] = 0;
		*cast(SoundCue*)params.ptr = BulletWhip;
		*cast(Vector*)&params[4] = FireLocation;
		*cast(Vector*)&params[16] = FireDir;
		*cast(Vector*)&params[28] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36981], params.ptr, cast(void*)0);
	}
	void PawnDied(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36989], params.ptr, cast(void*)0);
	}
	void ClientPawnDied()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36991], cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyFOVAngle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36992], cast(void*)0, cast(void*)0);
	}
	void AdjustFOV(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36993], params.ptr, cast(void*)0);
	}
	void StartZoom(float NewDesiredFOV, float NewZoomRate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewDesiredFOV;
		*cast(float*)&params[4] = NewZoomRate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36999], params.ptr, cast(void*)0);
	}
	void StartZoomNonlinear(float NewDesiredFOV, float NewZoomInterpSpeed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewDesiredFOV;
		*cast(float*)&params[4] = NewZoomInterpSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37002], params.ptr, cast(void*)0);
	}
	void StopZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37005], cast(void*)0, cast(void*)0);
	}
	void EndZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37006], cast(void*)0, cast(void*)0);
	}
	void EndZoomNonlinear(float ZoomInterpSpeed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ZoomInterpSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37007], params.ptr, cast(void*)0);
	}
	void ClientEndZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37009], cast(void*)0, cast(void*)0);
	}
	void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37010], params.ptr, cast(void*)0);
	}
	void CharacterProcessingComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37013], cast(void*)0, cast(void*)0);
	}
	bool CanRestartPlayer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37016], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37018], params.ptr, cast(void*)0);
	}
	void ReceiveBotVoiceMessage(UTPlayerReplicationInfo SenderPRI, int MessageIndex, UObject LocationObject)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = SenderPRI;
		*cast(int*)&params[4] = MessageIndex;
		*cast(UObject*)&params[8] = LocationObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37024], params.ptr, cast(void*)0);
	}
	void ServerSetNetSpeed(int NewSpeed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37028], params.ptr, cast(void*)0);
	}
	void BullseyeMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37030], cast(void*)0, cast(void*)0);
	}
	void ServerChangeTeam(int N)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37035], params.ptr, cast(void*)0);
	}
	void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37038], params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	void ServerKickBan(ScriptString PlayerToKick, bool bBan)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerToKick;
		*cast(bool*)&params[12] = bBan;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37042], params.ptr, cast(void*)0);
	}
	bool AllowTTSMessageFrom(PlayerReplicationInfo PRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37045], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ServerSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37053], params.ptr, cast(void*)0);
	}
	void ServerTeamSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37055], params.ptr, cast(void*)0);
	}
	bool AllowTextMessage(ScriptString msg)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37057], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool AdminCmdOk()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37060], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void AdminLogin(ScriptString Password)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37063], params.ptr, cast(void*)0);
	}
	void ServerAdminLogin(ScriptString Password)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37065], params.ptr, cast(void*)0);
	}
	void AdminLogout()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37067], cast(void*)0, cast(void*)0);
	}
	void ServerAdminLogOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37068], cast(void*)0, cast(void*)0);
	}
	// WARNING: Function 'Admin' has the same name as a defined type!
	void ServerAdmin(ScriptString CommandLine)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = CommandLine;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37071], params.ptr, cast(void*)0);
	}
	void AdminKickBan(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37074], params.ptr, cast(void*)0);
	}
	void AdminKick(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37076], params.ptr, cast(void*)0);
	}
	void AdminPlayerList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37078], cast(void*)0, cast(void*)0);
	}
	void AdminRestartMap()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37080], cast(void*)0, cast(void*)0);
	}
	void ServerRestartMap()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37081], cast(void*)0, cast(void*)0);
	}
	void AdminChangeMap(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37082], params.ptr, cast(void*)0);
	}
	void ServerChangeMap(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37084], params.ptr, cast(void*)0);
	}
	void AdminForceVoiceMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37086], params.ptr, cast(void*)0);
	}
	void ServerForceVoiceMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37088], params.ptr, cast(void*)0);
	}
	void AdminForceVoiceUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37092], params.ptr, cast(void*)0);
	}
	void ServerForceVoiceUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37094], params.ptr, cast(void*)0);
	}
	void AdminForceTextMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37098], params.ptr, cast(void*)0);
	}
	void ServerForceTextMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37100], params.ptr, cast(void*)0);
	}
	void AdminForceTextUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37103], params.ptr, cast(void*)0);
	}
	void ServerForceTextUnMute(ScriptString TargetPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TargetPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37105], params.ptr, cast(void*)0);
	}
	void Disconnect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37108], cast(void*)0, cast(void*)0);
	}
	void OnScoreChanged(UTTeamInfo T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTTeamInfo*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37109], params.ptr, cast(void*)0);
	}
}
