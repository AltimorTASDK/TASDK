module UnrealScript.TribesGame.TrValueModifier;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrValueModifier : UObject
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
	public @property final auto ref float m_fWeaponSwitchPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref float m_fPrimaryWeaponReloadBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float m_fSecondaryWeaponReloadBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref int m_nPrimaryWeaponIncreasedClipSizeBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref int m_nSecondaryWeaponIncreasedClipSizeBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref float m_fUpgradeCostBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float m_fPrimaryWeaponArmorPenetrationBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float m_fSecondaryWeaponArmorPenetrationBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float m_fOffhandArmorPenetrationBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref float m_fDeployableHealthBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float m_fDeployableRangeBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float m_fTurretAcquireTargetBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref float m_fAcquireTimeByEnemyTurretPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref int m_nExtraOffhandAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int m_nExtraGrenadesFromPickupBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref int m_nExtraPrimaryAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref int m_nExtraSecondaryAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float m_fMaxJettingSpeedBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float m_fTerminalJettingSpeedBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float m_fMaxSkiSpeedBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float m_fTerminalSkiSpeedBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float m_fPeakSkiControlSpeedBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float m_fSkiControlSigmaSquareBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float m_fMaxSkiControlBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref float m_fGroundSpeedPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref float m_fMaxStoppingDistancePctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref float m_fMassPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref float m_fExtraEnergyBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float m_fHealthBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float m_fEnergyRegenRateBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float m_fTimeToRegenHealthBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref float m_fSplatDamageBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref float m_fStealthPackPulseTimeBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final bool m_bHasDetermination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x10) != 0; }
	public @property final bool m_bHasDetermination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x10; } return val; }
	public @property final auto ref float m_fHealthRegenRateBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float m_fShieldPackEffectivenessBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float m_fReceiveMeleeDamageBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float m_fSelfDamagePct() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final bool m_bIgnoreGrenadeSecondaryOnSelf() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x2000) != 0; }
	public @property final bool m_bIgnoreGrenadeSecondaryOnSelf(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x2000; } return val; }
	public @property final auto ref float m_fEnergyDrainPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
	public @property final bool m_bPotentialEnergy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x100) != 0; }
	public @property final bool m_bPotentialEnergy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x100; } return val; }
	public @property final bool m_bPotentialEnergyFallDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x200) != 0; }
	public @property final bool m_bPotentialEnergyFallDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x200; } return val; }
	public @property final auto ref float m_fPotentialEnergyDamageTransferPct() { return *cast(float*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref float m_fWhiteOutInterpSpeedPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
	public @property final bool m_bStickyHands() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x1) != 0; }
	public @property final bool m_bStickyHands(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x1; } return val; }
	public @property final bool m_bRadarLink() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x400) != 0; }
	public @property final bool m_bRadarLink(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x400; } return val; }
	public @property final auto ref float m_fIgnorePulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 392); }
	public @property final bool m_bRage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x8000) != 0; }
	public @property final bool m_bRage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x8000; } return val; }
	public @property final auto ref float m_fRageEnergyRegenBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref float m_fRageHealthRestorationPct() { return *cast(float*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref float m_fRageMassPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref float m_fRageLength() { return *cast(float*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref float m_fJammerPackRadiusPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
	public @property final bool m_bClothesline() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x80) != 0; }
	public @property final bool m_bClothesline(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x80; } return val; }
	public @property final bool m_bFlagReach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x800) != 0; }
	public @property final bool m_bFlagReach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x800; } return val; }
	public @property final auto ref int m_nFlagReachTier() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int m_nExtraCreditsFromBeltKills() { return *cast(int*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref int m_nCreditsFromKillsBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref float m_fVehicleCostBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float m_fSensorDistancePctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float m_fPackEnergyCostBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref int m_nExtraDeployablesOutBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref float m_fFasterThrowBeltBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref float m_fOffhandDamageRadiusBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float m_fBlinkPackPotencyBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref float m_fBuildupBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final bool m_bSonicPunch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x4000) != 0; }
	public @property final bool m_bSonicPunch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x4000; } return val; }
	public @property final auto ref float m_fSonicPunchDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref float m_fSonicPunchKnockback() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref float m_fBackstabMeleeDamagePctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final bool m_bVictimDropFlagOnMelee() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x20) != 0; }
	public @property final bool m_bVictimDropFlagOnMelee(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x20; } return val; }
	public @property final bool m_bCanDamageRepairEnemyObjectives() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x8) != 0; }
	public @property final bool m_bCanDamageRepairEnemyObjectives(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x8; } return val; }
	public @property final auto ref float m_fRepairRateBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float m_fPrimaryWeaponRangeBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float m_fSecondaryWeaponRangeBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float m_fAmmoFromPickupBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref float m_fHealthFromPickupBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref float m_fEnergyFromPickupBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final bool m_bAmmoPickupReach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x1000) != 0; }
	public @property final bool m_bAmmoPickupReach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x1000; } return val; }
	public @property final auto ref int m_nExtraMinesOutBuff() { return *cast(int*)(cast(size_t)cast(void*)this + 260); }
	public @property final bool m_bCanDetectTraps() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x4) != 0; }
	public @property final bool m_bCanDetectTraps(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x4; } return val; }
	public @property final auto ref float m_fRepairDeployableRateBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float m_fPrimaryWeaponEnergyCostPctBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref float m_fDeployedTurretArmorPenetrationBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref float m_fMultiCrewedVehicleDamageProtectionPct() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref float m_fVehicleRunOverDamageProtectionPct() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	public @property final bool m_bEjectionSeat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x40) != 0; }
	public @property final bool m_bEjectionSeat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x40; } return val; }
	public @property final bool m_bCanCallInSupplyDrop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x2) != 0; }
	public @property final bool m_bCanCallInSupplyDrop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x2; } return val; }
	public @property final auto ref float m_fTimeToRegenEnergyBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float m_fVehicleExtraEnergyBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref float m_fVehicleExtraHealthBuffPct() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref int DatabaseItemId() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref int IconId() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113990], cast(void*)0, cast(void*)0);
	}
	final void Merge(TrValueModifier ModifierToMerge)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrValueModifier*)params.ptr = ModifierToMerge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113991], params.ptr, cast(void*)0);
	}
	final void MergeClass(ScriptClass ModifierClassToMerge)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ModifierClassToMerge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113993], params.ptr, cast(void*)0);
	}
	final void MergeModification(int ModType, float Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ModType;
		*cast(float*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113995], params.ptr, cast(void*)0);
	}
	final void LogModifiedValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113998], cast(void*)0, cast(void*)0);
	}
}
