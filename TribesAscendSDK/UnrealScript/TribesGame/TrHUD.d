module UnrealScript.TribesGame.TrHUD;

import ScriptClasses;
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
	public static immutable auto THR_SPINFUSOR = 1;
	public static immutable auto THR_SMG = 2;
	public static immutable auto THR_RIFLE = 3;
	public static immutable auto THR_LOCKED_ON = 4;
	public static immutable auto THR_CROSSBOW = 5;
	public static immutable auto THR_FLAME_THROWER = 6;
	public static immutable auto THR_CHAIN_GUN = 7;
	public static immutable auto THR_MISSILE = 8;
	public static immutable auto THR_NANITE = 9;
	public static immutable auto THR_SHOTGUN = 10;
	public static immutable auto THR_UNKNOWN = 11;
	public static immutable auto THR_LASER = 12;
	public static immutable auto THR_CH_V13 = 13;
	public static immutable auto THR_SCOPE = 14;
	public static immutable auto THR_STANDARD = 15;
	public static immutable auto THR_GRENADE_LAUNCHER = 16;
	public static immutable auto THR_MELEE = 17;
	public static immutable auto THR_SHRIKE = 18;
	public static immutable auto THR_FREE_SPECTATOR = 19;
	public static immutable auto THR_RED_DOT = 20;
	public static immutable auto THR_BXT1 = 21;
	public static immutable auto THR_PHASERIFLE = 22;
	public static immutable auto THR_SAP20 = 23;
	public static immutable auto THR_PLASMAGUN = 24;
	public static immutable auto HAE_KILL_STREAK_LEVEL_1 = 1;
	public static immutable auto HAE_KILL_STREAK_LEVEL_2 = 2;
	public static immutable auto HAE_KILL_STREAK_LEVEL_3 = 3;
	public static immutable auto HAE_KILL_STREAK_LEVEL_4 = 4;
	public static immutable auto HAE_KILL_STREAK_LEVEL_5 = 5;
	public static immutable auto TRHUD_PACK_STEALTH = 1;
	public static immutable auto TRHUD_PACK_DAMAGE = 2;
	public static immutable auto TRHUD_PACK_OMNI = 3;
	public static immutable auto TRHUD_PACK_ERECHARGE = 4;
	public static immutable auto TRHUD_PACK_AIRTURRET = 5;
	public static immutable auto TRHUD_PACK_BLINK = 6;
	public static immutable auto TRHUD_PACK_ENERGY = 7;
	public static immutable auto TRHUD_PACK_SHIELD = 8;
	public static immutable auto TRHUD_PACK_JAMMER = 9;
	public static immutable auto TRHUD_PACK_LIGHTTURRET = 10;
	public static immutable auto TRHUD_PACK_FORCEFIELD = 11;
	public static immutable auto TRHUD_PACK_WALLTURRET = 12;
	public static immutable auto TRHUD_PACK_REGEN = 13;
	public static immutable auto TRHUD_PACK_DROPJAMMER = 14;
	public static immutable auto TRHUD_TBD1 = 15;
	public static immutable auto TRHUD_TBD2 = 16;
	public static immutable auto TRHUD_TBD3 = 17;
	public static immutable auto TRHUD_BELT_STICKYGREN = 18;
	public static immutable auto TRHUD_BELT_FRAG = 19;
	public static immutable auto TRHUD_BELT_CLAYMORE = 20;
	public static immutable auto TRHUD_BELT_NITRON = 21;
	public static immutable auto TRHUD_BELT_MOTIONALARM = 22;
	public static immutable auto TRHUD_BELT_SPIKEGREN = 23;
	public static immutable auto TRHUD_BELT_WHITEOUT = 24;
	public static immutable auto TRHUD_BELT_APGREN = 25;
	public static immutable auto TRHUD_BELT_STGREN = 26;
	public static immutable auto TRHUD_BELT_PRISMMINES = 27;
	public static immutable auto TRHUD_BELT_FLARE = 28;
	public static immutable auto TRHUD_BELT_EMPGREN = 29;
	public static immutable auto TRHUD_BELT_MINES = 30;
	public static immutable auto TRHUD_BELT_DISKTOSS = 31;
	public static immutable auto TRHUD_TBD4 = 32;
	public static immutable auto TRHUD_TBD5 = 33;
	public static immutable auto TRHUD_MEDAL_ASSIST = 34;
	public static immutable auto TRHUD_CLAYMOREMINE = 35;
	public static immutable auto TRHUD_PRISMMINE = 36;
	public static immutable auto TRHUD_LIGHTTURRET = 37;
	public static immutable auto TRHUD_AATURRET = 38;
	public static immutable auto TRHUD_MOTIONSENSOR = 39;
	public static immutable auto TRHUD_MINES = 40;
	public static immutable auto TRHUD_FORCESHIELD = 41;
	public static immutable auto TRHUD_DROPJAMMER = 42;
	public static immutable auto TRHUD_GENERATOR = 43;
	public static immutable auto TRHUD_SKIING = 44;
	public static immutable auto TRHUD_MEDAL_KILLINGSPREE = 45;
	public static immutable auto TRHUD_MEDAL_KILLINGRAMPAGE = 46;
	public static immutable auto TRHUD_MEDAL_UNSTOPPABLE = 47;
	public static immutable auto TRHUD_MEDAL_RELENTLESS = 48;
	public static immutable auto TRHUD_MEDAL_THESLAYER = 49;
	public static immutable auto TRHUD_MEDAL_SNIPINGSPREE = 50;
	public static immutable auto TRHUD_MEDAL_MARKSMAN = 51;
	public static immutable auto TRHUD_MEDAL_SHARPSHOOTER = 52;
	public static immutable auto TRHUD_MEDAL_AIRMAIL = 53;
	public static immutable auto TRHUD_MEDAL_DEMOLITIONSEXPERT = 54;
	public static immutable auto TRHUD_MEDAL_HURTLOCKER = 55;
	public static immutable auto TRHUD_MEDAL_CLASSICSPREE = 56;
	public static immutable auto TRHUD_MEDAL_DISKJOCKEY = 57;
	public static immutable auto TRHUD_MEDAL_TRIBALFANATIC = 58;
	public static immutable auto TRHUD_MEDAL_DOUBLEKILL = 59;
	public static immutable auto TRHUD_MEDAL_TRIPLEKILL = 60;
	public static immutable auto TRHUD_MEDAL_QUATRAKILL = 61;
	public static immutable auto TRHUD_MEDAL_ULTRAKILL = 62;
	public static immutable auto TRHUD_MEDAL_TEAMKILL = 63;
	public static immutable auto TRHUD_MEDAL_NOJOY = 64;
	public static immutable auto TRHUD_MEDAL_REVENGE = 65;
	public static immutable auto TRHUD_MEDAL_AFTERMATH = 66;
	public static immutable auto TRHUD_MEDAL_FIRSTBLOOD = 67;
	public static immutable auto TRHUD_MEDAL_BLUEPLATE = 68;
	public static immutable auto TRHUD_MEDAL_STICKYKILL = 69;
	public static immutable auto TRHUD_MEDAL_HEADSHOT = 70;
	public static immutable auto TRHUD_MEDAL_ARTILLERYSHOT = 71;
	public static immutable auto TRHUD_MEDAL_MARTIALART = 72;
	public static immutable auto TRHUD_MEDAL_SQUISH = 73;
	public static immutable auto TRHUD_MEDAL_FLAGGOLD = 74;
	public static immutable auto TRHUD_MEDAL_FLAGSILVER = 75;
	public static immutable auto TRHUD_MEDAL_FLAGBRONZE = 75;
	public static immutable auto TRHUD_MEDAL_FLAGLLAMA = 75;
	public static immutable auto TRHUD_MEDAL_GENERHATER = 76;
	public static immutable auto TRHUD_MEDAL_RABBITHUNTER = 77;
	public static immutable auto TRHUD_MEDAL_CAERBANNOG = 78;
	public static immutable auto TRHUD_MEDAL_FINALBLOW = 79;
	public static immutable auto TRHUD_MEDAL_GENDEFENSE = 76;
	public static immutable auto TRHUD_MEDAL_FLAGDEFENSE = 75;
	public static immutable auto TRHUD_MEDAL_VDESTROY = 73;
	public static immutable auto TRHUD_MEDAL_HOTAIR = 284;
	public static immutable auto TRICON_RANK_1 = 80;
	public static immutable auto TRICON_RANK_2 = 81;
	public static immutable auto TRICON_RANK_3 = 82;
	public static immutable auto TRICON_RANK_4 = 83;
	public static immutable auto TRICON_RANK_5 = 84;
	public static immutable auto TRICON_RANK_6 = 85;
	public static immutable auto TRICON_RANK_7 = 86;
	public static immutable auto TRICON_RANK_8 = 87;
	public static immutable auto TRICON_RANK_9 = 88;
	public static immutable auto TRICON_RANK_10 = 89;
	public static immutable auto TRICON_RANK_11 = 90;
	public static immutable auto TRICON_RANK_12 = 91;
	public static immutable auto TRICON_RANK_13 = 92;
	public static immutable auto TRICON_RANK_14 = 93;
	public static immutable auto TRICON_RANK_15 = 94;
	public static immutable auto TRICON_RANK_16 = 95;
	public static immutable auto TRICON_RANK_17 = 96;
	public static immutable auto TRICON_RANK_18 = 97;
	public static immutable auto TRICON_RANK_19 = 98;
	public static immutable auto TRICON_RANK_20 = 99;
	public static immutable auto TRICON_RANK_21 = 100;
	public static immutable auto TRICON_RANK_22 = 101;
	public static immutable auto TRICON_RANK_23 = 102;
	public static immutable auto TRICON_RANK_24 = 103;
	public static immutable auto TRICON_RANK_25 = 104;
	public static immutable auto TRICON_RANK_26 = 105;
	public static immutable auto TRICON_RANK_27 = 106;
	public static immutable auto TRICON_RANK_28 = 107;
	public static immutable auto TRICON_RANK_29 = 108;
	public static immutable auto TRICON_RANK_30 = 109;
	public static immutable auto TRICON_RANK_31 = 110;
	public static immutable auto TRICON_RANK_32 = 111;
	public static immutable auto TRICON_RANK_33 = 112;
	public static immutable auto TRICON_RANK_34 = 113;
	public static immutable auto TRICON_RANK_35 = 114;
	public static immutable auto TRICON_RANK_36 = 115;
	public static immutable auto TRICON_RANK_37 = 116;
	public static immutable auto TRICON_RANK_38 = 117;
	public static immutable auto TRICON_RANK_39 = 118;
	public static immutable auto TRICON_RANK_40 = 119;
	public static immutable auto TRICON_RANK_41 = 120;
	public static immutable auto TRICON_RANK_42 = 121;
	public static immutable auto TRICON_RANK_43 = 122;
	public static immutable auto TRICON_RANK_44 = 123;
	public static immutable auto TRICON_RANK_45 = 124;
	public static immutable auto TRICON_RANK_46 = 125;
	public static immutable auto TRICON_RANK_47 = 126;
	public static immutable auto TRICON_RANK_48 = 127;
	public static immutable auto TRICON_RANK_49 = 128;
	public static immutable auto TRICON_RANK_50 = 129;
	public static immutable auto TRICON_KILLTYPE_EXPLOSIVE = 130;
	public static immutable auto TRICON_KILLTYPE_STICKY = 131;
	public static immutable auto TRICON_KILLTYPE_SQUISH = 132;
	public static immutable auto TRICON_KILLTYPE_MELEE = 133;
	public static immutable auto TRICON_KILLTYPE_FALLING = 134;
	public static immutable auto TRICON_KILLTYPE_VEHICLE = 135;
	public static immutable auto TRICON_KILLTYPE_BULLET = 136;
	public static immutable auto TRICON_KILLTYPE_SNIPER = 137;
	public static immutable auto TRICON_KILLTYPE_BASE_TURRET = 138;
	public static immutable auto TRICON_KILLTYPE_HEADSHOT = 139;
	public static immutable auto TRICON_KILLTYPE_GENERIC = 140;
	public static immutable auto TRICON_KILLTYPE_SPINFUSOR = 141;
	public static immutable auto TRICON_KILLTYPE_TURRET = 142;
	public static immutable auto TRICON_ACCOLADE_BASE_DESTROY = 143;
	public static immutable auto TRICON_ACCOLADE_BASE_REPAIR = 144;
	public static immutable auto TRICON_ACCOLADE_MIRACLE = 145;
	public static immutable auto TRICON_ACCOLADE_ULTRAKILLNORED = 146;
	public static immutable auto TRICON_ACCOLADE_NOTAMONGEQUALS = 147;
	public static immutable auto TRICON_ACCOLADE_EXPLOSIVESPREE = 148;
	public static immutable auto TRICON_ACCOLADE_ULTRAFASTGRAB = 149;
	public static immutable auto TRICON_ACCOLADE_ONEMANARMY = 150;
	public static immutable auto TRICON_ACCOLADE_GAMEWINNER = 151;
	public static immutable auto TRICON_ACCOLADE_UNITEDWESTAND = 152;
	public static immutable auto TRICON_ACCOLADE_DOUBLEDOWN = 153;
	public static immutable auto TRICON_ACCOLADE_FASTFLAGGRAB = 154;
	public static immutable auto TRICON_ACCOLADE_SHRIKEDOWN = 155;
	public static immutable auto TRICON_ACCOLADE_GRAVCYCLEDOWN = 156;
	public static immutable auto TRICON_ACCOLADE_BEOWULFDOWN = 157;
	public static immutable auto TRICON_ACCOLADE_FINALBLOW = 158;
	public static immutable auto TRICON_ACCOLADE_BENCHEM = 159;
	public static immutable auto TRICON_ACCOLADE_LASTMANSTANDING = 160;
	public static immutable auto TRICON_ACCOLADE_TRIBALHONOR = 161;
	public static immutable auto TRICON_ACCOLADE_FLAGKILLER = 162;
	public static immutable auto TRICON_ACCOLADE_GAMECOMPLETE = 163;
	public static immutable auto TRICON_ACCOLADE_FLAGDEFENSE = 164;
	public static immutable auto TRICON_ACCOLADE_GENERATORDEFENSE = 165;
	public static immutable auto TRICON_ACCOLADE_LLAMAGRAB = 166;
	public static immutable auto TRICON_ACCOLADE_EGRAB = 167;
	public static immutable auto TRICON_ACCOLADE_TURRETDESTROYED = 168;
	public static immutable auto TRICON_ACCOLADE_ALTFLAGCARRY = 169;
	public static immutable auto TRICON_ACCOLADE_HOLDTHELINE = 281;
	public static immutable auto TRICON_ACCOLADE_CAPTUREANDHOLD = 282;
	public static immutable auto TRICON_BADGE_FLAGDEFENSE_4 = 170;
	public static immutable auto TRICON_BADGE_FLAGDEFENSE_3 = 171;
	public static immutable auto TRICON_BADGE_FLAGDEFENSE_2 = 172;
	public static immutable auto TRICON_BADGE_FLAGDEFENSE_1 = 173;
	public static immutable auto TRICON_BADGE_OPERATOR_4 = 174;
	public static immutable auto TRICON_BADGE_OPERATOR_3 = 175;
	public static immutable auto TRICON_BADGE_OPERATOR_2 = 176;
	public static immutable auto TRICON_BADGE_OPERATOR_1 = 177;
	public static immutable auto TRICON_BADGE_CALLINKILLS_4 = 178;
	public static immutable auto TRICON_BADGE_CALLINKILLS_3 = 179;
	public static immutable auto TRICON_BADGE_CALLINKILLS_2 = 180;
	public static immutable auto TRICON_BADGE_CALLINKILLS_1 = 181;
	public static immutable auto TRICON_BADGE_MELEEKILLS_4 = 182;
	public static immutable auto TRICON_BADGE_MELEEKILLS_3 = 183;
	public static immutable auto TRICON_BADGE_MELEEKILLS_2 = 184;
	public static immutable auto TRICON_BADGE_MELEEKILLS_1 = 185;
	public static immutable auto TRICON_BADGE_ONEMANARMY_4 = 186;
	public static immutable auto TRICON_BADGE_ONEMANARMY_3 = 187;
	public static immutable auto TRICON_BADGE_ONEMANARMY_2 = 188;
	public static immutable auto TRICON_BADGE_ONEMANARMY_1 = 189;
	public static immutable auto TRICON_BADGE_FLAGCAPPER_4 = 190;
	public static immutable auto TRICON_BADGE_FLAGCAPPER_3 = 191;
	public static immutable auto TRICON_BADGE_FLAGCAPPER_2 = 192;
	public static immutable auto TRICON_BADGE_FLAGCAPPER_1 = 193;
	public static immutable auto TRICON_BADGE_TOUROFDUTY_4 = 194;
	public static immutable auto TRICON_BADGE_TOUROFDUTY_3 = 195;
	public static immutable auto TRICON_BADGE_TOUROFDUTY_2 = 196;
	public static immutable auto TRICON_BADGE_TOUROFDUTY_1 = 197;
	public static immutable auto TRICON_BADGE_MULTIKILL_4 = 198;
	public static immutable auto TRICON_BADGE_MULTIKILL_3 = 199;
	public static immutable auto TRICON_BADGE_MULTIKILL_2 = 200;
	public static immutable auto TRICON_BADGE_MULTIKILL_1 = 201;
	public static immutable auto TRICON_BADGE_COMBATSTAR_4 = 202;
	public static immutable auto TRICON_BADGE_COMBATSTAR_3 = 203;
	public static immutable auto TRICON_BADGE_COMBATSTAR_2 = 204;
	public static immutable auto TRICON_BADGE_COMBATSTAR_1 = 205;
	public static immutable auto TRICON_BADGE_CROSSCOUNTRY_4 = 206;
	public static immutable auto TRICON_BADGE_CROSSCOUNTRY_3 = 207;
	public static immutable auto TRICON_BADGE_CROSSCOUNTRY_2 = 208;
	public static immutable auto TRICON_BADGE_CROSSCOUNTRY_1 = 209;
	public static immutable auto TRICON_BADGE_POWERPLAYER_4 = 210;
	public static immutable auto TRICON_BADGE_POWERPLAYER_3 = 211;
	public static immutable auto TRICON_BADGE_POWERPLAYER_2 = 212;
	public static immutable auto TRICON_BADGE_POWERPLAYER_1 = 213;
	public static immutable auto TRICON_BADGE_DEMOMAN_4 = 214;
	public static immutable auto TRICON_BADGE_DEMOMAN_3 = 215;
	public static immutable auto TRICON_BADGE_DEMOMAN_2 = 216;
	public static immutable auto TRICON_BADGE_DEMOMAN_1 = 217;
	public static immutable auto TRICON_BADGE_SPEEDRUNNER_4 = 218;
	public static immutable auto TRICON_BADGE_SPEEDRUNNER_3 = 219;
	public static immutable auto TRICON_BADGE_SPEEDRUNNER_2 = 220;
	public static immutable auto TRICON_BADGE_SPEEDRUNNER_1 = 221;
	public static immutable auto TRICON_BADGE_GOODDRIVER_4 = 222;
	public static immutable auto TRICON_BADGE_GOODDRIVER_3 = 223;
	public static immutable auto TRICON_BADGE_GOODDRIVER_2 = 224;
	public static immutable auto TRICON_BADGE_GOODDRIVER_1 = 225;
	public static immutable auto TRICON_BADGE_PURPLEHEART_4 = 226;
	public static immutable auto TRICON_BADGE_PURPLEHEART_3 = 227;
	public static immutable auto TRICON_BADGE_PURPLEHEART_2 = 228;
	public static immutable auto TRICON_BADGE_PURPLEHEART_1 = 229;
	public static immutable auto TRICON_BADGE_HAPPENSTOUSALL = 230;
	public static immutable auto TRICON_BADGE_INVSTATION = 231;
	public static immutable auto TRICON_BADGE_ANTIVEHICLE_4 = 232;
	public static immutable auto TRICON_BADGE_ANTIVEHICLE_3 = 233;
	public static immutable auto TRICON_BADGE_ANTIVEHICLE_2 = 234;
	public static immutable auto TRICON_BADGE_ANTIVEHICLE_1 = 235;
	public static immutable auto TRICON_BADGE_UTILITYBELT_4 = 236;
	public static immutable auto TRICON_BADGE_UTILITYBELT_3 = 237;
	public static immutable auto TRICON_BADGE_UTILITYBELT_2 = 238;
	public static immutable auto TRICON_BADGE_UTILITYBELT_1 = 239;
	public static immutable auto TRICON_BADGE_ONCALL_4 = 240;
	public static immutable auto TRICON_BADGE_ONCALL_3 = 241;
	public static immutable auto TRICON_BADGE_ONCALL_2 = 242;
	public static immutable auto TRICON_BADGE_ONCALL_1 = 243;
	public static immutable auto TRICON_BADGE_SUPPORT_4 = 244;
	public static immutable auto TRICON_BADGE_SUPPORT_3 = 245;
	public static immutable auto TRICON_BADGE_SUPPORT_2 = 246;
	public static immutable auto TRICON_BADGE_SUPPORT_1 = 247;
	public static immutable auto TRICON_BADGE_MARKSMAN_4 = 248;
	public static immutable auto TRICON_BADGE_MARKSMAN_3 = 249;
	public static immutable auto TRICON_BADGE_MARKSMAN_2 = 250;
	public static immutable auto TRICON_BADGE_MARKSMAN_1 = 251;
	public static immutable auto TRICON_BADGE_ASSISTOR_4 = 252;
	public static immutable auto TRICON_BADGE_ASSISTOR_3 = 253;
	public static immutable auto TRICON_BADGE_ASSISTOR_2 = 254;
	public static immutable auto TRICON_BADGE_ASSISTOR_1 = 255;
	public static immutable auto TRICON_BADGE_BUILDER_4 = 256;
	public static immutable auto TRICON_BADGE_BUILDER_3 = 257;
	public static immutable auto TRICON_BADGE_BUILDER_2 = 258;
	public static immutable auto TRICON_BADGE_BUILDER_1 = 259;
	public static immutable auto TRICON_BADGE_GOINGFAST_4 = 260;
	public static immutable auto TRICON_BADGE_GOINGFAST_3 = 261;
	public static immutable auto TRICON_BADGE_GOINGFAST_2 = 262;
	public static immutable auto TRICON_BADGE_GOINGFAST_1 = 263;
	public static immutable auto RANK_XP_1 = 0;
	public static immutable auto RANK_XP_2 = 1350;
	public static immutable auto RANK_XP_3 = 2781;
	public static immutable auto RANK_XP_4 = 4298;
	public static immutable auto RANK_XP_5 = 5906;
	public static immutable auto RANK_XP_6 = 11212;
	public static immutable auto RANK_XP_7 = 16836;
	public static immutable auto RANK_XP_8 = 22798;
	public static immutable auto RANK_XP_9 = 31741;
	public static immutable auto RANK_XP_10 = 41130;
	public static immutable auto RANK_XP_11 = 50990;
	public static immutable auto RANK_XP_12 = 61342;
	public static immutable auto RANK_XP_13 = 76870;
	public static immutable auto RANK_XP_14 = 93020;
	public static immutable auto RANK_XP_15 = 109815;
	public static immutable auto RANK_XP_16 = 127283;
	public static immutable auto RANK_XP_17 = 145449;
	public static immutable auto RANK_XP_18 = 172698;
	public static immutable auto RANK_XP_19 = 200765;
	public static immutable auto RANK_XP_20 = 229673;
	public static immutable auto RANK_XP_21 = 259449;
	public static immutable auto RANK_XP_22 = 290118;
	public static immutable auto RANK_XP_23 = 321707;
	public static immutable auto RANK_XP_24 = 369091;
	public static immutable auto RANK_XP_25 = 417896;
	public static immutable auto RANK_XP_26 = 468166;
	public static immutable auto RANK_XP_27 = 519943;
	public static immutable auto RANK_XP_28 = 573274;
	public static immutable auto RANK_XP_29 = 628205;
	public static immutable auto RANK_XP_30 = 684783;
	public static immutable auto RANK_XP_31 = 743059;
	public static immutable auto RANK_XP_32 = 803084;
	public static immutable auto RANK_XP_33 = 864909;
	public static immutable auto RANK_XP_34 = 928589;
	public static immutable auto RANK_XP_35 = 994179;
	public static immutable auto RANK_XP_36 = 1061737;
	public static immutable auto RANK_XP_37 = 1131321;
	public static immutable auto RANK_XP_38 = 1202994;
	public static immutable auto RANK_XP_39 = 1276816;
	public static immutable auto RANK_XP_40 = 1352853;
	public static immutable auto RANK_XP_41 = 1431171;
	public static immutable auto RANK_XP_42 = 1511839;
	public static immutable auto RANK_XP_43 = 1594926;
	public static immutable auto RANK_XP_44 = 1680507;
	public static immutable auto RANK_XP_45 = 1768654;
	public static immutable auto RANK_XP_46 = 1859447;
	public static immutable auto RANK_XP_47 = 1952963;
	public static immutable auto RANK_XP_48 = 2049284;
	public static immutable auto RANK_XP_49 = 2148495;
	public static immutable auto RANK_XP_50 = 2250682;
	public static immutable auto ACCOLADE_TYPE_MISC = 0;
	public static immutable auto ACCOLADE_TYPE_MULTIKILL = 1;
	public static immutable auto ACCOLADE_TYPE_KILLSTREAK = 2;
	public static immutable auto TRICON_PERK_ICON_WIP = 1;
	public static immutable auto TRICON_PERK_BONUS_KILL_CREDITS = 1;
	public static immutable auto TRICON_PERK_STICKY_HANDS = 2;
	public static immutable auto TRICON_PERK_REDUCED_VEHICLE_COST = 3;
	public static immutable auto TRICON_PERK_REDUCED_SELF_DAMAGE = 4;
	public static immutable auto TRICON_PERK_REDUCED_RUN_OVER = 5;
	public static immutable auto TRICON_PERK_REDUCED_BASE_UPGRADE_COST = 6;
	public static immutable auto TRICON_PERK_REDUCED_FALL_DMG = 7;
	public static immutable auto TRICON_PERK_REDUCED_AIR_VEHICLE_COST = 8;
	public static immutable auto TRICON_PERK_TRAP_DETECTION = 9;
	public static immutable auto TRICON_PERK_PICKUP_ENERGY_HEALTH = 10;
	public static immutable auto TRICON_PERK_MELEE_FLAG_DROP = 11;
	public static immutable auto TRICON_PERK_EXTRA_MINES = 12;
	public static immutable auto TRICON_PERK_EXTRA_ENERGY = 13;
	public static immutable auto TRICON_PERK_EXTRA_GRENADE_PICKUP = 14;
	public static immutable auto TRICON_PERK_EXTRA_AMMO = 15;
	public static immutable auto TRICON_PERK_EXTRA_GRENADE = 16;
	public static immutable auto TRICON_PERK_BEOWULF_HEALTH_INCREASE = 17;
	public static immutable auto TRICON_PERK_EJECTION_SEAT = 18;
	public static immutable auto TRICON_PERK_ORBITAL_STRIKE = 19;
	public static immutable auto TRICON_PERK_REDUCED_MELEE_DAMAGE = 20;
	public static immutable auto TRICON_PERK_MELEE_BACKSTAB = 21;
	public static immutable auto TRICON_PERK_DEMOLITIONS = 22;
	public static immutable auto TRICON_PERK_SQUIRRELLY = 23;
	public static immutable auto TRICON_PERK_STEALTHY = 24;
	public static immutable auto TRICON_PERK_ULTRA_CAPACITOR = 25;
	public static immutable auto TRICON_PERK_DETERMINATION = 26;
	public static immutable auto TRICON_SKILL_SPEED = 1;
	public static immutable auto TRICON_SKILL_ENERGY = 2;
	public static immutable auto TRICON_SKILL_PING = 3;
	public static immutable auto TRICON_SKILL_AMMO = 4;
	public static immutable auto TRICON_SKILL_ANTI_ARMOR = 5;
	public static immutable auto TRICON_SKILL_GRENADE = 6;
	public static immutable auto TRICON_SKILL_RADIUS = 7;
	public static immutable auto TRICON_SKILL_HEALTH = 8;
	public static immutable auto TRICON_SKILL_BOOT = 9;
	public static immutable auto TRICON_SKILL_TIMER = 10;
	public static immutable auto TRICON_CLASS_SENTINEL = 1;
	public static immutable auto TRICON_CLASS_PATHFINDER = 2;
	public static immutable auto TRICON_CLASS_JUMPER = 3;
	public static immutable auto TRICON_CLASS_INFILTRATOR = 4;
	public static immutable auto TRICON_CLASS_WARDER = 30;
	public static immutable auto TRICON_CLASS_TECHNICIAN = 31;
	public static immutable auto TRICON_CLASS_SOLDIER = 32;
	public static immutable auto TRICON_CLASS_SCRAMBLER = 33;
	public static immutable auto TRICON_CLASS_RANGER = 34;
	public static immutable auto TRICON_CLASS_RAIDER = 35;
	public static immutable auto TRICON_CLASS_ENGINEER = 36;
	public static immutable auto TRICON_CLASS_ROOK = 60;
	public static immutable auto TRICON_CLASS_MARAUDER = 61;
	public static immutable auto TRICON_CLASS_JUGGERNAUT = 62;
	public static immutable auto TRICON_CLASS_DOOMBRINGER = 63;
	public static immutable auto TRICON_CLASS_BRUTE = 64;
	public static immutable auto TRICON_CLASS_WIP = 88;
	public static immutable auto ICON_UPGRADE_NONE = 0;
	public static immutable auto MOD_TYPE_NONE = 1;
	public static immutable auto MOD_TYPE_HEALTH = 2;
	public static immutable auto MOD_TYPE_MASSPCT = 3;
	public static immutable auto MOD_TYPE_RADARLINK = 4;
	public static immutable auto MOD_TYPE_FLAGREACH = 5;
	public static immutable auto MOD_TYPE_BUILDUPPCT = 6;
	public static immutable auto MOD_TYPE_CLOTHESLINE = 7;
	public static immutable auto MOD_TYPE_STICKYHANDS = 8;
	public static immutable auto MOD_TYPE_MAXSKISPEED = 9;
	public static immutable auto MOD_TYPE_EXTRAENERGY = 10;
	public static immutable auto MOD_TYPE_EJECTIONSEAT = 11;
	public static immutable auto MOD_TYPE_SELFDAMAGEPCT = 12;
	public static immutable auto MOD_TYPE_REPAIRRATEPCT = 13;
	public static immutable auto MOD_TYPE_EXTRAMINESOUT = 14;
	public static immutable auto MOD_TYPE_VEHICLEEXTRAHEALTH = 15;
	public static immutable auto MOD_TYPE_GROUNDSPEEDPCT = 16;
	public static immutable auto MOD_TYPE_ENERGYDRAINPCT = 17;
	public static immutable auto MOD_TYPE_UPGRADECOSTPCT = 18;
	public static immutable auto MOD_TYPE_CANDETECTTRAPS = 19;
	public static immutable auto MOD_TYPE_SPLATDAMAGEPCT = 20;
	public static immutable auto MOD_TYPE_WEAPONSWITCHPCT = 21;
	public static immutable auto MOD_TYPE_POTENTIALENERGY = 22;
	public static immutable auto MOD_TYPE_MAXJETTINGSPEED = 23;
	public static immutable auto MOD_TYPE_CREDITSFROMKILLS = 24;
	public static immutable auto MOD_TYPE_TERMINALSKISPEED = 25;
	public static immutable auto MOD_TYPE_MAXSKICONTROLPCT = 26;
	public static immutable auto MOD_TYPE_HASDETERMINATION = 27;
	public static immutable auto MOD_TYPE_DEPLOYABLEHEALTH = 28;
	public static immutable auto MOD_TYPE_EXTRAOFFHANDAMMO = 29;
	public static immutable auto MOD_TYPE_EXTRAPRIMARYAMMO = 30;
	public static immutable auto MOD_TYPE_PRIMARYRELOADPCT = 31;
	public static immutable auto MOD_TYPE_SENSORDISTANCEPCT = 32;
	public static immutable auto MOD_TYPE_PACKENERGYCOSTPCT = 33;
	public static immutable auto MOD_TYPE_AMMOFROMPICKUPPCT = 34;
	public static immutable auto MOD_TYPE_TIMETOREGENENERGY = 35;
	public static immutable auto MOD_TYPE_SECONDARYRELOADPCT = 36;
	public static immutable auto MOD_TYPE_EXTRASECONDARYAMMO = 37;
	public static immutable auto MOD_TYPE_ENERGYREGENRATEPCT = 38;
	public static immutable auto MOD_TYPE_HEALTHREGENRATEPCT = 39;
	public static immutable auto MOD_TYPE_DEPLOYABLERANGEPCT = 40;
	public static immutable auto MOD_TYPE_JAMMERPACKRADIUSPCT = 41;
	public static immutable auto MOD_TYPE_BLINKPACKPOTENCYPCT = 42;
	public static immutable auto MOD_TYPE_PEAKSKICONTROLSPEED = 43;
	public static immutable auto MOD_TYPE_CANCALLINSUPPLYDROP = 44;
	public static immutable auto MOD_TYPE_EXTRADEPLOYABLESOUT = 45;
	public static immutable auto MOD_TYPE_HEALTHFROMPICKUPPCT = 46;
	public static immutable auto MOD_TYPE_ENERGYFROMPICKUPPCT = 47;
	public static immutable auto MOD_TYPE_TERMINALJETTINGSPEED = 48;
	public static immutable auto MOD_TYPE_TIMETOREGENHEALTHPCT = 49;
	public static immutable auto MOD_TYPE_VEHICLECOSTPCT = 50;
	public static immutable auto MOD_TYPE_SKICONTROLSIGMASQUARE = 51;
	public static immutable auto MOD_TYPE_RECEIVEMELEEDAMAGEPCT = 52;
	public static immutable auto MOD_TYPE_VICTIMDROPFLAGONMELEE = 53;
	public static immutable auto MOD_TYPE_PRIMARYWEAPONRANGEPCT = 54;
	public static immutable auto MOD_TYPE_OFFHANDDAMAGERADIUSPCT = 55;
	public static immutable auto MOD_TYPE_TURRETACQUIRETARGETPCT = 56;
	public static immutable auto MOD_TYPE_WHITEOUTINTERPSPEEDPCT = 57;
	public static immutable auto MOD_TYPE_BACKSTABMELEEDAMAGEPCT = 58;
	public static immutable auto MOD_TYPE_MAXSTOPPINGDISTANCEPCT = 59;
	public static immutable auto MOD_TYPE_SECONDARYWEAPONRANGEPCT = 60;
	public static immutable auto MOD_TYPE_EXTRAGRENADESFROMPICKUP = 61;
	public static immutable auto MOD_TYPE_SHIELDPACKEFFECTIVENESS = 62;
	public static immutable auto MOD_TYPE_STEALTHPACKPULSETIMEPCT = 63;
	public static immutable auto MOD_TYPE_PRIMARYINCREASEDCLIPSIZE = 64;
	public static immutable auto MOD_TYPE_EXTRACREDITSFROMBELTKILLS = 65;
	public static immutable auto MOD_TYPE_TURRETARMORPENETRATIONPCT = 66;
	public static immutable auto MOD_TYPE_SECONDARYINCREASEDCLIPSIZE = 67;
	public static immutable auto MOD_TYPE_OFFHANDARMORPENETRATIONPCT = 68;
	public static immutable auto MOD_TYPE_PRIMARYARMORPENETRATIONPCT = 69;
	public static immutable auto MOD_TYPE_RUNOVERDAMAGEPROTECTIONPCT = 70;
	public static immutable auto MOD_TYPE_PRIMARYWEAPONENERGYCOSTPCT = 71;
	public static immutable auto MOD_TYPE_ACQUIRETIMEBYENEMYTURRETPCT = 72;
	public static immutable auto MOD_TYPE_SECONDARYARMORPENETRATIONPCT = 73;
	public static immutable auto MOD_TYPE_VEHICLEEXTRAENERGY = 74;
	public static immutable auto MOD_TYPE_AMMOPICKUPREACH = 75;
	public static immutable auto MOD_TYPE_VEHICLEPASSENGERDMGPROTPCT = 76;
	public static immutable auto MOD_TYPE_DAMAGEREPAIRENEMYOBJECTIVES = 77;
	public static immutable auto MOD_TYPE_POTENTIALENERGYFALLDAMAGE = 78;
	public static immutable auto MOD_TYPE_FASTERTHROWBELTBUFFPCT = 79;
	public static immutable auto MOD_TYPE_IGNOREGRENADESECONDARYONSELF = 80;
	public static immutable auto MOD_TYPE_POTENTIALENERGYDMGTRANSFERPCT = 81;
	public static immutable auto MOD_TYPE_FLAGREACHTIER = 82;
	public static immutable auto MOD_TYPE_SONICPUNCH = 83;
	public static immutable auto MOD_TYPE_SONICPUNCHDIST = 84;
	public static immutable auto MOD_TYPE_SONICPUNCHKNOCKBACK = 85;
	public static immutable auto MOD_TYPE_RAGE = 86;
	public static immutable auto MOD_TYPE_RAGEENERGYREGEN = 87;
	public static immutable auto MOD_TYPE_RAGETIMELENGTH = 88;
	public static immutable auto MOD_TYPE_RAGEHEALTHRESTOREPCT = 89;
	public static immutable auto MOD_TYPE_IGNOREPULSESTEALTHTIME = 90;
	public static immutable auto MOD_TYPE_RAGEMASSREDUCTION = 91;
	public static immutable auto MOD_TYPE_REPAIRDEPLOYABLERATEPCT = 92;
	struct QueuedAccolade
	{
		public @property final auto ref ScriptString Subtitle() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
		private ubyte __Subtitle[12];
		public @property final auto ref ScriptString Title() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __Title[12];
		public @property final bool bIsBadge() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool bIsBadge(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __bIsBadge[4];
		public @property final auto ref int Icon() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Icon[4];
	}
	struct OverheadNumber
	{
		public @property final auto ref float CurrentScale() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __CurrentScale[4];
		public @property final auto ref UObject.Color CurrentColor() { return *cast(UObject.Color*)(cast(size_t)&this + 32); }
		private ubyte __CurrentColor[4];
		public @property final auto ref UObject.Vector4 WorldSpaceLocation() { return *cast(UObject.Vector4*)(cast(size_t)&this + 16); }
		private ubyte __WorldSpaceLocation[16];
		public @property final auto ref float RemainingTime() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __RemainingTime[4];
		public @property final auto ref int NumberValue() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __NumberValue[4];
	}
	public @property final bool m_bIsControllerSkiing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x8) != 0; }
	public @property final bool m_bIsControllerSkiing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x8; } return val; }
	public @property final auto ref TrSpectatorHUDCache m_SpectatorHUDCache() { return *cast(TrSpectatorHUDCache*)(cast(size_t)cast(void*)this + 2424); }
	public @property final auto ref GFxTrUI_TeamSelectionMenu TeamSelectionMenuMovie() { return *cast(GFxTrUI_TeamSelectionMenu*)(cast(size_t)cast(void*)this + 2044); }
	public @property final auto ref TrPlayerController TrPlayerOwner() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 2096); }
	public @property final bool bIsMainMenuOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1000) != 0; }
	public @property final bool bIsMainMenuOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1000; } return val; }
	public @property final auto ref MaterialInstanceConstant MarkerBaseMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1632); }
	public @property final bool bShowObjectives() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4) != 0; }
	public @property final bool bShowObjectives(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4; } return val; }
	public @property final auto ref UObject.LinearColor MarkerColorFriendly() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1668); }
	public @property final auto ref UObject.LinearColor MarkerColorEnemy() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1636); }
	public @property final auto ref Texture2D BaseDeployableLevel1() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1820); }
	public @property final auto ref Texture2D BaseDeployableLevel2() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1824); }
	public @property final auto ref Texture2D BaseDeployableLevel3() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1828); }
	public @property final auto ref Texture2D BaseDeployableLevel4() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1832); }
	public @property final auto ref Texture2D BaseDeployableLevel5() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1836); }
	public @property final auto ref Texture2D BaseNoPower() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1816); }
	public @property final auto ref Texture2D DeployableTurret() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1980); }
	public @property final auto ref Texture2D BaseTurretLevel1() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1920); }
	public @property final auto ref Texture2D BaseTurretLevel2() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1924); }
	public @property final auto ref Texture2D BaseTurretLevel3() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1928); }
	public @property final auto ref Texture2D BaseTurretLevel4() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1932); }
	public @property final auto ref Texture2D BaseTurretLevel5() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1936); }
	public @property final auto ref Texture2D BaseTurretLevel1_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1940); }
	public @property final auto ref Texture2D BaseTurretLevel2_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1944); }
	public @property final auto ref Texture2D BaseTurretLevel3_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1948); }
	public @property final auto ref Texture2D BaseTurretLevel4_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1952); }
	public @property final auto ref Texture2D BaseTurretLevel5_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1956); }
	public @property final auto ref int m_nPotentialSeekingTargetHUDRotationRate() { return *cast(int*)(cast(size_t)cast(void*)this + 2276); }
	public @property final auto ref float m_fPotentialSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2280); }
	public @property final auto ref float m_fSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2300); }
	public @property final auto ref Texture2D HUDMarkerMissileLocked() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1784); }
	public @property final auto ref float m_fSeekingTargetHUDZoomEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 2308); }
	public @property final auto ref float m_fSeekingTargetHUDZoomOpacityStart() { return *cast(float*)(cast(size_t)cast(void*)this + 2312); }
	public @property final auto ref float m_fSeekingTargetHUDZoomOpacityEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 2316); }
	public @property final auto ref float m_fSeekingTargetHUDZoomStart() { return *cast(float*)(cast(size_t)cast(void*)this + 2304); }
	public @property final auto ref float m_fInitialSeekingTargetYaw() { return *cast(float*)(cast(size_t)cast(void*)this + 2320); }
	public @property final auto ref Texture2D HUDMarkerMissileLocking() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1780); }
	public @property final auto ref Texture2D HUDMarkerMissileTargetLocked() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1792); }
	public @property final auto ref Texture2D HUDMarkerMissileTarget() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1788); }
	public @property final auto ref float m_fPotentialSeekingTargetHUDZoomOpacityStart() { return *cast(float*)(cast(size_t)cast(void*)this + 2292); }
	public @property final auto ref float m_fPotentialSeekingTargetHUDZoomOpacityEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 2296); }
	public @property final auto ref float m_fPotentialSeekingTargetHUDZoomStart() { return *cast(float*)(cast(size_t)cast(void*)this + 2284); }
	public @property final auto ref float m_fPotentialSeekingTargetHUDZoomEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 2288); }
	public @property final auto ref float m_fCaratPlacementX() { return *cast(float*)(cast(size_t)cast(void*)this + 2348); }
	public @property final auto ref float m_fCaratPlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 2352); }
	public @property final auto ref float m_fMarker2DDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2488); }
	public @property final auto ref float m_fCurrentWhiteoutValue() { return *cast(float*)(cast(size_t)cast(void*)this + 2232); }
	public @property final auto ref float TeamPlayerInfoMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1576); }
	public @property final auto ref Texture2D DeployableSensor() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1972); }
	public @property final auto ref Texture2D MarkerLight() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1716); }
	public @property final auto ref Texture2D MarkerMedium() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1720); }
	public @property final auto ref Texture2D MarkerHeavy() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1724); }
	public @property final auto ref Texture2D FlagHeldLight() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1756); }
	public @property final auto ref Texture2D FlagHeldMedium() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1760); }
	public @property final auto ref Texture2D FlagHeldHeavy() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1764); }
	public @property final auto ref UObject.LinearColor MarkerColorEnemy_IsFriend() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1652); }
	public @property final auto ref float m_fNamePlacementX() { return *cast(float*)(cast(size_t)cast(void*)this + 2340); }
	public @property final auto ref float m_fNamePlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 2344); }
	public @property final auto ref float m_fHealthBarPlacementX() { return *cast(float*)(cast(size_t)cast(void*)this + 2324); }
	public @property final auto ref float m_fHealthBarPlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 2328); }
	public @property final auto ref float m_fHealthBarWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2332); }
	public @property final auto ref float m_fHealthBarHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2336); }
	public @property final auto ref UObject.LinearColor MarkerColorFriendly_IsFriend() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1684); }
	public @property final auto ref GfxTrHud m_GFxHud() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 2076); }
	public @property final auto ref int FriendlyChatColorIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 2004); }
	public @property final auto ref UObject.Color FriendlyChatColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 2016); }
	public @property final auto ref int EnemyChatColorIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 2000); }
	public @property final auto ref UObject.Color EnemyChatColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 2020); }
	public @property final auto ref int WhisperChatColorIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 2012); }
	public @property final auto ref UObject.Color WhisperChatColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 2028); }
	public @property final auto ref int InfoChatColorIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 1996); }
	public @property final bool bVotePending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x800) != 0; }
	public @property final bool bVotePending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x800; } return val; }
	public @property final auto ref Texture2D FlagEmptyBase() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1772); }
	public @property final auto ref Texture2D BaseGeneratorLevel1() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1840); }
	public @property final auto ref Texture2D BaseGeneratorLevel1_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1860); }
	public @property final auto ref Texture2D DeployableJammer() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1964); }
	public @property final auto ref Texture2D DeployableShield() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1976); }
	public @property final auto ref Texture2D BaseSensorLevel1() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1880); }
	public @property final auto ref Texture2D BaseSensorLevel2() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1884); }
	public @property final auto ref Texture2D BaseSensorLevel3() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1888); }
	public @property final auto ref Texture2D BaseSensorLevel4() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1892); }
	public @property final auto ref Texture2D BaseSensorLevel5() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1896); }
	public @property final auto ref Texture2D BaseSensorLevel1_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1900); }
	public @property final auto ref Texture2D BaseSensorLevel2_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1904); }
	public @property final auto ref Texture2D BaseSensorLevel3_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1908); }
	public @property final auto ref Texture2D BaseSensorLevel4_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1912); }
	public @property final auto ref Texture2D BaseSensorLevel5_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1916); }
	public @property final auto ref Texture2D HUDMarkerLaserTargetAimPoint() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1800); }
	public @property final auto ref Texture2D HUDMarkerLaserTarget() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1796); }
	public @property final auto ref UObject.Color LaserTargetTracePossible() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1592); }
	public @property final auto ref UObject.Color LaserTargetTraceImprobable() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1596); }
	public @property final auto ref Texture2D AmmoDropPickup() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1984); }
	public @property final auto ref Texture2D FlagAtBase() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1748); }
	public @property final auto ref Texture2D FlagDropped() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1752); }
	public @property final auto ref ScriptArray!(TrDeployable) m_OwnedDeployables() { return *cast(ScriptArray!(TrDeployable)*)(cast(size_t)cast(void*)this + 1600); }
	public @property final auto ref ScriptArray!(TrProj_Mine) m_OwnedMines() { return *cast(ScriptArray!(TrProj_Mine)*)(cast(size_t)cast(void*)this + 1612); }
	public @property final auto ref ScriptArray!(TrHUD.QueuedAccolade) QueuedAccolades() { return *cast(ScriptArray!(TrHUD.QueuedAccolade)*)(cast(size_t)cast(void*)this + 2428); }
	public @property final auto ref ScriptArray!(TrHUD.OverheadNumber) m_OverheadNumbers() { return *cast(ScriptArray!(TrHUD.OverheadNumber)*)(cast(size_t)cast(void*)this + 2440); }
	public @property final auto ref float m_fOverheadNumberColorizeTimeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 2484); }
	public @property final auto ref float m_fOverheadNumberColorizeTimeMin() { return *cast(float*)(cast(size_t)cast(void*)this + 2480); }
	public @property final auto ref float m_fOverheadNumberMaxScaleAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 2476); }
	public @property final auto ref float m_fOverheadNumberScaleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2472); }
	public @property final auto ref float m_fOverheadNumberFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2468); }
	public @property final auto ref float m_fOverheadNumberTotalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2464); }
	public @property final auto ref UObject.Color m_OverheadNumberColorMax() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 2460); }
	public @property final auto ref UObject.Color m_OverheadNumberColorMin() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 2456); }
	public @property final auto ref float m_fOverheadNumberZSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2452); }
	public @property final auto ref UberPostProcessEffect m_UperPPEffect() { return *cast(UberPostProcessEffect*)(cast(size_t)cast(void*)this + 2420); }
	public @property final auto ref Canvas.FontRenderInfo m_nNameFontRenderInfo() { return *cast(Canvas.FontRenderInfo*)(cast(size_t)cast(void*)this + 2380); }
	public @property final auto ref float m_fMineDeployerNamePlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 2376); }
	public @property final auto ref float m_fMineDeployerNamePlacementX() { return *cast(float*)(cast(size_t)cast(void*)this + 2372); }
	public @property final auto ref float m_fMineNamePlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 2368); }
	public @property final auto ref float m_fMineNamePlacementX() { return *cast(float*)(cast(size_t)cast(void*)this + 2364); }
	public @property final auto ref float m_fVehicleNamePlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 2360); }
	public @property final auto ref float m_fVehicleNamePlacementX() { return *cast(float*)(cast(size_t)cast(void*)this + 2356); }
	public @property final auto ref MaterialInstanceConstant AwardMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2272); }
	public @property final auto ref float AwardTimelineLoc() { return *cast(float*)(cast(size_t)cast(void*)this + 2268); }
	public @property final auto ref float AwardFadeInScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2264); }
	public @property final auto ref float AwardTimelineLength() { return *cast(float*)(cast(size_t)cast(void*)this + 2260); }
	public @property final auto ref float AwardBaseHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2256); }
	public @property final auto ref float AwardBaseSize() { return *cast(float*)(cast(size_t)cast(void*)this + 2252); }
	public @property final auto ref float m_fCurrentFumbledFlagValue() { return *cast(float*)(cast(size_t)cast(void*)this + 2248); }
	public @property final auto ref float m_FumbledFlagFadeOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2244); }
	public @property final auto ref MaterialInstanceConstant m_FumbledFlagMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2240); }
	public @property final auto ref MaterialEffect m_FumbledFlagMaterialEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 2236); }
	public @property final auto ref float m_WhiteoutFadeOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2228); }
	public @property final auto ref MaterialInstanceConstant m_WhiteoutMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2224); }
	public @property final auto ref MaterialEffect m_WhiteoutMaterialEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 2220); }
	public @property final auto ref float m_VignetteValueMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 2216); }
	public @property final auto ref float m_VignetteFadeTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 2212); }
	public @property final auto ref float m_VignetteFadeSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2208); }
	public @property final auto ref MaterialInstanceConstant m_VignetteMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2204); }
	public @property final auto ref MaterialEffect m_VignetteMaterialEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 2200); }
	public @property final auto ref int LastChangeResCheckTime() { return *cast(int*)(cast(size_t)cast(void*)this + 2196); }
	public @property final auto ref int LastChangeResTime() { return *cast(int*)(cast(size_t)cast(void*)this + 2192); }
	public @property final auto ref int LastCreditTotal() { return *cast(int*)(cast(size_t)cast(void*)this + 2188); }
	public @property final auto ref float m_JammerPackFadeOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2184); }
	public @property final auto ref MaterialInstanceConstant m_JammerPackMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2180); }
	public @property final auto ref MaterialEffect m_JammerPackMaterialEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 2176); }
	public @property final auto ref float m_ShieldHitFadeOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2172); }
	public @property final auto ref float m_ShieldHitFadeInSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
	public @property final auto ref float m_ShieldFadeOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
	public @property final auto ref MaterialInstanceConstant m_ShieldMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2160); }
	public @property final auto ref MaterialEffect m_ShieldMaterialEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 2156); }
	public @property final auto ref float m_InvulnerableFadeOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2152); }
	public @property final auto ref MaterialInstanceConstant m_InvulnerableMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2148); }
	public @property final auto ref MaterialEffect m_InvulnerableMaterialEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 2144); }
	public @property final auto ref float m_PickupFlashFadeOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2140); }
	public @property final auto ref MaterialInstanceConstant m_PickupFlashMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2136); }
	public @property final auto ref MaterialEffect m_PickupFlashMaterialEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 2132); }
	public @property final auto ref float m_fSkiEffectStrobeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2128); }
	public @property final auto ref float m_fSkiEffectFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2124); }
	public @property final auto ref float m_fSkiEffectFadeInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2120); }
	public @property final auto ref float m_fSkiEffectMinIntensity() { return *cast(float*)(cast(size_t)cast(void*)this + 2116); }
	public @property final auto ref float m_fSkiEffectMaxIntensity() { return *cast(float*)(cast(size_t)cast(void*)this + 2112); }
	public @property final auto ref float m_fControllerSkiSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2108); }
	public @property final auto ref MaterialInstanceConstant m_SkiEffectMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2104); }
	public @property final auto ref MaterialEffect m_SkiEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 2100); }
	public @property final auto ref ScriptClass m_GameClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2092); }
	public @property final auto ref ScriptClass m_MusicManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2088); }
	public @property final auto ref float m_fEnemyGeneratorRestoreTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2084); }
	public @property final auto ref float m_fFriendlyGeneratorRestoreTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2080); }
	public @property final auto ref TrCaHStats CaHStats() { return *cast(TrCaHStats*)(cast(size_t)cast(void*)this + 2072); }
	public @property final auto ref TrDaDStats DaDStats() { return *cast(TrDaDStats*)(cast(size_t)cast(void*)this + 2068); }
	public @property final auto ref TrArenaStats ArenaStats() { return *cast(TrArenaStats*)(cast(size_t)cast(void*)this + 2064); }
	public @property final auto ref TrTeamRabbitStats TeamRabbitStats() { return *cast(TrTeamRabbitStats*)(cast(size_t)cast(void*)this + 2060); }
	public @property final auto ref TrHUDTeamCTFStats HUDTeamCTFStats() { return *cast(TrHUDTeamCTFStats*)(cast(size_t)cast(void*)this + 2056); }
	public @property final auto ref TrRabbitLeaderboard RabbitLeaderboard() { return *cast(TrRabbitLeaderboard*)(cast(size_t)cast(void*)this + 2052); }
	public @property final auto ref TrScoreboard Scoreboard() { return *cast(TrScoreboard*)(cast(size_t)cast(void*)this + 2048); }
	public @property final auto ref GFxTrUI_VehicleMenu VehicleMenuMovie() { return *cast(GFxTrUI_VehicleMenu*)(cast(size_t)cast(void*)this + 2040); }
	public @property final auto ref Material MapMaterialReference() { return *cast(Material*)(cast(size_t)cast(void*)this + 2036); }
	public @property final auto ref MaterialInstanceConstant LowAmmoMic() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2032); }
	public @property final auto ref UObject.Color TeamChatColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 2024); }
	public @property final auto ref int SelfChatColorIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 2008); }
	public @property final auto ref Texture2D SpottedTarget_MotionMine() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1992); }
	public @property final auto ref Texture2D SpottedTarget() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1988); }
	public @property final auto ref Texture2D DeployableMine() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1968); }
	public @property final auto ref Texture2D DeployableClaymore() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1960); }
	public @property final auto ref Texture2D BaseGeneratorLevel5_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1876); }
	public @property final auto ref Texture2D BaseGeneratorLevel4_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1872); }
	public @property final auto ref Texture2D BaseGeneratorLevel3_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1868); }
	public @property final auto ref Texture2D BaseGeneratorLevel2_Down() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1864); }
	public @property final auto ref Texture2D BaseGeneratorLevel5() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1856); }
	public @property final auto ref Texture2D BaseGeneratorLevel4() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1852); }
	public @property final auto ref Texture2D BaseGeneratorLevel3() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1848); }
	public @property final auto ref Texture2D BaseGeneratorLevel2() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1844); }
	public @property final auto ref Texture2D BaseVehicleStation() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1812); }
	public @property final auto ref Texture2D BaseRepairStation() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1808); }
	public @property final auto ref Texture2D BaseInventoryStation() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1804); }
	public @property final auto ref Texture2D HUDMarkerMissileIncoming() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1776); }
	public @property final auto ref Texture2D FlagHeldVehicle() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1768); }
	public @property final auto ref Texture2D VehicleMarkerNoDriver() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1744); }
	public @property final auto ref Texture2D VehicleMarkerHeavy() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1740); }
	public @property final auto ref Texture2D VehicleMarkerMedium() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1736); }
	public @property final auto ref Texture2D VehicleMarkerLight() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1732); }
	public @property final auto ref Texture2D VehicleMarker() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1728); }
	public @property final auto ref UObject.LinearColor MarkerColorNone() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1700); }
	public @property final auto ref int m_LastDeployableCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1628); }
	public @property final auto ref int m_LastMineCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1624); }
	public @property final auto ref UObject.Color ColorEnemy() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1588); }
	public @property final auto ref UObject.Color ColorFriend() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1584); }
	public @property final auto ref float ObjectiveInfoMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1580); }
	public @property final auto ref ScriptString m_sLastClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1564); }
	public @property final auto ref ScriptString m_sWinningPlayer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1552); }
	public @property final bool bAccoladePlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x40000) != 0; }
	public @property final bool bAccoladePlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x40000; } return val; }
	public @property final bool m_bIsSpectatorFloatCameraPanelVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x20000) != 0; }
	public @property final bool m_bIsSpectatorFloatCameraPanelVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x20000; } return val; }
	public @property final bool m_bIsSpectatorObjectivePanelVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x10000) != 0; }
	public @property final bool m_bIsSpectatorObjectivePanelVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x10000; } return val; }
	public @property final bool m_bIsSpectatorBookmarkPanelVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x8000) != 0; }
	public @property final bool m_bIsSpectatorBookmarkPanelVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x8000; } return val; }
	public @property final bool m_bIsSpectatorVehiclePanelVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4000) != 0; }
	public @property final bool m_bIsSpectatorVehiclePanelVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4000; } return val; }
	public @property final bool m_bIsSpectatorPlayerPanelVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2000) != 0; }
	public @property final bool m_bIsSpectatorPlayerPanelVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2000; } return val; }
	public @property final bool bPlayAward() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x400) != 0; }
	public @property final bool bPlayAward(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x400; } return val; }
	public @property final bool m_bUpdateFumbledFlagEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x200) != 0; }
	public @property final bool m_bUpdateFumbledFlagEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x200; } return val; }
	public @property final bool m_bUpdateWhiteoutEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x100) != 0; }
	public @property final bool m_bUpdateWhiteoutEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x100; } return val; }
	public @property final bool bLoadSequenceComplete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x80) != 0; }
	public @property final bool bLoadSequenceComplete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x80; } return val; }
	public @property final bool bRestoreHUDState() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x40) != 0; }
	public @property final bool bRestoreHUDState(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x40; } return val; }
	public @property final bool m_bEffectFadingIn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x20) != 0; }
	public @property final bool m_bEffectFadingIn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x20; } return val; }
	public @property final bool m_bStrobeIn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x10) != 0; }
	public @property final bool m_bStrobeIn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x10; } return val; }
	public @property final bool HasGlobalChatAsAlert() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2) != 0; }
	public @property final bool HasGlobalChatAsAlert(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2; } return val; }
	public @property final bool m_bGameOver() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1) != 0; }
	public @property final bool m_bGameOver(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1; } return val; }
	public @property final auto ref int m_nLastPerk2Icon() { return *cast(int*)(cast(size_t)cast(void*)this + 1544); }
	public @property final auto ref int m_nLastPerk1Icon() { return *cast(int*)(cast(size_t)cast(void*)this + 1540); }
	public @property final auto ref int m_nWinningTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 1536); }
	final Vector DrawMarkerText(ScriptString ShowText, bool bFriend, Vector Placement, Canvas DrawCanvas, bool bBuddy)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ShowText;
		*cast(bool*)&params[12] = bFriend;
		*cast(Vector*)&params[16] = Placement;
		*cast(Canvas*)&params[28] = DrawCanvas;
		*cast(bool*)&params[32] = bBuddy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71610], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[36];
	}
	final Vector DrawMICMarker(MaterialInstanceConstant MarkerMIC, Vector Placement, Canvas DrawCanvas, UObject.Vector2D MarkerSize, ScriptString markText, bool bFriend, float distScale)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71612], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[48];
	}
	final bool GetEdgeScreenCoordinates(Canvas inCanvas, Vector CameraPosition, Vector CameraDir, Vector ObjectLocation, Vector* ScreenLocation)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Canvas*)params.ptr = inCanvas;
		*cast(Vector*)&params[4] = CameraPosition;
		*cast(Vector*)&params[16] = CameraDir;
		*cast(Vector*)&params[28] = ObjectLocation;
		*cast(Vector*)&params[40] = *ScreenLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72894], params.ptr, cast(void*)0);
		*ScreenLocation = *cast(Vector*)&params[40];
		return *cast(bool*)&params[52];
	}
	final Vector DrawMarker(Texture2D Marker, Vector Placement, Canvas DrawCanvas, ScriptString markText, bool bFriend, float Alpha, float distScale)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72902], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[44];
	}
	final Vector DrawRotatedMarker(Texture2D Marker, Vector Placement, Rotator Rot, Canvas DrawCanvas, ScriptString markText, bool bFriend, float Alpha, float distScale)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72910], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[56];
	}
	final void ShowDebugInfo(float* out_YL, float* out_YPos)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *out_YL;
		*cast(float*)&params[4] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96115], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)params.ptr;
		*out_YPos = *cast(float*)&params[4];
	}
	final void CreateHUDMovie()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96120], cast(void*)0, cast(void*)0);
	}
	final void ShowSpectatorControls(bool bForceEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96130], params.ptr, cast(void*)0);
	}
	final void SetShowScores(bool bEnableShowScores)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableShowScores;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96132], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96136], cast(void*)0, cast(void*)0);
	}
	final void InitializeGameHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96137], cast(void*)0, cast(void*)0);
	}
	final void FadeInTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96145], cast(void*)0, cast(void*)0);
	}
	final void Fade(float FadeTarget, float FadeSpeed, float bForceFadeInStartAlpha)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = FadeTarget;
		*cast(float*)&params[4] = FadeSpeed;
		*cast(float*)&params[8] = bForceFadeInStartAlpha;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96146], params.ptr, cast(void*)0);
	}
	final void PlayRoundOver(int WinningTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = WinningTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96150], params.ptr, cast(void*)0);
	}
	final void ShowRoundEnding()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96152], cast(void*)0, cast(void*)0);
	}
	final void PlayMatchOver(int Winner, ScriptString WinnerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = WinnerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96153], params.ptr, cast(void*)0);
	}
	final void ShowEnding()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96156], cast(void*)0, cast(void*)0);
	}
	final void FadeInSummary()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96159], cast(void*)0, cast(void*)0);
	}
	final void ScaleformJoystickInputEvent(float leftAngle, float rightAngle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = leftAngle;
		*cast(float*)&params[4] = rightAngle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96160], params.ptr, cast(void*)0);
	}
	final void ToggleSkiEffect(bool bEnabled, float fSpeed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		*cast(float*)&params[4] = fSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96163], params.ptr, cast(void*)0);
	}
	final void TogglePauseMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96166], cast(void*)0, cast(void*)0);
	}
	final void ToggleMovieHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96168], cast(void*)0, cast(void*)0);
	}
	final void ToggleVehicleMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96169], cast(void*)0, cast(void*)0);
	}
	final void ToggleTeamSelectionMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96172], cast(void*)0, cast(void*)0);
	}
	final void SetPowerOscillation(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96174], params.ptr, cast(void*)0);
	}
	final void AddUpdateToCombatLog(int CombatType, ScriptString Aggressor, int WeaponIcon, ScriptString Victim)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = CombatType;
		*cast(ScriptString*)&params[4] = Aggressor;
		*cast(int*)&params[16] = WeaponIcon;
		*cast(ScriptString*)&params[20] = Victim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96176], params.ptr, cast(void*)0);
	}
	final void AddToPromptPanel(ScriptString Message, TgSupportCommands.GC_ALERT_PRIORITY Priority)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(TgSupportCommands.GC_ALERT_PRIORITY*)&params[12] = Priority;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96181], params.ptr, cast(void*)0);
	}
	final void AddToPromptPanelTime(ScriptString Message, float EndTime, TgSupportCommands.GC_ALERT_PRIORITY Priority)
	{
		ubyte params[17];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(float*)&params[12] = EndTime;
		*cast(TgSupportCommands.GC_ALERT_PRIORITY*)&params[16] = Priority;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96184], params.ptr, cast(void*)0);
	}
	final void ClearPromptPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96188], cast(void*)0, cast(void*)0);
	}
	final void AddToHeroStatus(ScriptString Message, float ShowTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(float*)&params[12] = ShowTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96189], params.ptr, cast(void*)0);
	}
	final void ClearHeroStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96192], cast(void*)0, cast(void*)0);
	}
	final void ClearPromptPanelMessage(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96193], params.ptr, cast(void*)0);
	}
	final void UpdateVGSMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96195], cast(void*)0, cast(void*)0);
	}
	final void HideVGSMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96196], cast(void*)0, cast(void*)0);
	}
	final void AddToHelpText(ScriptString Title, ScriptString Body, float PictureIndex, ScriptString footer, ScriptString SuppressString)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		*cast(ScriptString*)&params[12] = Body;
		*cast(float*)&params[24] = PictureIndex;
		*cast(ScriptString*)&params[28] = footer;
		*cast(ScriptString*)&params[40] = SuppressString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96197], params.ptr, cast(void*)0);
	}
	final void ClearHelpText()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96203], cast(void*)0, cast(void*)0);
	}
	final void AddUpdateToKillMessage(int RankIcon, int PlayerIcon, ScriptString PlayerName, ScriptString Message)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = RankIcon;
		*cast(int*)&params[4] = PlayerIcon;
		*cast(ScriptString*)&params[8] = PlayerName;
		*cast(ScriptString*)&params[20] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96204], params.ptr, cast(void*)0);
	}
	final void AddFlyingIcon(int iconNumber, ScriptString Description, ScriptString Points, int bIsBadge)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = iconNumber;
		*cast(ScriptString*)&params[4] = Description;
		*cast(ScriptString*)&params[16] = Points;
		*cast(int*)&params[28] = bIsBadge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96209], params.ptr, cast(void*)0);
	}
	final void OnSpectate(bool bUpdateTeamState)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdateTeamState;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96214], params.ptr, cast(void*)0);
	}
	final void CreateSpectatorHUDCache()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96216], cast(void*)0, cast(void*)0);
	}
	final void ClearSpectatorHUDCache()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96217], cast(void*)0, cast(void*)0);
	}
	final void HideHUDElements(bool bShowStats, bool bForceCredits)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bShowStats;
		*cast(bool*)&params[4] = bForceCredits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96218], params.ptr, cast(void*)0);
	}
	final void ShowHUDPlayerSpawning()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96221], cast(void*)0, cast(void*)0);
	}
	final void ShowHUDPlayerAlive()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96222], cast(void*)0, cast(void*)0);
	}
	final void ShowCenterHUDElements(bool bShow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96223], params.ptr, cast(void*)0);
	}
	final void UpdateRespawnText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96225], params.ptr, cast(void*)0);
	}
	final void UpdateRespawnTimer(int TimeRemaining)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TimeRemaining;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96227], params.ptr, cast(void*)0);
	}
	final void UpdateHUDCredits(int changeAmount, int newTotal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = changeAmount;
		*cast(int*)&params[4] = newTotal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96229], params.ptr, cast(void*)0);
	}
	final void TeamScoreboardShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96232], params.ptr, cast(void*)0);
	}
	final void RabbitScoreboardShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96234], params.ptr, cast(void*)0);
	}
	final void TeamScoreboardUpdateSlot(int Index, ScriptString PlayerName, ScriptString Score, ScriptString Kills, ScriptString Assists, ScriptString Ping, ScriptString ClassAbb, int Rank, int RankIcon)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96236], params.ptr, cast(void*)0);
	}
	final void RabbitScoreboardUpdateSlot(int Index, ScriptString PlayerName, ScriptString Score, ScriptString Kills, ScriptString Assists, ScriptString Ping, ScriptString ClassAbb, int Rank, int RankIcon)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96246], params.ptr, cast(void*)0);
	}
	final void TeamScoreboardUpdateTeamScore(int Index, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96256], params.ptr, cast(void*)0);
	}
	final void TeamScoreboardUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96259], params.ptr, cast(void*)0);
	}
	final void RabbitScoreboardUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96261], params.ptr, cast(void*)0);
	}
	final void TeamScoreboardActivePlayer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96263], params.ptr, cast(void*)0);
	}
	final void RabbitScoreboardActivePlayer(int Index, bool bVisible)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96265], params.ptr, cast(void*)0);
	}
	final void ResolutionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96268], cast(void*)0, cast(void*)0);
	}
	final void RestoreHUDState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96271], cast(void*)0, cast(void*)0);
	}
	final void HideMenus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96275], cast(void*)0, cast(void*)0);
	}
	final void RemoveMovies()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96276], cast(void*)0, cast(void*)0);
	}
	final void CompleteVehicleMenuClose()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96277], cast(void*)0, cast(void*)0);
	}
	final void CompleteTeamSelectionMenuClose()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96278], cast(void*)0, cast(void*)0);
	}
	final void ClearCrosshairOnFriendly()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96279], cast(void*)0, cast(void*)0);
	}
	final bool CheckCrosshairOnFriendly()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96280], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Vector DrawColoredMarkerText(ScriptString ShowText, UObject.Color TextColor, Vector Placement, Canvas DrawCanvas, float ScaleX, float ScaleY)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ShowText;
		*cast(UObject.Color*)&params[12] = TextColor;
		*cast(Vector*)&params[16] = Placement;
		*cast(Canvas*)&params[28] = DrawCanvas;
		*cast(float*)&params[32] = ScaleX;
		*cast(float*)&params[36] = ScaleY;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96323], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[40];
	}
	final void DrawSmallText(ScriptString ShowText, bool bFriend, Vector Placement, Canvas DrawCanvas)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ShowText;
		*cast(bool*)&params[12] = bFriend;
		*cast(Vector*)&params[16] = Placement;
		*cast(Canvas*)&params[28] = DrawCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96333], params.ptr, cast(void*)0);
	}
	final void DrawHealthBar(MaterialInstanceConstant HealthBarMIC, bool bFriend, Vector Placement, Canvas DrawCanvas, float PlacementX, float PlacementY, float Width, float Height)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96340], params.ptr, cast(void*)0);
	}
	final void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96369], cast(void*)0, cast(void*)0);
	}
	final float GetRemainingFriendlyGeneratorRestoreTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96370], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetRemainingEnemyGeneratorRestoreTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96372], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void UpdateSkiEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96374], cast(void*)0, cast(void*)0);
	}
	final void UpdatePickupFlashEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96376], cast(void*)0, cast(void*)0);
	}
	final void PulsePickupFlashEffect(float PulseAmount, float PulseSpeed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = PulseAmount;
		*cast(float*)&params[4] = PulseSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96378], params.ptr, cast(void*)0);
	}
	final void UpdateInvulnerableEfect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96381], cast(void*)0, cast(void*)0);
	}
	final void UpdateShieldEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96385], cast(void*)0, cast(void*)0);
	}
	final void PulseShieldEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96389], cast(void*)0, cast(void*)0);
	}
	final void UpdateJammerEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96390], cast(void*)0, cast(void*)0);
	}
	final void UpdateFadeEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96393], cast(void*)0, cast(void*)0);
	}
	final void FumbleFlag(float Speed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96395], params.ptr, cast(void*)0);
	}
	final void UpdateFumbledFlagEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96397], cast(void*)0, cast(void*)0);
	}
	final void Whiteout(float Speed, float Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Speed;
		*cast(float*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96398], params.ptr, cast(void*)0);
	}
	final void ClearWhiteout()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96401], cast(void*)0, cast(void*)0);
	}
	final void UpdateWhiteoutEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96402], cast(void*)0, cast(void*)0);
	}
	final void LocalizedMessage(ScriptClass InMessageClass, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, ScriptString CriticalString, int Switch, float Position, float Lifetime, int FontSize, UObject.Color DrawColor, UObject OptionalObject)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96403], params.ptr, cast(void*)0);
	}
	final void ChatMessageReceived(int Channel, ScriptString Sender, ScriptString Message)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Channel;
		*cast(ScriptString*)&params[4] = Sender;
		*cast(ScriptString*)&params[16] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96421], params.ptr, cast(void*)0);
	}
	final ScriptString StripTag(ScriptString sValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96436], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final void SendLocalMessageToGlobalAlert(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96440], params.ptr, cast(void*)0);
	}
	final void SendLocalMessageToChat(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96442], params.ptr, cast(void*)0);
	}
	final void SetPlayerClassObjects(ScriptString ClassName, int PerkIcon1, int PerkIcon2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		*cast(int*)&params[12] = PerkIcon1;
		*cast(int*)&params[16] = PerkIcon2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96446], params.ptr, cast(void*)0);
	}
	final void HideGlobalAlert()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96450], cast(void*)0, cast(void*)0);
	}
	final void KickVoteMessage(bool bComplete, ScriptString Message)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bComplete;
		*cast(ScriptString*)&params[4] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96451], params.ptr, cast(void*)0);
	}
	final void EnableGameTypeHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96455], cast(void*)0, cast(void*)0);
	}
	final void ShowSpectatorPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96456], cast(void*)0, cast(void*)0);
	}
	final void HideSpectatorPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96457], cast(void*)0, cast(void*)0);
	}
	final void UpdateSpectatorPlayerPanel(TrPawn ViewTargetTrPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = ViewTargetTrPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96458], params.ptr, cast(void*)0);
	}
	final void ShowSpectatorVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96466], cast(void*)0, cast(void*)0);
	}
	final void HideSpectatorVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96467], cast(void*)0, cast(void*)0);
	}
	final void UpdateSpectatorVehiclePanel(TrVehicle ViewTargetVehicle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = ViewTargetVehicle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96468], params.ptr, cast(void*)0);
	}
	final void ShowSpectatorBookmark()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96474], cast(void*)0, cast(void*)0);
	}
	final void HideSpectatorBookmark()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96475], cast(void*)0, cast(void*)0);
	}
	final void UpdateSpectatorBookmarkPanel(TrCamera_SpectatorBookmark BookMark)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrCamera_SpectatorBookmark*)params.ptr = BookMark;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96476], params.ptr, cast(void*)0);
	}
	final void ShowSpectatorObjectivePanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96478], cast(void*)0, cast(void*)0);
	}
	final void HideSpectatorObjectivePanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96479], cast(void*)0, cast(void*)0);
	}
	final void UpdateSpectatorObjectivePanel(Actor ObjectiveActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = ObjectiveActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96480], params.ptr, cast(void*)0);
	}
	final void ShowSpectatorFloatCameraPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96484], cast(void*)0, cast(void*)0);
	}
	final void HideSpectatorFloatCameraPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96485], cast(void*)0, cast(void*)0);
	}
	final void UpdateSpectatorFloatCameraPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96486], cast(void*)0, cast(void*)0);
	}
	final void HideAllSpectatorPanels()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96487], cast(void*)0, cast(void*)0);
	}
	final void OnViewTargetChange(Actor NewViewTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96488], params.ptr, cast(void*)0);
	}
	final void TestNumber(int Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96490], params.ptr, cast(void*)0);
	}
	final void AddOverheadNumber(int Value, UObject.Vector4 WorldLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Value;
		*cast(UObject.Vector4*)&params[16] = WorldLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96492], params.ptr, cast(void*)0);
	}
	final void UpdateOverheadNumbers(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96496], params.ptr, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96505], params.ptr, cast(void*)0);
	}
	final void PostRenderFor(PlayerController PC, Canvas DrawCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = DrawCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96507], params.ptr, cast(void*)0);
	}
	final void PlayAward(Canvas DrawCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = DrawCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96512], params.ptr, cast(void*)0);
	}
	final void QueueAccolade(int Icon, ScriptString Title, ScriptString Subtitle, bool bIsBadge)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Icon;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Subtitle;
		*cast(bool*)&params[28] = bIsBadge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96519], params.ptr, cast(void*)0);
	}
	final void CheckQueuedAccolades()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96525], cast(void*)0, cast(void*)0);
	}
	final void RunQueuedAccoladesTimer(bool bIsBadge)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsBadge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96526], params.ptr, cast(void*)0);
	}
	final void ClearQueuedAccoladesTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96529], cast(void*)0, cast(void*)0);
	}
	final void DeployableReplicated(TrDeployable NewDep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable*)params.ptr = NewDep;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96530], params.ptr, cast(void*)0);
	}
	final void MineReplicated(TrProj_Mine NewMine)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrProj_Mine*)params.ptr = NewMine;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96532], params.ptr, cast(void*)0);
	}
	final void UpdateOwnedItems()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96535], cast(void*)0, cast(void*)0);
	}
}
