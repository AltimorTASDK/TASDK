module UnrealScript.TribesGame.GfxTrHud;

import ScriptClasses;
import UnrealScript.PlatformCommon.TgSupportCommands;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.MaterialEffect;
import UnrealScript.TribesGame.GFxTrReticules;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.Weapon;
import UnrealScript.TribesGame.TrPlayerReplicationInfo;
import UnrealScript.TribesGame.GFxDeviceAmmoCount;
import UnrealScript.UTGame.GFxMinimapHud;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrHUD;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.TribesGame.TrDevice;
import UnrealScript.Engine.TeamInfo;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface GfxTrHud : GFxMinimapHud
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
	public static immutable auto MAX_CLASS_SLOTS = 10;
	public static immutable auto TR_QUERY_CTF = 0;
	public static immutable auto TR_QUERY_TDM = 1;
	public static immutable auto TR_QUERY_RABBIT = 2;
	public static immutable auto TR_QUERY_TEAMRABBIT = 3;
	public static immutable auto TR_QUERY_ARENA = 4;
	public static immutable auto TR_QUERY_DEFENDANDDESTROY = 5;
	public static immutable auto TR_QUERY_CTFBLITZ = 6;
	public static immutable auto CONTEXT_GAME_MODE_TRCTF = 0;
	public static immutable auto CONTEXT_GAME_MODE_TRTDM = 1;
	public static immutable auto CONTEXT_GAME_MODE_TRRABBIT = 2;
	public static immutable auto CONTEXT_GAME_MODE_TRSIEGE = 3;
	public static immutable auto CONTEXT_GAME_MODE_TRTRAINING = 4;
	public static immutable auto CONTEXT_GAME_MODE_TRSTORM = 5;
	public static immutable auto CONTEXT_GAME_MODE_TRTEAMRABBIT = 6;
	public static immutable auto CONTEXT_GAME_MODE_TRARENA = 7;
	public static immutable auto CONTEXT_GAME_MODE_TRDEFENDANDDESTROY = 8;
	public static immutable auto CONTEXT_GAME_MODE_TRCAPTUREANDHOLD = 9;
	public static immutable auto CONTEXT_GAME_MODE_TRCTFBLITZ = 10;
	public static immutable auto STAT_VIEW_BASE_PLAYER = 1;
	public static immutable auto STAT_VIEW_BASE_GAME = 101;
	public static immutable auto STAT_VIEW_BASE_WEAPON_TYPE = 1000;
	public static immutable auto GAME_SESSION_NAME = "Gam";
	public static immutable auto PROPERTY_CUSTOM_MAPNAME = 0x40000001;
	public static immutable auto PROPERTY_CUSTOM_GAMEMODE = 0x40000002;
	public static immutable auto PROPERTY_SERVER_DESCRIPTION = 0x40000003;
	public static immutable auto PROPERTY_CUSTOM_MUTATORS = 0x40000004;
	public static immutable auto CLASS_TYPE_UNKNOWN = 1668;
	public static immutable auto CLASS_TYPE_LIGHT_INFILTRATOR = 1682;
	public static immutable auto CLASS_TYPE_LIGHT_JUMPER = 1696;
	public static immutable auto CLASS_TYPE_LIGHT_ARCHITECT = 1697;
	public static immutable auto CLASS_TYPE_LIGHT_PATHFINDER = 1683;
	public static immutable auto CLASS_TYPE_LIGHT_NAKEDPATHFINDER = 1701;
	public static immutable auto CLASS_TYPE_LIGHT_WRAITH = 1685;
	public static immutable auto CLASS_TYPE_LIGHT_SENTINEL = 1686;
	public static immutable auto CLASS_TYPE_MEDIUM_ENGINEER = 1698;
	public static immutable auto CLASS_TYPE_MEDIUM_RANGER = 1687;
	public static immutable auto CLASS_TYPE_MEDIUM_SCRAMBLER = 1688;
	public static immutable auto CLASS_TYPE_MEDIUM_SOLDIER = 1693;
	public static immutable auto CLASS_TYPE_MEDIUM_RAIDER = 1699;
	public static immutable auto CLASS_TYPE_MEDIUM_TECHNICIAN = 1694;
	public static immutable auto CLASS_TYPE_MEDIUM_WARDER = 1700;
	public static immutable auto CLASS_TYPE_HEAVY_BRUTE = 1689;
	public static immutable auto CLASS_TYPE_HEAVY_ROOK = 1690;
	public static immutable auto CLASS_TYPE_HEAVY_DOOMBRINGER = 1691;
	public static immutable auto CLASS_TYPE_HEAVY_JUGGERNAUGHT = 1692;
	public static immutable auto CLASS_TYPE_HEAVY_MARAUDER = 1695;
	public static immutable auto CLASS_PURCHASE_LIGHT_INFILTRATOR = 7476;
	public static immutable auto CLASS_PURCHASE_LIGHT_PATHFINDER = 7466;
	public static immutable auto CLASS_PURCHASE_LIGHT_SENTINEL = 7478;
	public static immutable auto CLASS_PURCHASE_MEDIUM_SOLDIER = 7470;
	public static immutable auto CLASS_PURCHASE_MEDIUM_RAIDER = 7494;
	public static immutable auto CLASS_PURCHASE_MEDIUM_TECHNICIAN = 7472;
	public static immutable auto CLASS_PURCHASE_HEAVY_BRUTE = 7486;
	public static immutable auto CLASS_PURCHASE_HEAVY_DOOMBRINGER = 7488;
	public static immutable auto CLASS_PURCHASE_HEAVY_JUGGERNAUGHT = 7474;
	public static immutable auto CLASS_INFO_BIT_NONE = 0x00000000;
	public static immutable auto CLASS_INFO_BIT_INFILTRATOR = 0x00000001;
	public static immutable auto CLASS_INFO_BIT_JUMPER = 0x00000002;
	public static immutable auto CLASS_INFO_BIT_ARCHITECT = 0x00000004;
	public static immutable auto CLASS_INFO_BIT_PATHFINDER = 0x00000008;
	public static immutable auto CLASS_INFO_BIT_WRAITH = 0x00000010;
	public static immutable auto CLASS_INFO_BIT_SENTINEL = 0x00000020;
	public static immutable auto CLASS_INFO_BIT_ENGINEER = 0x00000040;
	public static immutable auto CLASS_INFO_BIT_RANGER = 0x00000080;
	public static immutable auto CLASS_INFO_BIT_SCRAMBLER = 0x00000100;
	public static immutable auto CLASS_INFO_BIT_SOLDIER = 0x00000200;
	public static immutable auto CLASS_INFO_BIT_RAIDER = 0x00000400;
	public static immutable auto CLASS_INFO_BIT_TECHNICIAN = 0x00000800;
	public static immutable auto CLASS_INFO_BIT_WARDER = 0x00001000;
	public static immutable auto CLASS_INFO_BIT_BRUTE = 0x00002000;
	public static immutable auto CLASS_INFO_BIT_ROOK = 0x00004000;
	public static immutable auto CLASS_INFO_BIT_DOOMBRINGER = 0x00008000;
	public static immutable auto CLASS_INFO_BIT_JUGGERNAUT = 0x00010000;
	public static immutable auto CLASS_INFO_BIT_MARAUDER = 0x00020000;
	public static immutable auto CLASS_INFO_BIT_NAKEDPATHFINDER = 0x00040000;
	public static immutable auto WEAPON_ID_UNKNOWN = 102000;
	public static immutable auto WEAPON_ID_AVMINE = 102003;
	public static immutable auto WEAPON_ID_DUALRHINO = 102024;
	public static immutable auto WEAPON_ID_LACERATOR = 102016;
	public static immutable auto WEAPON_ID_ARX_BUSTER = 7384;
	public static immutable auto WEAPON_ID_CHAINGUN = 7386;
	public static immutable auto WEAPON_ID_DROPJAMMER = 7456;
	public static immutable auto WEAPON_ID_FORCEFIELD = 7411;
	public static immutable auto WEAPON_ID_FORCEFIELD_PERSONAL = 7460;
	public static immutable auto WEAPON_ID_GRENADE = 7390;
	public static immutable auto WEAPON_ID_GRENADE_AP = 7434;
	public static immutable auto WEAPON_ID_GRENADE_AP_HEAVY = 7447;
	public static immutable auto WEAPON_ID_GRENADE_EMP = 7444;
	public static immutable auto WEAPON_ID_GRENADE_FLARE = 7389;
	public static immutable auto WEAPON_ID_GRENADE_NITRON = 7387;
	public static immutable auto WEAPON_ID_GRENADE_NITRON_HEAVY = 7450;
	public static immutable auto WEAPON_ID_GRENADE_SPIKE = 7428;
	public static immutable auto WEAPON_ID_GRENADE_ST = 7437;
	public static immutable auto WEAPON_ID_GRENADE_STICKY = 7402;
	public static immutable auto WEAPON_ID_GRENADE_STICKY_LIGHT = 7455;
	public static immutable auto WEAPON_ID_GRENADE_WHITEOUT = 7432;
	public static immutable auto WEAPON_ID_GRENADE_XL = 7430;
	public static immutable auto WEAPON_ID_GUNNER_BEOWULF = 7405;
	public static immutable auto WEAPON_ID_GUNNER_HERC = 7404;
	public static immutable auto WEAPON_ID_LAUNCHER_BOLT = 7425;
	public static immutable auto WEAPON_ID_LAUNCHER_BOLT_HEAVY = 7452;
	public static immutable auto WEAPON_ID_LAUNCHER_GRENADE = 7416;
	public static immutable auto WEAPON_ID_LAUNCHER_MIRV = 7457;
	public static immutable auto WEAPON_ID_LAUNCHER_MORTAR = 7393;
	public static immutable auto WEAPON_ID_LAUNCHER_SABER = 7398;
	public static immutable auto WEAPON_ID_MELEE = 7391;
	public static immutable auto WEAPON_ID_MINE = 7392;
	public static immutable auto WEAPON_ID_MINE_CLAYMORE = 7421;
	public static immutable auto WEAPON_ID_MINE_PRISM = 7440;
	public static immutable auto WEAPON_ID_MOTIONALARM = 7426;
	public static immutable auto WEAPON_ID_PILOT_BEOWULF = 7406;
	public static immutable auto WEAPON_ID_PILOT_GRAVCYCLE = 7410;
	public static immutable auto WEAPON_ID_PILOT_HAVOC = 7409;
	public static immutable auto WEAPON_ID_PILOT_HERC = 7403;
	public static immutable auto WEAPON_ID_PILOT_SHRIKE = 7407;
	public static immutable auto WEAPON_ID_PISTOL_EAGLE = 7388;
	public static immutable auto WEAPON_ID_PISTOL_EAGLE_CUSTOM = 7439;
	public static immutable auto WEAPON_ID_PISTOL_NOVA_COLT = 7394;
	public static immutable auto WEAPON_ID_PISTOL_NOVA_SLUG = 7431;
	public static immutable auto WEAPON_ID_PISTOL_FALCON = 7419;
	public static immutable auto WEAPON_ID_PISTOL_H1 = 7435;
	public static immutable auto WEAPON_ID_PISTOL_SN7 = 7418;
	public static immutable auto WEAPON_ID_PISTOL_SPARROW = 7433;
	public static immutable auto WEAPON_ID_TURRET_EXR = 7417;
	public static immutable auto WEAPON_ID_TURRET_BASE = 7412;
	public static immutable auto WEAPON_ID_TURRET_LIGHT = 7413;
	public static immutable auto WEAPON_ID_TURRET_WALL = 7445;
	public static immutable auto WEAPON_ID_REPAIR_TOOL = 7396;
	public static immutable auto WEAPON_ID_REPAIR_TOOL_SD = 7436;
	public static immutable auto WEAPON_ID_RIFLE_ASSAULT = 7385;
	public static immutable auto WEAPON_ID_RIFLE_ASSAULT_LIGHT = 7438;
	public static immutable auto WEAPON_ID_RIFLE_ASSAULT_S22 = 7424;
	public static immutable auto WEAPON_ID_RIFLE_ASSAULT_X1 = 7458;
	public static immutable auto WEAPON_ID_RIFLE_PHASE = 7395;
	public static immutable auto WEAPON_ID_RIFLE_SNIPER = 7400;
	public static immutable auto WEAPON_ID_SMG_NJ4 = 7441;
	public static immutable auto WEAPON_ID_SMG_RHINO = 7397;
	public static immutable auto WEAPON_ID_SMG_TCN4 = 7443;
	public static immutable auto WEAPON_ID_SHOTGUN = 7399;
	public static immutable auto WEAPON_ID_SHOTGUN_ARX = 7454;
	public static immutable auto WEAPON_ID_SHOTGUN_AUTO = 7449;
	public static immutable auto WEAPON_ID_SHOTGUN_SAWED_OFF = 7427;
	public static immutable auto WEAPON_ID_SPINFUSOR = 7401;
	public static immutable auto WEAPON_ID_SPINFUSOR_D = 7446;
	public static immutable auto WEAPON_ID_SPINFUSOR_HEAVY = 7448;
	public static immutable auto WEAPON_ID_SPINFUSOR_LIGHT = 7422;
	public static immutable auto WEAPON_ID_SPINFUSOR_TOSS = 7459;
	public static immutable auto WEAPON_ID_CALLIN_TACTICALSTRIKE = 7609;
	public static immutable auto WEAPON_ID_CALLIN_INVENTORYDROP = 7610;
	public static immutable auto WEAPON_ID_CALLIN_ORBITALSTRIKE = 7611;
	public static immutable auto WEAPON_ID_TCNG = 7736;
	public static immutable auto WEAPON_ID_FALLING = 7815;
	public static immutable auto WEAPON_ID_HITWALL = 7816;
	public static immutable auto WEAPON_ID_RANOVER = 7817;
	public static immutable auto WEAPON_ID_THUMPER = 7461;
	public static immutable auto WEAPON_ID_THUMPER_D = 7462;
	public static immutable auto WEAPON_ID_STEALTHLIGHTSPINFUSOR = 7902;
	public static immutable auto WEAPON_ID_GRENADE_T5 = 7914;
	public static immutable auto WEAPON_ID_PROXIMITY_GRENADE = 8222;
	public static immutable auto WEAPON_ID_INFILTRATORBLANK = 8230;
	public static immutable auto WEAPON_ID_ACCURIZEDSHOTGUN = 8239;
	public static immutable auto WEAPON_ID_MINE_ARMOREDCLAYMORE = 8240;
	public static immutable auto WEAPON_ID_BUCKLER = 8242;
	public static immutable auto WEAPON_ID_IMPACTBOMBLETS = 8244;
	public static immutable auto WEAPON_ID_LIGHTTWINFUSOR = 8245;
	public static immutable auto WEAPON_ID_LR1MORTAR = 8246;
	public static immutable auto WEAPON_ID_MIRV_GRENADE = 8247;
	public static immutable auto WEAPON_ID_GRENADE_NINJASMOKE = 8248;
	public static immutable auto WEAPON_ID_NJ5SMG = 8249;
	public static immutable auto WEAPON_ID_PLASMA_CANNON = 8250;
	public static immutable auto WEAPON_ID_PLASMA_GUN = 8251;
	public static immutable auto WEAPON_ID_REMOTE_ARX_BUSTER = 8252;
	public static immutable auto WEAPON_ID_ROCKETLAUNCHER = 8253;
	public static immutable auto WEAPON_ID_SAP20 = 8254;
	public static immutable auto WEAPON_ID_THROWINGKNIVES = 8256;
	public static immutable auto WEAPON_ID_TWINFUSOR = 8257;
	public static immutable auto WEAPON_ID_HEAVYTWINFUSOR = 8656;
	public static immutable auto WEAPON_ID_SPIKELAUNCHER = 8357;
	public static immutable auto WEAPON_ID_TARGETINGBEACON = 8358;
	public static immutable auto ITEM_PACK_AMMO = 7821;
	public static immutable auto ITEM_PACK_BLINK = 7822;
	public static immutable auto ITEM_PACK_DAMAGE = 7823;
	public static immutable auto ITEM_PACK_ENERGY_SOLDIER = 7824;
	public static immutable auto ITEM_PACK_ENERGY_JUGGERNAUT = 7901;
	public static immutable auto ITEM_PACK_ENERGY_BRUTE = 7830;
	public static immutable auto ITEM_PACK_RECHARGE_PATHFINDER = 7825;
	public static immutable auto ITEM_PACK_RECHARGE_SENTINEL = 7900;
	public static immutable auto ITEM_PACK_HEAVYSHIELD = 7826;
	public static immutable auto ITEM_PACK_JAMMER = 7827;
	public static immutable auto ITEM_PACK_LIGHTREGEN = 7828;
	public static immutable auto ITEM_PACK_POWERPOOL = 7829;
	public static immutable auto ITEM_PACK_MINORENERGY = 7830;
	public static immutable auto ITEM_PACK_REGEN = 7831;
	public static immutable auto ITEM_PACK_SHIELD = 7832;
	public static immutable auto ITEM_PACK_STEALTH = 7833;
	public static immutable auto ITEM_PACK_UTILITY_SOLDIER = 8223;
	public static immutable auto ITEM_PACK_HIGHSPEEDSTEALTH = 8243;
	public static immutable auto ITEM_PACK_SURVIVAL = 8255;
	public static immutable auto WEAPON_BASE_UNKNOWN = 0;
	public static immutable auto WEAPON_BASE_SPINFUSOR = 1;
	public static immutable auto WEAPON_BASE_PISTOL = 2;
	public static immutable auto WEAPON_BASE_SNIPERRIFLE = 3;
	public static immutable auto WEAPON_BASE_ASSAULTRIFLE = 4;
	public static immutable auto WEAPON_BASE_GRENADE = 5;
	public static immutable auto WEAPON_BASE_REPAIRTOOL = 6;
	public static immutable auto WEAPON_BASE_CALLIN = 7;
	public static immutable auto WEAPON_BASE_SMG = 8;
	public static immutable auto WEAPON_BASE_SHOTGUN = 9;
	public static immutable auto WEAPON_BASE_VEHICLE = 10;
	public static immutable auto WEAPON_TYPE_UNKNOWN = 0;
	public static immutable auto WEAPON_TYPE_PROJECTILE = 1;
	public static immutable auto WEAPON_TYPE_INSTANTFIRE = 2;
	public static immutable auto ITEM_PERK_BOUNTYHUNTER = 8153;
	public static immutable auto ITEM_PERK_CLOSECOMBAT = 8156;
	public static immutable auto ITEM_PERK_DETERMINATION = 8157;
	public static immutable auto ITEM_PERK_EGOCENTRIC = 7917;
	public static immutable auto ITEM_PERK_LOOTER = 8158;
	public static immutable auto ITEM_PERK_MECHANIC = 8170;
	public static immutable auto ITEM_PERK_PILOT = 8159;
	public static immutable auto ITEM_PERK_POTENTIALENERGY = 8160;
	public static immutable auto ITEM_PERK_QUICKDRAW = 8161;
	public static immutable auto ITEM_PERK_REACH = 7916;
	public static immutable auto ITEM_PERK_SAFEFALL = 8162;
	public static immutable auto ITEM_PERK_SAFETYTHIRD = 8163;
	public static immutable auto ITEM_PERK_STEALTHY = 8164;
	public static immutable auto ITEM_PERK_SUPERCAPACITOR = 8165;
	public static immutable auto ITEM_PERK_SUPERHEAVY = 8166;
	public static immutable auto ITEM_PERK_SURVIVALIST = 8167;
	public static immutable auto ITEM_PERK_ULTRACAPACITOR = 8168;
	public static immutable auto ITEM_PERK_WHEELDEAL = 8169;
	public static immutable auto ITEM_PERK_RAGE = 8232;
	public static immutable auto ITEM_PERK_SONICPUNCH = 8231;
	public static immutable auto ITEM_PERK_LIGHTWEIGHT = 8646;
	public static immutable auto ITEM_SKILL_PATHFINDER_PRIMARY_AMMO_I = 7508;
	public static immutable auto ITEM_SKILL_PATHFINDER_PRIMARY_AMMO_II = 7637;
	public static immutable auto ITEM_SKILL_PATHFINDER_PRIMARY_ANTIARMOR = 7509;
	public static immutable auto ITEM_SKILL_PATHFINDER_SECONDARY_AMMO_I = 7638;
	public static immutable auto ITEM_SKILL_PATHFINDER_SECONDARY_AMMO_II = 7640;
	public static immutable auto ITEM_SKILL_PATHFINDER_SECONDARY_CLIP = 7639;
	public static immutable auto ITEM_SKILL_PATHFINDER_SECONDARY_FALLOFF = 7641;
	public static immutable auto ITEM_SKILL_PATHFINDER_GRENADE_AMMO = 7504;
	public static immutable auto ITEM_SKILL_PATHFINDER_GRENADE_RADIUS = 7505;
	public static immutable auto ITEM_SKILL_PATHFINDER_HEALTH_POOL = 7636;
	public static immutable auto ITEM_SKILL_PATHFINDER_HEALTH_REGEN_RATE = 7507;
	public static immutable auto ITEM_SKILL_PATHFINDER_HEALTH_REGEN_DELAY = 7506;
	public static immutable auto ITEM_SKILL_PATHFINDER_ENERGY_REGEN_I = 7501;
	public static immutable auto ITEM_SKILL_PATHFINDER_ENERGY_REGEN_II = 7635;
	public static immutable auto ITEM_SKILL_PATHFINDER_SPEED_I = 7502;
	public static immutable auto ITEM_SKILL_PATHFINDER_SPEED_II = 7503;
	public static immutable auto ITEM_SKILL_PATHFINDER_GROUND_SPEED = 7754;
	public static immutable auto ITEM_SKILL_PATHFINDER_STOP_DISTANCE = 7755;
	public static immutable auto ITEM_SKILL_JUMPER_PRIMARY_AMMO_I = 7564;
	public static immutable auto ITEM_SKILL_JUMPER_PRIMARY_AMMO_II = 7646;
	public static immutable auto ITEM_SKILL_JUMPER_PRIMARY_ANTIARMOR = 7645;
	public static immutable auto ITEM_SKILL_JUMPER_SECONDARY_AMMO = 7647;
	public static immutable auto ITEM_SKILL_JUMPER_SECONDARY_RELOAD = 7565;
	public static immutable auto ITEM_SKILL_JUMPER_SECONDARY_FALLOFF = 7648;
	public static immutable auto ITEM_SKILL_JUMPER_GRENADE_AMMO = 7563;
	public static immutable auto ITEM_SKILL_JUMPER_PACK_COST_I = 7558;
	public static immutable auto ITEM_SKILL_JUMPER_PACK_COST_II = 7643;
	public static immutable auto ITEM_SKILL_JUMPER_PACK_POTENCY = 7560;
	public static immutable auto ITEM_SKILL_JUMPER_HEALTH_POOL = 7562;
	public static immutable auto ITEM_SKILL_JUMPER_HEALTH_REGEN_RATE = 7644;
	public static immutable auto ITEM_SKILL_JUMPER_HEALTH_REGEN_DELAY = 7561;
	public static immutable auto ITEM_SKILL_JUMPER_ENERGY_POOL = 7642;
	public static immutable auto ITEM_SKILL_JUMPER_CONTROL = 7557;
	public static immutable auto ITEM_SKILL_JUMPER_SPEED = 7559;
	public static immutable auto ITEM_SKILL_JUMPER_GROUND_SPEED = 7756;
	public static immutable auto ITEM_SKILL_JUMPER_STOP_DISTANCE = 7757;
	public static immutable auto ITEM_SKILL_SOLDIER_PRIMARY_AMMO_I = 7551;
	public static immutable auto ITEM_SKILL_SOLDIER_PRIMARY_AMMO_II = 7667;
	public static immutable auto ITEM_SKILL_SOLDIER_PRIMARY_ANTIARMOR = 7552;
	public static immutable auto ITEM_SKILL_SOLDIER_SECONDARY_AMMO = 7670;
	public static immutable auto ITEM_SKILL_SOLDIER_SECONDARY_CLIP = 7671;
	public static immutable auto ITEM_SKILL_SOLDIER_SECONDARY_RELOAD = 7556;
	public static immutable auto ITEM_SKILL_SOLDIER_GRENADE_AMMO = 7540;
	public static immutable auto ITEM_SKILL_SOLDIER_HEALTH_POOL_I = 7555;
	public static immutable auto ITEM_SKILL_SOLDIER_HEALTH_POOL_II = 7668;
	public static immutable auto ITEM_SKILL_SOLDIER_HEALTH_REGEN_RATE = 7669;
	public static immutable auto ITEM_SKILL_SOLDIER_HEALTH_REGEN_DELAY = 7554;
	public static immutable auto ITEM_SKILL_SOLDIER_ENERGY_POOL_I = 7541;
	public static immutable auto ITEM_SKILL_SOLDIER_ENERGY_POOL_II = 7665;
	public static immutable auto ITEM_SKILL_SOLDIER_CONTROL = 7664;
	public static immutable auto ITEM_SKILL_SOLDIER_SPEED_I = 7548;
	public static immutable auto ITEM_SKILL_SOLDIER_SPEED_II = 7666;
	public static immutable auto ITEM_SKILL_SOLDIER_GROUND_SPEED = 7759;
	public static immutable auto ITEM_SKILL_SOLDIER_STOP_DISTANCE = 7760;
	public static immutable auto ITEM_SKILL_SOLDIER_WEAPON_SWITCH = 7761;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_PRIMARY_AMMO_I = 7568;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_PRIMARY_AMMO_II = 7658;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_PRIMARY_ANTIARMOR = 7569;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_SECONDARY_AMMO_I = 7573;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_SECONDARY_AMMO_II = 7660;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_SECONDARY_ANTIARMOR = 7574;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_GRENADE_AMMO_I = 7566;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_GRENADE_AMMO_II = 7663;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_GRENADE_RADIUS = 7662;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_HEALTH_POOL_I = 7576;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_HEALTH_POOL_II = 7661;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_ENERGY_POOL_I = 7572;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_ENERGY_POOL_II = 7659;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_HEALTH_REGEN_DELAY = 7575;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_CONTROL = 7657;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_SPEED = 7570;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_GROUND_SPEED = 7770;
	public static immutable auto ITEM_SKILL_JUGGERNAUGHT_WEAPON_SWITCH = 7771;
	public static immutable auto ITEM_SKILL_TECHNICIAN_PRIMARY_AMMO = 7685;
	public static immutable auto ITEM_SKILL_TECHNICIAN_PRIMARY_RELOAD = 7686;
	public static immutable auto ITEM_SKILL_TECHNICIAN_REPAIR_RATE_I = 7519;
	public static immutable auto ITEM_SKILL_TECHNICIAN_REPAIR_RATE_II = 7681;
	public static immutable auto ITEM_SKILL_TECHNICIAN_GRENADE_AMMO_I = 7518;
	public static immutable auto ITEM_SKILL_TECHNICIAN_GRENADE_AMMO_II = 7687;
	public static immutable auto ITEM_SKILL_TECHNICIAN_DEPLOY_ACQUIRE = 7512;
	public static immutable auto ITEM_SKILL_TECHNICIAN_DEPLOY_LIMIT = 7513;
	public static immutable auto ITEM_SKILL_TECHNICIAN_DEPLOY_ANTIARMOR = 7514;
	public static immutable auto ITEM_SKILL_TECHNICIAN_HEALTH_POOL_I = 7520;
	public static immutable auto ITEM_SKILL_TECHNICIAN_HEALTH_POOL_II = 7684;
	public static immutable auto ITEM_SKILL_TECHNICIAN_HEALTH_REGEN_DELAY = 7516;
	public static immutable auto ITEM_SKILL_TECHNICIAN_ENERGY_POOL = 7515;
	public static immutable auto ITEM_SKILL_TECHNICIAN_CONTROL = 7517;
	public static immutable auto ITEM_SKILL_TECHNICIAN_SPEED_I = 7682;
	public static immutable auto ITEM_SKILL_TECHNICIAN_SPEED_II = 7683;
	public static immutable auto ITEM_SKILL_TECHNICIAN_GROUND_SPEED = 7765;
	public static immutable auto ITEM_SKILL_TECHNICIAN_STOP_DISTANCE = 7766;
	public static immutable auto ITEM_SKILL_TECHNICIAN_WEAPON_SWITCH = 7767;
	public static immutable auto ITEM_SKILL_SENTINEL_PRIMARY_AMMO_I = 7528;
	public static immutable auto ITEM_SKILL_SENTINEL_PRIMARY_AMMO_II = 7655;
	public static immutable auto ITEM_SKILL_SENTINEL_PRIMARY_CLIP = 7654;
	public static immutable auto ITEM_SKILL_SENTINEL_PRIMARY_FALLOFF = 7529;
	public static immutable auto ITEM_SKILL_SENTINEL_SECONDARY_AMMO = 7651;
	public static immutable auto ITEM_SKILL_SENTINEL_SECONDARY_CLIP = 7652;
	public static immutable auto ITEM_SKILL_SENTINEL_GRENADE_AMMO = 7527;
	public static immutable auto ITEM_SKILL_SENTINEL_GRENADE_RADIUS = 7656;
	public static immutable auto ITEM_SKILL_SENTINEL_DEPLOY_HEALTH = 7649;
	public static immutable auto ITEM_SKILL_SENTINEL_DEPLOY_RADIUS_I = 7521;
	public static immutable auto ITEM_SKILL_SENTINEL_DEPLOY_RADIUS_II = 7650;
	public static immutable auto ITEM_SKILL_SENTINEL_HEALTH_REGEN_RATE = 7526;
	public static immutable auto ITEM_SKILL_SENTINEL_HEALTH_REGEN_DELAY = 7525;
	public static immutable auto ITEM_SKILL_SENTINEL_ENERGY_POOL_I = 7523;
	public static immutable auto ITEM_SKILL_SENTINEL_ENERGY_POOL_II = 7653;
	public static immutable auto ITEM_SKILL_SENTINEL_SPEED = 7524;
	public static immutable auto ITEM_SKILL_SENTINEL_WEAPON_SWITCH = 7758;
	public static immutable auto ITEM_SKILL_RANGER_PRIMARY_AMMO = 7679;
	public static immutable auto ITEM_SKILL_RANGER_PRIMARY_CLIP = 7680;
	public static immutable auto ITEM_SKILL_RANGER_PRIMARY_RELOAD = 7582;
	public static immutable auto ITEM_SKILL_RANGER_SECONDARY_AMMO_I = 7581;
	public static immutable auto ITEM_SKILL_RANGER_SECONDARY_AMMO_II = 7675;
	public static immutable auto ITEM_SKILL_RANGER_SECONDARY_ANTIARMOR = 7674;
	public static immutable auto ITEM_SKILL_RANGER_GRENADE_AMMO_I = 7580;
	public static immutable auto ITEM_SKILL_RANGER_GRENADE_AMMO_II = 7677;
	public static immutable auto ITEM_SKILL_RANGER_PACK_COST = 7583;
	public static immutable auto ITEM_SKILL_RANGER_HEALTH_POOL_I = 7585;
	public static immutable auto ITEM_SKILL_RANGER_HEALTH_POOL_II = 7676;
	public static immutable auto ITEM_SKILL_RANGER_HEALTH_REGEN_DELAY = 7584;
	public static immutable auto ITEM_SKILL_RANGER_ENERGY_POOL_I = 7577;
	public static immutable auto ITEM_SKILL_RANGER_ENERGY_POOL_II = 7678;
	public static immutable auto ITEM_SKILL_RANGER_CONTROL = 7672;
	public static immutable auto ITEM_SKILL_RANGER_SPEED_I = 7578;
	public static immutable auto ITEM_SKILL_RANGER_SPEED_II = 7673;
	public static immutable auto ITEM_SKILL_RANGER_GROUND_SPEED = 7762;
	public static immutable auto ITEM_SKILL_RANGER_STOP_DISTANCE = 7763;
	public static immutable auto ITEM_SKILL_RANGER_WEAPON_SWITCH = 7764;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_PRIMARY_AMMO_I = 7598;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_PRIMARY_AMMO_II = 7632;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_PRIMARY_SPINUP = 7597;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_GRENADE_AMMO_I = 7590;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_GRENADE_AMMO_II = 7634;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_DEPLOY_AMMO = 7591;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_GRENADE_ANTIARMOR = 7633;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_DEPLOY_HEALTH_I = 7592;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_DEPLOY_HEALTH_II = 7629;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_HEALTH_POOL_I = 7596;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_HEALTH_POOL_II = 7631;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_HEALTH_REGEN_DELAY = 7595;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_ENERGY_POOL = 7628;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_CONTROL = 7594;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_SPEED_I = 7593;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_SPEED_II = 7630;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_GROUND_SPEED = 7772;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_STOP_DISTANCE = 7773;
	public static immutable auto ITEM_SKILL_DOOMBRINGER_WEAPON_SWITCH = 7774;
	public static immutable auto ITEM_SKILL_INFILTRATOR_PRIMARY_AMMO_I = 7612;
	public static immutable auto ITEM_SKILL_INFILTRATOR_PRIMARY_AMMO_II = 7818;
	public static immutable auto ITEM_SKILL_INFILTRATOR_PRIMARY_RELOAD = 7614;
	public static immutable auto ITEM_SKILL_INFILTRATOR_PRIMARY_FALLOFF = 7613;
	public static immutable auto ITEM_SKILL_INFILTRATOR_SECONDARY_AMMO = 7623;
	public static immutable auto ITEM_SKILL_INFILTRATOR_SECONDARY_CLIP = 7625;
	public static immutable auto ITEM_SKILL_INFILTRATOR_SECONDARY_RELOAD = 7624;
	public static immutable auto ITEM_SKILL_INFILTRATOR_GRENADE_AMMO_I = 7615;
	public static immutable auto ITEM_SKILL_INFILTRATOR_GRENADE_AMMO_II = 7618;
	public static immutable auto ITEM_SKILL_INFILTRATOR_GRENADE_RADIUS = 7617;
	public static immutable auto ITEM_SKILL_INFILTRATOR_GRENADE_ANTIARMOR = 7616;
	public static immutable auto ITEM_SKILL_INFILTRATOR_PACK_COST_I = 7620;
	public static immutable auto ITEM_SKILL_INFILTRATOR_PACK_COST_II = 7622;
	public static immutable auto ITEM_SKILL_INFILTRATOR_PACK_POTENCY = 7621;
	public static immutable auto ITEM_SKILL_INFILTRATOR_HEALTH_REGEN_RATE = 7627;
	public static immutable auto ITEM_SKILL_INFILTRATOR_HEALTH_REGEN_DELAY = 7626;
	public static immutable auto ITEM_SKILL_INFILTRATOR_ENERGY_POOL = 7619;
	public static immutable auto ITEM_SKILL_RAIDER_PRIMARY_AMMO = 7688;
	public static immutable auto ITEM_SKILL_RAIDER_PRIMARY_RELOAD = 7690;
	public static immutable auto ITEM_SKILL_RAIDER_PRIMARY_FALLOFF = 7689;
	public static immutable auto ITEM_SKILL_RAIDER_SECONDARY_AMMO = 7691;
	public static immutable auto ITEM_SKILL_RAIDER_SECONDARY_CLIP = 7693;
	public static immutable auto ITEM_SKILL_RAIDER_SECONDARY_ANTIARMOR = 7692;
	public static immutable auto ITEM_SKILL_RAIDER_GRENADE_AMMO = 7694;
	public static immutable auto ITEM_SKILL_RAIDER_GRENADE_EFFECT = 7695;
	public static immutable auto ITEM_SKILL_RAIDER_GRENADE_RADIUS = 7696;
	public static immutable auto ITEM_SKILL_RAIDER_PACK_COST_I = 7700;
	public static immutable auto ITEM_SKILL_RAIDER_PACK_COST_II = 7703;
	public static immutable auto ITEM_SKILL_RAIDER_PACK_POTENCY = 7701;
	public static immutable auto ITEM_SKILL_RAIDER_HEALTH_POOL_I = 7698;
	public static immutable auto ITEM_SKILL_RAIDER_HEALTH_POOL_II = 7699;
	public static immutable auto ITEM_SKILL_RAIDER_HEALTH_REGEN_DELAY = 7697;
	public static immutable auto ITEM_SKILL_RAIDER_ENERGY_POOL = 7702;
	public static immutable auto ITEM_SKILL_BRUTE_ENERGY_POOL = 7723;
	public static immutable auto ITEM_SKILL_BRUTE_GRENADE_AMMO = 7720;
	public static immutable auto ITEM_SKILL_BRUTE_GRENADE_DURATION = 7721;
	public static immutable auto ITEM_SKILL_BRUTE_GRENADE_RADIUS = 7722;
	public static immutable auto ITEM_SKILL_BRUTE_HEALTH_POOL_I = 7729;
	public static immutable auto ITEM_SKILL_BRUTE_HEALTH_POOL_II = 7732;
	public static immutable auto ITEM_SKILL_BRUTE_HEALTH_REGEN_DELAY = 7730;
	public static immutable auto ITEM_SKILL_BRUTE_HEALTH_REGEN_RATE = 7731;
	public static immutable auto ITEM_SKILL_BRUTE_PRIMARY_AMMO_I = 7726;
	public static immutable auto ITEM_SKILL_BRUTE_PRIMARY_AMMO_II = 7728;
	public static immutable auto ITEM_SKILL_BRUTE_PRIMARY_ANTIARMOR = 7727;
	public static immutable auto ITEM_SKILL_BRUTE_SECONARY_AMMO = 7733;
	public static immutable auto ITEM_SKILL_BRUTE_SECONDARY_CLIP = 7735;
	public static immutable auto ITEM_SKILL_BRUTE_SECONDARY_RELOAD = 7734;
	public static immutable auto ITEM_SKILL_BRUTE_CONTROL = 7725;
	public static immutable auto ITEM_SKILL_BRUTE_SPEED = 7724;
	public static immutable auto ITEM_SKILL_BRUTE_GROUND_SPEED = 7775;
	public static immutable auto ITEM_SKILL_BRUTE_WEAPON_SWITCH = 7776;
	public static immutable auto ITEM_SKILL_SCRAMBLER_ENERGY_POOL = 7707;
	public static immutable auto ITEM_SKILL_SCRAMBLER_GRENADE_AMMO = 7704;
	public static immutable auto ITEM_SKILL_SCRAMBLER_GRENADE_DURATION = 7706;
	public static immutable auto ITEM_SKILL_SCRAMBLER_GRENADE_RADIUS = 7705;
	public static immutable auto ITEM_SKILL_SCRAMBLER_HEALTH_POOL_I = 7714;
	public static immutable auto ITEM_SKILL_SCRAMBLER_HEALTH_POOL_II = 7715;
	public static immutable auto ITEM_SKILL_SCRAMBLER_HEALTH_REGEN_DELAY = 7713;
	public static immutable auto ITEM_SKILL_SCRAMBLER_PACK_COST_I = 7716;
	public static immutable auto ITEM_SKILL_SCRAMBLER_PACK_COST_II = 7718;
	public static immutable auto ITEM_SKILL_SCRAMBLER_PACK_EFFECTIVENESS_I = 7717;
	public static immutable auto ITEM_SKILL_SCRAMBLER_PACK_EFFECTIVENESS_II = 7719;
	public static immutable auto ITEM_SKILL_SCRAMBLER_PRIMARY_AMMO_I = 7710;
	public static immutable auto ITEM_SKILL_SCRAMBLER_PRIMARY_AMMO_II = 7712;
	public static immutable auto ITEM_SKILL_SCRAMBLER_PRIMARY_ANTIARMOR = 7711;
	public static immutable auto ITEM_SKILL_SCRAMBLER_CONTROL = 7709;
	public static immutable auto ITEM_SKILL_SCRAMBLER_SPEED = 7708;
	public static immutable auto ITEM_SKILL_SCRAMBLER_GROUND_SPEED = 7768;
	public static immutable auto ITEM_SKILL_SCRAMBLER_WEAPON_SWITCH = 7769;
	public static immutable auto ITEM_SKILL_WRAITH_ENERGY_POOL = 7790;
	public static immutable auto ITEM_SKILL_WRAITH_ENERGY_REGEN_I = 7781;
	public static immutable auto ITEM_SKILL_WRAITH_ENERGY_REGEN_II = 7783;
	public static immutable auto ITEM_SKILL_WRAITH_GRENADE_AMMO = 7788;
	public static immutable auto ITEM_SKILL_WRAITH_GRENADE_RADIUS = 7789;
	public static immutable auto ITEM_SKILL_WRAITH_GROUND_SPEED = 7782;
	public static immutable auto ITEM_SKILL_WRAITH_HEALTH_REGEN_DELAY = 7791;
	public static immutable auto ITEM_SKILL_WRAITH_HEALTH_REGEN_RATE = 7792;
	public static immutable auto ITEM_SKILL_WRAITH_PRIMARY_AMMO_I = 7793;
	public static immutable auto ITEM_SKILL_WRAITH_PRIMARY_AMMO_II = 7796;
	public static immutable auto ITEM_SKILL_WRAITH_PRIMARY_CLIP = 7795;
	public static immutable auto ITEM_SKILL_WRAITH_PRIMARY_ENERGY_COST = 7794;
	public static immutable auto ITEM_SKILL_WRAITH_SECONDARY_AMMO = 7784;
	public static immutable auto ITEM_SKILL_WRAITH_SECONDARY_CLIP_I = 7785;
	public static immutable auto ITEM_SKILL_WRAITH_SECONDARY_CLIP_II = 7786;
	public static immutable auto ITEM_SKILL_WRAITH_WEAPON_SWITCH = 7787;
	public static immutable auto TR_MAX_CALLINS = 3;
	public static immutable auto PROPERTY_CALLIN_ORBITALSTRIKE = 10241;
	public static immutable auto PROPERTY_CALLIN_TACTICALSTRIKE = 10201;
	public static immutable auto PROPERTY_CALLIN_SUPPORTINVENTORY = 10234;
	public static immutable auto ITEM_SKIN_PATHFINDER = 7834;
	public static immutable auto ITEM_SKIN_PATHFINDER_MERC = 8326;
	public static immutable auto ITEM_SKIN_INFILTRATOR = 7835;
	public static immutable auto ITEM_SKIN_INFILTRATOR_ASSASSIN = 8337;
	public static immutable auto ITEM_SKIN_INFILTRATOR_MERC = 8336;
	public static immutable auto ITEM_SKIN_SENTINEL = 8327;
	public static immutable auto ITEM_SKIN_SENTINEL_MERC = 8665;
	public static immutable auto ITEM_SKIN_SOLDIER = 8328;
	public static immutable auto ITEM_SKIN_TECHNICIAN = 8329;
	public static immutable auto ITEM_SKIN_TECHNICIAN_MERC = 8731;
	public static immutable auto ITEM_SKIN_RAIDER = 8330;
	public static immutable auto ITEM_SKIN_RAIDER_GRIEVER = 8351;
	public static immutable auto ITEM_SKIN_RAIDER_MERC = 8352;
	public static immutable auto ITEM_SKIN_JUGGERNAUT = 8331;
	public static immutable auto ITEM_SKIN_DOOMBRINGER = 8332;
	public static immutable auto ITEM_SKIN_BRUTE = 8333;
	public static immutable auto ITEM_SKIN_BRUTE_MERC = 8663;
	public static immutable auto ITEM_VOICE_LIGHT_STANDARD = 7903;
	public static immutable auto ITEM_VOICE_MEDIUM_STANDARD = 7904;
	public static immutable auto ITEM_VOICE_HEAVY_STANDARD = 7905;
	public static immutable auto ITEM_ARMOR_MOD_PATHFINDER_1 = 7836;
	public static immutable auto ITEM_ARMOR_MOD_SENTINEL_1 = 7837;
	public static immutable auto ITEM_ARMOR_MOD_INFILTRATOR_1 = 7838;
	public static immutable auto ITEM_ARMOR_MOD_SOLDIER_1 = 7839;
	public static immutable auto ITEM_ARMOR_MOD_TECHNICIAN_1 = 7840;
	public static immutable auto ITEM_ARMOR_MOD_RAIDER_1 = 7841;
	public static immutable auto ITEM_ARMOR_MOD_JUGGERNAUT_1 = 7842;
	public static immutable auto ITEM_ARMOR_MOD_DOOMBRINGER_1 = 7843;
	public static immutable auto ITEM_ARMOR_MOD_BRUTE_1 = 7844;
	public static immutable auto WEAPON_ID_ARX_BUSTER_MKD = 8391;
	public static immutable auto WEAPON_ID_CHAINGUN_MKD = 8392;
	public static immutable auto WEAPON_ID_GRENADE_MKD = 8393;
	public static immutable auto WEAPON_ID_GRENADE_AP_HEAVY_MKD = 8394;
	public static immutable auto WEAPON_ID_GRENADE_EMP_MKD = 8395;
	public static immutable auto WEAPON_ID_GRENADE_NITRON_MKD = 8396;
	public static immutable auto WEAPON_ID_GRENADE_SPIKE_MKD = 8397;
	public static immutable auto WEAPON_ID_GRENADE_STICKY_MKD = 8398;
	public static immutable auto WEAPON_ID_GRENADE_XL_MKD = 8399;
	public static immutable auto WEAPON_ID_LAUNCHER_MORTAR_MKD = 8400;
	public static immutable auto WEAPON_ID_LAUNCHER_SABER_MKD = 8401;
	public static immutable auto WEAPON_ID_MINE_CLAYMORE_MKD = 8402;
	public static immutable auto WEAPON_ID_PISTOL_NOVA_COLT_MKD = 8403;
	public static immutable auto WEAPON_ID_PISTOL_SN7_MKD = 8404;
	public static immutable auto WEAPON_ID_REPAIR_TOOL_SD_MKD = 8405;
	public static immutable auto WEAPON_ID_RIFLE_ASSAULT_MKD = 8406;
	public static immutable auto WEAPON_ID_RIFLE_SNIPER_MKD = 8407;
	public static immutable auto WEAPON_ID_SMG_NJ4_MKD = 8408;
	public static immutable auto WEAPON_ID_SMG_RHINO_MKD = 8409;
	public static immutable auto WEAPON_ID_SMG_TCN4_MKD = 8410;
	public static immutable auto WEAPON_ID_SHOTGUN_MKD = 8411;
	public static immutable auto WEAPON_ID_SHOTGUN_AUTO_MKD = 8412;
	public static immutable auto WEAPON_ID_SPINFUSOR_D_MKD = 8413;
	public static immutable auto WEAPON_ID_SPINFUSOR_HEAVY_MKD = 8414;
	public static immutable auto WEAPON_ID_SPINFUSOR_LIGHT_MKD = 8415;
	public static immutable auto WEAPON_ID_TCNG_MKD = 8416;
	public static immutable auto WEAPON_ID_THUMPERD_MKD = 8417;
	public static immutable auto WEAPON_ID_REPAIR_DEPLOYABLE = 8698;
	public static immutable auto WEAPON_ID_SPINFUSOR_LIGHT_100X = 8696;
	public static immutable auto WEAPON_ID_SPINFUSOR_100X = 8697;
	public static immutable auto WEAPON_ID_TC24 = 8699;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_1 = 8700;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_2 = 8701;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_3 = 8702;
	public static immutable auto ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_1 = 8703;
	public static immutable auto ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_2 = 8704;
	public static immutable auto ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_3 = 8705;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_1 = 8706;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_2 = 8707;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_3 = 8708;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TC24_1 = 8709;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TC24_2 = 8710;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TC24_3 = 8711;
	public static immutable auto ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR_100X = 265;
	public static immutable auto ACTIVITY_TECHNICIAN_BELT_REPAIR_DEPLOYABLE = 266;
	public static immutable auto ACTIVITY_SOLDIER_PRIMARY_SPINFUSOR_100X = 264;
	public static immutable auto ACTIVITY_TECHNICIAN_PRIMARY_TC24 = 267;
	public static immutable auto ACTIVITY_SENTINEL_PRIMARY_SAP20 = 268;
	public static immutable auto ACTIVITY_SENTINEL_SECONDARY_ACCURIZEDSHOTGUN = 269;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_1 = 8418;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_2 = 8419;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_3 = 8420;
	public static immutable auto ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_1 = 8421;
	public static immutable auto ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_2 = 8422;
	public static immutable auto ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_3 = 8423;
	public static immutable auto ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_4 = 8424;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_1 = 8425;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_2 = 8426;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_3 = 8427;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_4 = 8428;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_1 = 8429;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_2 = 8430;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_3 = 8431;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_4 = 8432;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_1 = 8433;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_2 = 8434;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_3 = 8435;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_4 = 8436;
	public static immutable auto ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_1 = 8437;
	public static immutable auto ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_2 = 8438;
	public static immutable auto ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_3 = 8439;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_1 = 8440;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_2 = 8441;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_3 = 8442;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_1 = 8443;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_2 = 8444;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_3 = 8445;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_4 = 8446;
	public static immutable auto ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_1 = 8447;
	public static immutable auto ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_2 = 8448;
	public static immutable auto ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_3 = 8449;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_1 = 8657;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_2 = 8658;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_3 = 8659;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_1 = 8450;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_2 = 8451;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_3 = 8452;
	public static immutable auto ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_1 = 8453;
	public static immutable auto ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_2 = 8454;
	public static immutable auto ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_3 = 8455;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_1 = 8456;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_2 = 8457;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_3 = 8458;
	public static immutable auto ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_1 = 8459;
	public static immutable auto ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_2 = 8460;
	public static immutable auto ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_3 = 8461;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_1 = 8462;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_2 = 8463;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_3 = 8464;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_1 = 8465;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_2 = 8466;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_3 = 8467;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_4 = 8468;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_1 = 8469;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_2 = 8470;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_3 = 8471;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_1 = 8472;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_2 = 8473;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_3 = 8474;
	public static immutable auto ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_1 = 8475;
	public static immutable auto ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_2 = 8476;
	public static immutable auto ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_3 = 8477;
	public static immutable auto ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_4 = 8478;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_1 = 8479;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_2 = 8480;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_3 = 8481;
	public static immutable auto ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_1 = 8482;
	public static immutable auto ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_2 = 8483;
	public static immutable auto ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_3 = 8484;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_1 = 8486;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_2 = 8487;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_3 = 8488;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_4 = 8489;
	public static immutable auto ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_1 = 8490;
	public static immutable auto ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_2 = 8491;
	public static immutable auto ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_3 = 8492;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_1 = 8493;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_2 = 8494;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_3 = 8495;
	public static immutable auto ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_1 = 8496;
	public static immutable auto ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_2 = 8497;
	public static immutable auto ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_3 = 8498;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_1 = 8499;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_2 = 8500;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_3 = 8501;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_1 = 8502;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_2 = 8503;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_3 = 8504;
	public static immutable auto ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_1 = 8505;
	public static immutable auto ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_2 = 8506;
	public static immutable auto ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_3 = 8507;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_1 = 7850;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_2 = 7851;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_3 = 7852;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_1 = 7855;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_2 = 7860;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_3 = 7857;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_1 = 8277;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_2 = 8278;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_3 = 8279;
	public static immutable auto ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_1 = 7927;
	public static immutable auto ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_2 = 7929;
	public static immutable auto ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_3 = 7930;
	public static immutable auto ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_4 = 7931;
	public static immutable auto ITEM_UPGRADE_SENTINEL_PHASERIFLE_1 = 7932;
	public static immutable auto ITEM_UPGRADE_SENTINEL_PHASERIFLE_2 = 7933;
	public static immutable auto ITEM_UPGRADE_SENTINEL_PHASERIFLE_3 = 7934;
	public static immutable auto ITEM_UPGRADE_SENTINEL_PHASERIFLE_4 = 7935;
	public static immutable auto ITEM_UPGRADE_SENTINEL_SAP20_1 = 8305;
	public static immutable auto ITEM_UPGRADE_SENTINEL_SAP20_2 = 8306;
	public static immutable auto ITEM_UPGRADE_SENTINEL_SAP20_3 = 8307;
	public static immutable auto ITEM_UPGRADE_SENTINEL_SAP20_4 = 8308;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_RHINOSMG_1 = 7960;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_RHINOSMG_2 = 7961;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_RHINOSMG_3 = 7962;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_RHINOSMG_4 = 7963;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_1 = 7964;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_2 = 7965;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_3 = 7966;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_1 = 8298;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_2 = 8299;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_3 = 8300;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_1 = 7985;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_2 = 7986;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_3 = 7987;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_4 = 7988;
	public static immutable auto ITEM_UPGRADE_SOLDIER_SPINFUSOR_1 = 7992;
	public static immutable auto ITEM_UPGRADE_SOLDIER_SPINFUSOR_2 = 7993;
	public static immutable auto ITEM_UPGRADE_SOLDIER_SPINFUSOR_3 = 7994;
	public static immutable auto ITEM_UPGRADE_SOLDIER_TWINFUSOR_1 = 8316;
	public static immutable auto ITEM_UPGRADE_SOLDIER_TWINFUSOR_2 = 8317;
	public static immutable auto ITEM_UPGRADE_SOLDIER_TWINFUSOR_3 = 8318;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCN4SMG_1 = 8012;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCN4SMG_2 = 8013;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCN4SMG_3 = 8014;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCN4SMG_4 = 8015;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_THUMPER_1 = 8016;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_THUMPER_2 = 8017;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_THUMPER_3 = 8018;
	public static immutable auto ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_1 = 8045;
	public static immutable auto ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_2 = 8046;
	public static immutable auto ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_3 = 8047;
	public static immutable auto ITEM_UPGRADE_RAIDER_ARXBUSTER_1 = 8042;
	public static immutable auto ITEM_UPGRADE_RAIDER_ARXBUSTER_2 = 8043;
	public static immutable auto ITEM_UPGRADE_RAIDER_ARXBUSTER_3 = 8044;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_1 = 8070;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_2 = 8071;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_3 = 8072;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_1 = 8073;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_2 = 8074;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_3 = 8075;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_1 = 8280;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_2 = 8281;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_3 = 8282;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_1 = 8100;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_2 = 8101;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_3 = 8102;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_4 = 8103;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_1 = 8104;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_2 = 8105;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_3 = 8106;
	public static immutable auto ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_1 = 8124;
	public static immutable auto ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_2 = 8125;
	public static immutable auto ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_3 = 8126;
	public static immutable auto ITEM_UPGRADE_BRUTE_PLASMACANNON_1 = 8292;
	public static immutable auto ITEM_UPGRADE_BRUTE_PLASMACANNON_2 = 8293;
	public static immutable auto ITEM_UPGRADE_BRUTE_PLASMACANNON_3 = 8294;
	public static immutable auto ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_1 = 8386;
	public static immutable auto ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_2 = 8387;
	public static immutable auto ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_3 = 8388;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_SHOTGUN_1 = 7861;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_SHOTGUN_2 = 7862;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_SHOTGUN_3 = 7863;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_1 = 7866;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_2 = 7867;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_3 = 7868;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_4 = 7869;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_BUCKLER_1 = 8265;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_BUCKLER_2 = 8266;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_BUCKLER_3 = 8267;
	public static immutable auto ITEM_UPGRADE_SENTINEL_NOVABLASTER_1 = 7936;
	public static immutable auto ITEM_UPGRADE_SENTINEL_NOVABLASTER_2 = 7937;
	public static immutable auto ITEM_UPGRADE_SENTINEL_NOVABLASTER_3 = 7938;
	public static immutable auto ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_1 = 7939;
	public static immutable auto ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_2 = 7940;
	public static immutable auto ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_3 = 7941;
	public static immutable auto ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_4 = 7942;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_1 = 8258;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_2 = 8259;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_3 = 8260;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_4 = 8261;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_1 = 7967;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_2 = 7968;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_3 = 7969;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_1 = 8312;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_2 = 8313;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_3 = 8314;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_4 = 8315;
	public static immutable auto ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_1 = 7995;
	public static immutable auto ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_2 = 7996;
	public static immutable auto ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_3 = 7997;
	public static immutable auto ITEM_UPGRADE_SOLDIER_THUMPERD_1 = 7989;
	public static immutable auto ITEM_UPGRADE_SOLDIER_THUMPERD_2 = 7990;
	public static immutable auto ITEM_UPGRADE_SOLDIER_THUMPERD_3 = 7991;
	public static immutable auto ITEM_UPGRADE_SOLDIER_PLASMAGUN_1 = 8295;
	public static immutable auto ITEM_UPGRADE_SOLDIER_PLASMAGUN_2 = 8296;
	public static immutable auto ITEM_UPGRADE_SOLDIER_PLASMAGUN_3 = 8297;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_1 = 8019;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_2 = 8020;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_3 = 8021;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_1 = 8022;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_2 = 8023;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_3 = 8024;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_1 = 8025;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_2 = 8026;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_3 = 8027;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ4SMG_1 = 8048;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ4SMG_2 = 8049;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ4SMG_3 = 8050;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ4SMG_4 = 8051;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ5SMG_1 = 8289;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ5SMG_2 = 8290;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ5SMG_3 = 8291;
	public static immutable auto ITEM_UPGRADE_RAIDER_NJ5SMG_4 = 8304;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_1 = 8076;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_2 = 8077;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_3 = 8078;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_LMG_1 = 8079;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_LMG_2 = 8080;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_LMG_3 = 8081;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_LMG_4 = 8082;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_1 = 8107;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_2 = 8108;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_3 = 8109;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_1 = 8301;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_2 = 8302;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_3 = 8303;
	public static immutable auto ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_1 = 8127;
	public static immutable auto ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_2 = 8128;
	public static immutable auto ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_3 = 8129;
	public static immutable auto ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_4 = 8130;
	public static immutable auto ITEM_UPGRADE_BRUTE_NOVACOLT_1 = 8131;
	public static immutable auto ITEM_UPGRADE_BRUTE_NOVACOLT_2 = 8132;
	public static immutable auto ITEM_UPGRADE_BRUTE_NOVACOLT_3 = 8133;
	public static immutable auto ITEM_UPGRADE_BRUTE_NOVACOLT_4 = 8134;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_1 = 7881;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_2 = 7882;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_3 = 7883;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_GRENADE_ST_1 = 7888;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_GRENADE_ST_2 = 7889;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_GRENADE_ST_3 = 7890;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_1 = 8274;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_2 = 8275;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_3 = 8276;
	public static immutable auto ITEM_UPGRADE_SENTINEL_CLAYMORE_1 = 7943;
	public static immutable auto ITEM_UPGRADE_SENTINEL_CLAYMORE_2 = 7944;
	public static immutable auto ITEM_UPGRADE_SENTINEL_CLAYMORE_3 = 7945;
	public static immutable auto ITEM_UPGRADE_SENTINEL_GRENADEXL_1 = 7946;
	public static immutable auto ITEM_UPGRADE_SENTINEL_GRENADEXL_2 = 7947;
	public static immutable auto ITEM_UPGRADE_SENTINEL_GRENADEXL_3 = 7948;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_1 = 8262;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_2 = 8263;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_3 = 8264;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_1 = 7970;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_2 = 7971;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_3 = 7972;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_4 = 7973;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_PRISMMINES_1 = 7974;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_PRISMMINES_2 = 7975;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_PRISMMINES_3 = 7976;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_1 = 8286;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_2 = 8287;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_3 = 8288;
	public static immutable auto ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_1 = 7998;
	public static immutable auto ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_2 = 7999;
	public static immutable auto ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_3 = 8000;
	public static immutable auto ITEM_UPGRADE_SOLDIER_APGRENADE_1 = 8001;
	public static immutable auto ITEM_UPGRADE_SOLDIER_APGRENADE_2 = 8002;
	public static immutable auto ITEM_UPGRADE_SOLDIER_APGRENADE_3 = 8003;
	public static immutable auto ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_1 = 8227;
	public static immutable auto ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_2 = 8228;
	public static immutable auto ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_3 = 8229;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_1 = 8028;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_2 = 8029;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_3 = 8030;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_1 = 8031;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_2 = 8032;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_3 = 8033;
	public static immutable auto ITEM_UPGRADE_RAIDER_EMPGRENADE_1 = 8052;
	public static immutable auto ITEM_UPGRADE_RAIDER_EMPGRENADE_2 = 8053;
	public static immutable auto ITEM_UPGRADE_RAIDER_EMPGRENADE_3 = 8054;
	public static immutable auto ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_1 = 8055;
	public static immutable auto ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_2 = 8056;
	public static immutable auto ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_3 = 8057;
	public static immutable auto ITEM_UPGRADE_RAIDER_MIRVGRENADE_1 = 8283;
	public static immutable auto ITEM_UPGRADE_RAIDER_MIRVGRENADE_2 = 8284;
	public static immutable auto ITEM_UPGRADE_RAIDER_MIRVGRENADE_3 = 8285;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_1 = 8083;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_2 = 8084;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_3 = 8085;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_1 = 8086;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_2 = 8087;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_3 = 8088;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_GRENADE_1 = 8110;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_GRENADE_2 = 8111;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_GRENADE_3 = 8112;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_MINES_1 = 8113;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_MINES_2 = 8114;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_MINES_3 = 8115;
	public static immutable auto ITEM_UPGRADE_BRUTE_FRACTALGRENADE_1 = 8135;
	public static immutable auto ITEM_UPGRADE_BRUTE_FRACTALGRENADE_2 = 8136;
	public static immutable auto ITEM_UPGRADE_BRUTE_FRACTALGRENADE_3 = 8137;
	public static immutable auto ITEM_UPGRADE_BRUTE_STICKYGRENADE_1 = 8138;
	public static immutable auto ITEM_UPGRADE_BRUTE_STICKYGRENADE_2 = 8139;
	public static immutable auto ITEM_UPGRADE_BRUTE_STICKYGRENADE_3 = 8140;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_1 = 7871;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_2 = 7872;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_3 = 7873;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_JUMPPACK_1 = 7876;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_JUMPPACK_2 = 7877;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_JUMPPACK_3 = 7878;
	public static immutable auto ITEM_UPGRADE_SENTINEL_DROPJAMMER_1 = 7949;
	public static immutable auto ITEM_UPGRADE_SENTINEL_DROPJAMMER_2 = 7950;
	public static immutable auto ITEM_UPGRADE_SENTINEL_DROPJAMMER_3 = 7951;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_1 = 7952;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_2 = 7953;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_3 = 7954;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_1 = 7977;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_2 = 7978;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_3 = 7979;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_1 = 8271;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_2 = 8272;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_3 = 8273;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ENERGYPACK_1 = 8004;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ENERGYPACK_2 = 8005;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ENERGYPACK_3 = 8006;
	public static immutable auto ITEM_UPGRADE_SOLDIER_UTILITYPACK_1 = 8224;
	public static immutable auto ITEM_UPGRADE_SOLDIER_UTILITYPACK_2 = 8225;
	public static immutable auto ITEM_UPGRADE_SOLDIER_UTILITYPACK_3 = 8226;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_1 = 8034;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_2 = 8035;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_3 = 8036;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_EXRTURRET_1 = 8268;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_EXRTURRET_2 = 8269;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_EXRTURRET_3 = 8270;
	public static immutable auto ITEM_UPGRADE_RAIDER_SHIELDPACK_1 = 8058;
	public static immutable auto ITEM_UPGRADE_RAIDER_SHIELDPACK_2 = 8059;
	public static immutable auto ITEM_UPGRADE_RAIDER_SHIELDPACK_3 = 8060;
	public static immutable auto ITEM_UPGRADE_RAIDER_JAMMERPACK_1 = 8061;
	public static immutable auto ITEM_UPGRADE_RAIDER_JAMMERPACK_2 = 8062;
	public static immutable auto ITEM_UPGRADE_RAIDER_JAMMERPACK_3 = 8063;
	public static immutable auto ITEM_UPGRADE_RAIDER_JAMMERPACK_4 = 8064;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_1 = 8089;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_2 = 8090;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_3 = 8091;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_1 = 8092;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_2 = 8093;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_3 = 8094;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_1 = 8309;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_2 = 8310;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_3 = 8311;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_1 = 8116;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_2 = 8117;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_3 = 8118;
	public static immutable auto ITEM_UPGRADE_BRUTE_ENERGYPACK_1 = 8141;
	public static immutable auto ITEM_UPGRADE_BRUTE_ENERGYPACK_2 = 8142;
	public static immutable auto ITEM_UPGRADE_BRUTE_ENERGYPACK_3 = 8143;
	public static immutable auto ITEM_UPGRADE_BRUTE_SHIELDPACK_1 = 8144;
	public static immutable auto ITEM_UPGRADE_BRUTE_SHIELDPACK_2 = 8145;
	public static immutable auto ITEM_UPGRADE_BRUTE_SHIELDPACK_3 = 8146;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_ARMOR_1 = 7893;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_ARMOR_2 = 7894;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_ARMOR_3 = 7895;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_ARMOR_4 = 7896;
	public static immutable auto ITEM_UPGRADE_PATHFINDER_ARMOR_5 = 7897;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ARMOR_1 = 7955;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ARMOR_2 = 7956;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ARMOR_3 = 7957;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ARMOR_4 = 7958;
	public static immutable auto ITEM_UPGRADE_SENTINEL_ARMOR_5 = 7959;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_ARMOR_1 = 7980;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_ARMOR_2 = 7981;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_ARMOR_3 = 7982;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_ARMOR_4 = 7983;
	public static immutable auto ITEM_UPGRADE_INFILTRATOR_ARMOR_5 = 7984;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ARMOR_1 = 8007;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ARMOR_2 = 8008;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ARMOR_3 = 8009;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ARMOR_4 = 8010;
	public static immutable auto ITEM_UPGRADE_SOLDIER_ARMOR_5 = 8011;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_ARMOR_1 = 8037;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_ARMOR_2 = 8038;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_ARMOR_3 = 8039;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_ARMOR_4 = 8040;
	public static immutable auto ITEM_UPGRADE_TECHNICIAN_ARMOR_5 = 8041;
	public static immutable auto ITEM_UPGRADE_RAIDER_ARMOR_1 = 8065;
	public static immutable auto ITEM_UPGRADE_RAIDER_ARMOR_2 = 8066;
	public static immutable auto ITEM_UPGRADE_RAIDER_ARMOR_3 = 8067;
	public static immutable auto ITEM_UPGRADE_RAIDER_ARMOR_4 = 8068;
	public static immutable auto ITEM_UPGRADE_RAIDER_ARMOR_5 = 8069;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_ARMOR_1 = 8095;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_ARMOR_2 = 8096;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_ARMOR_3 = 8097;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_ARMOR_4 = 8098;
	public static immutable auto ITEM_UPGRADE_JUGGERNAUT_ARMOR_5 = 8099;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_ARMOR_1 = 8119;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_ARMOR_2 = 8120;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_ARMOR_3 = 8121;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_ARMOR_4 = 8122;
	public static immutable auto ITEM_UPGRADE_DOOMBRINGER_ARMOR_5 = 8123;
	public static immutable auto ITEM_UPGRADE_BRUTE_ARMOR_1 = 8147;
	public static immutable auto ITEM_UPGRADE_BRUTE_ARMOR_2 = 8148;
	public static immutable auto ITEM_UPGRADE_BRUTE_ARMOR_3 = 8149;
	public static immutable auto ITEM_UPGRADE_BRUTE_ARMOR_4 = 8150;
	public static immutable auto ITEM_UPGRADE_BRUTE_ARMOR_5 = 8151;
	public static immutable auto ITEM_PERK_UPGRADE_BOUNTYHUNTER_1 = 8188;
	public static immutable auto ITEM_PERK_UPGRADE_BOUNTYHUNTER_2 = 8189;
	public static immutable auto ITEM_PERK_UPGRADE_BOUNTYHUNTER_3 = 8190;
	public static immutable auto ITEM_PERK_UPGRADE_CLOSECOMBAT_1 = 8194;
	public static immutable auto ITEM_PERK_UPGRADE_CLOSECOMBAT_2 = 8195;
	public static immutable auto ITEM_PERK_UPGRADE_CLOSECOMBAT_3 = 8196;
	public static immutable auto ITEM_PERK_UPGRADE_EGOCENTRIC_1 = 8173;
	public static immutable auto ITEM_PERK_UPGRADE_EGOCENTRIC_2 = 8174;
	public static immutable auto ITEM_PERK_UPGRADE_EGOCENTRIC_3 = 8175;
	public static immutable auto ITEM_PERK_UPGRADE_LOOTER_1 = 8185;
	public static immutable auto ITEM_PERK_UPGRADE_LOOTER_2 = 8186;
	public static immutable auto ITEM_PERK_UPGRADE_LOOTER_3 = 8187;
	public static immutable auto ITEM_PERK_UPGRADE_MECHANIC_1 = 8215;
	public static immutable auto ITEM_PERK_UPGRADE_MECHANIC_2 = 8216;
	public static immutable auto ITEM_PERK_UPGRADE_MECHANIC_3 = 8217;
	public static immutable auto ITEM_PERK_UPGRADE_PILOT_1 = 8179;
	public static immutable auto ITEM_PERK_UPGRADE_PILOT_2 = 8180;
	public static immutable auto ITEM_PERK_UPGRADE_PILOT_3 = 8181;
	public static immutable auto ITEM_PERK_UPGRADE_POTENTIALENERGY_1 = 8200;
	public static immutable auto ITEM_PERK_UPGRADE_POTENTIALENERGY_2 = 8201;
	public static immutable auto ITEM_PERK_UPGRADE_POTENTIALENERGY_3 = 8202;
	public static immutable auto ITEM_PERK_UPGRADE_QUICKDRAW_1 = 8209;
	public static immutable auto ITEM_PERK_UPGRADE_QUICKDRAW_2 = 8210;
	public static immutable auto ITEM_PERK_UPGRADE_QUICKDRAW_3 = 8211;
	public static immutable auto ITEM_PERK_UPGRADE_REACH_1 = 8152;
	public static immutable auto ITEM_PERK_UPGRADE_REACH_2 = 8171;
	public static immutable auto ITEM_PERK_UPGRADE_REACH_3 = 8172;
	public static immutable auto ITEM_PERK_UPGRADE_SAFEFALL_1 = 8176;
	public static immutable auto ITEM_PERK_UPGRADE_SAFEFALL_2 = 8177;
	public static immutable auto ITEM_PERK_UPGRADE_SAFEFALL_3 = 8178;
	public static immutable auto ITEM_PERK_UPGRADE_SAFETYTHIRD_1 = 8212;
	public static immutable auto ITEM_PERK_UPGRADE_SAFETYTHIRD_2 = 8213;
	public static immutable auto ITEM_PERK_UPGRADE_SAFETYTHIRD_3 = 8214;
	public static immutable auto ITEM_PERK_UPGRADE_STEALTHY_1 = 8206;
	public static immutable auto ITEM_PERK_UPGRADE_STEALTHY_2 = 8207;
	public static immutable auto ITEM_PERK_UPGRADE_STEALTHY_3 = 8208;
	public static immutable auto ITEM_PERK_UPGRADE_SUPERHEAVY_1 = 8197;
	public static immutable auto ITEM_PERK_UPGRADE_SUPERHEAVY_2 = 8198;
	public static immutable auto ITEM_PERK_UPGRADE_SUPERHEAVY_3 = 8199;
	public static immutable auto ITEM_PERK_UPGRADE_SURVIVALIST_1 = 8191;
	public static immutable auto ITEM_PERK_UPGRADE_SURVIVALIST_2 = 8192;
	public static immutable auto ITEM_PERK_UPGRADE_SURVIVALIST_3 = 8193;
	public static immutable auto ITEM_PERK_UPGRADE_ULTRACAPACITOR_1 = 8203;
	public static immutable auto ITEM_PERK_UPGRADE_ULTRACAPACITOR_2 = 8204;
	public static immutable auto ITEM_PERK_UPGRADE_ULTRACAPACITOR_3 = 8205;
	public static immutable auto ITEM_PERK_UPGRADE_WHEELDEAL_1 = 8182;
	public static immutable auto ITEM_PERK_UPGRADE_WHEELDEAL_2 = 8183;
	public static immutable auto ITEM_PERK_UPGRADE_WHEELDEAL_3 = 8184;
	public static immutable auto ITEM_PERK_UPGRADE_RAGE_1 = 8236;
	public static immutable auto ITEM_PERK_UPGRADE_RAGE_2 = 8237;
	public static immutable auto ITEM_PERK_UPGRADE_RAGE_3 = 8238;
	public static immutable auto ITEM_PERK_UPGRADE_SONICPUNCH_1 = 8233;
	public static immutable auto ITEM_PERK_UPGRADE_SONICPUNCH_2 = 8234;
	public static immutable auto ITEM_PERK_UPGRADE_SONICPUNCH_3 = 8235;
	public static immutable auto ITEM_UPGRADE_TEMP = 99999;
	public static immutable auto SHOP_VENDOR_GOLD = 507;
	public static immutable auto SHOP_VENDOR_BUNDLES = 518;
	public static immutable auto SHOP_VENDOR_BOOSTERS = 508;
	public static immutable auto SHOP_VENDOR_NAMECHANGE = 512;
	public static immutable auto SHOP_VENDOR_CLANTAG = 545;
	public static immutable auto SKIN_INFILTRATOR_BE = 6;
	public static immutable auto SKIN_INFILTRATOR_DS = 7;
	public static immutable auto SKIN_SENTINEL_BE = 8;
	public static immutable auto SKIN_SENTINEL_DS = 9;
	public static immutable auto SKIN_RAIDER_BE = 10;
	public static immutable auto SKIN_RAIDER_DS = 11;
	public static immutable auto SKIN_TECHNICIAN_BE = 12;
	public static immutable auto SKIN_TECHNICIAN_DS = 13;
	public static immutable auto SKIN_DOOMBRINGER_BE = 14;
	public static immutable auto SKIN_DOOMBRINGER_DS = 15;
	public static immutable auto SKIN_JUGGERNAUT_BE = 16;
	public static immutable auto SKIN_JUGGERNAUT_DS = 17;
	public static immutable auto SKIN_BRUTE_BE = 18;
	public static immutable auto SKIN_BRUTE_DS = 19;
	public static immutable auto SKIN_SOLDIER_BE = 20;
	public static immutable auto SKIN_SOLDIER_DS = 21;
	public static immutable auto SKIN_PATHFINDER_BE = 22;
	public static immutable auto SKIN_PATHFINDER_DS = 23;
	public static immutable auto SKIN_PATHFINDER_MC = 24;
	public static immutable auto SKIN_INFILTRATOR_AS = 25;
	public static immutable auto SKIN_INFILTRATOR_MC = 26;
	public static immutable auto SKIN_RAIDER_GV = 25;
	public static immutable auto SKIN_RAIDER_MC = 26;
	public static immutable auto SKIN_SENTINEL_MC = 27;
	public static immutable auto SKIN_BRUTE_MC = 28;
	public static immutable auto SKIN_TECHNICIAN_MC = 29;
	public static immutable auto QUEUE_CONFIG_SERVERNAME = 1243;
	public static immutable auto QUEUE_CONFIG_ADMINPASSWORD = 1245;
	public static immutable auto QUEUE_CONFIG_GENPASSWORD = 1246;
	public static immutable auto QUEUE_CONFIG_SLOTS = 1247;
	public static immutable auto QUEUE_CONFIG_MATCHQUEUEID = 1253;
	public static immutable auto QUEUE_CONFIG_SERVERDESCRIPTION = 1255;
	public static immutable auto QUEUE_CONFIG_MAPROTATIONTYPE = 1256;
	public static immutable auto QUEUE_CONFIG_MAPSLOT1 = 1257;
	public static immutable auto QUEUE_CONFIG_MAPSLOT2 = 1258;
	public static immutable auto QUEUE_CONFIG_MAPSLOT3 = 1259;
	public static immutable auto QUEUE_CONFIG_MAPSLOT4 = 1260;
	public static immutable auto QUEUE_CONFIG_MAPSLOT5 = 1261;
	public static immutable auto QUEUE_CONFIG_MAPSLOT6 = 1262;
	public static immutable auto QUEUE_CONFIG_MAPSLOT7 = 1263;
	public static immutable auto QUEUE_CONFIG_MAPSLOT8 = 1264;
	public static immutable auto QUEUE_CONFIG_SITEID = 1272;
	public static immutable auto QUEUE_CONFIG_MINLEVEL = 1296;
	public static immutable auto QUEUE_CONFIG_MAXLEVEL = 1297;
	public static immutable auto GAME_CONFIG_TIMELIMIT = 1059;
	public static immutable auto GAME_CONFIG_MAXPLAYERS = 1060;
	public static immutable auto GAME_CONFIG_AUTOBALANCE = 1062;
	public static immutable auto GAME_CONFIG_OVERTIMELIMIT = 1063;
	public static immutable auto GAME_CONFIG_RESPAWNTIME = 1064;
	public static immutable auto GAME_CONFIG_FRIENDLYFIRE = 1065;
	public static immutable auto GAME_CONFIG_GENAUTOREGEN = 1066;
	public static immutable auto GAME_CONFIG_UPGRADES = 1067;
	public static immutable auto GAME_CONFIG_SPAWNNAKED = 1068;
	public static immutable auto GAME_CONFIG_BASEASSETS = 1070;
	public static immutable auto GAME_CONFIG_POWERDEPLOYS = 1072;
	public static immutable auto GAME_CONFIG_VEHICLELIMITS = 1075;
	public static immutable auto GAME_CONFIG_VGRAVCYCLELIMIT = 1268;
	public static immutable auto GAME_CONFIG_VBEOWULFLIMIT = 1269;
	public static immutable auto GAME_CONFIG_VSHRIKELIMIT = 1270;
	public static immutable auto GAME_CONFIG_VBEOWULFPRICE = 1076;
	public static immutable auto GAME_CONFIG_VGRAVPRICE = 1077;
	public static immutable auto GAME_CONFIG_VSHRIKEPRICE = 1080;
	public static immutable auto GAME_CONFIG_TEAMJOINTYPE = 1081;
	public static immutable auto GAME_CONFIG_FFMULTIPLIER = 1123;
	public static immutable auto GAME_CONFIG_CALLINSDENIED = 1233;
	public static immutable auto GAME_CONFIG_CALLINPRICETAC = 1234;
	public static immutable auto GAME_CONFIG_CALLINPRICESUP = 1235;
	public static immutable auto GAME_CONFIG_CALLINPRICEORB = 1236;
	public static immutable auto GAME_CONFIG_CALLINCLDWNTAC = 1237;
	public static immutable auto GAME_CONFIG_CALLINCLDWNSUP = 1238;
	public static immutable auto GAME_CONFIG_CALLINCLDWNORB = 1239;
	public static immutable auto GAME_CONFIG_CALLINBLDUPTAC = 1249;
	public static immutable auto GAME_CONFIG_CALLINBLDUPSUP = 1250;
	public static immutable auto GAME_CONFIG_CALLINBLDUPORB = 1251;
	public static immutable auto GAME_CONFIG_BASEDESTLIMIT = 1241;
	public static immutable auto GAME_CONFIG_WARMUPTIME = 1248;
	public static immutable auto GAME_CONFIG_TEAMDISPARITY = 1252;
	public static immutable auto GAME_CONFIG_CONFIGCASEID = 1254;
	public static immutable auto GAME_CONFIG_ARENAROUNDS = 1265;
	public static immutable auto GAME_CONFIG_SCORELIMIT_CTF = 1061;
	public static immutable auto GAME_CONFIG_SCORELIMIT_RAB = 1278;
	public static immutable auto GAME_CONFIG_SCORELIMIT_TDM = 1276;
	public static immutable auto GAME_CONFIG_SCORELIMIT_ARN = 1277;
	public static immutable auto GAME_CONFIG_SCORELIMIT_CAH = 1279;
	public static immutable auto GAME_CONFIG_GAMETYPE = 1244;
	public static immutable auto GAME_CONFIG_GENDESTROYABLE = 1280;
	public static immutable auto GAME_CONFIG_INVDESTROYABLE = 1281;
	public static immutable auto GAME_CONFIG_FFDEPLOYABLES = 1282;
	public static immutable auto GAME_CONFIG_FFBASEASSETS = 1283;
	public static immutable auto GAME_CONFIG_FFDMGLIMIT = 1284;
	public static immutable auto GAME_CONFIG_FFKILLLIMIT = 1285;
	public static immutable auto GAME_CONFIG_SUPPLYDROPAMMOONLY = 1286;
	public static immutable auto GAME_CONFIG_CLASSCOUNT_PTH = 1287;
	public static immutable auto GAME_CONFIG_CLASSCOUNT_SEN = 1289;
	public static immutable auto GAME_CONFIG_CLASSCOUNT_INF = 1288;
	public static immutable auto GAME_CONFIG_CLASSCOUNT_SLD = 1290;
	public static immutable auto GAME_CONFIG_CLASSCOUNT_TCN = 1291;
	public static immutable auto GAME_CONFIG_CLASSCOUNT_RDR = 1292;
	public static immutable auto GAME_CONFIG_CLASSCOUNT_JUG = 1293;
	public static immutable auto GAME_CONFIG_CLASSCOUNT_DMB = 1294;
	public static immutable auto GAME_CONFIG_CLASSCOUNT_BRT = 1295;
	public static immutable auto GAME_CONFIG_POWEREDCALLINS = 1298;
	public static immutable auto GAME_CONFIG_TEAMCREDITS = 1299;
	public static immutable auto GAME_CONFIG_VEHICLEHEALTHMULT = 1327;
	public static immutable auto GAME_CONFIG_SKIENABLED = 1373;
	public static immutable auto GAME_CONFIG_ENERGYMULTIPLIER = 1374;
	public static immutable auto GAME_CONFIG_AOESIZEMULTIPLIER = 1375;
	public static immutable auto GAME_CONFIG_AOEDAMAGEMULTIPLIER = 1376;
	public static immutable auto GAME_CONFIG_CTFBLITZALLFLAGSMOVE = 1377;
	public static immutable auto GAME_CONFIG_MAXSPEEDWITHFLAGLIGHT = 1391;
	public static immutable auto GAME_CONFIG_DECELERATIONRATEWITHFLAG = 1392;
	public static immutable auto GAME_CONFIG_MAXSPEEDWITHFLAGMEDIUM = 1395;
	public static immutable auto GAME_CONFIG_MAXSPEEDWITHFLAGHEAVY = 1396;
	public static immutable auto SERVER_RT_METHOD_RANDOM = 10070;
	public static immutable auto SERVER_RT_METHOD_LINEAR = 10071;
	public static immutable auto SERVER_RT_METHOD_LINEAR2 = 10072;
	public static immutable auto SERVER_RT_METHOD_LINEAR4 = 10073;
	public static immutable auto TR_MAX_GAMETYPES = 5;
	public static immutable auto SERVER_GAMECLASSID_CTF = 197;
	public static immutable auto SERVER_GAMECLASSID_RAB = 8012;
	public static immutable auto SERVER_GAMECLASSID_TDM = 8036;
	public static immutable auto SERVER_GAMECLASSID_ARN = 8086;
	public static immutable auto SERVER_GAMECLASSID_CAH = 8094;
	public static immutable auto SERVER_GAMECLASSID_BTZ = 8118;
	public static immutable auto SERVER_DEFAULT_MAP_CTF = 1462;
	public static immutable auto SERVER_DEFAULT_MAP_RAB = 1465;
	public static immutable auto SERVER_DEFAULT_MAP_TDM = 1488;
	public static immutable auto SERVER_DEFAULT_MAP_ARN = 1495;
	public static immutable auto SERVER_DEFAULT_MAP_CAH = 1519;
	public static immutable auto SERVER_DEFAULT_MAP_BTZ = 1539;
	public static immutable auto PTH_LOADOUT_ONE = 8359;
	public static immutable auto PTH_LOADOUT_TWO = 8360;
	public static immutable auto PTH_LOADOUT_THREE = 8361;
	public static immutable auto PTH_LOADOUT_FOUR = 8674;
	public static immutable auto PTH_LOADOUT_FIVE = 8675;
	public static immutable auto INF_LOADOUT_ONE = 8362;
	public static immutable auto INF_LOADOUT_TWO = 8363;
	public static immutable auto INF_LOADOUT_THREE = 8364;
	public static immutable auto INF_LOADOUT_FOUR = 8676;
	public static immutable auto INF_LOADOUT_FIVE = 8677;
	public static immutable auto SEN_LOADOUT_ONE = 8365;
	public static immutable auto SEN_LOADOUT_TWO = 8366;
	public static immutable auto SEN_LOADOUT_THREE = 8367;
	public static immutable auto SEN_LOADOUT_FOUR = 8678;
	public static immutable auto SEN_LOADOUT_FIVE = 8679;
	public static immutable auto SLD_LOADOUT_ONE = 8368;
	public static immutable auto SLD_LOADOUT_TWO = 8369;
	public static immutable auto SLD_LOADOUT_THREE = 8370;
	public static immutable auto SLD_LOADOUT_FOUR = 8680;
	public static immutable auto SLD_LOADOUT_FIVE = 8681;
	public static immutable auto TCN_LOADOUT_ONE = 8371;
	public static immutable auto TCN_LOADOUT_TWO = 8372;
	public static immutable auto TCN_LOADOUT_THREE = 8373;
	public static immutable auto TCN_LOADOUT_FOUR = 8682;
	public static immutable auto TCN_LOADOUT_FIVE = 8683;
	public static immutable auto RDR_LOADOUT_ONE = 8374;
	public static immutable auto RDR_LOADOUT_TWO = 8375;
	public static immutable auto RDR_LOADOUT_THREE = 8376;
	public static immutable auto RDR_LOADOUT_FOUR = 8684;
	public static immutable auto RDR_LOADOUT_FIVE = 8685;
	public static immutable auto JUG_LOADOUT_ONE = 8377;
	public static immutable auto JUG_LOADOUT_TWO = 8378;
	public static immutable auto JUG_LOADOUT_THREE = 8379;
	public static immutable auto JUG_LOADOUT_FOUR = 8686;
	public static immutable auto JUG_LOADOUT_FIVE = 8687;
	public static immutable auto DMB_LOADOUT_ONE = 8380;
	public static immutable auto DMB_LOADOUT_TWO = 8381;
	public static immutable auto DMB_LOADOUT_THREE = 8382;
	public static immutable auto DMB_LOADOUT_FOUR = 8688;
	public static immutable auto DMB_LOADOUT_FIVE = 8689;
	public static immutable auto BRT_LOADOUT_ONE = 8383;
	public static immutable auto BRT_LOADOUT_TWO = 8384;
	public static immutable auto BRT_LOADOUT_THREE = 8385;
	public static immutable auto BRT_LOADOUT_FOUR = 8690;
	public static immutable auto BRT_LOADOUT_FIVE = 8691;
	public static immutable auto ACTIVITY_DEVICE_NONE = 0;
	public static immutable auto ACTIVITY_SENTINEL_PRIMARY_BXT1 = 124;
	public static immutable auto ACTIVITY_SENTINEL_BELT_MINE_CLAYMORE_MKD = 125;
	public static immutable auto ACTIVITY_SENTINEL_PRIMARY_SNIPERRIFLE_MKD = 126;
	public static immutable auto ACTIVITY_BRUTE_PRIMARY_HEAVYSPINFUSOR = 127;
	public static immutable auto ACTIVITY_BRUTE_PRIMARY_HEAVYSPINFUSOR_MKD = 128;
	public static immutable auto ACTIVITY_BRUTE_PRIMARY_SPIKELAUNCHER = 129;
	public static immutable auto ACTIVITY_DOOMBRINGER_PRIMARY_CHAINGUN = 131;
	public static immutable auto ACTIVITY_DOOMBRINGER_PRIMARY_CHAINGUN_MKD = 132;
	public static immutable auto ACTIVITY_DOOMBRINGER_PRIMARY_HEAVYBOLTLAUNCHER = 133;
	public static immutable auto ACTIVITY_INFILTRATOR_PRIMARY_REMOTEARXBUSTER = 134;
	public static immutable auto ACTIVITY_INFILTRATOR_PRIMARY_RHINOSMG = 135;
	public static immutable auto ACTIVITY_INFILTRATOR_PRIMARY_RHINOSMG_MKD = 136;
	public static immutable auto ACTIVITY_INFILTRATOR_PRIMARY_STEALTHLIGHTSPINFUSOR = 137;
	public static immutable auto ACTIVITY_JUGGERNAUT_PRIMARY_FUSIONMORTAR = 138;
	public static immutable auto ACTIVITY_JUGGERNAUT_PRIMARY_FUSIONMORTAR_MKD = 139;
	public static immutable auto ACTIVITY_JUGGERNAUT_PRIMARY_MIRVLAUNCHER = 140;
	public static immutable auto ACTIVITY_PATHFINDER_PRIMARY_BOLTLAUNCHER = 141;
	public static immutable auto ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR = 142;
	public static immutable auto ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR_MKD = 143;
	public static immutable auto ACTIVITY_RAIDER_PRIMARY_ARXBUSTER = 144;
	public static immutable auto ACTIVITY_RAIDER_PRIMARY_ARXBUSTER_MKD = 145;
	public static immutable auto ACTIVITY_RAIDER_PRIMARY_GRENADELAUNCHER = 146;
	public static immutable auto ACTIVITY_RAIDER_PRIMARY_PLASMAGUN = 147;
	public static immutable auto ACTIVITY_SENTINEL_PRIMARY_PHASERIFLE = 148;
	public static immutable auto ACTIVITY_SOLDIER_PRIMARY_ASSAULTRIFLE = 149;
	public static immutable auto ACTIVITY_SOLDIER_PRIMARY_ASSAULTRIFLE_MKD = 150;
	public static immutable auto ACTIVITY_SOLDIER_PRIMARY_SPINFUSOR = 151;
	public static immutable auto ACTIVITY_TECHNICIAN_PRIMARY_TCN4 = 152;
	public static immutable auto ACTIVITY_TECHNICIAN_PRIMARY_TCN4_MKD = 153;
	public static immutable auto ACTIVITY_TECHNICIAN_PRIMARY_THUMPER = 154;
	public static immutable auto ACTIVITY_BRUTE_SECONDARY_AUTOSHOTGUN = 155;
	public static immutable auto ACTIVITY_BRUTE_SECONDARY_AUTOSHOTGUN_MKD = 156;
	public static immutable auto ACTIVITY_BRUTE_SECONDARY_NOVACOLT = 157;
	public static immutable auto ACTIVITY_BRUTE_SECONDARY_PLASMACANNON = 158;
	public static immutable auto ACTIVITY_DOOMBRINGER_SECONDARY_SABERLAUNCHER = 159;
	public static immutable auto ACTIVITY_DOOMBRINGER_SECONDARY_SABERLAUNCHER_MKD = 160;
	public static immutable auto ACTIVITY_INFILTRATOR_SECONDARY_SN7 = 161;
	public static immutable auto ACTIVITY_INFILTRATOR_SECONDARY_SN7_MKD = 162;
	public static immutable auto ACTIVITY_INFILTRATOR_SECONDARY_THROWINGKNIVES = 163;
	public static immutable auto ACTIVITY_JUGGERNAUT_SECONDARY_SPINFUSORD = 164;
	public static immutable auto ACTIVITY_JUGGERNAUT_SECONDARY_SPINFUSORD_MKD = 165;
	public static immutable auto ACTIVITY_JUGGERNAUT_SECONDARY_X1LMG = 166;
	public static immutable auto ACTIVITY_PATHFINDER_SECONDARY_LIGHTASSAULTRIFLE = 167;
	public static immutable auto ACTIVITY_PATHFINDER_SECONDARY_SHOTGUN = 168;
	public static immutable auto ACTIVITY_PATHFINDER_SECONDARY_SHOTGUN_MKD = 169;
	public static immutable auto ACTIVITY_RAIDER_SECONDARY_NJ4SMG = 170;
	public static immutable auto ACTIVITY_RAIDER_SECONDARY_NJ4SMG_MKD = 171;
	public static immutable auto ACTIVITY_RAIDER_SECONDARY_NJ5SMG = 172;
	public static immutable auto ACTIVITY_SENTINEL_SECONDARY_FALCON = 173;
	public static immutable auto ACTIVITY_SENTINEL_SECONDARY_NOVABLASTER = 174;
	public static immutable auto ACTIVITY_SENTINEL_SECONDARY_NOVABLASTER_MKD = 175;
	public static immutable auto ACTIVITY_SOLDIER_SECONDARY_EAGLE = 176;
	public static immutable auto ACTIVITY_SOLDIER_SECONDARY_THUMPERD = 177;
	public static immutable auto ACTIVITY_SOLDIER_SECONDARY_THUMPERD_MKD = 178;
	public static immutable auto ACTIVITY_TECHNICIAN_SECONDARY_REPAIRTOOLSD = 179;
	public static immutable auto ACTIVITY_TECHNICIAN_SECONDARY_REPAIRTOOLSD_MKD = 180;
	public static immutable auto ACTIVITY_TECHNICIAN_SECONDARY_SAWEDOFF = 181;
	public static immutable auto ACTIVITY_TECHNICIAN_SECONDARY_SPARROW = 182;
	public static immutable auto ACTIVITY_ARMOR_MOD_BRUTE_1 = 183;
	public static immutable auto ACTIVITY_ARMOR_MOD_DOOMBRINGER_1 = 184;
	public static immutable auto ACTIVITY_ARMOR_MOD_INFILTRATOR_1 = 185;
	public static immutable auto ACTIVITY_ARMOR_MOD_JUGGERNAUT_1 = 186;
	public static immutable auto ACTIVITY_ARMOR_MOD_PATHFINDER_1 = 187;
	public static immutable auto ACTIVITY_ARMOR_MOD_RAIDER_1 = 188;
	public static immutable auto ACTIVITY_ARMOR_MOD_SENTINEL_1 = 189;
	public static immutable auto ACTIVITY_ARMOR_MOD_TECHNICIAN_1 = 190;
	public static immutable auto ACTIVITY_ARMOR_MOD_SOLDIER_1 = 191;
	public static immutable auto ACTIVITY_BRUTE_BELT_FRACTALGRENADE = 192;
	public static immutable auto ACTIVITY_BRUTE_BELT_FRACTALGRENADE_MKD = 193;
	public static immutable auto ACTIVITY_BRUTE_BELT_LIGHTSTICKYGRENADE = 194;
	public static immutable auto ACTIVITY_DOOMBRINGER_BELT_MINE = 195;
	public static immutable auto ACTIVITY_DOOMBRINGER_BELT_STANDARDGRENADE = 196;
	public static immutable auto ACTIVITY_DOOMBRINGER_BELT_STANDARDGRENADE_MKD = 197;
	public static immutable auto ACTIVITY_INFILTRATOR_BELT_NINJASMOKE = 198;
	public static immutable auto ACTIVITY_INFILTRATOR_BELT_PRISMMINES = 199;
	public static immutable auto ACTIVITY_INFILTRATOR_BELT_STICKYGRENADE = 200;
	public static immutable auto ACTIVITY_INFILTRATOR_BELT_STICKYGRENADE_MKD = 201;
	public static immutable auto ACTIVITY_JUGGERNAUT_BELT_DISKTOSS = 202;
	public static immutable auto ACTIVITY_JUGGERNAUT_BELT_HEAVYAPGRENADE = 203;
	public static immutable auto ACTIVITY_JUGGERNAUT_BELT_HEAVYAPGRENADE_MKD = 204;
	public static immutable auto ACTIVITY_PATHFINDER_BELT_IMPACTNITRON = 205;
	public static immutable auto ACTIVITY_PATHFINDER_BELT_IMPACTNITRON_MKD = 206;
	public static immutable auto ACTIVITY_PATHFINDER_BELT_STGRENADE = 207;
	public static immutable auto ACTIVITY_RAIDER_BELT_EMPGRENADE = 208;
	public static immutable auto ACTIVITY_RAIDER_BELT_EMPGRENADE_MKD = 209;
	public static immutable auto ACTIVITY_RAIDER_BELT_MIRVGRENADE = 210;
	public static immutable auto ACTIVITY_RAIDER_BELT_WHITEOUT = 211;
	public static immutable auto ACTIVITY_SENTINEL_BELT_ARMOREDCLAYMORE = 212;
	public static immutable auto ACTIVITY_SENTINEL_BELT_CLAYMORE = 213;
	public static immutable auto ACTIVITY_SENTINEL_BELT_CLAYMORE_MKD = 214;
	public static immutable auto ACTIVITY_SENTINEL_BELT_GRENADET5 = 215;
	public static immutable auto ACTIVITY_SOLDIER_BELT_APGRENADE = 216;
	public static immutable auto ACTIVITY_SOLDIER_BELT_FRAGGRENADEXL = 217;
	public static immutable auto ACTIVITY_SOLDIER_BELT_FRAGGRENADEXL_MKD = 218;
	public static immutable auto ACTIVITY_SOLDIER_BELT_PROXIMITYGRENADE = 219;
	public static immutable auto ACTIVITY_TECHNICIAN_BELT_MOTIONALARM = 220;
	public static immutable auto ACTIVITY_TECHNICIAN_BELT_TCNG = 221;
	public static immutable auto ACTIVITY_TECHNICIAN_BELT_TCNG_MKD = 222;
	public static immutable auto ACTIVITY_BRUTE_PACK_HEAVYSHIELD = 223;
	public static immutable auto ACTIVITY_BRUTE_PACK_MINORENERGY = 224;
	public static immutable auto ACTIVITY_BRUTE_PACK_SURVIVALPACK = 225;
	public static immutable auto ACTIVITY_DOOMBRINGER_PACK_FORCEFIELD = 226;
	public static immutable auto ACTIVITY_INFILTRATOR_PACK_STEALTH = 227;
	public static immutable auto ACTIVITY_JUGGERNAUT_PACK_HEALTHREGEN = 228;
	public static immutable auto ACTIVITY_PATHFINDER_PACK_ENERGYRECHARGE = 229;
	public static immutable auto ACTIVITY_PATHFINDER_PACK_JUMPPACK = 230;
	public static immutable auto ACTIVITY_RAIDER_PACK_JAMMER = 231;
	public static immutable auto ACTIVITY_RAIDER_PACK_SHIELD = 232;
	public static immutable auto ACTIVITY_SENTINEL_PACK_DROPJAMMER = 233;
	public static immutable auto ACTIVITY_SENTINEL_PACK_ENERGYRECHARGE = 234;
	public static immutable auto ACTIVITY_SOLDIER_PACK_ENERGYPOOL = 235;
	public static immutable auto ACTIVITY_SOLDIER_PACK_UTILITY = 236;
	public static immutable auto ACTIVITY_TECHNICIAN_PACK_EXRTURRET = 237;
	public static immutable auto ACTIVITY_TECHNICIAN_PACK_LIGHTTURRET = 238;
	public static immutable auto ACTIVITY_PERK_BOUNTY_HUNTER = 239;
	public static immutable auto ACTIVITY_PERK_CLOSE_COMBAT = 240;
	public static immutable auto ACTIVITY_PERK_LOOTER = 241;
	public static immutable auto ACTIVITY_PERK_RAGE = 242;
	public static immutable auto ACTIVITY_PERK_REACH = 243;
	public static immutable auto ACTIVITY_PERK_SAFE_FALL = 244;
	public static immutable auto ACTIVITY_PERK_SAFETY_THIRD = 245;
	public static immutable auto ACTIVITY_PERK_STEALTHY = 246;
	public static immutable auto ACTIVITY_PERK_SUPER_CAPACITOR = 247;
	public static immutable auto ACTIVITY_PERK_WHEEL_DEAL = 248;
	public static immutable auto ACTIVITY_PERK_DETERMINATION = 249;
	public static immutable auto ACTIVITY_PERK_EGOCENTRIC = 250;
	public static immutable auto ACTIVITY_PERK_MECHANIC = 253;
	public static immutable auto ACTIVITY_PERK_PILOT = 254;
	public static immutable auto ACTIVITY_PERK_POTENTIAL_ENERGY = 255;
	public static immutable auto ACTIVITY_PERK_QUICKDRAW = 256;
	public static immutable auto ACTIVITY_PERK_SONIC_PUNCH = 257;
	public static immutable auto ACTIVITY_PERK_SUPER_HEAVY = 258;
	public static immutable auto ACTIVITY_PERK_SURVIVALIST = 259;
	public static immutable auto ACTIVITY_PERK_ULTRA_CAPACITOR = 260;
	public static immutable auto ACTIVITY_PATHFINDER_PRIMARY_LIGHTTWINFUSOR = 261;
	public static immutable auto ACTIVITY_SOLDIER_PRIMARY_TWINFUSOR = 262;
	public static immutable auto ACTIVITY_JUGGERNAUT_SECONDARY_HEAVYTWINFUSOR = 263;
	public static immutable auto BUNDLE_LOOT_ID_CAD_ASSASSIN = 8918;
	public static immutable auto BUNDLE_LOOT_ID_CAD_MERCENARY = 8919;
	public static immutable auto BUNDLE_LOOT_ID_CAD_PREMIUM = 8912;
	public static immutable auto BUNDLE_LOOT_ID_CAD_WEAPONS = 8920;
	public static immutable auto BUNDLE_LOOT_ID_RAP_GRIEVER = 8982;
	public static immutable auto BUNDLE_LOOT_ID_RAP_MERCENARY = 8983;
	public static immutable auto BUNDLE_LOOT_ID_RAP_PREMIUM = 8981;
	public static immutable auto BUNDLE_LOOT_ID_RAP_WEAPONS = 8984;
	public static immutable auto BUNDLE_LOOT_ID_NEWPLAYER = 9214;
	public static immutable auto BUNDLE_LOOT_ID_SHAZBUNDLE = 9213;
	public static immutable auto BUNDLE_LOOT_ID_STAYINALIVE = 9035;
	public static immutable auto BUNDLE_LOOT_ID_TWINFUSOR = 9449;
	public static immutable auto BUNDLE_LOOT_ID_SKINPACK = 9457;
	public static immutable auto BUNDLE_LOOT_ID_SPECIALIST = 9496;
	public static immutable auto BUNDLE_LOOT_ID_SENTINEL = 9510;
	public static immutable auto ITEM_VOICE_LIGHT = 8666;
	public static immutable auto ITEM_VOICE_MEDIUM = 8667;
	public static immutable auto ITEM_VOICE_HEAVY = 8668;
	public static immutable auto ITEM_VOICE_DARK = 8669;
	public static immutable auto ITEM_VOICE_FEM1 = 8670;
	public static immutable auto ITEM_VOICE_FEM2 = 8671;
	public static immutable auto ITEM_VOICE_AUS = 8695;
	public static immutable auto ITEM_VOICE_T2FEM01 = 8712;
	public static immutable auto ITEM_VOICE_T2FEM02 = 8714;
	public static immutable auto ITEM_VOICE_T2FEM03 = 8715;
	public static immutable auto ITEM_VOICE_T2FEM04 = 8716;
	public static immutable auto ITEM_VOICE_T2FEM05 = 8717;
	public static immutable auto ITEM_VOICE_T2MALE01 = 8719;
	public static immutable auto ITEM_VOICE_T2MALE02 = 8720;
	public static immutable auto ITEM_VOICE_T2MALE03 = 8721;
	public static immutable auto ITEM_VOICE_T2MALE04 = 8722;
	public static immutable auto ITEM_VOICE_T2MALE05 = 8723;
	public static immutable auto ITEM_VOICE_T2BDERM01 = 8724;
	public static immutable auto ITEM_VOICE_T2BDERM02 = 8725;
	public static immutable auto ITEM_VOICE_T2BDERM03 = 8726;
	public static immutable auto MAX_VGS_ENTRIES = 16;
	struct TrTempMessage
	{
		public @property final auto ref TgSupportCommands.GC_ALERT_PRIORITY Priority() { return *cast(TgSupportCommands.GC_ALERT_PRIORITY*)(cast(size_t)&this + 20); }
		private ubyte __Priority[1];
		public @property final auto ref ScriptString Message() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __Message[12];
		public @property final auto ref float TakeDownTime() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __TakeDownTime[4];
		public @property final bool bInUse() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bInUse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bInUse[4];
	}
	public @property final auto ref ScriptArray!(ScriptName) m_aDamageEffectNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 3004); }
	public @property final auto ref GfxTrHud.TrTempMessage m_HeroStatusTempMessage() { return *cast(GfxTrHud.TrTempMessage*)(cast(size_t)cast(void*)this + 3068); }
	public @property final auto ref GfxTrHud.TrTempMessage m_PromptPanelTempMessage() { return *cast(GfxTrHud.TrTempMessage*)(cast(size_t)cast(void*)this + 3044); }
	public @property final auto ref ScriptString m_sRound() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3032); }
	public @property final auto ref GFxObject VGSMenuList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 3028); }
	public @property final auto ref GFxObject _global() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 3024); }
	public @property final auto ref MaterialInstanceConstant m_DirDamageMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3020); }
	public @property final auto ref MaterialEffect m_DirectionalDamageEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 3016); }
	public @property final auto ref float m_fDirectionalDamageFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3000); }
	public @property final auto ref int m_nNearDeathHealthMax() { return *cast(int*)(cast(size_t)cast(void*)this + 2996); }
	public @property final auto ref GFxObject KillCamInfoObject() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2992); }
	public @property final auto ref GFxObject VGSMenuEntry() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2928); }
	public @property final auto ref GFxObject SpecHelp_LockViewTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2924); }
	public @property final auto ref GFxObject SpecHelp_ZoomOutTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2920); }
	public @property final auto ref GFxObject SpecHelp_ZoomInTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2916); }
	public @property final auto ref GFxObject SpecHelp_FreeCameraTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2912); }
	public @property final auto ref GFxObject SpecHelp_FastestPlayerTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2908); }
	public @property final auto ref GFxObject SpecHelp_ChangeVehiclesTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2904); }
	public @property final auto ref GFxObject SpecHelp_ChangeBookmarksTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2900); }
	public @property final auto ref GFxObject SpecHelp_ChangeFlagstandsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2896); }
	public @property final auto ref GFxObject SpecHelp_ChangeFlagsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2892); }
	public @property final auto ref GFxObject SpecHelp_ChangeGeneratorsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2888); }
	public @property final auto ref GFxObject SpecHelp_ChangePlayersTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2884); }
	public @property final auto ref GFxObject SpecHelp_DecreaseSpeedTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2880); }
	public @property final auto ref GFxObject SpecHelp_IncreaseSpeedTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2876); }
	public @property final auto ref GFxObject SpecHelp_StrafeRightTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2872); }
	public @property final auto ref GFxObject SpecHelp_StrafeLeftTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2868); }
	public @property final auto ref GFxObject SpecHelp_MoveBackTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2864); }
	public @property final auto ref GFxObject SpecHelp_MoveForwardTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2860); }
	public @property final auto ref GFxObject SpecHelp_MoveDownTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2856); }
	public @property final auto ref GFxObject SpecHelp_MoveUpTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2852); }
	public @property final auto ref GFxObject SpecHelp_ObjKaratsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2848); }
	public @property final auto ref GFxObject SpecHelp_SpecHudTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2844); }
	public @property final auto ref GFxObject SpecHelp_MainmenuTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2840); }
	public @property final auto ref GFxObject SpecHelp_ScoreboardTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2836); }
	public @property final auto ref GFxObject SpecHelp_TeamSelectTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2832); }
	public @property final auto ref GFxObject SpecHelp_HelpTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2828); }
	public @property final auto ref GFxObject SpecFloat_DescriptionTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2824); }
	public @property final auto ref GFxObject SpecFloat_FloatCameraNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2820); }
	public @property final auto ref GFxObject SpecObjective_HealthTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2816); }
	public @property final auto ref GFxObject SpecObjective_HealthFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2812); }
	public @property final auto ref GFxObject SpecObjective_DescriptionTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2808); }
	public @property final auto ref GFxObject SpecObjective_ObjectiveNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2804); }
	public @property final auto ref GFxObject SpecBookmark_DescriptionTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2800); }
	public @property final auto ref GFxObject SpecBookmark_BookmarkNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2796); }
	public @property final auto ref GFxObject SpecVehicle_SkiIndicator_fillBar_speedoTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2792); }
	public @property final auto ref GFxObject SpecVehicle_SkiIndicator_fillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2788); }
	public @property final auto ref GFxObject SpecVehicle_VehicleGroup_secondaryReady() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2784); }
	public @property final auto ref GFxObject SpecVehicle_SecondaryNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2780); }
	public @property final auto ref GFxObject SpecVehicle_VehicleGroup_primaryReady() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2776); }
	public @property final auto ref GFxObject SpecVehicle_PrimaryNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2772); }
	public @property final auto ref GFxObject SpecVehicle_EnergyTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2768); }
	public @property final auto ref GFxObject SpecVehicle_EnergyFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2764); }
	public @property final auto ref GFxObject SpecVehicle_HealthTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2760); }
	public @property final auto ref GFxObject SpecVehicle_HealthFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2756); }
	public @property final auto ref GFxObject SpecVehicle_PassengerNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2752); }
	public @property final auto ref GFxObject SpecVehicle_DriverNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2748); }
	public @property final auto ref GFxObject SpecVehicle_VehicleNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2744); }
	public @property final auto ref GFxObject SpecVehicle_FlagCarried() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2740); }
	public @property final auto ref GFxObject SpecPlayer_SkiIndicator_fillBar_speedoTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2736); }
	public @property final auto ref GFxObject SpecPlayer_SkiIndicator_fillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2732); }
	public @property final auto ref GFxObject SpecPlayer_Perk2TF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2728); }
	public @property final auto ref GFxObject SpecPlayer_PerkItem2() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2724); }
	public @property final auto ref GFxObject SpecPlayer_Perk1TF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2720); }
	public @property final auto ref GFxObject SpecPlayer_PerkItem1() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2716); }
	public @property final auto ref GFxObject SpecPlayer_PackNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2712); }
	public @property final auto ref GFxObject SpecPlayer_PackIcons_count() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2708); }
	public @property final auto ref GFxObject SpecPlayer_PackIcons_icon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2704); }
	public @property final auto ref GFxObject SpecPlayer_OffhandNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2700); }
	public @property final auto ref GFxObject SpecPlayer_OffhandIcons_count() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2696); }
	public @property final auto ref GFxObject SpecPlayer_OffhandIcons_icon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2692); }
	public @property final auto ref GFxObject SpecPlayer_SecondaryAmmoTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2688); }
	public @property final auto ref GFxObject SpecPlayer_SecondaryNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2684); }
	public @property final auto ref GFxObject SpecPlayer_PrimaryAmmoTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2680); }
	public @property final auto ref GFxObject SpecPlayer_PrimaryNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2676); }
	public @property final auto ref GFxObject SpecPlayer_EnergyTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2672); }
	public @property final auto ref GFxObject SpecPlayer_EnergyFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2668); }
	public @property final auto ref GFxObject SpecPlayer_HealthTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2664); }
	public @property final auto ref GFxObject SpecPlayer_HealthFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2660); }
	public @property final auto ref GFxObject SpecPlayer_RegenTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2656); }
	public @property final auto ref GFxObject SpecPlayer_ClassNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2652); }
	public @property final auto ref GFxObject SpecPlayer_PlayerNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2648); }
	public @property final auto ref GFxObject SpecPlayer_FlagCarried() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2644); }
	public @property final auto ref GFxObject SpecObjective() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2640); }
	public @property final auto ref GFxObject SpecBookmark() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2636); }
	public @property final auto ref GFxObject SpawnCounter() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2632); }
	public @property final auto ref GFxObject SpecVehicle() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2628); }
	public @property final auto ref GFxObject SpecPlayer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2624); }
	public @property final auto ref GFxObject SpecFloat() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2620); }
	public @property final auto ref GFxObject SpecHelp() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2616); }
	public @property final auto ref GFxObject VGS() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2612); }
	public @property final auto ref GFxObject NotificationPopup() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2608); }
	public @property final auto ref GFxObject DeployStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2584); }
	public @property final auto ref GFxObject GlobalAlertTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2580); }
	public @property final auto ref GFxObject Credits_And_Streaks_CallItem() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2568); }
	public @property final auto ref GFxObject PlayerStats_Offhand1_Count() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2564); }
	public @property final auto ref GFxObject PlayerStats_Offhand1_Icon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2560); }
	public @property final auto ref GFxObject PlayerStats_PackCount() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2556); }
	public @property final auto ref GFxObject PlayerStats_PackMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2552); }
	public @property final auto ref GFxObject PlayerStats_Pack() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2548); }
	public @property final auto ref GFxObject playerStats_Offhand1() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2544); }
	public @property final auto ref GFxObject VehicleStats_VehicleSlot() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2520); }
	public @property final auto ref GFxObject VehicleStats_VehicleEnergyFill() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2516); }
	public @property final auto ref GFxObject VehicleStats_EnergyTF_TextField() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2512); }
	public @property final auto ref GFxObject VehicleStats_VehicleHealthFill() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2508); }
	public @property final auto ref GFxObject VehicleStats_HealthTF_TextField() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2504); }
	public @property final auto ref GFxObject VehicleStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2500); }
	public @property final auto ref GFxObject TeamStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2496); }
	public @property final auto ref GFxObject Offhands_And_Flag_FlagInHand() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2492); }
	public @property final auto ref GFxObject Credits_And_Streaks_CreditsGroup_CreditsMC_CreditsN() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2488); }
	public @property final auto ref GFxObject RabbitScoreboard() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2484); }
	public @property final auto ref GFxObject TeamScoreBoard() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2480); }
	public @property final auto ref GFxObject ArenaStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2476); }
	public @property final auto ref GFxObject ArenaStats_EnemyScoreTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2472); }
	public @property final auto ref GFxObject ArenaStats_FriendlyScoreTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2468); }
	public @property final auto ref GFxObject ArenaStats_roundCountTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2464); }
	public @property final auto ref GFxObject ArenaStats_arenaGameTimerTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2460); }
	public @property final auto ref GFxObject ArenaStats_EnemyManGraphic08() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2456); }
	public @property final auto ref GFxObject ArenaStats_EnemyManGraphic07() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2452); }
	public @property final auto ref GFxObject ArenaStats_EnemyManGraphic06() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2448); }
	public @property final auto ref GFxObject ArenaStats_EnemyManGraphic05() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2444); }
	public @property final auto ref GFxObject ArenaStats_EnemyManGraphic04() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2440); }
	public @property final auto ref GFxObject ArenaStats_EnemyManGraphic03() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2436); }
	public @property final auto ref GFxObject ArenaStats_EnemyManGraphic02() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2432); }
	public @property final auto ref GFxObject ArenaStats_EnemyManGraphic01() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2428); }
	public @property final auto ref GFxObject ArenaStats_FriendlyManGraphic08() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2424); }
	public @property final auto ref GFxObject ArenaStats_FriendlyManGraphic07() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2420); }
	public @property final auto ref GFxObject ArenaStats_FriendlyManGraphic06() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2416); }
	public @property final auto ref GFxObject ArenaStats_FriendlyManGraphic05() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2412); }
	public @property final auto ref GFxObject ArenaStats_FriendlyManGraphic04() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2408); }
	public @property final auto ref GFxObject ArenaStats_FriendlyManGraphic03() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2404); }
	public @property final auto ref GFxObject ArenaStats_FriendlyManGraphic02() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2400); }
	public @property final auto ref GFxObject ArenaStats_FriendlyManGraphic01() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2396); }
	public @property final auto ref GFxObject CaHControlPointE() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2392); }
	public @property final auto ref GFxObject CaHControlPointD() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2388); }
	public @property final auto ref GFxObject CaHControlPointC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2384); }
	public @property final auto ref GFxObject CaHControlPointB() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2380); }
	public @property final auto ref GFxObject CaHControlPointA() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2376); }
	public @property final auto ref GFxObject CaHStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2372); }
	public @property final auto ref GFxObject DaDStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2368); }
	public @property final auto ref GFxObject TdmStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2364); }
	public @property final auto ref GFxObject TdmStats_gameTimer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2360); }
	public @property final auto ref GFxObject TdmStats_rightFlagStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2356); }
	public @property final auto ref GFxObject TdmStats_leftFlagStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2352); }
	public @property final auto ref GFxObject CTFStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2348); }
	public @property final auto ref GFxObject CTFStats_Timer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2344); }
	public @property final auto ref GFxObject CTFStats_RightScore() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2340); }
	public @property final auto ref GFxObject CTFStats_LeftScore() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2336); }
	public @property final auto ref GFxObject CTFStats_RightFlagTimer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2332); }
	public @property final auto ref GFxObject CTFStats_LeftFlagTimer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2328); }
	public @property final auto ref GFxObject CTFStats_RightFlagStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2324); }
	public @property final auto ref GFxObject CTFStats_LeftFlagStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2320); }
	public @property final auto ref GFxObject CTFStats_RightGenTimer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2316); }
	public @property final auto ref GFxObject CTFStats_LeftGenTimer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2312); }
	public @property final auto ref GFxObject CTFStats_RightGenStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2308); }
	public @property final auto ref GFxObject CTFStats_LeftGenStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2304); }
	public @property final auto ref GFxObject RabbitStats_Timer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2300); }
	public @property final auto ref GFxObject RabbitStats_LeaderScore() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2288); }
	public @property final auto ref GFxObject RabbitStats_LeaderText() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2276); }
	public @property final auto ref GFxObject RabbitStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2272); }
	public @property final auto ref GFxObject RabbitScoreboard_PlayerHighlight() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2240); }
	public @property final auto ref GFxObject RabbitScoreboard_RankIcon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2208); }
	public @property final auto ref GFxObject RabbitScoreboard_RankTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2176); }
	public @property final auto ref GFxObject RabbitScoreboard_ClassTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2144); }
	public @property final auto ref GFxObject RabbitScoreboard_PingTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2112); }
	public @property final auto ref GFxObject RabbitScoreboard_AssistsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2080); }
	public @property final auto ref GFxObject RabbitScoreboard_KillsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2048); }
	public @property final auto ref GFxObject RabbitScoreboard_ScoreT() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2016); }
	public @property final auto ref GFxObject RabbitScoreboard_PlayerTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1984); }
	public @property final auto ref GFxObject TeamScoreboard_Blue_RankTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1920); }
	public @property final auto ref GFxObject TeamScoreboard_Blue_RankIcon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1856); }
	public @property final auto ref GFxObject TeamScoreboard_Blue_ClassTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1792); }
	public @property final auto ref GFxObject TeamScoreboard_Blue_PingTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1728); }
	public @property final auto ref GFxObject TeamScoreboard_Blue_AssistsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1664); }
	public @property final auto ref GFxObject TeamScoreboard_Blue_KillsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1600); }
	public @property final auto ref GFxObject TeamScoreboard_Blue_ScoreTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1536); }
	public @property final auto ref GFxObject TeamScoreboard_Blue_PlayerNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1472); }
	public @property final auto ref GFxObject TeamScoreboard_Red_RankTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1408); }
	public @property final auto ref GFxObject TeamScoreboard_Red_RankIcon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1344); }
	public @property final auto ref GFxObject TeamScoreboard_Red_ClassTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1280); }
	public @property final auto ref GFxObject TeamScoreboard_Red_PingTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1216); }
	public @property final auto ref GFxObject TeamScoreboard_Red_AssistsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1152); }
	public @property final auto ref GFxObject TeamScoreboard_Red_KillsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1088); }
	public @property final auto ref GFxObject TeamScoreboard_Red_ScoreTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1024); }
	public @property final auto ref GFxObject TeamScoreboard_Red_PlayerNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 960); }
	public @property final auto ref GFxObject PlayerStats_EnergyFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 956); }
	public @property final auto ref GFxObject PlayerStats_GhostHealthBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 952); }
	public @property final auto ref GFxObject PlayerStats_HealthFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 948); }
	public @property final auto ref GFxObject SpawnCounter_TimeLabel() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 944); }
	public @property final auto ref GFxObject SpawnCounter_StatusMessage() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 940); }
	public @property final auto ref GFxObject CreditsAndStreaks_Streak() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 928); }
	public @property final auto ref GFxObject CreditsAndStreaks() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 924); }
	public @property final auto ref GFxObject SkiIndicatorFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref GFxObject SkiIndicatorTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 908); }
	public @property final auto ref GFxObject SkiIndicator() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 900); }
	public @property final auto ref GFxObject CombatLog() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 896); }
	public @property final auto ref GFxObject KillMessageArea() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 892); }
	public @property final auto ref GFxObject KillCamInfo() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 888); }
	public @property final auto ref GFxObject PromptPanel() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 884); }
	public @property final auto ref GFxObject HeroStatus_outputTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 880); }
	public @property final auto ref GFxObject PlayerStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 876); }
	public @property final auto ref GFxObject Visor() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 860); }
	public @property final auto ref GFxDeviceAmmoCount deviceAmmoPoolMP() { return *cast(GFxDeviceAmmoCount*)(cast(size_t)cast(void*)this + 856); }
	public @property final auto ref GFxDeviceAmmoCount deviceAmmoCountMP() { return *cast(GFxDeviceAmmoCount*)(cast(size_t)cast(void*)this + 852); }
	public @property final auto ref GFxTrReticules Reticules() { return *cast(GFxTrReticules*)(cast(size_t)cast(void*)this + 848); }
	public @property final auto ref GFxObject sniperPowerUp() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 844); }
	public @property final auto ref TrDevice m_LastOffhand() { return *cast(TrDevice*)(cast(size_t)cast(void*)this + 832); }
	public @property final auto ref TeamInfo m_LastTeam() { return *cast(TeamInfo*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref int m_nLastVehicleAmmoPool() { return *cast(int*)(cast(size_t)cast(void*)this + 824); }
	public @property final auto ref float m_fLastVehicleEnergy() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
	public @property final auto ref int m_nLastVehicleHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 816); }
	public @property final auto ref int m_nLastSeatMask() { return *cast(int*)(cast(size_t)cast(void*)this + 812); }
	public @property final auto ref float m_fSpeedometerUpdateInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 808); }
	public @property final auto ref int m_SkiSpeedSteps() { return *cast(int*)(cast(size_t)cast(void*)this + 760); }
	public @property final auto ref int m_VGSMenuListCount() { return *cast(int*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref float m_fLastSpeedometerUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 752); }
	public @property final auto ref float m_fCurrentGhostHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 748); }
	public @property final auto ref float m_fLastActualHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref float m_fLastMaxHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref float m_fLastRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 736); }
	public @property final bool bVGSLoadouts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x200) != 0; }
	public @property final bool bVGSLoadouts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x200; } return val; }
	public @property final bool m_bNearDeathOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x100) != 0; }
	public @property final bool m_bNearDeathOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x100; } return val; }
	public @property final bool bShowingBadge() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x80) != 0; }
	public @property final bool bShowingBadge(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x80; } return val; }
	public @property final bool m_bLastIn3P() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x40) != 0; }
	public @property final bool m_bLastIn3P(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x40; } return val; }
	public @property final bool m_bShowingAmmoClip() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x20) != 0; }
	public @property final bool m_bShowingAmmoClip(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x20; } return val; }
	public @property final bool m_bLastInVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x10) != 0; }
	public @property final bool m_bLastInVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x10; } return val; }
	public @property final bool m_bGameOver() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x8) != 0; }
	public @property final bool m_bGameOver(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x8; } return val; }
	public @property final bool m_bShowPlayerStats() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x4) != 0; }
	public @property final bool m_bShowPlayerStats(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x4; } return val; }
	public @property final bool m_bLastHasFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x2) != 0; }
	public @property final bool m_bLastHasFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x2; } return val; }
	public @property final bool m_bLastSkiing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x1) != 0; }
	public @property final bool m_bLastSkiing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x1; } return val; }
	public @property final auto ref float m_fCrosshairDepth() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref int m_nLastFriendlyGeneratorTime() { return *cast(int*)(cast(size_t)cast(void*)this + 724); }
	public @property final auto ref int m_nLastEnemyGeneratorTime() { return *cast(int*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref int m_nLastOffhandCount() { return *cast(int*)(cast(size_t)cast(void*)this + 708); }
	public @property final auto ref int m_nLastPercentReload() { return *cast(int*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref int m_nLastPercentLaser() { return *cast(int*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref int m_nLastSkiSpeedStep() { return *cast(int*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref int m_nStreakEvent() { return *cast(int*)(cast(size_t)cast(void*)this + 676); }
	public @property final auto ref int m_nCrossHairMode() { return *cast(int*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref int m_nLastAmmoPool() { return *cast(int*)(cast(size_t)cast(void*)this + 668); }
	public @property final auto ref int m_nLastCredits() { return *cast(int*)(cast(size_t)cast(void*)this + 664); }
	public @property final auto ref int m_nLastPercent() { return *cast(int*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref int m_HUDStageHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref int m_HUDStageWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref int m_HUDStageOriginY() { return *cast(int*)(cast(size_t)cast(void*)this + 648); }
	public @property final auto ref int m_HUDStageOriginX() { return *cast(int*)(cast(size_t)cast(void*)this + 644); }
	public @property final auto ref TrPlayerController m_TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref TrHUD m_TrHUD() { return *cast(TrHUD*)(cast(size_t)cast(void*)this + 636); }
	final void DelegateSoundAccolade()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53281], cast(void*)0, cast(void*)0);
	}
	final void DelegateLoadVGSMenu(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53283], params.ptr, cast(void*)0);
	}
	final bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53540], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void registerReticules(GFxTrReticules MC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrReticules*)params.ptr = MC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53543], params.ptr, cast(void*)0);
	}
	final void Init(LocalPlayer Player)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = Player;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53545], params.ptr, cast(void*)0);
	}
	final void SetLoadVGSMenuDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53548], params.ptr, cast(void*)0);
	}
	final void SetSoundAccoladeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53549], params.ptr, cast(void*)0);
	}
	final void RabbitLeaderboardUpdateSlot(int Index, ScriptString PlayerName, ScriptString Score)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = PlayerName;
		*cast(ScriptString*)&params[16] = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53552], params.ptr, cast(void*)0);
	}
	final void RabbitLeaderboardUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53553], params.ptr, cast(void*)0);
	}
	final void SetFontIndex(int FontIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FontIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53554], params.ptr, cast(void*)0);
	}
	final void ClearPromptPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53557], cast(void*)0, cast(void*)0);
	}
	final void RemoveFromPromptPanel(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53558], params.ptr, cast(void*)0);
	}
	final void ClearPromptPanelMessage(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53559], params.ptr, cast(void*)0);
	}
	final void LoadVGSMenu(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53561], params.ptr, cast(void*)0);
	}
	final void AddVGSEntry(ScriptString Command, bool bBold)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(bool*)&params[12] = bBold;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53600], params.ptr, cast(void*)0);
	}
	final void AddToPromptPanelTime(ScriptString Message, float EndTime, TgSupportCommands.GC_ALERT_PRIORITY messagePriority)
	{
		ubyte params[17];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(float*)&params[12] = EndTime;
		*cast(TgSupportCommands.GC_ALERT_PRIORITY*)&params[16] = messagePriority;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53603], params.ptr, cast(void*)0);
	}
	final void AddtoPromptPanelAS(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53607], params.ptr, cast(void*)0);
	}
	final void UpdateHeroStatus(ScriptString Message, float ShowTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(float*)&params[12] = ShowTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53608], params.ptr, cast(void*)0);
	}
	final void ClearHeroStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53611], cast(void*)0, cast(void*)0);
	}
	final void SetSpeedometer(int Speed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53612], params.ptr, cast(void*)0);
	}
	final void SetPlayerRankIcon(int IconIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = IconIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53614], params.ptr, cast(void*)0);
	}
	final void SetPlayerTeamIcon(int Team)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53616], params.ptr, cast(void*)0);
	}
	final void SetPlayerClassObjects(ScriptString ClassName, int PerkIcon1, int PerkIcon2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		*cast(int*)&params[12] = PerkIcon1;
		*cast(int*)&params[16] = PerkIcon2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53618], params.ptr, cast(void*)0);
	}
	final bool ShouldShowSpectatorReticule()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53622], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SystemEnableNotifies(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53626], params.ptr, cast(void*)0);
	}
	final void ConfigureSpectatorHUD(bool bIsNeutral)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsNeutral;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53628], params.ptr, cast(void*)0);
	}
	final void ConfigureHUDState(bool bAlive, bool bReady, bool bForceCredits)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bAlive;
		*cast(bool*)&params[4] = bReady;
		*cast(bool*)&params[8] = bForceCredits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53637], params.ptr, cast(void*)0);
	}
	final void ShowChatLog()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53644], cast(void*)0, cast(void*)0);
	}
	final void HideChatLog()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53645], cast(void*)0, cast(void*)0);
	}
	final void ShowCenterHUDElements(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53647], params.ptr, cast(void*)0);
	}
	final void UpdateCreditsAndStreaks(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53650], params.ptr, cast(void*)0);
	}
	final void SetScoreboardTitle(ScriptString sValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53652], params.ptr, cast(void*)0);
	}
	final void UpdateRespawnText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53654], params.ptr, cast(void*)0);
	}
	final void SetRespawnText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53658], params.ptr, cast(void*)0);
	}
	final void UpdateRespawnTimer(int TimeRemaining)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TimeRemaining;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53660], params.ptr, cast(void*)0);
	}
	final void UpdateHUDCredits(int changeAmount, int newTotal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = changeAmount;
		*cast(int*)&params[4] = newTotal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53662], params.ptr, cast(void*)0);
	}
	final void registerHUDView(GFxObject MovieClip, bool secondPass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MovieClip;
		*cast(bool*)&params[4] = secondPass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53665], params.ptr, cast(void*)0);
	}
	final void SetHUDStageSize(int HUDOriginX, int HUDOriginY, int Width, int Height)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = HUDOriginX;
		*cast(int*)&params[4] = HUDOriginY;
		*cast(int*)&params[8] = Width;
		*cast(int*)&params[12] = Height;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53668], params.ptr, cast(void*)0);
	}
	final void SetAmmoCountTF(Weapon Wep, ScriptString Ammo)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = Wep;
		*cast(ScriptString*)&params[4] = Ammo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53669], params.ptr, cast(void*)0);
	}
	final void ClearStats(bool clearScores)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = clearScores;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53673], params.ptr, cast(void*)0);
	}
	final void ForceHealthUpdate(int NewHealth, int NewMaxHealth)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = NewHealth;
		*cast(int*)&params[4] = NewMaxHealth;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53676], params.ptr, cast(void*)0);
	}
	final int GetSkiSpeedStep(float Speed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53679], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void ConfigureSkiSpeedSteps(float SoftCap)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = SoftCap;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53683], params.ptr, cast(void*)0);
	}
	final int GetFrameNumberForVehicle(TrVehicle V)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53687], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void TickHud(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53690], params.ptr, cast(void*)0);
	}
	final void ASSetHeading(int Heading)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Heading;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53712], params.ptr, cast(void*)0);
	}
	final void TickDirectionalDamageEffect(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53745], params.ptr, cast(void*)0);
	}
	final bool ChangeDamageEffectParameter(ScriptName ParamName, float changeValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(float*)&params[8] = changeValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53750], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void PlayDamageEffectWithNoDirectionalIndicator(float Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53755], params.ptr, cast(void*)0);
	}
	final void ApplyDirectionalDamageEffect(int EffectIndex, float addValue)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EffectIndex;
		*cast(float*)&params[4] = addValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53757], params.ptr, cast(void*)0);
	}
	final void ApplyNearDeathEffect(float Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53761], params.ptr, cast(void*)0);
	}
	final void DisplayHit(Vector HitDir, int Damage, ScriptClass DamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitDir;
		*cast(int*)&params[12] = Damage;
		*cast(ScriptClass*)&params[16] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53763], params.ptr, cast(void*)0);
	}
	final void UpdateHealth(GFxMinimapHud.HeEnDisplay* Info, float NewHealth, float HealthMax)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = *Info;
		*cast(float*)&params[36] = NewHealth;
		*cast(float*)&params[40] = HealthMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53777], params.ptr, cast(void*)0);
		*Info = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	final void TickGhostHealth(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53783], params.ptr, cast(void*)0);
	}
	final void UpdateEnergy(GFxMinimapHud.HeEnDisplay* Info, float NewEnergy, float EnergyMax)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = *Info;
		*cast(float*)&params[36] = NewEnergy;
		*cast(float*)&params[40] = EnergyMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53786], params.ptr, cast(void*)0);
		*Info = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	final void SetOwnership()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53790], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53791], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53801], params.ptr, cast(void*)0);
	}
	final void RabbitScoreboardActivePlayer(int Index, bool bVisible)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53811], params.ptr, cast(void*)0);
	}
	final void RabbitLeaderboardShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53814], params.ptr, cast(void*)0);
	}
	final void TeamCTFStatsUpdateGeneratorStatus(int Team, bool bPowered)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(bool*)&params[4] = bPowered;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53820], params.ptr, cast(void*)0);
	}
	final void TeamCTFStatsUpdateGeneratorTimer(int Team, ScriptString Time)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(ScriptString*)&params[4] = Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53823], params.ptr, cast(void*)0);
	}
	final void TeamCTFStatsUpdateFlagReturnTime(int Team, ScriptString Time)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(ScriptString*)&params[4] = Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53826], params.ptr, cast(void*)0);
	}
	final void TeamCTFStatsUpdateFlagStatus(int Team, bool bAtBase)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(bool*)&params[4] = bAtBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53829], params.ptr, cast(void*)0);
	}
	final void TeamCTFStatsUpdateTeamScore(int Team, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53832], params.ptr, cast(void*)0);
	}
	final void TeamCTFStatsUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53835], params.ptr, cast(void*)0);
	}
	final void TeamCTFStatsShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53837], params.ptr, cast(void*)0);
	}
	final void TeamRabbitStatsUpdateFlagStatus(int Team)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53840], params.ptr, cast(void*)0);
	}
	final void TeamRabbitStatsUpdateTeamScore(int Team, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53842], params.ptr, cast(void*)0);
	}
	final void ASC_FriendlyTDMScoreUpdate(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53845], params.ptr, cast(void*)0);
	}
	final void ASC_EnemyTDMScoreUpdate(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53847], params.ptr, cast(void*)0);
	}
	final void TeamRabbitStatsPointBreak(int Team, ScriptString val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(ScriptString*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53849], params.ptr, cast(void*)0);
	}
	final void ASC_FriendlyTDMPointBreak(ScriptString val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53852], params.ptr, cast(void*)0);
	}
	final void ASC_EnemyTDMPointBreak(ScriptString val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53854], params.ptr, cast(void*)0);
	}
	final void ShowNotification(ScriptString val, ScriptString Val2)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		*cast(ScriptString*)&params[12] = Val2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53856], params.ptr, cast(void*)0);
	}
	final void HideNotification()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53859], cast(void*)0, cast(void*)0);
	}
	final void TeamRabbitStatsUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53860], params.ptr, cast(void*)0);
	}
	final void TeamRabbitStatsShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53862], params.ptr, cast(void*)0);
	}
	final void ArenaUpdateManGraphic(GFxObject Obj, ScriptString Path, int Index)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		*cast(ScriptString*)&params[4] = Path;
		*cast(int*)&params[16] = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53864], params.ptr, cast(void*)0);
	}
	final void ArenaStatsUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53868], params.ptr, cast(void*)0);
	}
	final void ArenaStatsUpdateRoundCount(int RoundNum)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RoundNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53870], params.ptr, cast(void*)0);
	}
	final void ArenaStatsUpdateFriendlyRoundScore(int Score)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53872], params.ptr, cast(void*)0);
	}
	final void ArenaStatsUpdateEnemyRoundScore(int Score)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53874], params.ptr, cast(void*)0);
	}
	final void ArenaStatsShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53876], params.ptr, cast(void*)0);
	}
	final void ArenaStatsPointBreak(int Team, ScriptString val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(ScriptString*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53878], params.ptr, cast(void*)0);
	}
	final void ASC_FriendlyArenaPointBreak(ScriptString val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53881], params.ptr, cast(void*)0);
	}
	final void ASC_EnemyArenaPointBreak(ScriptString val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53883], params.ptr, cast(void*)0);
	}
	final void ArenaStatsUpdateTeamScore(int Team, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53885], params.ptr, cast(void*)0);
	}
	final void ASC_FriendlyArenaLivesUpdate(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53888], params.ptr, cast(void*)0);
	}
	final void ASC_EnemyArenaLivesUpdate(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53890], params.ptr, cast(void*)0);
	}
	final void DaDStatsShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53892], params.ptr, cast(void*)0);
	}
	final void DaDUpdateFriendlyStats(int bGenOnline, ScriptString RemainingGenTime, int CapAOnline, int CapBOnline, int CapCOnline, int CoreHealth)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = bGenOnline;
		*cast(ScriptString*)&params[4] = RemainingGenTime;
		*cast(int*)&params[16] = CapAOnline;
		*cast(int*)&params[20] = CapBOnline;
		*cast(int*)&params[24] = CapCOnline;
		*cast(int*)&params[28] = CoreHealth;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53894], params.ptr, cast(void*)0);
	}
	final void DaDUpdateEnemyStats(int bGenOnline, ScriptString RemainingGenTime, int CapAOnline, int CapBOnline, int CapCOnline, int CoreHealth)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = bGenOnline;
		*cast(ScriptString*)&params[4] = RemainingGenTime;
		*cast(int*)&params[16] = CapAOnline;
		*cast(int*)&params[20] = CapBOnline;
		*cast(int*)&params[24] = CapCOnline;
		*cast(int*)&params[28] = CoreHealth;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53901], params.ptr, cast(void*)0);
	}
	final void CaHStatsShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53908], params.ptr, cast(void*)0);
	}
	final void CaHControlPointAShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53910], params.ptr, cast(void*)0);
	}
	final void CaHControlPointBShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53912], params.ptr, cast(void*)0);
	}
	final void CaHControlPointCShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53914], params.ptr, cast(void*)0);
	}
	final void CaHControlPointDShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53916], params.ptr, cast(void*)0);
	}
	final void CaHControlPointEShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53918], params.ptr, cast(void*)0);
	}
	final void CaHUpdate(int FriendlyHeld, int FriendlyPoints, int FriendlyPct, int EnemyHeld, int EnemyPoints, int EnemyPct, ScriptString GenTime)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = FriendlyHeld;
		*cast(int*)&params[4] = FriendlyPoints;
		*cast(int*)&params[8] = FriendlyPct;
		*cast(int*)&params[12] = EnemyHeld;
		*cast(int*)&params[16] = EnemyPoints;
		*cast(int*)&params[20] = EnemyPct;
		*cast(ScriptString*)&params[24] = GenTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53920], params.ptr, cast(void*)0);
	}
	final void CaHPointUpdate(ScriptString PointName, int PointType, int PctHeld)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PointName;
		*cast(int*)&params[12] = PointType;
		*cast(int*)&params[16] = PctHeld;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53928], params.ptr, cast(void*)0);
	}
	final void CaHFriendlyPointBreak(ScriptString Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53932], params.ptr, cast(void*)0);
	}
	final void CaHEnemyPointBreak(ScriptString Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53934], params.ptr, cast(void*)0);
	}
	final void TeamScoreboardShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53936], params.ptr, cast(void*)0);
	}
	final void RabbitScoreboardShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53938], params.ptr, cast(void*)0);
	}
	final void UpdateCredits(int Credits)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Credits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53940], params.ptr, cast(void*)0);
	}
	final void UpdateFlagInHand(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53942], params.ptr, cast(void*)0);
	}
	final void UpdateSkiing(bool bSkiing)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSkiing;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53944], params.ptr, cast(void*)0);
	}
	final void UpdateSkiLevel(int Level)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Level;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53946], params.ptr, cast(void*)0);
	}
	final void UpdateTeamStats(int Team)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53948], params.ptr, cast(void*)0);
	}
	final void UpdateVehicleStats(bool bVisible, int FrameId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		*cast(int*)&params[4] = FrameId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53950], params.ptr, cast(void*)0);
	}
	final void UpdateVehicleHealth(int Health, int FrameId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Health;
		*cast(int*)&params[4] = FrameId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53953], params.ptr, cast(void*)0);
	}
	final void UpdateVehicleEnergy(float Energy, int FrameId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Energy;
		*cast(int*)&params[4] = FrameId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53956], params.ptr, cast(void*)0);
	}
	final void UpdateVehicleSeat(int Index, int FrameId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(int*)&params[4] = FrameId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53959], params.ptr, cast(void*)0);
	}
	final void UpdateOffhand(int Index, bool bVisible, int FrameId, int Count)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bVisible;
		*cast(int*)&params[8] = FrameId;
		*cast(int*)&params[12] = Count;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53962], params.ptr, cast(void*)0);
	}
	final void UpdateOwnedItem(int Index, bool bVisible, int FrameId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bVisible;
		*cast(int*)&params[8] = FrameId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53967], params.ptr, cast(void*)0);
	}
	final void SoundAccolade()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53971], cast(void*)0, cast(void*)0);
	}
	final void UpdateCallIn(int Index, bool bEnable, bool bAvailable)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bEnable;
		*cast(bool*)&params[8] = bAvailable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53976], params.ptr, cast(void*)0);
	}
	final GFxObject RetrieveGFxObject(GFxObject* Obj, ScriptString ObjName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GFxObject*)params.ptr = *Obj;
		*cast(ScriptString*)&params[4] = ObjName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53980], params.ptr, cast(void*)0);
		*Obj = *cast(GFxObject*)params.ptr;
		return *cast(GFxObject*)&params[16];
	}
	final void SetGlobalAlert(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53984], params.ptr, cast(void*)0);
	}
	final void HideGlobalAlert()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53986], cast(void*)0, cast(void*)0);
	}
	final void CreateKillCamInfo(TrPlayerReplicationInfo KillerPRI, TrPlayerReplicationInfo VictimPRI, ScriptClass KillDamageType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = KillerPRI;
		*cast(TrPlayerReplicationInfo*)&params[4] = VictimPRI;
		*cast(ScriptClass*)&params[8] = KillDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53987], params.ptr, cast(void*)0);
	}
	final void ShowKillCamInfo(GFxObject Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54025], params.ptr, cast(void*)0);
	}
	final ScriptString GetWeaponNameFromDamageType(TrPlayerReplicationInfo PRI, ScriptClass FamilyInfo, ScriptClass KillDamageType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = PRI;
		*cast(ScriptClass*)&params[4] = FamilyInfo;
		*cast(ScriptClass*)&params[8] = KillDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54026], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final void SetSpectatorPlayerPanel_FlagCarried(bool bCarried)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bCarried;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54046], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_PlayerName(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54051], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_ClassName(ScriptString ClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54054], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_NextRegen(ScriptString NextRegen)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = NextRegen;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54057], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_HealthFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54060], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_Health(ScriptString Health)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Health;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54063], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_EnergyFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54066], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_Energy(ScriptString Energy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Energy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54069], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_PrimaryWeaponName(ScriptString PrimaryWeaponName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PrimaryWeaponName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54072], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_PrimaryAmmoCount(ScriptString PrimaryAmmoCount)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PrimaryAmmoCount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54075], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_SecondaryWeaponName(ScriptString SecondaryWeaponName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SecondaryWeaponName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54078], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_SecondaryAmmoCount(ScriptString SecondaryAmmoCount)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SecondaryAmmoCount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54081], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_OffhandIcon(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54084], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_OffhandAmmo(ScriptString OffhandAmmo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = OffhandAmmo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54087], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_OffhandName(ScriptString OffhandName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = OffhandName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54090], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_PackIcon(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54093], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_PackAmmo(ScriptString PackAmmo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PackAmmo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54096], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_PackName(ScriptString PackName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PackName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54099], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_Perk1Icon(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54102], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_Perk1Name(ScriptString PerkName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PerkName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54105], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_Perk2Icon(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54108], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_Perk2Name(ScriptString PerkName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PerkName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54111], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_SkiIndicatorFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54114], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_SkiIndicatorSpeed(ScriptString Speed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54117], params.ptr, cast(void*)0);
	}
	final void SetSpectatorPlayerPanel_Selected(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54120], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_FlagCarried(bool bCarried)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bCarried;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54123], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_VehicleName(ScriptString VehicleName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VehicleName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54126], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_DriverName(ScriptString DriverName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DriverName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54129], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_PassengerName(ScriptString PassengerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PassengerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54132], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_HealthFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54135], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_Health(ScriptString Health)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Health;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54138], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_EnergyFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54141], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_Energy(ScriptString Energy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Energy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54144], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_PrimaryWeaponName(ScriptString PrimaryWeaponName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PrimaryWeaponName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54147], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_PrimaryWeaponReady(int Ready)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Ready;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54150], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_PrimaryWeaponVisible(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54153], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_SecondaryWeaponName(ScriptString SecondaryWeaponName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SecondaryWeaponName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54156], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_SecondaryWeaponReady(int Ready)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Ready;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54159], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_SecondaryWeaponVisible(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54162], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_SkiIndicatorFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54165], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_SkiIndicatorSpeed(ScriptString Speed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54168], params.ptr, cast(void*)0);
	}
	final void SetSpectatorVehiclePanel_Selected(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54171], params.ptr, cast(void*)0);
	}
	final void SetSpectatorBookmarkPanel_BookmarkName(ScriptString BookmarkName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BookmarkName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54174], params.ptr, cast(void*)0);
	}
	final void SetSpectatorObjectivePanel_ObjectiveName(ScriptString ObjectiveName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ObjectiveName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54178], params.ptr, cast(void*)0);
	}
	final void SetSpectatorObjectivePanel_ObjectiveDescription(ScriptString ObjectiveDescription)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ObjectiveDescription;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54181], params.ptr, cast(void*)0);
	}
	final void SetSpectatorObjectivePanel_HealthFillBar(int FrameIndex, int Health)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		*cast(int*)&params[4] = Health;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54184], params.ptr, cast(void*)0);
	}
	final void SetSpectatorFloatCameraPanel_Name(ScriptString FloatCameraName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FloatCameraName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54188], params.ptr, cast(void*)0);
	}
	final void SetSpectatorFloatCameraPanel_Description(ScriptString Description)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Description;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54191], params.ptr, cast(void*)0);
	}
	final void ShowSpectatorControls(bool bShowControls)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShowControls;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54194], params.ptr, cast(void*)0);
	}
	final void HideVGSMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54196], cast(void*)0, cast(void*)0);
	}
	final void HideTutorial()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54197], cast(void*)0, cast(void*)0);
	}
	final void ShowFlagCarried()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54198], cast(void*)0, cast(void*)0);
	}
	final void HideFlagCarried()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54199], cast(void*)0, cast(void*)0);
	}
	final void HideKillCamInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54200], cast(void*)0, cast(void*)0);
	}
	final void UpdateVGSMenuList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54201], cast(void*)0, cast(void*)0);
	}
	final void ShowEnding(int Winner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Winner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54202], params.ptr, cast(void*)0);
	}
	final void UpdateChatLog(ScriptString Message, int ChannelColor, bool bPublic)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(int*)&params[12] = ChannelColor;
		*cast(bool*)&params[16] = bPublic;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54205], params.ptr, cast(void*)0);
	}
	final void SetPowerOscillation(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54209], params.ptr, cast(void*)0);
	}
	final void UpdateChatLogInput(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54211], params.ptr, cast(void*)0);
	}
	final void TeamScoreboardActivePlayer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54215], params.ptr, cast(void*)0);
	}
	final void TeamScoreboardUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54217], params.ptr, cast(void*)0);
	}
	final void RabbitScoreboardUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54219], params.ptr, cast(void*)0);
	}
	final void TeamScoreboardUpdateTeamScore(int Index, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54221], params.ptr, cast(void*)0);
	}
	final void UpdateTutorial(ScriptString Title, ScriptString Body, float Icon, ScriptString footer, ScriptString Suppress)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		*cast(ScriptString*)&params[12] = Body;
		*cast(float*)&params[24] = Icon;
		*cast(ScriptString*)&params[28] = footer;
		*cast(ScriptString*)&params[40] = Suppress;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54228], params.ptr, cast(void*)0);
	}
	final void AddUpdateToCombatLog(int CombatType, ScriptString Aggressor, int WeaponIcon, ScriptString Victim)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = CombatType;
		*cast(ScriptString*)&params[4] = Aggressor;
		*cast(int*)&params[16] = WeaponIcon;
		*cast(ScriptString*)&params[20] = Victim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54234], params.ptr, cast(void*)0);
	}
	final void AddUpdateToKillMessage(int RankIcon, int PlayerIcon, ScriptString PlayerName, ScriptString Message)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = RankIcon;
		*cast(int*)&params[4] = PlayerIcon;
		*cast(ScriptString*)&params[8] = PlayerName;
		*cast(ScriptString*)&params[20] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54239], params.ptr, cast(void*)0);
	}
	final void ShowSpectatorPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54245], cast(void*)0, cast(void*)0);
	}
	final void HideSpectatorPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54246], cast(void*)0, cast(void*)0);
	}
	final void ShowSpectatorVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54247], cast(void*)0, cast(void*)0);
	}
	final void HideSpectatorVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54248], cast(void*)0, cast(void*)0);
	}
	final void ShowSpectatorBookmark()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54249], cast(void*)0, cast(void*)0);
	}
	final void HideSpectatorBookmark()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54250], cast(void*)0, cast(void*)0);
	}
	final void ShowSpectatorObjectivePanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54251], cast(void*)0, cast(void*)0);
	}
	final void HideSpectatorObjectivePanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54252], cast(void*)0, cast(void*)0);
	}
	final void ShowSpectatorFloatCameraPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54253], cast(void*)0, cast(void*)0);
	}
	final void HideSpectatorFloatCameraPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54254], cast(void*)0, cast(void*)0);
	}
	final void AddFlyingIcon(int iconNumber, ScriptString Description, ScriptString Points, int bIsBadge)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = iconNumber;
		*cast(ScriptString*)&params[4] = Description;
		*cast(ScriptString*)&params[16] = Points;
		*cast(int*)&params[28] = bIsBadge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54256], params.ptr, cast(void*)0);
	}
}
