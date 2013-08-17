module UnrealScript.TribesGame.TrObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.AnimTree;

extern(C++) interface TrObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrObject")()); }
	private static __gshared TrObject mDefaultProperties;
	@property final static TrObject DefaultProperties() { mixin(MGDPC!(TrObject, "TrObject TribesGame.Default__TrObject")()); }
	static struct Constants
	{
		enum
		{
			FEET_TO_UNREAL_UNITS = 16,
			INDEX_DISPLAY_TARGET_INGAME = 0,
			INDEX_DISPLAY_TARGET_FOREGROUND = 1,
			INDEX_SEE_NORMAL_ENEMY = 0,
			INDEX_SEE_STEALTHED_ENEMY = 1,
			INDEX_SEE_LOW_HEALTH_ENEMY = 2,
			TR_TASKFORCE_NONE = 0,
			TR_TASKFORCE_BLOODEAGLE = 1,
			TR_TASKFORCE_DIAMONDSWORD = 2,
			FADE_TIME = 1.0f,
			MAX_HEARING_DISTANCE = 1300,
			TR_MAX_SLOTS_TO_EQUIP = 5,
			UnrealUnitsToKM = 0.072,
		}
	}
	enum EffectFormMatTypes : ubyte
	{
		MAT_None = 0,
		MAT_Stealth = 1,
		MAT_Shield = 2,
		MAT_MAX = 3,
	}
	enum TeamAssignTypes : ubyte
	{
		TAT_BALANCED = 0,
		TAT_UNBALANCED = 1,
		TAT_AUTOASSIGN = 2,
		TAT_MAX = 3,
	}
	enum TrMiscMessages : ubyte
	{
		TrMISC_BloodEagleBoughtHerc = 0,
		TrMISC_DiamondSwordBoughtHerc = 1,
		TrMISC_BloodEagleCloseToWin = 2,
		TrMISC_DiamondSwordCloseToWin = 3,
		TrMISC_MAX = 4,
	}
	enum EArmorType : ubyte
	{
		ARMOR_Light = 0,
		ARMOR_Medium = 1,
		ARMOR_Heavy = 2,
		ARMOR_MAX = 3,
	}
	enum ETrPlayerCallIns : ubyte
	{
		TRCALLIN_None = 0,
		TrCallIn_SupportInventory = 1,
		TrCallIn_OrbitalStrike = 2,
		TrCallIn_TacticalStrike = 3,
		ETrPlayerCallIns_MAX = 4,
	}
	enum ESettingsList : ubyte
	{
		ESL_KEYBIND_START = 0,
		ESL_MOVE_FORWARD = 1,
		ESL_MOVE_BACKWARD = 2,
		ESL_STRAFE_LEFT = 3,
		ESL_STRAFE_RIGHT = 4,
		ESL_DO_SKI = 5,
		ESL_DO_JUMP = 6,
		ESL_DO_JETPACK = 7,
		ESL_DO_JUMPJETPACK = 8,
		ESL_DO_JUMPSKI = 9,
		ESL_TOGGLE_SKI = 10,
		ESL_DO_ZOOM = 11,
		ESL_FIRE_WEAPON = 12,
		ESL_RELOAD = 13,
		ESL_NEXT_WEAPON = 14,
		ESL_WEAPON_SWITCH_FILTER = 15,
		ESL_WEAPON_SWITCH_FILTER2 = 16,
		ESL_USE = 17,
		ESL_ACTIVATE_MELEE = 18,
		ESL_ACTIVATE_PACK = 19,
		ESL_ACTIVATE_BELT = 20,
		ESL_TOGGLE_MENU_CLASS = 21,
		ESL_SHOW_SCORES = 22,
		ESL_SHOW_OBJECTIVES = 23,
		ESL_DROP_FLAG = 24,
		ESL_TALK = 25,
		ESL_TALK_TEAM = 26,
		ESL_TALK_REPLY = 27,
		ESL_HORN = 28,
		ESL_BEGIN_VGS = 29,
		ESL_CALLIN_ONE = 30,
		ESL_CALLIN_TWO = 31,
		ESL_CALLIN_THREE = 32,
		ESL_TYPE_KEY = 33,
		ESL_WEAPON_PRIMARY = 34,
		ESL_WEAPON_SECONDARY = 35,
		ESL_SWITCH_SEAT_ONE = 36,
		ESL_SWITCH_SEAT_TWO = 37,
		ESL_SWITCH_SEAT_THREE = 38,
		ESL_SWITCH_SEAT_FOUR = 39,
		ESL_SWITCH_SEAT_FIVE = 40,
		ESL_SWITCH_SEAT_SIX = 41,
		ESL_SUICIDE = 42,
		ESL_SPOT_TARGET = 43,
		ESL_THIRD_PERSON = 44,
		ESL_FREE_LOOK = 45,
		ESL_TEAM_SELECT = 46,
		ESL_SUPPRESS_HELP = 47,
		ESL_QUICKCLASSES = 48,
		ESL_FRIENDS = 49,
		ESL_SETTINGS = 50,
		ESL_MAINMENU = 51,
		ESL_HOTKEY1 = 52,
		ESL_HOTKEY2 = 53,
		ESL_HOTKEY3 = 54,
		ESL_HOTKEY4 = 55,
		ESL_HOTKEY5 = 56,
		ESL_HOTKEY6 = 57,
		ESL_HOTKEY7 = 58,
		ESL_HOTKEY8 = 59,
		ESL_HOTKEY9 = 60,
		ESL_CHAT = 61,
		ESL_SPECTATE_MOVEUP = 62,
		ESL_SPECTATE_MOVEDOWN = 63,
		ESL_SPECTATE_MOVEFORWARD = 64,
		ESL_SPECTATE_MOVEBACKWARD = 65,
		ESL_SPECTATE_TURNLEFT = 66,
		ESL_SPECTATE_TURNRIGHT = 67,
		ESL_SPECTATE_STRAFELEFT = 68,
		ESL_SPECTATE_STRAFERIGHT = 69,
		ESL_SPECTATE_CAMERAX = 70,
		ESL_SPECTATE_CAMERAY = 71,
		ESL_SPECTATE_SPEEDINCREASE = 72,
		ESL_SPECTATE_SPEEDDECREASE = 73,
		ESL_SPECTATE_VIEWNEXTPLAYER = 74,
		ESL_SPECTATE_VIEWPREVPLAYER = 75,
		ESL_SPECTATE_VIEWSELF = 76,
		ESL_SPECTATE_VIEWBOOKMARKS = 77,
		ESL_SPECTATE_VIEWGENERATORS = 78,
		ESL_SPECTATE_VIEWSTANDS = 79,
		ESL_SPECTATE_VIEWFLAGS = 80,
		ESL_SPECTATE_SHOWCONTROLS = 81,
		ESL_SPECTATE_SHOWHUD = 82,
		ESL_SPECTATE_SHOWSCORES = 83,
		ESL_SPECTATE_TYPE_KEY = 84,
		ESL_SPECTATE_CHANGETEAM = 85,
		ESL_SPECTATE_VEHICLES = 86,
		ESL_SPECTATE_FASTESTPLAYER = 87,
		ESL_SPECTATE_OBJECTIVES = 88,
		ESL_SPECTATE_LOCKVIEW = 89,
		ESL_KEYBIND_END = 90,
		ESL_CONTROL_START = 91,
		ESL_MOUSESENSITIVITY = 92,
		ESL_FLYINGPITCHSENSITIVITY = 93,
		ESL_FLYINGYAWSENSITIVITY = 94,
		ESL_MOUSEINVERT = 95,
		ESL_VEHICLEINVERT = 96,
		ESL_MOUSESMOOTHING = 97,
		ESL_FOV = 98,
		ESL_TOGGLEZOOM = 99,
		ESL_DISABLEHELP = 100,
		ESL_HUDOBJECTIVES = 101,
		ESL_TINYWEAPONS = 102,
		ESL_DAMAGECOUNTER = 103,
		ESL_ALIENFX = 104,
		ESL_CHATFILTER = 105,
		ESL_SIMULATEDPROJECTILES = 106,
		ESL_HUDFRIENDSNOTIFY = 107,
		ESL_WHISPERNOTIFY = 108,
		ESL_CONTROL_END = 109,
		ESL_AUDIO_START = 110,
		ESL_MASTER = 111,
		ESL_EFFECTS = 112,
		ESL_MUSIC = 113,
		ESL_VGS = 114,
		ESL_VOICE = 115,
		ESL_BASSBOOST = 116,
		ESL_AUDIO_END = 117,
		EAKC_MAX = 118,
		ESettingsList_MAX = 119,
	}
	enum CaHCapturePointLabel : ubyte
	{
		CaHCapturePoint_A = 0,
		CaHCapturePoint_B = 1,
		CaHCapturePoint_C = 2,
		CaHCapturePoint_D = 3,
		CaHCapturePoint_E = 4,
		CaHCapturePoint_MAX = 5,
	}
	enum ServerPropType : ubyte
	{
		SPT_GAME = 0,
		SPT_QUEUE = 1,
		SPT_MAX = 2,
	}
	enum TrClassType : ubyte
	{
		TCT_PTH = 0,
		TCT_SEN = 1,
		TCT_INF = 2,
		TCT_SLD = 3,
		TCT_TCN = 4,
		TCT_RDR = 5,
		TCT_JUG = 6,
		TCT_DMB = 7,
		TCT_BRT = 8,
		TCT_MAX = 9,
	}
	enum LoadoutSlotTypes : ubyte
	{
		LST_DEFAULT = 0,
		LST_ONE = 1,
		LST_TWO = 2,
		LST_THREE = 3,
		LST_FOUR = 4,
		LST_FIVE = 5,
		LST_MAX = 6,
	}
	enum SpawnTypes : ubyte
	{
		EST_NORMAL = 0,
		EST_PTHSLDJUG = 1,
		EST_NAKEDPTH = 2,
		EST_MAX = 3,
	}
	enum EContentDataType : ubyte
	{
		CDT_None = 0,
		CDT_CTF = 1,
		CDT_RemoveFriend = 2,
		CDT_AddFriend = 3,
		CDT_Login = 4,
		CDT_BuyGold = 5,
		CDT_BuyBoost = 6,
		CDT_InviteToParty = 7,
		CDT_JoinGame = 8,
		CDT_MapRoaming = 9,
		CDT_PlayNow = 10,
		CDT_Rabbit = 11,
		CDT_MainMenu = 12,
		CDT_Settings = 13,
		CDT_SkiingTutorial = 14,
		CDT_TeamDeathMatch = 15,
		CDT_TargetPractice = 16,
		CDT_SkiChallenge = 17,
		CDT_QuickMatch = 18,
		CDT_RankedMatch = 19,
		CDT_Arena = 20,
		CDT_Bundle_Inf_Prem = 21,
		CDT_Bundle_Inf_Merc = 22,
		CDT_Bundle_Inf_Asn = 23,
		CDT_Bundle_Inf_Wep = 24,
		CDT_PrivateServer = 25,
		CDT_CaptureAndHold = 26,
		CDT_ChangeName = 27,
		CDT_Bundle_Rdr_Prem = 28,
		CDT_Bundle_Rdr_Gvr = 29,
		CDT_Bundle_Rdr_Merc = 30,
		CDT_Bundle_Rdr_Wep = 31,
		CDT_Bundle_Brt_Wep = 32,
		CDT_Bundle_LoG = 33,
		CDT_StarterPack = 34,
		CDT_Bundle_Twinfusor = 35,
		CDT_Bundle_SkinPack = 36,
		CDT_Bundle_Specialist = 37,
		CDT_Bundle_Sentinel = 38,
		CDT_MAX = 39,
	}
	enum ReticuleDataType : ubyte
	{
		RDT_TYPE = 0,
		RDT_COLOR = 1,
		RDT_OPACITY = 2,
		RDT_MAX = 3,
	}
	enum EVehicleTypes : ubyte
	{
		VEHICLE_GravCycle = 0,
		VEHICLE_Shrike = 1,
		VEHICLE_Beowulf = 2,
		VEHICLE_HERC = 3,
		VEHICLE_Havoc = 4,
		VEHICLE_MAX = 5,
	}
	enum EWeaponTracerType : ubyte
	{
		WTT_PistolBullet = 0,
		WTT_ChainGunBullet = 1,
		WTT_MAX = 2,
	}
	enum DeployModeStatus : ubyte
	{
		DMS_None = 0,
		DMS_CannotFire = 1,
		DMS_CannotPlace = 2,
		DMS_OK = 3,
		DMS_MAX = 4,
	}
	enum EffectCalcMethod : ubyte
	{
		TRCM_NA = 0,
		TRCM_ADD = 1,
		TRCM_SUBTRACT = 2,
		TRCM_PERC_INCREASE = 3,
		TRCM_PERC_DECREASE = 4,
		TRCM_STATIC = 5,
		TRCM_MAX = 6,
	}
	enum EffectFormPriority : ubyte
	{
		TR_EF_NORMAL = 0,
		TR_EF_SHIELD = 1,
		TR_EF_STEALTH = 2,
		TR_EF_MAX = 3,
	}
	enum DeviceAttackType : ubyte
	{
		TRTT_ATTCK_NA = 0,
		TRTT_ATTACK_INSTANT = 1,
		TRTT_ATTACK_PROJECTILE = 2,
		TRTT_ATTACK_DEPLOYABLE = 3,
		TRTT_ATTACK_SPAWN_PET = 4,
		TRTT_ATTACK_TELEPORT = 5,
		TRTT_MAX = 6,
	}
	enum DeviceTargeterType : ubyte
	{
		TRDTT_None = 0,
		TRDTT_Self = 1,
		TRDTT_Friend = 2,
		TRDTT_Enemy = 3,
		TRDTT_Enemy_And_Self = 4,
		TRDTT_Friend_Only = 5,
		TRDTT_All = 6,
		TRDTT_MAX = 7,
	}
	enum TR_WIDGET_SUBTYPES : ubyte
	{
		IST_NONE = 0,
		IST_DEVICE_MELEE = 1,
		IST_DEVICE_RANGED = 2,
		IST_DEVICE_SPECIALTY = 3,
		IST_DEVICE_JETPACK = 4,
		IST_DEVICE_TOGGLE = 5,
		IST_DEVICE_GRENADE = 6,
		IST_DEVICE_BELT = 7,
		IST_DEVICE_DEPLOYABLE = 8,
		IST_DEVICE_REST = 9,
		IST_MAX = 10,
	}
	enum EMissileLock : ubyte
	{
		EMissileLockNone = 0,
		EMissileLocking = 1,
		EMissileLocked = 2,
		EMissileFired = 3,
		EMissilePotentialTarget = 4,
		EMissileLock_MAX = 5,
	}
	enum TR_EQUIP_POINT : ubyte
	{
		EQP_NONE = 0,
		EQP_Melee = 1,
		EQP_Primary = 2,
		EQP_Secondary = 3,
		EQP_Pack = 4,
		EQP_Belt = 5,
		EQP_Deployable = 6,
		EQP_LaserTarget = 7,
		EQP_Armor = 8,
		EQP_PerkA = 9,
		EQP_PerkB = 10,
		EQP_Skin = 11,
		EQP_Voice = 12,
		EQP_MAX = 13,
	}
	enum TgSupportedAspectRatios : ubyte
	{
		TgAR_4x3 = 0,
		TgAR_5x4 = 1,
		TgAR_16x9 = 2,
		TgAR_16x10 = 3,
		TgAR_Other = 4,
		TgAR_MAX = 5,
	}
	enum TrCreditEventType : ubyte
	{
		PlayerKillEvent = 0,
		PlayerDeathEvent = 1,
		FlagCaptureEvent = 2,
		FlagPickupEvent = 3,
		FlagReturnEvent = 4,
		FiveKillStreakEvent = 5,
		TenKillStreakEvent = 6,
		FifteenKillStreakEvent = 7,
		TwentyKillStreakEvent = 8,
		TwentyFiveKillStreakEvent = 9,
		PlayerKillAssistEvent = 10,
		FiveSnipingStreakEvent = 11,
		TenSnipingStreakEvent = 12,
		FifteenSnipingStreakEvent = 13,
		FiveExplosiveStreakEvent = 14,
		TenExplosiveStreakEvent = 15,
		FifteenExplosiveStreakEvent = 16,
		FiveSpinfusorStreakEvent = 17,
		TenSpinfusorStreakEvent = 18,
		FifteenSpinfusorStreakEvent = 19,
		DoubleKillEvent = 20,
		TripleKillEvent = 21,
		QuatraKillEvent = 22,
		UltraKillEvent = 23,
		TeamKillEvent = 24,
		SpreeEndedEvent = 25,
		RevengeEvent = 26,
		AftermathEvent = 27,
		FirstBloodEvent = 28,
		BluePlateSpecialEvent = 29,
		StickyKillEvent = 30,
		HeadShotEvent = 31,
		ArtilleryShotEvent = 32,
		MeleeKillEvent = 33,
		SquishEvent = 34,
		GeneratorKillEvent = 35,
		GeneratorRepairEvent = 36,
		BaseTurretKillEvent = 37,
		BaseTurretRepairEvent = 38,
		RabbitKillEvent = 39,
		KillAsRabbitEvent = 40,
		FinalBlowEvent = 41,
		SuicideEvent = 42,
		OffhandKillCredit = 43,
		TeamKillCredit = 44,
		TrCreditEventType_MAX = 45,
	}
	enum OverlayType : ubyte
	{
		OT_UNKNOWN = 0,
		OT_PLAYER = 1,
		OT_OBJECTIVE = 2,
		OT_DEPLOYABLE = 3,
		OT_VEHICLE = 4,
		OT_MAX = 5,
	}
	enum EffectType : ubyte
	{
		ET_None = 0,
		ET_Hit = 1,
		ET_Fire = 2,
		ET_Equip = 3,
		ET_Active = 4,
		ET_MAX = 5,
	}
	enum DAMAGE_INFO_TYPE : ubyte
	{
		DIT_Death = 0,
		DIT_Damage = 1,
		DIT_Status = 2,
		DIT_Healing = 3,
		DIT_Objective = 4,
		DIT_Experience = 5,
		DIT_MAX = 6,
	}
	enum TR_HIDEABLE_HUD_ELEMENT : ubyte
	{
		DeviceBar = 0,
		BuffBar = 1,
		ChatBox = 2,
		AlertBox = 3,
		Minimap = 4,
		MissionInfo = 5,
		PlayerInfo = 6,
		TeamInfo = 7,
		Reticle = 8,
		OmegaAlert = 9,
		AgentInfo = 10,
		QuestTracking = 11,
		AllElements = 12,
		TR_HIDEABLE_HUD_ELEMENT_MAX = 13,
	}
	enum GAME_TYPE : ubyte
	{
		TGT_CTF = 0,
		TGT_RAB = 1,
		TGT_TDM = 2,
		TGT_ARN = 3,
		TGT_CAH = 4,
		TGT_MAX = 5,
	}
	enum GAME_WIN_STATE : ubyte
	{
		GWS_NONE = 0,
		GWS_DEFENDER_WON = 1,
		GWS_ATTACKER_WON = 2,
		GWS_TIE = 3,
		GWS_MAX = 4,
	}
	struct EffectFormOverwrite
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrObject.EffectFormOverwrite")()); }
		@property final auto ref
		{
			Material Mat() { mixin(MGPS!(Material, 4)()); }
			TrObject.EffectFormMatTypes eType() { mixin(MGPS!(TrObject.EffectFormMatTypes, 0)()); }
		}
	}
	struct PaperDollInfo
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrObject.PaperDollInfo")()); }
		@property final
		{
			auto ref
			{
				float CharacterLightingContrastFactor() { mixin(MGPS!(float, 48)()); }
				// WARNING: Property 'AnimSet' has the same name as a defined type!
				AnimTree AnimTreeTemplate() { mixin(MGPS!(AnimTree, 36)()); }
				PhysicsAsset PhysAsset() { mixin(MGPS!(PhysicsAsset, 32)()); }
				SkeletalMesh SkelMesh() { mixin(MGPS!(SkeletalMesh, 28)()); }
				float Scale() { mixin(MGPS!(float, 24)()); }
				Rotator Rotation() { mixin(MGPS!(Rotator, 12)()); }
				Vector Translation() { mixin(MGPS!(Vector, 0)()); }
			}
			bool bIsLoading() { mixin(MGBPS!(52, 0x2)()); }
			bool bIsLoading(bool val) { mixin(MSBPS!(52, 0x2)()); }
			bool bIsStreaming() { mixin(MGBPS!(52, 0x1)()); }
			bool bIsStreaming(bool val) { mixin(MSBPS!(52, 0x1)()); }
			bool bOnlySelfShadow() { mixin(MGBPS!(44, 0x1)()); }
			bool bOnlySelfShadow(bool val) { mixin(MSBPS!(44, 0x1)()); }
		}
	}
	struct TrTakeEffectInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrObject.TrTakeEffectInfo")()); }
		@property final auto ref
		{
			Vector HitLocation() { mixin(MGPS!(Vector, 0)()); }
			ScriptClass EffectForm() { mixin(MGPS!(ScriptClass, 12)()); }
		}
	}
	struct TrTakeHitInfo
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrObject.TrTakeHitInfo")()); }
		@property final auto ref
		{
			int Damage() { mixin(MGPS!(int, 0)()); }
			Vector HitLocation() { mixin(MGPS!(Vector, 4)()); }
			Vector Momentum() { mixin(MGPS!(Vector, 16)()); }
			// WARNING: Property 'DamageType' has the same name as a defined type!
			ScriptName HitBone() { mixin(MGPS!(ScriptName, 32)()); }
		}
	}
	struct OffhandAnimation
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrObject.OffhandAnimation")()); }
		@property final
		{
			auto ref
			{
				ScriptName m_OffhandUseType() { mixin(MGPS!(ScriptName, 0)()); }
				ScriptName m_AnimName() { mixin(MGPS!(ScriptName, 8)()); }
			}
			bool m_bFullBody() { mixin(MGBPS!(16, 0x1)()); }
			bool m_bFullBody(bool val) { mixin(MSBPS!(16, 0x1)()); }
		}
	}
	struct TrEventCredits
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrObject.TrEventCredits")()); }
		@property final
		{
			auto ref
			{
				TrObject.TrCreditEventType EventType() { mixin(MGPS!(TrObject.TrCreditEventType, 0)()); }
				int eventCredits() { mixin(MGPS!(int, 4)()); }
				int proxyEventCredits() { mixin(MGPS!(int, 8)()); }
				int MsgIdx() { mixin(MGPS!(int, 12)()); }
			}
			bool bIsBroadcast() { mixin(MGBPS!(16, 0x1)()); }
			bool bIsBroadcast(bool val) { mixin(MSBPS!(16, 0x1)()); }
		}
	}
	struct TR_HUD_INFO
	{
		private ubyte __buffer__[68];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrObject.TR_HUD_INFO")()); }
		@property final
		{
			auto ref
			{
				Vector vScreenLoc() { mixin(MGPS!(Vector, 0)()); }
				float fScale() { mixin(MGPS!(float, 12)()); }
				float fAlphaLevel() { mixin(MGPS!(float, 16)()); }
				float fLastSeenTime() { mixin(MGPS!(float, 20)()); }
				float fLastUnseenTime() { mixin(MGPS!(float, 24)()); }
				ScriptString sName() { mixin(MGPS!(ScriptString, 32)()); }
				int nHealth() { mixin(MGPS!(int, 44)()); }
				int nMaxHealth() { mixin(MGPS!(int, 48)()); }
				float fDistance() { mixin(MGPS!(float, 56)()); }
				TrObject.OverlayType eOverlayType() { mixin(MGPS!(TrObject.OverlayType, 60)()); }
				int nActorId() { mixin(MGPS!(int, 64)()); }
			}
			bool bIsTarget() { mixin(MGBPS!(28, 0x1)()); }
			bool bIsTarget(bool val) { mixin(MSBPS!(28, 0x1)()); }
			bool bEnemy() { mixin(MGBPS!(52, 0x1)()); }
			bool bEnemy(bool val) { mixin(MSBPS!(52, 0x1)()); }
			bool bDrawStat() { mixin(MGBPS!(52, 0x2)()); }
			bool bDrawStat(bool val) { mixin(MSBPS!(52, 0x2)()); }
			bool bDrawHealth() { mixin(MGBPS!(52, 0x4)()); }
			bool bDrawHealth(bool val) { mixin(MSBPS!(52, 0x4)()); }
		}
	}
	struct ObjectiveMICInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrObject.ObjectiveMICInfo")()); }
		@property final auto ref
		{
			int MyTeam() { mixin(MGPS!(int, 0)()); }
			float AmountFilled() { mixin(MGPS!(float, 4)()); }
			int ObjStatus() { mixin(MGPS!(int, 8)()); }
			int IsContested() { mixin(MGPS!(int, 12)()); }
			int Flip() { mixin(MGPS!(int, 16)()); }
		}
	}
}
