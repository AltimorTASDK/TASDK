module UnrealScript.UTGame.UTGame;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.UDKBase.UDKGame;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UTGame.UTTeamInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.Engine.GameplayEventsWriter;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.UTGame.UTMutator;
import UnrealScript.UTGame.UTBot;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.SpeechRecognition;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.PickupFactory;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UTGame.UTCharInfo;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.UTGame.UTVehicleFactory;

extern(C++) interface UTGame : UDKGame
{
	enum EVoiceChannel : ubyte
	{
		VC_Spectators = 0,
		VC_Team1 = 1,
		VC_Team2 = 2,
		VC_MAX = 3,
	}
	struct GameMapCycle
	{
		public @property final auto ref ScriptArray!(ScriptString) Maps() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 8); }
		private ubyte __Maps[12];
		public @property final auto ref ScriptName GameClassName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __GameClassName[8];
	}
	struct ActiveBotInfo
	{
		public @property final bool bInUse() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bInUse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bInUse[4];
		public @property final auto ref ScriptString BotName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __BotName[12];
	}
	public @property final auto ref UTVehicle VehicleList() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 1080); }
	public @property final auto ref int ResetTimeDelay() { return *cast(int*)(cast(size_t)cast(void*)this + 1076); }
	public @property final bool bWarmupRound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x1000) != 0; }
	public @property final bool bWarmupRound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x1000; } return val; }
	public @property final auto ref int WarmupTime() { return *cast(int*)(cast(size_t)cast(void*)this + 956); }
	public @property final auto ref ScriptArray!(ScriptClass) DefaultInventory() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 1100); }
	public @property final auto ref ScriptArray!(ScriptString) MapPrefixes() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 1116); }
	public @property final auto ref ScriptArray!(UTGame.GameMapCycle) GameSpecificMapCycles() { return *cast(ScriptArray!(UTGame.GameMapCycle)*)(cast(size_t)cast(void*)this + 1148); }
	public @property final auto ref ScriptArray!(UTGame.ActiveBotInfo) ActiveBots() { return *cast(ScriptArray!(UTGame.ActiveBotInfo)*)(cast(size_t)cast(void*)this + 1164); }
	// WARNING: Property 'GameplayEventsWriter' has the same name as a defined type!
	public @property final auto ref ScriptString GameplayEventsWriterClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1240); }
	public @property final auto ref ScriptName MidgameScorePanelTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1232); }
	public @property final auto ref Pawn Sniper() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1228); }
	public @property final auto ref float LastManDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1224); }
	public @property final auto ref float LastEncouragementTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1220); }
	public @property final auto ref SpeechRecognition SpeechRecognitionData() { return *cast(SpeechRecognition*)(cast(size_t)cast(void*)this + 1216); }
	public @property final auto ref ScriptString EndOfMatchRulesTemplateStr_Time() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1204); }
	public @property final auto ref ScriptString EndOfMatchRulesTemplateStr_ScoringSingle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1192); }
	public @property final auto ref ScriptString EndOfMatchRulesTemplateStr_Scoring() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1180); }
	public @property final auto ref NavigationPoint ScriptedStartSpot() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1176); }
	public @property final auto ref int MapCycleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
	public @property final auto ref ScriptClass BotClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1144); }
	public @property final auto ref ScriptString DemoPrefix() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1132); }
	public @property final auto ref ScriptClass ConsolePlayerControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1128); }
	public @property final auto ref ScriptClass VictoryMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1112); }
	public @property final auto ref ScriptString EnemyRosterName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1088); }
	public @property final auto ref UTTeamInfo EnemyRoster() { return *cast(UTTeamInfo*)(cast(size_t)cast(void*)this + 1084); }
	public @property final auto ref int ResetCountDown() { return *cast(int*)(cast(size_t)cast(void*)this + 1072); }
	public @property final auto ref Actor EndGameFocus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1068); }
	public @property final auto ref ScriptString GameUMenuType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1056); }
	public @property final auto ref ScriptString RulesMenuType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1044); }
	public @property final auto ref int EndMessageCounter() { return *cast(int*)(cast(size_t)cast(void*)this + 1040); }
	public @property final auto ref int EndMessageWait() { return *cast(int*)(cast(size_t)cast(void*)this + 1036); }
	public @property final auto ref float EndTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1032); }
	public @property final auto ref NavigationPoint LastStartSpot() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1028); }
	public @property final auto ref NavigationPoint LastPlayerStartSpot() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1024); }
	public @property final auto ref int PlayerDeaths() { return *cast(int*)(cast(size_t)cast(void*)this + 1020); }
	public @property final auto ref int PlayerKills() { return *cast(int*)(cast(size_t)cast(void*)this + 1016); }
	public @property final auto ref float AdjustedDifficulty() { return *cast(float*)(cast(size_t)cast(void*)this + 1012); }
	public @property final auto ref int CountDown() { return *cast(int*)(cast(size_t)cast(void*)this + 1008); }
	public @property final auto ref int PendingMatchElapsedTime() { return *cast(int*)(cast(size_t)cast(void*)this + 1004); }
	public @property final auto ref int LateEntryLives() { return *cast(int*)(cast(size_t)cast(void*)this + 1000); }
	public @property final auto ref int DefaultMaxLives() { return *cast(int*)(cast(size_t)cast(void*)this + 996); }
	public @property final auto ref float SpawnProtectionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 992); }
	public @property final auto ref int DesiredPlayerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 988); }
	public @property final auto ref ubyte WeaponTauntUsed() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 965); }
	public @property final auto ref ubyte StartupStage() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 964); }
	public @property final auto ref int WarmupRemaining() { return *cast(int*)(cast(size_t)cast(void*)this + 960); }
	public @property final auto ref int RestartWait() { return *cast(int*)(cast(size_t)cast(void*)this + 952); }
	public @property final auto ref int MinNetPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 948); }
	public @property final auto ref int ClientProcessingTimeout() { return *cast(int*)(cast(size_t)cast(void*)this + 944); }
	public @property final auto ref int NetWait() { return *cast(int*)(cast(size_t)cast(void*)this + 940); }
	public @property final auto ref float BotRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 936); }
	public @property final auto ref float EndTimeDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 932); }
	public @property final auto ref int ServerSkillLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 928); }
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref ScriptString Acronym() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 904); }
	public @property final bool bGivePhysicsGun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x40) != 0; }
	public @property final bool bGivePhysicsGun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x40; } return val; }
	public @property final bool bLogGameplayEvents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x20) != 0; }
	public @property final bool bLogGameplayEvents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x20; } return val; }
	public @property final bool bUseClassicHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x10) != 0; }
	public @property final bool bUseClassicHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x10; } return val; }
	public @property final bool bIgnoreTeamForVoiceChat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x8) != 0; }
	public @property final bool bIgnoreTeamForVoiceChat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x8; } return val; }
	public @property final bool bNecrisLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x4) != 0; }
	public @property final bool bNecrisLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x4; } return val; }
	public @property final bool bForceMidGameMenuAtStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x2) != 0; }
	public @property final bool bForceMidGameMenuAtStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x2; } return val; }
	public @property final bool bMidGameHasMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x1) != 0; }
	public @property final bool bMidGameHasMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x1; } return val; }
	public @property final bool bPlayedOneKill() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x80000000) != 0; }
	public @property final bool bPlayedOneKill(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x80000000; } return val; }
	public @property final bool bPlayedFiveKills() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x40000000) != 0; }
	public @property final bool bPlayedFiveKills(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x40000000; } return val; }
	public @property final bool bPlayedTenKills() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x20000000) != 0; }
	public @property final bool bPlayedTenKills(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x20000000; } return val; }
	public @property final bool bScoreDeaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x10000000) != 0; }
	public @property final bool bScoreDeaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x10000000; } return val; }
	public @property final bool bAllowKeyboardAndMouse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x8000000) != 0; }
	public @property final bool bAllowKeyboardAndMouse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x8000000; } return val; }
	public @property final bool bConsoleServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x4000000) != 0; }
	public @property final bool bConsoleServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x4000000; } return val; }
	public @property final bool bAllowHoverboard() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x2000000) != 0; }
	public @property final bool bAllowHoverboard(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x2000000; } return val; }
	public @property final bool bStartWithLockerWeaps() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x1000000) != 0; }
	public @property final bool bStartWithLockerWeaps(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x1000000; } return val; }
	public @property final bool bUndrivenVehicleDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x800000) != 0; }
	public @property final bool bUndrivenVehicleDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x800000; } return val; }
	public @property final bool bDemoMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x400000) != 0; }
	public @property final bool bDemoMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x400000; } return val; }
	public @property final bool bMustJoinBeforeStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x200000) != 0; }
	public @property final bool bMustJoinBeforeStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x200000; } return val; }
	public @property final bool bPlayerBecameActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x100000) != 0; }
	public @property final bool bPlayerBecameActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x100000; } return val; }
	public @property final bool bMustHaveMultiplePlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x80000) != 0; }
	public @property final bool bMustHaveMultiplePlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x80000; } return val; }
	public @property final bool bOverTimeBroadcast() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x40000) != 0; }
	public @property final bool bOverTimeBroadcast(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x40000; } return val; }
	public @property final bool bFinalStartup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x20000) != 0; }
	public @property final bool bFinalStartup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x20000; } return val; }
	public @property final bool bStartedCountDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x10000) != 0; }
	public @property final bool bStartedCountDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x10000; } return val; }
	public @property final bool bSkipPlaySound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x8000) != 0; }
	public @property final bool bSkipPlaySound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x8000; } return val; }
	public @property final bool bQuickStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x4000) != 0; }
	public @property final bool bQuickStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x4000; } return val; }
	public @property final bool bFirstBlood() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x2000) != 0; }
	public @property final bool bFirstBlood(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x2000; } return val; }
	public @property final bool bShouldWaitForNetPlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x800) != 0; }
	public @property final bool bShouldWaitForNetPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x800; } return val; }
	public @property final bool bWaitForNetPlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x400) != 0; }
	public @property final bool bWaitForNetPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x400; } return val; }
	public @property final bool bTempForceRespawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x200) != 0; }
	public @property final bool bTempForceRespawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x200; } return val; }
	public @property final bool bForceRespawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x100) != 0; }
	public @property final bool bForceRespawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x100; } return val; }
	public @property final bool bPlayersMustBeReady() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x80) != 0; }
	public @property final bool bPlayersMustBeReady(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x80; } return val; }
	public @property final bool bAutoNumBots() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x40) != 0; }
	public @property final bool bAutoNumBots(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x40; } return val; }
	public @property final bool bCustomBots() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x20) != 0; }
	public @property final bool bCustomBots(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x20; } return val; }
	public @property final bool bPlayersVsBots() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x10) != 0; }
	public @property final bool bPlayersVsBots(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x10; } return val; }
	public @property final bool bSoaking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x8) != 0; }
	public @property final bool bSoaking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x8; } return val; }
	public @property final bool bTeamScoreRounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x4) != 0; }
	public @property final bool bTeamScoreRounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x4; } return val; }
	public @property final bool bWeaponStay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x2) != 0; }
	public @property final bool bWeaponStay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x2; } return val; }
	public @property final bool bExportMenuData() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x1) != 0; }
	public @property final bool bExportMenuData(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x1; } return val; }
	final Actor GetAutoObjectiveFor(UTPlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36535], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final bool ForceRespawn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36762], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool JustStarted(float MaxElapsedTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = MaxElapsedTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39767], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final UTTeamInfo GetBotTeam(int TeamBots, bool bUseTeamIndex, int TeamIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TeamBots;
		*cast(bool*)&params[4] = bUseTeamIndex;
		*cast(int*)&params[8] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41546], params.ptr, cast(void*)0);
		return *cast(UTTeamInfo*)&params[12];
	}
	final bool UseLowGore(WorldInfo WI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(WorldInfo*)params.ptr = WI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41762], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool TooManyBots(Controller botToRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = botToRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42769], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44615], cast(void*)0, cast(void*)0);
	}
	final bool AllowMutator(ScriptString MutatorClassName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutatorClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44618], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final ScriptClass SetGameType(ScriptString MapName, ScriptString Options, ScriptString Portal)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		*cast(ScriptString*)&params[12] = Options;
		*cast(ScriptString*)&params[24] = Portal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44621], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[36];
	}
	final void DriverEnteredVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44631], params.ptr, cast(void*)0);
	}
	final void DriverLeftVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44636], params.ptr, cast(void*)0);
	}
	final bool AllowBecomeActivePlayer(PlayerController P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44640], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44643], cast(void*)0, cast(void*)0);
	}
	final void FindNewObjectives(UTGameObjective DisabledObjective)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = DisabledObjective;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44646], params.ptr, cast(void*)0);
	}
	final void NotifyNavigationChanged(NavigationPoint N)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44648], params.ptr, cast(void*)0);
	}
	final ScriptString ParseKillMessage(ScriptString KillerName, ScriptString VictimName, ScriptString DeathMessage)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = KillerName;
		*cast(ScriptString*)&params[12] = VictimName;
		*cast(ScriptString*)&params[24] = DeathMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44651], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[36];
	}
	final bool SkipPlaySound()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44656], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetGameSpeed(float T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44658], params.ptr, cast(void*)0);
	}
	final void BroadcastDeathMessage(Controller Killer, Controller Other, ScriptClass DamageType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		*cast(ScriptClass*)&params[8] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44661], params.ptr, cast(void*)0);
	}
	final void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44665], params.ptr, cast(void*)0);
	}
	final void AdjustSkill(AIController B, PlayerController P, bool bWinner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AIController*)params.ptr = B;
		*cast(PlayerController*)&params[4] = P;
		*cast(bool*)&params[8] = bWinner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44671], params.ptr, cast(void*)0);
	}
	final void Killed(Controller Killer, Controller KilledPlayer, Pawn KilledPawn, ScriptClass DamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = KilledPlayer;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44676], params.ptr, cast(void*)0);
	}
	final void InitGame(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44695], params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
	final void GenericPlayerInitialization(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44700], params.ptr, cast(void*)0);
	}
	final bool SetPause(PlayerController PC, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* CanUnpauseDelegate)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = CanUnpauseDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44702], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final int LevelRecommendedPlayers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44706], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final PlayerController Login(ScriptString Portal, ScriptString Options, OnlineSubsystem.UniqueNetId UniqueId, ScriptString* ErrorMessage)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Portal;
		*cast(ScriptString*)&params[12] = Options;
		*cast(OnlineSubsystem.UniqueNetId*)&params[24] = UniqueId;
		*cast(ScriptString*)&params[32] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44711], params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[32];
		return *cast(PlayerController*)&params[44];
	}
	final bool ShouldRespawn(PickupFactory Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PickupFactory*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44721], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool WantFastSpawnFor(AIController B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44724], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float SpawnWait(AIController B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44727], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void RestartGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44731], cast(void*)0, cast(void*)0);
	}
	final bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44732], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void SetEndGameFocus(PlayerReplicationInfo Winner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44738], params.ptr, cast(void*)0);
	}
	final bool AtCapacity(bool bSpectator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSpectator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44742], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PostLogin(PlayerController NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44747], params.ptr, cast(void*)0);
	}
	final void UpdateGameSettingsCounts()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44751], cast(void*)0, cast(void*)0);
	}
	final void AssignHoverboard(UTPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44755], params.ptr, cast(void*)0);
	}
	final int GetHandicapNeed(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44757], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void RestartPlayer(Controller aPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = aPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44760], params.ptr, cast(void*)0);
	}
	final void CampaignSkillAdjust(UTBot aBot)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = aBot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44768], params.ptr, cast(void*)0);
	}
	final void AddDefaultInventory(Pawn PlayerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = PlayerPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44770], params.ptr, cast(void*)0);
	}
	final bool CanSpectate(PlayerController Viewer, PlayerReplicationInfo ViewTarget)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = Viewer;
		*cast(PlayerReplicationInfo*)&params[4] = ViewTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44777], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void ChangeName(Controller Other, ScriptString S, bool bNameChange)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(ScriptString*)&params[4] = S;
		*cast(bool*)&params[16] = bNameChange;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44781], params.ptr, cast(void*)0);
	}
	final void DiscardInventory(Pawn Other, Controller Killer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Controller*)&params[4] = Killer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44786], params.ptr, cast(void*)0);
	}
	final void Logout(Controller Exiting)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Exiting;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44790], params.ptr, cast(void*)0);
	}
	final void KillBots()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44795], cast(void*)0, cast(void*)0);
	}
	final void KillOthers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44797], cast(void*)0, cast(void*)0);
	}
	final void KillThis()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44801], cast(void*)0, cast(void*)0);
	}
	final void KillBot(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44804], params.ptr, cast(void*)0);
	}
	final bool NeedPlayers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44806], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final UTBot AddBot(ScriptString BotName, bool bUseTeamIndex, int TeamIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BotName;
		*cast(bool*)&params[12] = bUseTeamIndex;
		*cast(int*)&params[16] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44808], params.ptr, cast(void*)0);
		return *cast(UTBot*)&params[20];
	}
	final UTBot SpawnBot(ScriptString BotName, bool bUseTeamIndex, int TeamIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BotName;
		*cast(bool*)&params[12] = bUseTeamIndex;
		*cast(int*)&params[16] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44815], params.ptr, cast(void*)0);
		return *cast(UTBot*)&params[20];
	}
	final void InitializeBot(UTBot NewBot, UTTeamInfo BotTeam, UTCharInfo.CharacterInfo* BotInfo)
	{
		ubyte params[120];
		params[] = 0;
		*cast(UTBot*)params.ptr = NewBot;
		*cast(UTTeamInfo*)&params[4] = BotTeam;
		*cast(UTCharInfo.CharacterInfo*)&params[8] = *BotInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44825], params.ptr, cast(void*)0);
		*BotInfo = *cast(UTCharInfo.CharacterInfo*)&params[8];
	}
	final void InitGameReplicationInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44834], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetMapTypeRule()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44844], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final ScriptString GetEndGameConditionRule()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44846], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void NotifySpree(UTPlayerReplicationInfo Other, int Num)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = Other;
		*cast(int*)&params[4] = Num;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44848], params.ptr, cast(void*)0);
	}
	final void EndSpree(UTPlayerReplicationInfo Killer, UTPlayerReplicationInfo Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = Killer;
		*cast(UTPlayerReplicationInfo*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44853], params.ptr, cast(void*)0);
	}
	final void UpdateGameplayMuteList(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44857], params.ptr, cast(void*)0);
	}
	final void SetupPlayerMuteList(UTPlayerController PC, bool bForceSpectatorChannel)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bForceSpectatorChannel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44860], params.ptr, cast(void*)0);
	}
	final void RemovePlayerFromMuteLists(UTPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44869], params.ptr, cast(void*)0);
	}
	final void ResetAllPlayerMuteListsToSpectatorChannel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44872], cast(void*)0, cast(void*)0);
	}
	final void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44874], cast(void*)0, cast(void*)0);
	}
	final void EndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44877], params.ptr, cast(void*)0);
	}
	final void EndLogging(ScriptString Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44885], params.ptr, cast(void*)0);
	}
	final NavigationPoint FindPlayerStart(Controller Player, ubyte InTeam, ScriptString IncomingName)
	{
		ubyte params[21];
		params[] = 0;
		*cast(Controller*)params.ptr = Player;
		params[4] = InTeam;
		*cast(ScriptString*)&params[8] = IncomingName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44887], params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[20];
	}
	final bool DominatingVictory()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44893], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsAWinner(PlayerController C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44895], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PlayEndOfMatchMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44898], cast(void*)0, cast(void*)0);
	}
	final void PlayRegularEndOfMatchMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44900], cast(void*)0, cast(void*)0);
	}
	final void PlayStartupMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44902], cast(void*)0, cast(void*)0);
	}
	final void EndRound(Actor EndRoundFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = EndRoundFocus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44905], params.ptr, cast(void*)0);
	}
	final bool MatchIsInProgress()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44908], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void AddInitialBots()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44910], cast(void*)0, cast(void*)0);
	}
	final int CalculatedNetSpeed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44912], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool IsConsoleDedicatedServer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44915], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final PlayerStart ChoosePlayerStart(Controller Player, ubyte InTeam)
	{
		ubyte params[9];
		params[] = 0;
		*cast(Controller*)params.ptr = Player;
		params[4] = InTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45001], params.ptr, cast(void*)0);
		return *cast(PlayerStart*)&params[8];
	}
	final float RatePlayerStart(PlayerStart P, ubyte Team, Controller Player)
	{
		ubyte params[13];
		params[] = 0;
		*cast(PlayerStart*)params.ptr = P;
		params[4] = Team;
		*cast(Controller*)&params[8] = Player;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45014], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final bool CheckMaxLives(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45023], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45029], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void RegisterVehicle(UTVehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45034], params.ptr, cast(void*)0);
	}
	final void ActivateVehicleFactory(UTVehicleFactory VF)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTVehicleFactory*)params.ptr = VF;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45036], params.ptr, cast(void*)0);
	}
	final void ViewObjective(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45043], params.ptr, cast(void*)0);
	}
	final void AddMutator(ScriptString mutname, bool bUserAdded)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = mutname;
		*cast(bool*)&params[12] = bUserAdded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45049], params.ptr, cast(void*)0);
	}
	final bool AllowClientToTeleport(UTPlayerReplicationInfo ClientPRI, Actor DestinationActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = ClientPRI;
		*cast(Actor*)&params[4] = DestinationActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45052], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void ShowPathTo(PlayerController P, int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45056], params.ptr, cast(void*)0);
	}
	final void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45059], params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	final void PostSeamlessTravel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45064], cast(void*)0, cast(void*)0);
	}
	final void HandleSeamlessTravelPlayer(Controller* C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = *C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45067], params.ptr, cast(void*)0);
		*C = *cast(Controller*)params.ptr;
	}
	final UTMutator GetBaseUTMutator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45074], params.ptr, cast(void*)0);
		return *cast(UTMutator*)params.ptr;
	}
	final void ProcessSpeechRecognition(UTPlayerController Speaker, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45078], params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
	}
	final void WriteOnlinePlayerScores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45083], cast(void*)0, cast(void*)0);
	}
	final int GetCurrentMapCycleIndex(ScriptArray!(ScriptString)* MapList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *MapList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45090], params.ptr, cast(void*)0);
		*MapList = *cast(ScriptArray!(ScriptString)*)params.ptr;
		return *cast(int*)&params[12];
	}
	final ScriptString GetNextMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45094], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void ProcessServerTravel(ScriptString URL, bool bAbsolute)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		*cast(bool*)&params[12] = bAbsolute;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45099], params.ptr, cast(void*)0);
	}
	final void ContinueSeamlessTravel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45103], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetEndOfMatchRules(int InGoalScore, int InTimeLimit)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = InGoalScore;
		*cast(int*)&params[4] = InTimeLimit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45104], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	final bool GetLocationFor(Pawn StatusPawn, Actor* LocationObject, int* MessageIndex, int LocationSpeechOffset)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = StatusPawn;
		*cast(Actor*)&params[4] = *LocationObject;
		*cast(int*)&params[8] = *MessageIndex;
		*cast(int*)&params[12] = LocationSpeechOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45109], params.ptr, cast(void*)0);
		*LocationObject = *cast(Actor*)&params[4];
		*MessageIndex = *cast(int*)&params[8];
		return *cast(bool*)&params[16];
	}
	final bool AllowCheats(PlayerController P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45121], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void UpdateGameSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45124], cast(void*)0, cast(void*)0);
	}
}
