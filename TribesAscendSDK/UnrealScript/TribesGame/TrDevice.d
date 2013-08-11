module UnrealScript.TribesGame.TrDevice;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.Projectile;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrAnimNodeBlendByDeviceAnim;
import UnrealScript.TribesGame.TrProj_Tracer;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrDeviceContentData;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Weapon;
import UnrealScript.UTGame.UTWeapon;

extern(C++) interface TrDevice : UTWeapon
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
	public static immutable auto VALIDATE_HIT_DEFER = -1;
	public static immutable auto VALIDATE_HIT_REJECT = 0;
	public static immutable auto VALIDATE_HIT_APPROVE = 1;
	struct DeviceUpgrade
	{
		public @property final auto ref int DatabaseItemId() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __DatabaseItemId[4];
		public @property final auto ref int IconId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __IconId[4];
		public @property final auto ref ScriptArray!(TrDevice.DeviceModification) Modifications() { return *cast(ScriptArray!(TrDevice.DeviceModification)*)(cast(size_t)&this + 8); }
		private ubyte __Modifications[12];
	}
	struct EffectInfo
	{
		public @property final auto ref float interval() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __interval[4];
		public @property final auto ref float Value() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __Value[4];
		public @property final auto ref float Lifetime() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Lifetime[4];
		public @property final auto ref TrObject.EffectType Type() { return *cast(TrObject.EffectType*)(cast(size_t)&this + 8); }
		private ubyte __Type[1];
		public @property final auto ref ScriptClass effectClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
		private ubyte __effectClass[4];
		public @property final auto ref ubyte FireModeNum() { return *cast(ubyte*)(cast(size_t)&this + 0); }
		private ubyte __FireModeNum[1];
	}
	struct ReplicatedAmmoCount
	{
		public @property final auto ref int ClipAmmoCount() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ClipAmmoCount[4];
		public @property final auto ref int CarriedAmmoCount() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __CarriedAmmoCount[4];
	}
	struct DeviceModification
	{
		public @property final auto ref float Value() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Value[4];
		public @property final auto ref int ModType() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ModType[4];
	}
	public @property final auto ref int m_nCarriedAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 1596); }
	public @property final auto ref int m_nIconIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1688); }
	public @property final auto ref ScriptArray!(TrDevice.DeviceUpgrade) Upgrades() { return *cast(ScriptArray!(TrDevice.DeviceUpgrade)*)(cast(size_t)cast(void*)this + 2088); }
	public @property final auto ref ScriptString UpgradeDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2028); }
	public @property final auto ref int DBXPActivityId() { return *cast(int*)(cast(size_t)cast(void*)this + 1484); }
	public @property final auto ref ScriptString InfoPanelDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2000); }
	public @property final auto ref int InfoPanelDamage() { return *cast(int*)(cast(size_t)cast(void*)this + 2012); }
	public @property final auto ref int InfoPanelRadius() { return *cast(int*)(cast(size_t)cast(void*)this + 2016); }
	public @property final auto ref int InfoPanelFireRate() { return *cast(int*)(cast(size_t)cast(void*)this + 2020); }
	public @property final auto ref int InfoPanelClipSize() { return *cast(int*)(cast(size_t)cast(void*)this + 2024); }
	public @property final auto ref int DBWeaponId() { return *cast(int*)(cast(size_t)cast(void*)this + 1472); }
	public @property final auto ref int m_nReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1584); }
	public @property final bool m_bAllowFireWhileZoomed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x100000) != 0; }
	public @property final bool m_bAllowFireWhileZoomed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x100000; } return val; }
	public @property final auto ref ScriptArray!(TrDevice.EffectInfo) m_EffectInfo() { return *cast(ScriptArray!(TrDevice.EffectInfo)*)(cast(size_t)cast(void*)this + 1492); }
	public @property final auto ref ScriptArray!(TrObject.DeviceTargeterType) m_eTargetType() { return *cast(ScriptArray!(TrObject.DeviceTargeterType)*)(cast(size_t)cast(void*)this + 1504); }
	public @property final auto ref ScriptArray!(TrObject.DeviceAttackType) m_eAttackType() { return *cast(ScriptArray!(TrObject.DeviceAttackType)*)(cast(size_t)cast(void*)this + 1516); }
	public @property final auto ref ScriptArray!(int) m_PowerPoolCost() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1528); }
	public @property final auto ref ScriptArray!(ScriptClass) m_WeaponDeployables() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 1656); }
	public @property final auto ref ScriptArray!(TrObject.EffectFormOverwrite) m_EffectFormOverwrite() { return *cast(ScriptArray!(TrObject.EffectFormOverwrite)*)(cast(size_t)cast(void*)this + 1768); }
	public @property final auto ref ScriptArray!(AnimNodeSequence) m_MeshAnimSequenceNodes() { return *cast(ScriptArray!(AnimNodeSequence)*)(cast(size_t)cast(void*)this + 1840); }
	public @property final auto ref Vector m_vClientSideFireOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2136); }
	public @property final auto ref TrDeviceContentData m_ContentData() { return *cast(TrDeviceContentData*)(cast(size_t)cast(void*)this + 2132); }
	public @property final auto ref ScriptString m_sContentDataClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2120); }
	public @property final auto ref TrDevice.DeviceUpgrade BaseMod() { return *cast(TrDevice.DeviceUpgrade*)(cast(size_t)cast(void*)this + 2100); }
	public @property final auto ref TrObject.PaperDollInfo m_InGamePaperDollInfo() { return *cast(TrObject.PaperDollInfo*)(cast(size_t)cast(void*)this + 1944); }
	public @property final auto ref TrObject.PaperDollInfo m_MainMenuPaperDollInfo() { return *cast(TrObject.PaperDollInfo*)(cast(size_t)cast(void*)this + 1888); }
	public @property final auto ref Vector m_TinyWeaponsOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1876); }
	public @property final auto ref float m_fTimeBeforeInactiveReload() { return *cast(float*)(cast(size_t)cast(void*)this + 1872); }
	public @property final auto ref float m_fLastActiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1868); }
	public @property final auto ref int m_nTetherCounter() { return *cast(int*)(cast(size_t)cast(void*)this + 1864); }
	public @property final auto ref AnimSet m_NoAmmoAnimSet() { return *cast(AnimSet*)(cast(size_t)cast(void*)this + 1860); }
	public @property final auto ref float m_fFireIntervalForLastShotInClip() { return *cast(float*)(cast(size_t)cast(void*)this + 1856); }
	public @property final auto ref float m_fClientSideHitLeeway() { return *cast(float*)(cast(size_t)cast(void*)this + 1852); }
	public @property final auto ref MaterialInstanceConstant m_ZoomOverlayMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1836); }
	public @property final auto ref ScriptName m_nmZoomMaterialEffectName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1828); }
	public @property final auto ref Vector m_vZoomMeshOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1816); }
	public @property final auto ref float m_fZoomRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1812); }
	public @property final auto ref float m_fDesiredZoomFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 1808); }
	public @property final auto ref int m_ShotsFired() { return *cast(int*)(cast(size_t)cast(void*)this + 1804); }
	public @property final auto ref Vector m_vPositionPivotOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1792); }
	public @property final auto ref CameraShake m_FireCameraShake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 1788); }
	public @property final auto ref Material r_ReplicatedMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1764); }
	public @property final auto ref UObject.Vector2D m_v2WeaponLagSmoothingFactor() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1756); }
	public @property final auto ref UObject.Vector2D m_v2WeaponLagInterpSpeed() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1748); }
	public @property final auto ref int m_nMaxWeaponLagPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 1744); }
	public @property final auto ref int m_nMaxWeaponLagYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 1740); }
	public @property final auto ref UObject.Vector2D m_v2WeaponLagAimOffset() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1732); }
	public @property final auto ref float m_fMaxKickbackDistanceY() { return *cast(float*)(cast(size_t)cast(void*)this + 1728); }
	public @property final auto ref float m_fMaxKickbackDistanceX() { return *cast(float*)(cast(size_t)cast(void*)this + 1724); }
	public @property final auto ref float m_fKickbackBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1720); }
	public @property final auto ref float m_fLastKickbackTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1716); }
	public @property final auto ref UObject.Vector2D m_v2KickbackAmount() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1708); }
	public @property final auto ref UObject.Vector2D m_v2MinMaxKickbackY() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1700); }
	public @property final auto ref UObject.Vector2D m_v2MinMaxKickbackX() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1692); }
	public @property final auto ref int m_nCreditCost() { return *cast(int*)(cast(size_t)cast(void*)this + 1684); }
	public @property final auto ref ParticleSystem m_TracerBeamTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1680); }
	public @property final auto ref float m_fShowTracerDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1676); }
	public @property final auto ref int m_nTracerInterval() { return *cast(int*)(cast(size_t)cast(void*)this + 1672); }
	public @property final auto ref TrAnimNodeBlendByDeviceAnim m_DeviceAnimNode() { return *cast(TrAnimNodeBlendByDeviceAnim*)(cast(size_t)cast(void*)this + 1668); }
	public @property final auto ref float m_fLockTargetTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1652); }
	public @property final auto ref Actor c_LockedActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1648); }
	public @property final auto ref float c_fLockTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1644); }
	public @property final auto ref TrDevice.ReplicatedAmmoCount r_AmmoCount() { return *cast(TrDevice.ReplicatedAmmoCount*)(cast(size_t)cast(void*)this + 1636); }
	public @property final auto ref int s_iCheatCountAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 1632); }
	public @property final auto ref SoundCue m_ZoomOutSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1628); }
	public @property final auto ref SoundCue m_ZoomInSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1624); }
	public @property final auto ref SoundCue m_DryFireSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1620); }
	public @property final auto ref SoundCue m_ReloadAmmoSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1616); }
	public @property final auto ref float m_fPctTimeBeforeReload() { return *cast(float*)(cast(size_t)cast(void*)this + 1612); }
	public @property final auto ref float m_fReloadTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1608); }
	public @property final auto ref int m_RemainingAmmoInClip() { return *cast(int*)(cast(size_t)cast(void*)this + 1604); }
	public @property final auto ref int m_nMaxCarriedAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 1600); }
	public @property final auto ref int m_nLowAmmoWarning() { return *cast(int*)(cast(size_t)cast(void*)this + 1592); }
	public @property final auto ref int m_nAltReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1588); }
	public @property final auto ref float m_fQuickRetrieveEquipTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1580); }
	public @property final auto ref float m_fAccuracyCorrectionRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1576); }
	public @property final auto ref float m_fAimingModeAccuracyBonus() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
	public @property final auto ref float m_fAccuracyLossMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1568); }
	public @property final auto ref float m_fAccuracyLossOnShot() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
	public @property final auto ref float m_fAccuracyLossOnWeaponSwitch() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
	public @property final auto ref float m_fAccuracyLossOnJump() { return *cast(float*)(cast(size_t)cast(void*)this + 1556); }
	public @property final auto ref float m_fDefaultAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 1552); }
	public @property final bool m_bTinyWeaponsEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4000000) != 0; }
	public @property final bool m_bTinyWeaponsEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4000000; } return val; }
	public @property final bool r_bIsReloading() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2000000) != 0; }
	public @property final bool r_bIsReloading(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2000000; } return val; }
	public @property final bool m_bResumeZoomOnReloadEnd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1000000) != 0; }
	public @property final bool m_bResumeZoomOnReloadEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1000000; } return val; }
	public @property final bool m_bEndZoomOnReload() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x800000) != 0; }
	public @property final bool m_bEndZoomOnReload(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x800000; } return val; }
	public @property final bool m_bUseMeshZoomOffset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x400000) != 0; }
	public @property final bool m_bUseMeshZoomOffset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x400000; } return val; }
	public @property final bool m_bCanZoom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x200000) != 0; }
	public @property final bool m_bCanZoom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x200000; } return val; }
	public @property final bool m_bAllowHoldDownFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x80000) != 0; }
	public @property final bool m_bAllowHoldDownFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x80000; } return val; }
	public @property final bool m_bWantsToFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x40000) != 0; }
	public @property final bool m_bWantsToFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x40000; } return val; }
	public @property final bool m_bIsPassive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x20000) != 0; }
	public @property final bool m_bIsPassive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x20000; } return val; }
	public @property final bool m_bIsKickbackAdditive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x10000) != 0; }
	public @property final bool m_bIsKickbackAdditive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x10000; } return val; }
	public @property final bool m_bSpawnTracerBeams() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x8000) != 0; }
	public @property final bool m_bSpawnTracerBeams(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x8000; } return val; }
	public @property final bool m_bSpawnTracers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4000) != 0; }
	public @property final bool m_bSpawnTracers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4000; } return val; }
	public @property final bool m_bUsesDeployMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2000) != 0; }
	public @property final bool m_bUsesDeployMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2000; } return val; }
	public @property final bool c_bLocking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1000) != 0; }
	public @property final bool c_bLocking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1000; } return val; }
	public @property final bool m_bForceReplicateAmmoOnFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x800) != 0; }
	public @property final bool m_bForceReplicateAmmoOnFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x800; } return val; }
	public @property final bool r_bReadyToFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x400) != 0; }
	public @property final bool r_bReadyToFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x400; } return val; }
	public @property final bool m_bCanEarlyAbortReload() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x200) != 0; }
	public @property final bool m_bCanEarlyAbortReload(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x200; } return val; }
	public @property final bool m_bReloadBulletInChamber() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x100) != 0; }
	public @property final bool m_bReloadBulletInChamber(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x100; } return val; }
	public @property final bool m_bPendingReload() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x80) != 0; }
	public @property final bool m_bPendingReload(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x80; } return val; }
	public @property final bool m_bReloadSingles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x40) != 0; }
	public @property final bool m_bReloadSingles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x40; } return val; }
	public @property final bool m_bAllowReloads() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x20) != 0; }
	public @property final bool m_bAllowReloads(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x20; } return val; }
	public @property final bool m_bLowAmmoOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x10) != 0; }
	public @property final bool m_bLowAmmoOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x10; } return val; }
	public @property final bool m_bRequireAimMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x8) != 0; }
	public @property final bool m_bRequireAimMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x8; } return val; }
	public @property final bool m_bHighlightEnemies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4) != 0; }
	public @property final bool m_bHighlightEnemies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4; } return val; }
	public @property final bool m_bEquipEffectsApplied() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2) != 0; }
	public @property final bool m_bEquipEffectsApplied(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2; } return val; }
	public @property final bool m_bAllowMultipleTargets() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1) != 0; }
	public @property final bool m_bAllowMultipleTargets(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1; } return val; }
	public @property final auto ref float m_fConeAttackAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 1544); }
	public @property final auto ref float m_fDamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
	public @property final auto ref TrObject.EWeaponTracerType m_TracerType() { return *cast(TrObject.EWeaponTracerType*)(cast(size_t)cast(void*)this + 1489); }
	public @property final auto ref TrObject.TR_EQUIP_POINT r_eEquipAt() { return *cast(TrObject.TR_EQUIP_POINT*)(cast(size_t)cast(void*)this + 1488); }
	public @property final auto ref int DBWeaponTypeId() { return *cast(int*)(cast(size_t)cast(void*)this + 1480); }
	public @property final auto ref int DBWeaponBaseId() { return *cast(int*)(cast(size_t)cast(void*)this + 1476); }
	final float CalcHUDAimChargePercent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53737], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetAccuracy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61617], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final ubyte GetFireModeNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67278], params.ptr, cast(void*)0);
		return params[0];
	}
	final bool IsValidTarget(Actor Target, int nFireMode)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(int*)&params[4] = nFireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67280], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool IsEnemy(Actor Target)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67284], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsInsideCone(Vector SourceLookDir, Actor TargetActor, Vector StartCone, float MinCosine)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = SourceLookDir;
		*cast(Actor*)&params[12] = TargetActor;
		*cast(Vector*)&params[16] = StartCone;
		*cast(float*)&params[28] = MinCosine;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67287], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	final bool ShouldAddToImpactList(Actor HitActor, ScriptArray!(Actor.ImpactInfo) ImpactList)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		*cast(ScriptArray!(Actor.ImpactInfo)*)&params[4] = ImpactList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67293], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void TickInHandWeapon(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67298], params.ptr, cast(void*)0);
	}
	final void ResetLock()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67300], cast(void*)0, cast(void*)0);
	}
	final Actor GetLockedTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67301], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	final TrDeployable SpawnPet(bool bPet)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bPet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67303], params.ptr, cast(void*)0);
		return *cast(TrDeployable*)&params[4];
	}
	final float GetTargetAccuracy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67306], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void RestoreAccuracy(float fTimeStep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fTimeStep;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67308], params.ptr, cast(void*)0);
	}
	final void RestoreKickback(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67310], params.ptr, cast(void*)0);
	}
	final bool IsInLOS(Actor TouchedActor, Vector ExpectedLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = TouchedActor;
		*cast(Vector*)&params[4] = ExpectedLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67312], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void AttachHandsMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67316], cast(void*)0, cast(void*)0);
	}
	final TrDeviceContentData LoadMeshData()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67317], params.ptr, cast(void*)0);
		return *cast(TrDeviceContentData*)params.ptr;
	}
	final int ValidateClientReportedHit(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot, bool bDeviceIsFiring)
	{
		ubyte params[93];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		*cast(bool*)&params[88] = bDeviceIsFiring;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67319], params.ptr, cast(void*)0);
		return *cast(int*)&params[92];
	}
	final int ValidateClientReportedHitInternal(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot, bool bDeviceIsFiring)
	{
		ubyte params[93];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		*cast(bool*)&params[88] = bDeviceIsFiring;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67325], params.ptr, cast(void*)0);
		return *cast(int*)&params[92];
	}
	final ScriptString GetObjectReferencerName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67331], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final ScriptString GetObjectReferencerPackageName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67333], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67338], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67340], cast(void*)0, cast(void*)0);
	}
	final int AddAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67341], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool ReplicateAmmoOnWeaponFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67344], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ConsumeAmmo_Internal(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67346], params.ptr, cast(void*)0);
	}
	final void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67348], params.ptr, cast(void*)0);
	}
	final Actor GetTraceOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67350], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	final void AttachWeaponTo(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* MeshCpnt, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = MeshCpnt;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67353], params.ptr, cast(void*)0);
	}
	final void CreateFirstPersonHandsMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67362], cast(void*)0, cast(void*)0);
	}
	final void ChangeVisibility(bool bIsVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67365], params.ptr, cast(void*)0);
	}
	final void CentralUpdateHandsMesh(ScriptClass FamilyInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67367], params.ptr, cast(void*)0);
	}
	final void UpdateHandsMesh(ScriptClass FamilyInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67370], params.ptr, cast(void*)0);
	}
	final void CreateOverlayMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67377], cast(void*)0, cast(void*)0);
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67383], params.ptr, cast(void*)0);
	}
	final void PlayWeaponEquip()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67385], cast(void*)0, cast(void*)0);
	}
	final void OnPlayRetrieveAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67398], cast(void*)0, cast(void*)0);
	}
	final void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67399], cast(void*)0, cast(void*)0);
	}
	final void WeaponEmpty()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67404], cast(void*)0, cast(void*)0);
	}
	final void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67405], cast(void*)0, cast(void*)0);
	}
	final void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67406], cast(void*)0, cast(void*)0);
	}
	final void ClientWeaponSet(bool bOptionalSet, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOptionalSet;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67407], params.ptr, cast(void*)0);
	}
	final void PlayFireEffects(ubyte FireModeNum, Vector HitLocation)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67411], params.ptr, cast(void*)0);
	}
	final void PlayFireAnimation(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67414], params.ptr, cast(void*)0);
	}
	final void ShakeView()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67416], cast(void*)0, cast(void*)0);
	}
	final bool ShouldFireTracer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67418], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ShouldFireTracerBeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67420], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SpawnTracerBeam(Vector Start, Vector End)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67422], params.ptr, cast(void*)0);
	}
	final TrProj_Tracer SpawnTracerEffect(Vector HitLocation, float HitDistance)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(float*)&params[12] = HitDistance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67426], params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[16];
	}
	final TrProj_Tracer GetTracer(Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67434], params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[24];
	}
	final int GetNumRoundsCurrentlyInClip()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67442], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67444], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool HasAnyAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67450], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool AllowSwitchTo(Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67452], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float CalculateRangeDamageFalloff(float Dist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Dist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67455], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67463], cast(void*)0, cast(void*)0);
	}
	final void ProcessInstantHit(ubyte FiringMode, Actor.ImpactInfo Impact, int NumHits)
	{
		ubyte params[85];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(int*)&params[84] = NumHits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67472], params.ptr, cast(void*)0);
	}
	final void ServerNotifyHit(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot)
	{
		ubyte params[85];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67480], params.ptr, cast(void*)0);
	}
	final void ProcessInstantHit_Internal(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot)
	{
		ubyte params[85];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67489], params.ptr, cast(void*)0);
	}
	final float ModifyInstantHitDamage(ubyte FiringMode, Actor.ImpactInfo Impact, float Damage)
	{
		ubyte params[89];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(float*)&params[84] = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67497], params.ptr, cast(void*)0);
		return *cast(float*)&params[88];
	}
	final void ProcessEffect(Actor Target, ubyte FiringMode, TrObject.EffectType efType, bool bRemove)
	{
		ubyte params[10];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		params[4] = FiringMode;
		*cast(TrObject.EffectType*)&params[5] = efType;
		*cast(bool*)&params[8] = bRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67502], params.ptr, cast(void*)0);
	}
	final bool UsesPower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67511], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsDeviceCoolingDown(ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67513], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void EnterDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67516], cast(void*)0, cast(void*)0);
	}
	final void ExitDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67517], cast(void*)0, cast(void*)0);
	}
	final void ToggleActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67518], cast(void*)0, cast(void*)0);
	}
	final void PayAccuracyForJump()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67519], cast(void*)0, cast(void*)0);
	}
	final void PayAccuracyForWeaponSwitch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67522], cast(void*)0, cast(void*)0);
	}
	final void PayAccuracyForShot()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67524], cast(void*)0, cast(void*)0);
	}
	final Rotator AddSpreadWithAccuracy(Rotator BaseAim, float fAccuracy)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = BaseAim;
		*cast(float*)&params[12] = fAccuracy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67526], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	final Rotator ApplyKickbackToAim(Rotator Aim)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = Aim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67537], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	final UObject.Vector2D GetCurrentKickbackAmount()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67544], params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)params.ptr;
	}
	final bool AddKickback()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67547], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Rotator GetAdjustedAim(Vector StartFireLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67550], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	final bool ShowWeaponRedLowAmmoIndicator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67556], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool NeedToVisitInventoryStation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67558], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int GetAmmoCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67560], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void UpdateLowAmmoWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67562], cast(void*)0, cast(void*)0);
	}
	final ScriptClass GetProjectileClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67565], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	final Vector GetClientSideProjectileFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67567], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67581], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	final void DestroyOldestProjectileOverLimit(Projectile newProjectile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = newProjectile;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67598], params.ptr, cast(void*)0);
	}
	final void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67604], cast(void*)0, cast(void*)0);
	}
	final float MaxRange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67613], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetWeaponRange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67616], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final Rotator GetAimForCamera(Vector StartFireLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67618], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	final bool CanClientRequestReloadNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67621], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67623], cast(void*)0, cast(void*)0);
	}
	final float GetReloadTime(PlayerReplicationInfo PRI, TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[9];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(TrObject.TR_EQUIP_POINT*)&params[4] = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67654], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final void ClearMeshAnimSeqNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67690], cast(void*)0, cast(void*)0);
	}
	final void CacheMeshAnimSeqNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67691], cast(void*)0, cast(void*)0);
	}
	final void SuppressAnimNotifies(bool bSuppress)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSuppress;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67694], params.ptr, cast(void*)0);
	}
	final bool IsReloading()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67697], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void RequestReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67699], cast(void*)0, cast(void*)0);
	}
	final void OnClientReloaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67700], cast(void*)0, cast(void*)0);
	}
	final void PerformInactiveReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67701], cast(void*)0, cast(void*)0);
	}
	final int CalcAmountToLoad()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67703], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void ClientFinishedReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67732], cast(void*)0, cast(void*)0);
	}
	final void ResumeZoomOnReloadEnd()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67733], cast(void*)0, cast(void*)0);
	}
	final void PlayReloadAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67735], cast(void*)0, cast(void*)0);
	}
	final void EnableWeaponReadyToFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67738], cast(void*)0, cast(void*)0);
	}
	final void OnReloadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67739], cast(void*)0, cast(void*)0);
	}
	final void BeginAReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67740], cast(void*)0, cast(void*)0);
	}
	final int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67741], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void UpdateReplicatedCarriedAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67745], cast(void*)0, cast(void*)0);
	}
	final void GoInactiveDueToOffhand()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67746], cast(void*)0, cast(void*)0);
	}
	final void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67747], params.ptr, cast(void*)0);
	}
	final void BeginFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67749], params.ptr, cast(void*)0);
	}
	final float GetEquipTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67751], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void TimeWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67758], cast(void*)0, cast(void*)0);
	}
	final float GetPutDownTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67760], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool CanFireOffhandNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67766], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ServerOnClientDeniedFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67768], cast(void*)0, cast(void*)0);
	}
	final void ApplyEquipEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67786], cast(void*)0, cast(void*)0);
	}
	final void RemoveEquipEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67787], cast(void*)0, cast(void*)0);
	}
	final void SetPosition(UDKPawn Holder, float DeltaSeconds)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UDKPawn*)params.ptr = Holder;
		*cast(float*)&params[4] = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67788], params.ptr, cast(void*)0);
	}
	final int LagRot(int NewValue, int LastValue, float MaxDiff, int Index, float DeltaSeconds)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = NewValue;
		*cast(int*)&params[4] = LastValue;
		*cast(float*)&params[8] = MaxDiff;
		*cast(int*)&params[12] = Index;
		*cast(float*)&params[16] = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67812], params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	final bool ShouldRefire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67821], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67823], params.ptr, cast(void*)0);
	}
	final void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67825], cast(void*)0, cast(void*)0);
	}
	final void AnnounceInvalidPickup(TrPawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67826], params.ptr, cast(void*)0);
	}
	final bool DenyPickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67828], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void PutDownFast()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67832], cast(void*)0, cast(void*)0);
	}
	final void ForceEndFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67833], cast(void*)0, cast(void*)0);
	}
	final bool CanAutoDeviceFireNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67847], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void CustomFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67849], cast(void*)0, cast(void*)0);
	}
	final void AttachMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67853], cast(void*)0, cast(void*)0);
	}
	final void WeaponPlaySoundLocal(SoundCue Sound, float NoiseLoudness)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		*cast(float*)&params[4] = NoiseLoudness;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67854], params.ptr, cast(void*)0);
	}
	final void ClientWeaponThrown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67857], cast(void*)0, cast(void*)0);
	}
	final void UpdateShotsFired(bool Reset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Reset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67859], params.ptr, cast(void*)0);
	}
	final void StartZoom(UTPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67861], params.ptr, cast(void*)0);
	}
	final void EndZoom(UTPlayerController PC, bool bReturningTo3P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bReturningTo3P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67866], params.ptr, cast(void*)0);
	}
	final bool CanViewZoom()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67870], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetAltReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67872], cast(void*)0, cast(void*)0);
	}
	final void ResetAltReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67879], cast(void*)0, cast(void*)0);
	}
	final Actor.ImpactInfo CalcWeaponFire(Vector StartTrace, Vector EndTrace, ScriptArray!(Actor.ImpactInfo)* ImpactList, Vector Extent)
	{
		ubyte params[128];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = EndTrace;
		*cast(ScriptArray!(Actor.ImpactInfo)*)&params[24] = *ImpactList;
		*cast(Vector*)&params[36] = Extent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67884], params.ptr, cast(void*)0);
		*ImpactList = *cast(ScriptArray!(Actor.ImpactInfo)*)&params[24];
		return *cast(Actor.ImpactInfo*)&params[48];
	}
	final void PlayDryFireZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67908], cast(void*)0, cast(void*)0);
	}
	final void BuffMaxCarriedAmmo(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67909], params.ptr, cast(void*)0);
	}
	final float GetMaxAmmoCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67911], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final int GetBasePickupAmmoAmount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67922], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void ServerStartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67924], params.ptr, cast(void*)0);
	}
	final void UpdateWeaponMICs()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67927], cast(void*)0, cast(void*)0);
	}
}
