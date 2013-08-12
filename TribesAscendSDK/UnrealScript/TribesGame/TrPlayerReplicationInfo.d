module UnrealScript.TribesGame.TrPlayerReplicationInfo;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrInventoryHelper;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.TribesGame.TrValueModifier;
import UnrealScript.TribesGame.TrStatsInterface;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface TrPlayerReplicationInfo : UTPlayerReplicationInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerReplicationInfo")); }
	private static __gshared TrPlayerReplicationInfo mDefaultProperties;
	@property final static TrPlayerReplicationInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerReplicationInfo)("TrPlayerReplicationInfo TribesGame.Default__TrPlayerReplicationInfo")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetPlayerRank;
			ScriptFunction mGetCurrentClass;
			ScriptFunction mGetEquipDevice;
			ScriptFunction mGetRankIcon;
			ScriptFunction mGetCurrentValueModifier;
			ScriptFunction mGetEquipPointByWeaponId;
			ScriptFunction mGetArmorType;
			ScriptFunction mGetCurrentSkinClass;
			ScriptFunction mGetGibMesh;
			ScriptFunction mGet3PSkin;
			ScriptFunction mGetBodyMesh;
			ScriptFunction mGetHandsMesh;
			ScriptFunction mGetSkiThrust;
			ScriptFunction mGetJetpackSocketCount;
			ScriptFunction mGetJetpackThrust;
			ScriptFunction mGetJetpackSocket;
			ScriptFunction mGetJetpackTrail;
			ScriptFunction mRequestLoadoutChange;
			ScriptFunction mVerifyCharacter;
			ScriptFunction mGetCharacterEquip;
			ScriptFunction mGetCharacterEquipLocal;
			ScriptFunction mGetUpgradeLevel;
			ScriptFunction mGetUpgradeLevelLocal;
			ScriptFunction mUpdatePing;
			ScriptFunction mRegisterBuddy;
			ScriptFunction mLoad1PData;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mRegisterPlayerWithSession;
			ScriptFunction mUpdateValueModifier;
			ScriptFunction mReset;
			ScriptFunction mSetPlayerTeam;
			ScriptFunction mSwapToPendingCharClass;
			ScriptFunction mVerifyAndLoadCharacter;
			ScriptFunction mGetSelectedLoadout;
			ScriptFunction mShouldVisitStation;
			ScriptFunction mResolveDefaultEquip;
			ScriptFunction mSetActiveEquip;
			ScriptFunction mIncrementKills;
			ScriptFunction mCheckMultiKill;
			ScriptFunction mGetPlayerClassId;
			ScriptFunction mGetPendingClass;
			ScriptFunction mGetCurrentClassAbb;
			ScriptFunction mGetPlayerRankNum;
			ScriptFunction mGetBaseGP;
			ScriptFunction mGetBaseXP;
			ScriptFunction mSetPlayerGP;
			ScriptFunction mSetPlayerXP;
			ScriptFunction mGetRankFromXP;
			ScriptFunction mGetPerkFromId;
			ScriptFunction mSetFlag;
			ScriptFunction mDuplicate;
			ScriptFunction mCopyProperties;
			ScriptFunction mSetCached3PSkin;
			ScriptFunction mGetCurrentVoiceClass;
			ScriptFunction mUpdateCachedSkin;
			ScriptFunction mOn3PSkinContentLoaded;
			ScriptFunction mOn1PSkinContentLoaded;
			ScriptFunction mUpdate1PMesh;
			ScriptFunction mOnPingRedFlagged;
			ScriptFunction mServerPingRedFlag;
		}
		public @property static final
		{
			ScriptFunction GetPlayerRank() { return mGetPlayerRank ? mGetPlayerRank : (mGetPlayerRank = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetPlayerRank")); }
			ScriptFunction GetCurrentClass() { return mGetCurrentClass ? mGetCurrentClass : (mGetCurrentClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetCurrentClass")); }
			ScriptFunction GetEquipDevice() { return mGetEquipDevice ? mGetEquipDevice : (mGetEquipDevice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetEquipDevice")); }
			ScriptFunction GetRankIcon() { return mGetRankIcon ? mGetRankIcon : (mGetRankIcon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetRankIcon")); }
			ScriptFunction GetCurrentValueModifier() { return mGetCurrentValueModifier ? mGetCurrentValueModifier : (mGetCurrentValueModifier = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetCurrentValueModifier")); }
			ScriptFunction GetEquipPointByWeaponId() { return mGetEquipPointByWeaponId ? mGetEquipPointByWeaponId : (mGetEquipPointByWeaponId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetEquipPointByWeaponId")); }
			ScriptFunction GetArmorType() { return mGetArmorType ? mGetArmorType : (mGetArmorType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetArmorType")); }
			ScriptFunction GetCurrentSkinClass() { return mGetCurrentSkinClass ? mGetCurrentSkinClass : (mGetCurrentSkinClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetCurrentSkinClass")); }
			ScriptFunction GetGibMesh() { return mGetGibMesh ? mGetGibMesh : (mGetGibMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetGibMesh")); }
			ScriptFunction Get3PSkin() { return mGet3PSkin ? mGet3PSkin : (mGet3PSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.Get3PSkin")); }
			ScriptFunction GetBodyMesh() { return mGetBodyMesh ? mGetBodyMesh : (mGetBodyMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetBodyMesh")); }
			ScriptFunction GetHandsMesh() { return mGetHandsMesh ? mGetHandsMesh : (mGetHandsMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetHandsMesh")); }
			ScriptFunction GetSkiThrust() { return mGetSkiThrust ? mGetSkiThrust : (mGetSkiThrust = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetSkiThrust")); }
			ScriptFunction GetJetpackSocketCount() { return mGetJetpackSocketCount ? mGetJetpackSocketCount : (mGetJetpackSocketCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetJetpackSocketCount")); }
			ScriptFunction GetJetpackThrust() { return mGetJetpackThrust ? mGetJetpackThrust : (mGetJetpackThrust = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetJetpackThrust")); }
			ScriptFunction GetJetpackSocket() { return mGetJetpackSocket ? mGetJetpackSocket : (mGetJetpackSocket = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetJetpackSocket")); }
			ScriptFunction GetJetpackTrail() { return mGetJetpackTrail ? mGetJetpackTrail : (mGetJetpackTrail = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetJetpackTrail")); }
			ScriptFunction RequestLoadoutChange() { return mRequestLoadoutChange ? mRequestLoadoutChange : (mRequestLoadoutChange = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.RequestLoadoutChange")); }
			ScriptFunction VerifyCharacter() { return mVerifyCharacter ? mVerifyCharacter : (mVerifyCharacter = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.VerifyCharacter")); }
			ScriptFunction GetCharacterEquip() { return mGetCharacterEquip ? mGetCharacterEquip : (mGetCharacterEquip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetCharacterEquip")); }
			ScriptFunction GetCharacterEquipLocal() { return mGetCharacterEquipLocal ? mGetCharacterEquipLocal : (mGetCharacterEquipLocal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetCharacterEquipLocal")); }
			ScriptFunction GetUpgradeLevel() { return mGetUpgradeLevel ? mGetUpgradeLevel : (mGetUpgradeLevel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetUpgradeLevel")); }
			ScriptFunction GetUpgradeLevelLocal() { return mGetUpgradeLevelLocal ? mGetUpgradeLevelLocal : (mGetUpgradeLevelLocal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetUpgradeLevelLocal")); }
			ScriptFunction UpdatePing() { return mUpdatePing ? mUpdatePing : (mUpdatePing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.UpdatePing")); }
			ScriptFunction RegisterBuddy() { return mRegisterBuddy ? mRegisterBuddy : (mRegisterBuddy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.RegisterBuddy")); }
			ScriptFunction Load1PData() { return mLoad1PData ? mLoad1PData : (mLoad1PData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.Load1PData")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.ReplicatedEvent")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.PostBeginPlay")); }
			ScriptFunction RegisterPlayerWithSession() { return mRegisterPlayerWithSession ? mRegisterPlayerWithSession : (mRegisterPlayerWithSession = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.RegisterPlayerWithSession")); }
			ScriptFunction UpdateValueModifier() { return mUpdateValueModifier ? mUpdateValueModifier : (mUpdateValueModifier = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.UpdateValueModifier")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.Reset")); }
			ScriptFunction SetPlayerTeam() { return mSetPlayerTeam ? mSetPlayerTeam : (mSetPlayerTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.SetPlayerTeam")); }
			ScriptFunction SwapToPendingCharClass() { return mSwapToPendingCharClass ? mSwapToPendingCharClass : (mSwapToPendingCharClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.SwapToPendingCharClass")); }
			ScriptFunction VerifyAndLoadCharacter() { return mVerifyAndLoadCharacter ? mVerifyAndLoadCharacter : (mVerifyAndLoadCharacter = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.VerifyAndLoadCharacter")); }
			ScriptFunction GetSelectedLoadout() { return mGetSelectedLoadout ? mGetSelectedLoadout : (mGetSelectedLoadout = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetSelectedLoadout")); }
			ScriptFunction ShouldVisitStation() { return mShouldVisitStation ? mShouldVisitStation : (mShouldVisitStation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.ShouldVisitStation")); }
			ScriptFunction ResolveDefaultEquip() { return mResolveDefaultEquip ? mResolveDefaultEquip : (mResolveDefaultEquip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.ResolveDefaultEquip")); }
			ScriptFunction SetActiveEquip() { return mSetActiveEquip ? mSetActiveEquip : (mSetActiveEquip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.SetActiveEquip")); }
			ScriptFunction IncrementKills() { return mIncrementKills ? mIncrementKills : (mIncrementKills = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.IncrementKills")); }
			ScriptFunction CheckMultiKill() { return mCheckMultiKill ? mCheckMultiKill : (mCheckMultiKill = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.CheckMultiKill")); }
			ScriptFunction GetPlayerClassId() { return mGetPlayerClassId ? mGetPlayerClassId : (mGetPlayerClassId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetPlayerClassId")); }
			ScriptFunction GetPendingClass() { return mGetPendingClass ? mGetPendingClass : (mGetPendingClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetPendingClass")); }
			ScriptFunction GetCurrentClassAbb() { return mGetCurrentClassAbb ? mGetCurrentClassAbb : (mGetCurrentClassAbb = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetCurrentClassAbb")); }
			ScriptFunction GetPlayerRankNum() { return mGetPlayerRankNum ? mGetPlayerRankNum : (mGetPlayerRankNum = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetPlayerRankNum")); }
			ScriptFunction GetBaseGP() { return mGetBaseGP ? mGetBaseGP : (mGetBaseGP = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetBaseGP")); }
			ScriptFunction GetBaseXP() { return mGetBaseXP ? mGetBaseXP : (mGetBaseXP = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetBaseXP")); }
			ScriptFunction SetPlayerGP() { return mSetPlayerGP ? mSetPlayerGP : (mSetPlayerGP = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.SetPlayerGP")); }
			ScriptFunction SetPlayerXP() { return mSetPlayerXP ? mSetPlayerXP : (mSetPlayerXP = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.SetPlayerXP")); }
			ScriptFunction GetRankFromXP() { return mGetRankFromXP ? mGetRankFromXP : (mGetRankFromXP = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetRankFromXP")); }
			ScriptFunction GetPerkFromId() { return mGetPerkFromId ? mGetPerkFromId : (mGetPerkFromId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetPerkFromId")); }
			ScriptFunction SetFlag() { return mSetFlag ? mSetFlag : (mSetFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.SetFlag")); }
			ScriptFunction Duplicate() { return mDuplicate ? mDuplicate : (mDuplicate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.Duplicate")); }
			ScriptFunction CopyProperties() { return mCopyProperties ? mCopyProperties : (mCopyProperties = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.CopyProperties")); }
			ScriptFunction SetCached3PSkin() { return mSetCached3PSkin ? mSetCached3PSkin : (mSetCached3PSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.SetCached3PSkin")); }
			ScriptFunction GetCurrentVoiceClass() { return mGetCurrentVoiceClass ? mGetCurrentVoiceClass : (mGetCurrentVoiceClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.GetCurrentVoiceClass")); }
			ScriptFunction UpdateCachedSkin() { return mUpdateCachedSkin ? mUpdateCachedSkin : (mUpdateCachedSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.UpdateCachedSkin")); }
			ScriptFunction On3PSkinContentLoaded() { return mOn3PSkinContentLoaded ? mOn3PSkinContentLoaded : (mOn3PSkinContentLoaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.On3PSkinContentLoaded")); }
			ScriptFunction On1PSkinContentLoaded() { return mOn1PSkinContentLoaded ? mOn1PSkinContentLoaded : (mOn1PSkinContentLoaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.On1PSkinContentLoaded")); }
			ScriptFunction Update1PMesh() { return mUpdate1PMesh ? mUpdate1PMesh : (mUpdate1PMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.Update1PMesh")); }
			ScriptFunction OnPingRedFlagged() { return mOnPingRedFlagged ? mOnPingRedFlagged : (mOnPingRedFlagged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.OnPingRedFlagged")); }
			ScriptFunction ServerPingRedFlag() { return mServerPingRedFlag ? mServerPingRedFlag : (mServerPingRedFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerReplicationInfo.ServerPingRedFlag")); }
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
	struct EquipLevel
	{
		private ubyte __buffer__[5];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrPlayerReplicationInfo.EquipLevel")); }
		@property final auto ref
		{
			ubyte UpgradeLevel() { return *cast(ubyte*)(cast(size_t)&this + 4); }
			int EquipId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			int m_nCreditsEarned() { return *cast(int*)(cast(size_t)cast(void*)this + 948); }
			int m_nKills() { return *cast(int*)(cast(size_t)cast(void*)this + 940); }
			int m_nAssists() { return *cast(int*)(cast(size_t)cast(void*)this + 944); }
			int r_nArenaSpawnsLeft() { return *cast(int*)(cast(size_t)cast(void*)this + 1128); }
			Actor m_LockedTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 976); }
			int m_nFreeCredits() { return *cast(int*)(cast(size_t)cast(void*)this + 964); }
			int m_nCurrentCredits() { return *cast(int*)(cast(size_t)cast(void*)this + 968); }
			ScriptClass r_VoiceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 984); }
			int m_nRabbitRank() { return *cast(int*)(cast(size_t)cast(void*)this + 924); }
			int m_nPlayerIconIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 936); }
			int r_bSkinId() { return *cast(int*)(cast(size_t)cast(void*)this + 1132); }
			ScriptClass c_Cached1PSkin() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1124); }
			ScriptClass c_Cached3PSkin() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1120); }
			TrValueModifier m_ValueModifier() { return *cast(TrValueModifier*)(cast(size_t)cast(void*)this + 1116); }
			TrPlayerReplicationInfo.EquipLevel r_EquipLevels() { return *cast(TrPlayerReplicationInfo.EquipLevel*)(cast(size_t)cast(void*)this + 1012); }
			float c_fRedFlagTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1008); }
			float c_fRedFlagPingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1004); }
			float c_fRedFlagPingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1000); }
			float c_fCurrentPingMS() { return *cast(float*)(cast(size_t)cast(void*)this + 996); }
			TrInventoryHelper InvHelper() { return *cast(TrInventoryHelper*)(cast(size_t)cast(void*)this + 992); }
			TrStatsInterface Stats() { return *cast(TrStatsInterface*)(cast(size_t)cast(void*)this + 988); }
			TrObject.EArmorType m_ArmorType() { return *cast(TrObject.EArmorType*)(cast(size_t)cast(void*)this + 980); }
			int m_nPlayerClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 960); }
			int m_nBaseXP() { return *cast(int*)(cast(size_t)cast(void*)this + 956); }
			int m_nBaseGP() { return *cast(int*)(cast(size_t)cast(void*)this + 952); }
			int m_nRankIconIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 932); }
			int m_nRankNum() { return *cast(int*)(cast(size_t)cast(void*)this + 928); }
			ScriptClass m_PendingBaseClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 920); }
			ScriptClass m_CurrentBaseClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 916); }
			ScriptClass m_Rank() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 912); }
			int m_PendingLoadout() { return *cast(int*)(cast(size_t)cast(void*)this + 908); }
			int m_CurrentLoadout() { return *cast(int*)(cast(size_t)cast(void*)this + 904); }
		}
		bool r_bIsCrossedOffArenaList() { return (*cast(uint*)(cast(size_t)cast(void*)this + 972) & 0x8) != 0; }
		bool r_bIsCrossedOffArenaList(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 972) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 972) &= ~0x8; } return val; }
		bool c_bIsBuddyToLocalPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 972) & 0x2) != 0; }
		bool c_bIsBuddyToLocalPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 972) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 972) &= ~0x2; } return val; }
		bool c_bIsMutualBuddiesWithLocalPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 972) & 0x4) != 0; }
		bool c_bIsMutualBuddiesWithLocalPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 972) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 972) &= ~0x4; } return val; }
		bool r_bIsLastManStanding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 972) & 0x10) != 0; }
		bool r_bIsLastManStanding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 972) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 972) &= ~0x10; } return val; }
		bool bDevUpgrades() { return (*cast(uint*)(cast(size_t)cast(void*)this + 972) & 0x1) != 0; }
		bool bDevUpgrades(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 972) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 972) &= ~0x1; } return val; }
	}
final:
	ScriptClass GetPlayerRank()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerRank, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	ScriptClass GetCurrentClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	ScriptClass GetEquipDevice(ScriptClass FamilyInfo, TrObject.TR_EQUIP_POINT equipSlot)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		*cast(TrObject.TR_EQUIP_POINT*)&params[4] = equipSlot;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipDevice, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[8];
	}
	int GetRankIcon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRankIcon, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	TrValueModifier GetCurrentValueModifier()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentValueModifier, params.ptr, cast(void*)0);
		return *cast(TrValueModifier*)params.ptr;
	}
	TrObject.TR_EQUIP_POINT GetEquipPointByWeaponId(int WeaponId)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = WeaponId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipPointByWeaponId, params.ptr, cast(void*)0);
		return *cast(TrObject.TR_EQUIP_POINT*)&params[4];
	}
	TrObject.EArmorType GetArmorType()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetArmorType, params.ptr, cast(void*)0);
		return *cast(TrObject.EArmorType*)params.ptr;
	}
	ScriptClass GetCurrentSkinClass(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentSkinClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	SkeletalMesh GetGibMesh(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGibMesh, params.ptr, cast(void*)0);
		return *cast(SkeletalMesh*)&params[4];
	}
	SkeletalMesh Get3PSkin()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Get3PSkin, params.ptr, cast(void*)0);
		return *cast(SkeletalMesh*)params.ptr;
	}
	SkeletalMesh GetBodyMesh()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBodyMesh, params.ptr, cast(void*)0);
		return *cast(SkeletalMesh*)params.ptr;
	}
	SkeletalMesh GetHandsMesh()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHandsMesh, params.ptr, cast(void*)0);
		return *cast(SkeletalMesh*)params.ptr;
	}
	ParticleSystem GetSkiThrust(ScriptClass FamilyInfo, ParticleSystem DefaultSystem)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		*cast(ParticleSystem*)&params[4] = DefaultSystem;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSkiThrust, params.ptr, cast(void*)0);
		return *cast(ParticleSystem*)&params[8];
	}
	int GetJetpackSocketCount(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetJetpackSocketCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	ParticleSystem GetJetpackThrust(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetJetpackThrust, params.ptr, cast(void*)0);
		return *cast(ParticleSystem*)&params[4];
	}
	ScriptName GetJetpackSocket(ScriptClass FamilyInfo, int Socket)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		*cast(int*)&params[4] = Socket;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetJetpackSocket, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	ParticleSystem GetJetpackTrail(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetJetpackTrail, params.ptr, cast(void*)0);
		return *cast(ParticleSystem*)&params[4];
	}
	bool RequestLoadoutChange(ScriptClass FamilyInfo, int Loadout)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestLoadoutChange, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool VerifyCharacter(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.VerifyCharacter, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetCharacterEquip(int ClassId, int Loadout)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCharacterEquip, params.ptr, cast(void*)0);
	}
	void GetCharacterEquipLocal(int ClassId, int Loadout)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCharacterEquipLocal, params.ptr, cast(void*)0);
	}
	int GetUpgradeLevel(int ClassId, int Type, ScriptArray!(int) UpgradeList)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(ScriptArray!(int)*)&params[8] = UpgradeList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUpgradeLevel, params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	int GetUpgradeLevelLocal(int ClassId, int Type, ScriptArray!(int) UpgradeList)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(ScriptArray!(int)*)&params[8] = UpgradeList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUpgradeLevelLocal, params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	void UpdatePing(float TimeStamp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePing, params.ptr, cast(void*)0);
	}
	void RegisterBuddy()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterBuddy, cast(void*)0, cast(void*)0);
	}
	ScriptClass Load1PData(ScriptString ContentPath)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ContentPath;
		(cast(ScriptObject)this).ProcessEvent(Functions.Load1PData, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[12];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void RegisterPlayerWithSession()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterPlayerWithSession, cast(void*)0, cast(void*)0);
	}
	void UpdateValueModifier()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateValueModifier, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void SetPlayerTeam(TeamInfo NewTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TeamInfo*)params.ptr = NewTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerTeam, params.ptr, cast(void*)0);
	}
	void SwapToPendingCharClass(bool bIsRespawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsRespawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwapToPendingCharClass, params.ptr, cast(void*)0);
	}
	bool VerifyAndLoadCharacter(ScriptClass FamilyInfo, int Loadout)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.VerifyAndLoadCharacter, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	ScriptString GetSelectedLoadout()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSelectedLoadout, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool ShouldVisitStation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldVisitStation, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ResolveDefaultEquip(ScriptClass FamilyInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResolveDefaultEquip, params.ptr, cast(void*)0);
	}
	void SetActiveEquip(TrObject.TR_EQUIP_POINT EquipId, int ItemId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipId;
		*cast(int*)&params[4] = ItemId;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveEquip, params.ptr, cast(void*)0);
	}
	void IncrementKills(bool bEnemyKill)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnemyKill;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementKills, params.ptr, cast(void*)0);
	}
	void CheckMultiKill()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckMultiKill, cast(void*)0, cast(void*)0);
	}
	int GetPlayerClassId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerClassId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptClass GetPendingClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPendingClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	ScriptString GetCurrentClassAbb()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentClassAbb, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	int GetPlayerRankNum()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerRankNum, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetBaseGP()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBaseGP, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetBaseXP()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBaseXP, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void SetPlayerGP(int GP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = GP;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerGP, params.ptr, cast(void*)0);
	}
	void SetPlayerXP(int XP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = XP;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerXP, params.ptr, cast(void*)0);
	}
	ScriptClass GetRankFromXP(int XP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = XP;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRankFromXP, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	ScriptClass GetPerkFromId(int PerkId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PerkId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPerkFromId, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	void SetFlag(UTCarriedObject NewFlag)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTCarriedObject*)params.ptr = NewFlag;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlag, params.ptr, cast(void*)0);
	}
	PlayerReplicationInfo Duplicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Duplicate, params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)params.ptr;
	}
	void CopyProperties(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.CopyProperties, params.ptr, cast(void*)0);
	}
	void SetCached3PSkin(ScriptClass NewCachedSkin)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewCachedSkin;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCached3PSkin, params.ptr, cast(void*)0);
	}
	ScriptClass GetCurrentVoiceClass(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentVoiceClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	void UpdateCachedSkin()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCachedSkin, cast(void*)0, cast(void*)0);
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
	void Update1PMesh(ScriptClass FamilyInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.Update1PMesh, params.ptr, cast(void*)0);
	}
	void OnPingRedFlagged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPingRedFlagged, cast(void*)0, cast(void*)0);
	}
	void ServerPingRedFlag(float CurrentPingMS)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = CurrentPingMS;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerPingRedFlag, params.ptr, cast(void*)0);
	}
}
