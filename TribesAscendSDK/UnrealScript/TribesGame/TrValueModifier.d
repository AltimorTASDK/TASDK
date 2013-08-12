module UnrealScript.TribesGame.TrValueModifier;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrValueModifier : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrValueModifier")); }
	private static __gshared TrValueModifier mDefaultProperties;
	@property final static TrValueModifier DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrValueModifier)("TrValueModifier TribesGame.Default__TrValueModifier")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReset;
			ScriptFunction mMerge;
			ScriptFunction mMergeClass;
			ScriptFunction mMergeModification;
			ScriptFunction mLogModifiedValues;
		}
		public @property static final
		{
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrValueModifier.Reset")); }
			ScriptFunction Merge() { return mMerge ? mMerge : (mMerge = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrValueModifier.Merge")); }
			ScriptFunction MergeClass() { return mMergeClass ? mMergeClass : (mMergeClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrValueModifier.MergeClass")); }
			ScriptFunction MergeModification() { return mMergeModification ? mMergeModification : (mMergeModification = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrValueModifier.MergeModification")); }
			ScriptFunction LogModifiedValues() { return mLogModifiedValues ? mLogModifiedValues : (mLogModifiedValues = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrValueModifier.LogModifiedValues")); }
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
	@property final
	{
		auto ref
		{
			float m_fWeaponSwitchPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
			float m_fPrimaryWeaponReloadBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float m_fSecondaryWeaponReloadBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			int m_nPrimaryWeaponIncreasedClipSizeBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
			int m_nSecondaryWeaponIncreasedClipSizeBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 300); }
			float m_fUpgradeCostBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float m_fPrimaryWeaponArmorPenetrationBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float m_fSecondaryWeaponArmorPenetrationBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float m_fOffhandArmorPenetrationBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
			float m_fDeployableHealthBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			float m_fDeployableRangeBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float m_fTurretAcquireTargetBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
			float m_fAcquireTimeByEnemyTurretPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
			int m_nExtraOffhandAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
			int m_nExtraGrenadesFromPickupBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 216); }
			int m_nExtraPrimaryAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
			int m_nExtraSecondaryAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
			float m_fMaxJettingSpeedBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float m_fTerminalJettingSpeedBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float m_fMaxSkiSpeedBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float m_fTerminalSkiSpeedBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float m_fPeakSkiControlSpeedBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			float m_fSkiControlSigmaSquareBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			float m_fMaxSkiControlBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float m_fGroundSpeedPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 340); }
			float m_fMaxStoppingDistancePctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 344); }
			float m_fMassPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 348); }
			float m_fExtraEnergyBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			float m_fHealthBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float m_fEnergyRegenRateBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float m_fTimeToRegenHealthBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			float m_fSplatDamageBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
			float m_fStealthPackPulseTimeBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
			float m_fHealthRegenRateBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float m_fShieldPackEffectivenessBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			float m_fReceiveMeleeDamageBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float m_fSelfDamagePct() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
			float m_fEnergyDrainPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
			float m_fPotentialEnergyDamageTransferPct() { return *cast(float*)(cast(size_t)cast(void*)this + 356); }
			float m_fWhiteOutInterpSpeedPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
			float m_fIgnorePulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 392); }
			float m_fRageEnergyRegenBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
			float m_fRageHealthRestorationPct() { return *cast(float*)(cast(size_t)cast(void*)this + 384); }
			float m_fRageMassPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 388); }
			float m_fRageLength() { return *cast(float*)(cast(size_t)cast(void*)this + 380); }
			float m_fJammerPackRadiusPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
			int m_nFlagReachTier() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int m_nExtraCreditsFromBeltKills() { return *cast(int*)(cast(size_t)cast(void*)this + 308); }
			int m_nCreditsFromKillsBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 204); }
			float m_fVehicleCostBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float m_fSensorDistancePctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
			float m_fPackEnergyCostBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
			int m_nExtraDeployablesOutBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 228); }
			float m_fFasterThrowBeltBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 364); }
			float m_fOffhandDamageRadiusBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float m_fBlinkPackPotencyBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
			float m_fBuildupBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			float m_fSonicPunchDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 368); }
			float m_fSonicPunchKnockback() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
			float m_fBackstabMeleeDamagePctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			float m_fRepairRateBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			float m_fPrimaryWeaponRangeBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			float m_fSecondaryWeaponRangeBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
			float m_fAmmoFromPickupBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
			float m_fHealthFromPickupBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			float m_fEnergyFromPickupBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			int m_nExtraMinesOutBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 260); }
			float m_fRepairDeployableRateBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float m_fPrimaryWeaponEnergyCostPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 352); }
			float m_fDeployedTurretArmorPenetrationBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			float m_fMultiCrewedVehicleDamageProtectionPct() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
			float m_fVehicleRunOverDamageProtectionPct() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
			float m_fTimeToRegenEnergyBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			float m_fVehicleExtraEnergyBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			float m_fVehicleExtraHealthBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			int DatabaseItemId() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
			int IconId() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
			ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
			ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
		}
		bool m_bHasDetermination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x10) != 0; }
		bool m_bHasDetermination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x10; } return val; }
		bool m_bIgnoreGrenadeSecondaryOnSelf() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x2000) != 0; }
		bool m_bIgnoreGrenadeSecondaryOnSelf(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x2000; } return val; }
		bool m_bPotentialEnergy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x100) != 0; }
		bool m_bPotentialEnergy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x100; } return val; }
		bool m_bPotentialEnergyFallDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x200) != 0; }
		bool m_bPotentialEnergyFallDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x200; } return val; }
		bool m_bStickyHands() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x1) != 0; }
		bool m_bStickyHands(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x1; } return val; }
		bool m_bRadarLink() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x400) != 0; }
		bool m_bRadarLink(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x400; } return val; }
		bool m_bRage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x8000) != 0; }
		bool m_bRage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x8000; } return val; }
		bool m_bClothesline() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x80) != 0; }
		bool m_bClothesline(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x80; } return val; }
		bool m_bFlagReach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x800) != 0; }
		bool m_bFlagReach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x800; } return val; }
		bool m_bSonicPunch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x4000) != 0; }
		bool m_bSonicPunch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x4000; } return val; }
		bool m_bVictimDropFlagOnMelee() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x20) != 0; }
		bool m_bVictimDropFlagOnMelee(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x20; } return val; }
		bool m_bCanDamageRepairEnemyObjectives() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x8) != 0; }
		bool m_bCanDamageRepairEnemyObjectives(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x8; } return val; }
		bool m_bAmmoPickupReach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x1000) != 0; }
		bool m_bAmmoPickupReach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x1000; } return val; }
		bool m_bCanDetectTraps() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x4) != 0; }
		bool m_bCanDetectTraps(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x4; } return val; }
		bool m_bEjectionSeat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x40) != 0; }
		bool m_bEjectionSeat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x40; } return val; }
		bool m_bCanCallInSupplyDrop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x2) != 0; }
		bool m_bCanCallInSupplyDrop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x2; } return val; }
	}
final:
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void Merge(TrValueModifier ModifierToMerge)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrValueModifier*)params.ptr = ModifierToMerge;
		(cast(ScriptObject)this).ProcessEvent(Functions.Merge, params.ptr, cast(void*)0);
	}
	void MergeClass(ScriptClass ModifierClassToMerge)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ModifierClassToMerge;
		(cast(ScriptObject)this).ProcessEvent(Functions.MergeClass, params.ptr, cast(void*)0);
	}
	void MergeModification(int ModType, float Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ModType;
		*cast(float*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.MergeModification, params.ptr, cast(void*)0);
	}
	void LogModifiedValues()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LogModifiedValues, cast(void*)0, cast(void*)0);
	}
}
