module UnrealScript.UTGame.UTTeamGame;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.UTGame.UTDeathmatch;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.UTGame.UTTeamInfo;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.UTGame.UTBot;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface UTTeamGame : UTDeathmatch
{
	public @property final auto ref ScriptName FlagKillMessageName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1320); }
	public @property final auto ref float SwapRequestTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1316); }
	public @property final auto ref PlayerController PendingTeamSwap() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 1312); }
	public @property final auto ref ScriptClass TeamScoreMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1308); }
	public @property final auto ref ScriptString TeamFactions() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1284); }
	public @property final auto ref ScriptClass TeamAIType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1276); }
	public @property final auto ref UTTeamInfo Teams() { return *cast(UTTeamInfo*)(cast(size_t)cast(void*)this + 1268); }
	public @property final auto ref float TeammateBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 1264); }
	public @property final auto ref float FriendlyFireScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1260); }
	public @property final bool bForceAllRed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x20) != 0; }
	public @property final bool bForceAllRed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x20; } return val; }
	public @property final bool bScoreVictimsTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x10) != 0; }
	public @property final bool bScoreVictimsTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x10; } return val; }
	public @property final bool bSpawnInTeamArea() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x8) != 0; }
	public @property final bool bSpawnInTeamArea(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x8; } return val; }
	public @property final bool bScoreTeamKills() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x4) != 0; }
	public @property final bool bScoreTeamKills(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x4; } return val; }
	public @property final bool bAllowNonTeamChat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x2) != 0; }
	public @property final bool bAllowNonTeamChat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x2; } return val; }
	public @property final bool bPlayersBalanceTeams() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x1) != 0; }
	public @property final bool bPlayersBalanceTeams(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x1; } return val; }
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45150], cast(void*)0, cast(void*)0);
	}
	final void PostLogin(PlayerController NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45152], params.ptr, cast(void*)0);
	}
	final void FindNewObjectives(UTGameObjective DisabledObjective)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = DisabledObjective;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45155], params.ptr, cast(void*)0);
	}
	final void CreateTeam(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45157], params.ptr, cast(void*)0);
	}
	final int GetHandicapNeed(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45159], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final UTTeamInfo GetBotTeam(int TeamBots, bool bUseTeamIndex, int TeamIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TeamBots;
		*cast(bool*)&params[4] = bUseTeamIndex;
		*cast(int*)&params[8] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45163], params.ptr, cast(void*)0);
		return *cast(UTTeamInfo*)&params[12];
	}
	final int LevelRecommendedPlayers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45173], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool CheckMaxLives(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45177], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void InitGame(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45183], params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
	final bool TooManyBots(Controller botToRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = botToRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45188], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void NotifyKilled(Controller Killer, Controller KilledPlayer, Pawn KilledPawn, ScriptClass DamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = KilledPlayer;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45193], params.ptr, cast(void*)0);
	}
	final bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45198], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void SetEndGameFocus(PlayerReplicationInfo Winner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45204], params.ptr, cast(void*)0);
	}
	final bool CanSpectate(PlayerController Viewer, PlayerReplicationInfo ViewTarget)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = Viewer;
		*cast(PlayerReplicationInfo*)&params[4] = ViewTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45207], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void RestartGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45211], cast(void*)0, cast(void*)0);
	}
	final ubyte PickTeam(ubyte Num, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = Num;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45221], params.ptr, cast(void*)0);
		return params[8];
	}
	final bool ChangeTeam(Controller Other, int Num, bool bNewTeam)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(int*)&params[4] = Num;
		*cast(bool*)&params[8] = bNewTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45231], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void SetTeam(Controller Other, UTTeamInfo NewTeam, bool bNewTeam)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(UTTeamInfo*)&params[4] = NewTeam;
		*cast(bool*)&params[8] = bNewTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45238], params.ptr, cast(void*)0);
	}
	final float RatePlayerStart(PlayerStart P, ubyte Team, Controller Player)
	{
		ubyte params[13];
		params[] = 0;
		*cast(PlayerStart*)params.ptr = P;
		params[4] = Team;
		*cast(Controller*)&params[8] = Player;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45243], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45249], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Pawn FindVictimsTarget(Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45252], params.ptr, cast(void*)0);
		return *cast(Pawn*)&params[4];
	}
	final bool NearGoal(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45262], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45265], params.ptr, cast(void*)0);
	}
	final void CampaignSkillAdjust(UTBot aBot)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = aBot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45273], params.ptr, cast(void*)0);
	}
	final void AdjustSkill(AIController B, PlayerController P, bool bWinner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AIController*)params.ptr = B;
		*cast(PlayerController*)&params[4] = P;
		*cast(bool*)&params[8] = bWinner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45275], params.ptr, cast(void*)0);
	}
	final void SendFlagKillMessage(Controller Killer, UTPlayerReplicationInfo KillerPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(UTPlayerReplicationInfo*)&params[4] = KillerPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45280], params.ptr, cast(void*)0);
	}
	final bool DominatingVictory()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45283], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsAWinner(PlayerController C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45285], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsWinningTeam(TeamInfo T)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TeamInfo*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45288], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PlayRegularEndOfMatchMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45291], cast(void*)0, cast(void*)0);
	}
	final void AnnounceScore(int ScoringTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ScoringTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45294], params.ptr, cast(void*)0);
	}
	final void OverridePRI(PlayerController PC, PlayerReplicationInfo OldPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(PlayerReplicationInfo*)&params[4] = OldPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45299], params.ptr, cast(void*)0);
	}
	final bool AllowClientToTeleport(UTPlayerReplicationInfo ClientPRI, Actor DestinationActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = ClientPRI;
		*cast(Actor*)&params[4] = DestinationActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45304], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void ShowPathTo(PlayerController P, int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45308], params.ptr, cast(void*)0);
	}
	final void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45314], params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	final void Logout(Controller Exiting)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Exiting;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45319], params.ptr, cast(void*)0);
	}
	final void HandleSeamlessTravelPlayer(Controller* C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = *C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45324], params.ptr, cast(void*)0);
		*C = *cast(Controller*)params.ptr;
	}
	final void ParseSpeechRecipients(UTPlayerController Speaker, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words, ScriptArray!(UTBot)* Recipients)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
		*cast(ScriptArray!(UTBot)*)&params[16] = *Recipients;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45327], params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
		*Recipients = *cast(ScriptArray!(UTBot)*)&params[16];
	}
	final void ProcessSpeechOrders(UTPlayerController Speaker, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words, ScriptArray!(UTBot)* Recipients)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
		*cast(ScriptArray!(UTBot)*)&params[16] = *Recipients;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45339], params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
		*Recipients = *cast(ScriptArray!(UTBot)*)&params[16];
	}
	final void ProcessSpeechRecognition(UTPlayerController Speaker, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45349], params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
	}
}
