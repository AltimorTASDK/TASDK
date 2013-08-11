module UnrealScript.Engine.GameInfo;

import ScriptClasses;
import UnrealScript.Engine.GameReplicationInfo;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.AutoTestManager;
import UnrealScript.Engine.Mutator;
import UnrealScript.Engine.CoverReplicator;
import UnrealScript.Engine.PickupFactory;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Engine.AccessControl;
import UnrealScript.Engine.Info;
import UnrealScript.Engine.BroadcastHandler;
import UnrealScript.Engine.HUD;

extern(C++) interface GameInfo : Info
{
public extern(D):
	enum EStandbyType : ubyte
	{
		STDBY_Rx = 0,
		STDBY_Tx = 1,
		STDBY_BadPing = 2,
		STDBY_MAX = 3,
	}
	struct GameClassShortName
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final auto ref
		{
			ScriptString GameClassName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString ShortName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct GameTypePrefix
	{
		private ubyte __buffer__[52];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(ScriptString) AdditionalGameTypes() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 28); }
				ScriptArray!(ScriptString) ForcedObjects() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 40); }
				ScriptString GameType() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
				ScriptString Prefix() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			}
			bool bUsesCommonPackage() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bUsesCommonPackage(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			int NumPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 584); }
			ScriptClass GameMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 644); }
			ScriptClass PlayerReplicationInfoClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 680); }
			ScriptString DefaultPlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 600); }
			float MaxTimeMargin() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			int ArbitratedLeaderboardId() { return *cast(int*)(cast(size_t)cast(void*)this + 752); }
			float GameDifficulty() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			int TimeLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 636); }
			ScriptString CauseEventCommand() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 480); }
			int AdjustedNetSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 776); }
			int MaxDynamicBandwidth() { return *cast(int*)(cast(size_t)cast(void*)this + 792); }
			float GameSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			// WARNING: Property 'GameReplicationInfo' has the same name as a defined type!
			ScriptClass GameReplicationInfoClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 684); }
			CoverReplicator CoverReplicatorBase() { return *cast(CoverReplicator*)(cast(size_t)cast(void*)this + 756); }
			ScriptString GameName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 612); }
			// WARNING: Property 'BroadcastHandler' has the same name as a defined type!
			// WARNING: Property 'AccessControl' has the same name as a defined type!
			int NumTravellingPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 592); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) Pausers() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 720); }
			int MaxPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 576); }
			int MaxPlayersAllowed() { return *cast(int*)(cast(size_t)cast(void*)this + 580); }
			int MaxSpectators() { return *cast(int*)(cast(size_t)cast(void*)this + 564); }
			int MaxSpectatorsAllowed() { return *cast(int*)(cast(size_t)cast(void*)this + 568); }
			ScriptClass BroadcastHandlerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 660); }
			ScriptClass AccessControlClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 652); }
			AutoTestManager MyAutoTestManager() { return *cast(AutoTestManager*)(cast(size_t)cast(void*)this + 672); }
			ScriptClass AutoTestManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 668); }
			ScriptString BugLocString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 492); }
			ScriptString BugRotString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 504); }
			Mutator BaseMutator() { return *cast(Mutator*)(cast(size_t)cast(void*)this + 648); }
			OnlineSubsystem OnlineSub() { return *cast(OnlineSubsystem*)(cast(size_t)cast(void*)this + 732); }
			ScriptString ServerOptions() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 764); }
			int NumSpectators() { return *cast(int*)(cast(size_t)cast(void*)this + 572); }
			ScriptClass PlayerControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 676); }
			ScriptClass DefaultPawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 556); }
			ScriptClass HUDType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 560); }
			float LastNetSpeedUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 780); }
			int TotalNetBandwidth() { return *cast(int*)(cast(size_t)cast(void*)this + 784); }
			int MinDynamicBandwidth() { return *cast(int*)(cast(size_t)cast(void*)this + 788); }
			ScriptArray!(PlayerController) ArbitrationPCs() { return *cast(ScriptArray!(PlayerController)*)(cast(size_t)cast(void*)this + 528); }
			ScriptClass DeathMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 640); }
			ScriptClass OnlineStatsWriteClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 744); }
			int LeaderboardId() { return *cast(int*)(cast(size_t)cast(void*)this + 748); }
			ScriptArray!(PlayerController) PendingArbitrationPCs() { return *cast(ScriptArray!(PlayerController)*)(cast(size_t)cast(void*)this + 516); }
			int MaxLives() { return *cast(int*)(cast(size_t)cast(void*)this + 632); }
			ScriptArray!(PlayerReplicationInfo) InactivePRIArray() { return *cast(ScriptArray!(PlayerReplicationInfo)*)(cast(size_t)cast(void*)this + 708); }
			int NumBots() { return *cast(int*)(cast(size_t)cast(void*)this + 588); }
			float ArbitrationHandshakeTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
			ScriptClass OnlineGameSettingsClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 760); }
			int GoreLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
			int CurrentID() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
			float FearCostFallOff() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
			int GoalScore() { return *cast(int*)(cast(size_t)cast(void*)this + 628); }
			float MaxIdleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
			float TimeMarginSlack() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
			float MinTimeMargin() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
			float StandbyRxCheatTime() { return *cast(float*)(cast(size_t)cast(void*)this + 796); }
			float StandbyTxCheatTime() { return *cast(float*)(cast(size_t)cast(void*)this + 800); }
			int BadPingThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 804); }
			float PercentMissingForRxStandby() { return *cast(float*)(cast(size_t)cast(void*)this + 808); }
			float PercentMissingForTxStandby() { return *cast(float*)(cast(size_t)cast(void*)this + 812); }
			float PercentForBadPing() { return *cast(float*)(cast(size_t)cast(void*)this + 816); }
			float JoinInProgressStandbyWaitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
			ScriptArray!(GameInfo.GameClassShortName) GameInfoClassAliases() { return *cast(ScriptArray!(GameInfo.GameClassShortName)*)(cast(size_t)cast(void*)this + 824); }
			ScriptString DefaultGameType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 836); }
			ScriptArray!(GameInfo.GameTypePrefix) DefaultMapPrefixes() { return *cast(ScriptArray!(GameInfo.GameTypePrefix)*)(cast(size_t)cast(void*)this + 848); }
			ScriptArray!(GameInfo.GameTypePrefix) CustomMapPrefixes() { return *cast(ScriptArray!(GameInfo.GameTypePrefix)*)(cast(size_t)cast(void*)this + 860); }
		}
		bool bRequiresPushToTalk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x400000) != 0; }
		bool bRequiresPushToTalk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x400000; } return val; }
		bool bTeamGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4) != 0; }
		bool bTeamGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4; } return val; }
		bool bWaitingToStartMatch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40) != 0; }
		bool bWaitingToStartMatch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40; } return val; }
		bool bHasNetworkError() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x200000) != 0; }
		bool bHasNetworkError(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x200000; } return val; }
		bool bRestartLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
		bool bRestartLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
		bool bGameEnded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8) != 0; }
		bool bGameEnded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8; } return val; }
		bool bOverTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10) != 0; }
		bool bOverTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10; } return val; }
		bool bDoFearCostFallOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80000) != 0; }
		bool bDoFearCostFallOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80000; } return val; }
		bool bFixedPlayerStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40000) != 0; }
		bool bFixedPlayerStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40000; } return val; }
		bool bUsingArbitration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2000) != 0; }
		bool bUsingArbitration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2000; } return val; }
		bool bLevelChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x800) != 0; }
		bool bLevelChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x800; } return val; }
		bool bUseSeamlessTravel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100000) != 0; }
		bool bUseSeamlessTravel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100000; } return val; }
		bool bHasArbitratedHandshakeBegun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4000) != 0; }
		bool bHasArbitratedHandshakeBegun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4000; } return val; }
		bool bDelayedStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20) != 0; }
		bool bDelayedStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20; } return val; }
		bool bHasEndGameHandshakeBegun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20000) != 0; }
		bool bHasEndGameHandshakeBegun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20000; } return val; }
		bool bIsEndGameHandshakeComplete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10000) != 0; }
		bool bIsEndGameHandshakeComplete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10000; } return val; }
		bool bGameRestarted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x400) != 0; }
		bool bGameRestarted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x400; } return val; }
		bool bChangeLevels() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80) != 0; }
		bool bChangeLevels(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80; } return val; }
		bool bAlreadyChanged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100) != 0; }
		bool bAlreadyChanged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100; } return val; }
		bool bPauseable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
		bool bPauseable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
		bool bAdminCanPause() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x200) != 0; }
		bool bAdminCanPause(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x200; } return val; }
		bool bNeedsEndGameHandshake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8000) != 0; }
		bool bNeedsEndGameHandshake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8000; } return val; }
		bool bKickLiveIdlers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1000) != 0; }
		bool bKickLiveIdlers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1000; } return val; }
		bool bIsStandbyCheckingEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x800000) != 0; }
		bool bIsStandbyCheckingEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x800000; } return val; }
		bool bIsStandbyCheckingOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1000000) != 0; }
		bool bIsStandbyCheckingOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1000000; } return val; }
		bool bHasStandbyCheatTriggered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2000000) != 0; }
		bool bHasStandbyCheatTriggered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2000000; } return val; }
	}
final:
	bool CheckRelevance(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4029], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString ParseOption(ScriptString Options, ScriptString InKey)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = InKey;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5760], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	bool AtCapacity(bool bSpectator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSpectator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5772], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ForceClearUnpauseDelegates(Actor PauseActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = PauseActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7599], params.ptr, cast(void*)0);
	}
	bool IsAutomatedPerfTesting()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7611], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SetPause(PlayerController PC, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* CanUnpauseDelegate)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = CanUnpauseDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8306], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool ChangeTeam(Controller Other, int N, bool bNewTeam)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(int*)&params[4] = N;
		*cast(bool*)&params[8] = bNewTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8397], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool CanSpectate(PlayerController Viewer, PlayerReplicationInfo ViewTarget)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = Viewer;
		*cast(PlayerReplicationInfo*)&params[4] = ViewTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8743], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool PlayerCanRestartGame(PlayerController aPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = aPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8890], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool PlayerCanRestart(PlayerController aPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = aPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8947], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsDoingASentinelRun()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9459], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	CoverReplicator GetCoverReplicator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13337], params.ptr, cast(void*)0);
		return *cast(CoverReplicator*)params.ptr;
	}
	bool PickupQuery(Pawn Other, ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(ScriptClass*)&params[4] = ItemClass;
		*cast(Actor*)&params[8] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14811], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool GetSupportedGameTypes(ScriptString* InFilename, GameInfo.GameTypePrefix* OutGameType, bool bCheckExt)
	{
		ubyte params[72];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *InFilename;
		*cast(GameInfo.GameTypePrefix*)&params[12] = *OutGameType;
		*cast(bool*)&params[64] = bCheckExt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16748], params.ptr, cast(void*)0);
		*InFilename = *cast(ScriptString*)params.ptr;
		*OutGameType = *cast(GameInfo.GameTypePrefix*)&params[12];
		return *cast(bool*)&params[68];
	}
	bool GetMapCommonPackageName(ScriptString* InFilename, ScriptString* OutCommonPackageName)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *InFilename;
		*cast(ScriptString*)&params[12] = *OutCommonPackageName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16753], params.ptr, cast(void*)0);
		*InFilename = *cast(ScriptString*)params.ptr;
		*OutCommonPackageName = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[24];
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16757], cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16764], cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16765], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16771], cast(void*)0, cast(void*)0);
	}
	bool ShouldReset(Actor ActorToReset)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = ActorToReset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16774], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ResetLevel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16777], cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16786], cast(void*)0, cast(void*)0);
	}
	void DoNavFearCostFallOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16789], cast(void*)0, cast(void*)0);
	}
	void NotifyNavigationChanged(NavigationPoint N)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16790], params.ptr, cast(void*)0);
	}
	void GameEnding()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16792], cast(void*)0, cast(void*)0);
	}
	void KickIdler(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16793], params.ptr, cast(void*)0);
	}
	void ForceKickPlayer(PlayerController PC, ScriptString KickReason)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(ScriptString*)&params[4] = KickReason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16796], params.ptr, cast(void*)0);
	}
	void InitGameReplicationInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16799], cast(void*)0, cast(void*)0);
	}
	ScriptString GetNetworkNumber()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16800], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	int GetNumPlayers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16802], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool CanUnpause()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16805], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearPause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16812], cast(void*)0, cast(void*)0);
	}
	void DebugPause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16816], cast(void*)0, cast(void*)0);
	}
	void SetGameSpeed(float T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16819], params.ptr, cast(void*)0);
	}
	bool GrabOption(ScriptString* Options, ScriptString* Result)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Options;
		*cast(ScriptString*)&params[12] = *Result;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16821], params.ptr, cast(void*)0);
		*Options = *cast(ScriptString*)params.ptr;
		*Result = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[24];
	}
	void GetKeyValue(ScriptString Pair, ScriptString* Key, ScriptString* Value)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Pair;
		*cast(ScriptString*)&params[12] = *Key;
		*cast(ScriptString*)&params[24] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16825], params.ptr, cast(void*)0);
		*Key = *cast(ScriptString*)&params[12];
		*Value = *cast(ScriptString*)&params[24];
	}
	bool HasOption(ScriptString Options, ScriptString InKey)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = InKey;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16834], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	int GetIntOption(ScriptString Options, ScriptString ParseString, int CurrentValue)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = ParseString;
		*cast(int*)&params[24] = CurrentValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16841], params.ptr, cast(void*)0);
		return *cast(int*)&params[28];
	}
	ScriptString GetDefaultGameClassPath(ScriptString MapName, ScriptString Options, ScriptString Portal)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		*cast(ScriptString*)&params[12] = Options;
		*cast(ScriptString*)&params[24] = Portal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16847], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[36];
	}
	ScriptClass SetGameType(ScriptString MapName, ScriptString Options, ScriptString Portal)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		*cast(ScriptString*)&params[12] = Options;
		*cast(ScriptString*)&params[24] = Portal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16852], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[36];
	}
	void InitGame(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16857], params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
	void NotifyPendingConnectionLost()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16881], cast(void*)0, cast(void*)0);
	}
	void AddMutator(ScriptString mutname, bool bUserAdded)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = mutname;
		*cast(bool*)&params[12] = bUserAdded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16882], params.ptr, cast(void*)0);
	}
	void RemoveMutator(Mutator MutatorToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Mutator*)params.ptr = MutatorToRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16891], params.ptr, cast(void*)0);
	}
	void ProcessServerTravel(ScriptString pURL, bool bAbsolute)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(bool*)&params[12] = bAbsolute;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16894], params.ptr, cast(void*)0);
	}
	PlayerController ProcessClientTravel(ScriptString* pURL, UObject.Guid NextMapGuid, bool bSeamless, bool bAbsolute)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *pURL;
		*cast(UObject.Guid*)&params[12] = NextMapGuid;
		*cast(bool*)&params[28] = bSeamless;
		*cast(bool*)&params[32] = bAbsolute;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16904], params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
		return *cast(PlayerController*)&params[36];
	}
	bool RequiresPassword()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16912], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PreLogin(ScriptString Options, ScriptString Address, ScriptString* ErrorMessage)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = Address;
		*cast(ScriptString*)&params[24] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16914], params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[24];
	}
	int GetNextPlayerID()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16923], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	PlayerController SpawnPlayerController(Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16925], params.ptr, cast(void*)0);
		return *cast(PlayerController*)&params[24];
	}
	PlayerController Login(ScriptString Portal, ScriptString Options, OnlineSubsystem.UniqueNetId UniqueId, ScriptString* ErrorMessage)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Portal;
		*cast(ScriptString*)&params[12] = Options;
		*cast(OnlineSubsystem.UniqueNetId*)&params[24] = UniqueId;
		*cast(ScriptString*)&params[32] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16930], params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[32];
		return *cast(PlayerController*)&params[44];
	}
	void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16949], cast(void*)0, cast(void*)0);
	}
	void StartOnlineGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16951], cast(void*)0, cast(void*)0);
	}
	void OnStartOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16953], params.ptr, cast(void*)0);
	}
	void StartHumans()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16960], cast(void*)0, cast(void*)0);
	}
	void StartBots()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16962], cast(void*)0, cast(void*)0);
	}
	void RestartPlayer(Controller NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16964], params.ptr, cast(void*)0);
	}
	Pawn SpawnDefaultPawnFor(Controller NewPlayer, NavigationPoint StartSpot)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = NewPlayer;
		*cast(NavigationPoint*)&params[4] = StartSpot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16974], params.ptr, cast(void*)0);
		return *cast(Pawn*)&params[8];
	}
	ScriptClass GetDefaultPlayerClass(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16981], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	void ReplicateStreamingStatus(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16985], params.ptr, cast(void*)0);
	}
	void GenericPlayerInitialization(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16992], params.ptr, cast(void*)0);
	}
	int BestNextHostSort(PlayerController A, PlayerController B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = A;
		*cast(PlayerController*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16996], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void UpdateBestNextHosts()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17002], cast(void*)0, cast(void*)0);
	}
	void PostLogin(PlayerController NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17010], params.ptr, cast(void*)0);
	}
	void UpdateNetSpeeds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17021], cast(void*)0, cast(void*)0);
	}
	int CalculatedNetSpeed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17027], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void PreExit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17031], cast(void*)0, cast(void*)0);
	}
	void Logout(Controller Exiting)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Exiting;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17032], params.ptr, cast(void*)0);
	}
	void UnregisterPlayer(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17038], params.ptr, cast(void*)0);
	}
	void AcceptInventory(Pawn PlayerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = PlayerPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17040], params.ptr, cast(void*)0);
	}
	void AddDefaultInventory(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17042], params.ptr, cast(void*)0);
	}
	void Mutate(ScriptString MutateString, PlayerController Sender)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutateString;
		*cast(PlayerController*)&params[12] = Sender;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17044], params.ptr, cast(void*)0);
	}
	void SetPlayerDefaults(Pawn PlayerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = PlayerPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17047], params.ptr, cast(void*)0);
	}
	void NotifyKilled(Controller Killer, Controller Killed, Pawn KilledPawn, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17049], params.ptr, cast(void*)0);
	}
	void Killed(Controller Killer, Controller KilledPlayer, Pawn KilledPawn, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = KilledPlayer;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17055], params.ptr, cast(void*)0);
	}
	bool PreventDeath(Pawn KilledPawn, Controller Killer, ScriptClass pDamageType, Vector HitLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Pawn*)params.ptr = KilledPawn;
		*cast(Controller*)&params[4] = Killer;
		*cast(ScriptClass*)&params[8] = pDamageType;
		*cast(Vector*)&params[12] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17060], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void BroadcastDeathMessage(Controller Killer, Controller Other, ScriptClass pDamageType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		*cast(ScriptClass*)&params[8] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17068], params.ptr, cast(void*)0);
	}
	void Kick(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17073], params.ptr, cast(void*)0);
	}
	void KickBan(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17075], params.ptr, cast(void*)0);
	}
	void ReduceDamage(int* Damage, Pawn injured, Controller InstigatedBy, Vector HitLocation, Vector* Momentum, ScriptClass pDamageType, Actor DamageCauser)
	{
		ubyte params[44];
		params[] = 0;
		*cast(int*)params.ptr = *Damage;
		*cast(Pawn*)&params[4] = injured;
		*cast(Controller*)&params[8] = InstigatedBy;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(Vector*)&params[24] = *Momentum;
		*cast(ScriptClass*)&params[36] = pDamageType;
		*cast(Actor*)&params[40] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17079], params.ptr, cast(void*)0);
		*Damage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[24];
	}
	bool ShouldRespawn(PickupFactory Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PickupFactory*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17093], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DiscardInventory(Pawn Other, Controller Killer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Controller*)&params[4] = Killer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17104], params.ptr, cast(void*)0);
	}
	void ChangeName(Controller Other, ScriptString S, bool bNameChange)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(ScriptString*)&params[4] = S;
		*cast(bool*)&params[16] = bNameChange;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17107], params.ptr, cast(void*)0);
	}
	ubyte PickTeam(ubyte Current, Controller C)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = Current;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17114], params.ptr, cast(void*)0);
		return params[8];
	}
	void SendPlayer(PlayerController aPlayer, ScriptString pURL)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = aPlayer;
		*cast(ScriptString*)&params[4] = pURL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17118], params.ptr, cast(void*)0);
	}
	ScriptString GetNextMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17121], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool GetTravelType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17123], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RestartGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17125], cast(void*)0, cast(void*)0);
	}
	void Broadcast(Actor Sender, ScriptString msg, ScriptName Type)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(ScriptString*)&params[4] = msg;
		*cast(ScriptName*)&params[16] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17137], params.ptr, cast(void*)0);
	}
	void BroadcastTeam(Controller Sender, ScriptString msg, ScriptName Type)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(ScriptString*)&params[4] = msg;
		*cast(ScriptName*)&params[16] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17141], params.ptr, cast(void*)0);
	}
	void BroadcastLocalized(Actor Sender, ScriptClass Message, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(ScriptClass*)&params[4] = Message;
		*cast(int*)&params[8] = Switch;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[16] = RelatedPRI_2;
		*cast(UObject*)&params[20] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17145], params.ptr, cast(void*)0);
	}
	void BroadcastLocalizedTeam(int TeamIndex, Actor Sender, ScriptClass Message, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		*cast(Actor*)&params[4] = Sender;
		*cast(ScriptClass*)&params[8] = Message;
		*cast(int*)&params[12] = Switch;
		*cast(PlayerReplicationInfo*)&params[16] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[20] = RelatedPRI_2;
		*cast(UObject*)&params[24] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17152], params.ptr, cast(void*)0);
	}
	bool CheckModifiedEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17160], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17166], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void WriteOnlineStats()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17171], cast(void*)0, cast(void*)0);
	}
	void WriteOnlinePlayerScores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17176], cast(void*)0, cast(void*)0);
	}
	void ForceRoundStart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17179], cast(void*)0, cast(void*)0);
	}
	void EndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17180], params.ptr, cast(void*)0);
	}
	void PerformEndGameHandling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17183], cast(void*)0, cast(void*)0);
	}
	void EndOnlineGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17185], cast(void*)0, cast(void*)0);
	}
	void GameEventsPoll()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17187], cast(void*)0, cast(void*)0);
	}
	void EndLogging(ScriptString Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17188], params.ptr, cast(void*)0);
	}
	bool ShouldSpawnAtStartSpot(Controller pPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17190], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	NavigationPoint FindPlayerStart(Controller pPlayer, ubyte InTeam, ScriptString IncomingName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		params[4] = InTeam;
		*cast(ScriptString*)&params[8] = IncomingName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17194], params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[20];
	}
	PlayerStart ChoosePlayerStart(Controller pPlayer, ubyte InTeam)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		params[4] = InTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17204], params.ptr, cast(void*)0);
		return *cast(PlayerStart*)&params[8];
	}
	float RatePlayerStart(PlayerStart P, ubyte Team, Controller pPlayer)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerStart*)params.ptr = P;
		params[4] = Team;
		*cast(Controller*)&params[8] = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17213], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void AddObjectiveScore(PlayerReplicationInfo Scorer, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17222], params.ptr, cast(void*)0);
	}
	void ScoreObjective(PlayerReplicationInfo Scorer, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17225], params.ptr, cast(void*)0);
	}
	bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17228], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17231], params.ptr, cast(void*)0);
	}
	void ModifyScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17236], params.ptr, cast(void*)0);
	}
	void DriverEnteredVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17239], params.ptr, cast(void*)0);
	}
	bool CanLeaveVehicle(Vehicle V, Pawn P)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17242], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void DriverLeftVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17248], params.ptr, cast(void*)0);
	}
	bool AllowMutator(ScriptString MutatorClassName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutatorClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17253], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool AllowCheats(PlayerController P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17256], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AllowPausing(PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17259], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PreCommitMapChange(ScriptString PreviousMapName, ScriptString NextMapName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PreviousMapName;
		*cast(ScriptString*)&params[12] = NextMapName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17264], params.ptr, cast(void*)0);
	}
	void PostCommitMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17267], cast(void*)0, cast(void*)0);
	}
	void AddInactivePRI(PlayerReplicationInfo PRI, PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(PlayerController*)&params[4] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17268], params.ptr, cast(void*)0);
	}
	bool FindInactivePRI(PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17279], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetPRI(PlayerController PC, PlayerReplicationInfo NewPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(PlayerReplicationInfo*)&params[4] = NewPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17289], params.ptr, cast(void*)0);
	}
	void OverridePRI(PlayerController PC, PlayerReplicationInfo OldPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(PlayerReplicationInfo*)&params[4] = OldPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17292], params.ptr, cast(void*)0);
	}
	void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17295], params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	void SwapPlayerControllers(PlayerController OldPC, PlayerController NewPC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = OldPC;
		*cast(PlayerController*)&params[4] = NewPC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17300], params.ptr, cast(void*)0);
	}
	void PostSeamlessTravel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17303], cast(void*)0, cast(void*)0);
	}
	void UpdateGameSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17306], cast(void*)0, cast(void*)0);
	}
	void HandleSeamlessTravelPlayer(Controller* C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = *C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17307], params.ptr, cast(void*)0);
		*C = *cast(Controller*)params.ptr;
	}
	void SetSeamlessTravelViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17314], params.ptr, cast(void*)0);
	}
	void UpdateGameSettingsCounts()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17316], cast(void*)0, cast(void*)0);
	}
	void ProcessClientRegistrationCompletion(PlayerController PC, bool bWasSuccessful)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17319], params.ptr, cast(void*)0);
	}
	void StartArbitrationRegistration()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17322], cast(void*)0, cast(void*)0);
	}
	void StartArbitratedMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17323], cast(void*)0, cast(void*)0);
	}
	void RegisterServerForArbitration()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17324], cast(void*)0, cast(void*)0);
	}
	void ArbitrationRegistrationComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17325], params.ptr, cast(void*)0);
	}
	bool MatchIsInProgress()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17328], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void NotifyArbitratedMatchEnd()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17354], cast(void*)0, cast(void*)0);
	}
	void UpdateGameplayMuteList(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17356], params.ptr, cast(void*)0);
	}
	void RecalculateSkillRating()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17358], cast(void*)0, cast(void*)0);
	}
	void MatineeCancelled()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17365], cast(void*)0, cast(void*)0);
	}
	bool ProcessServerLogin()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17366], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearAutoLoginDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17370], cast(void*)0, cast(void*)0);
	}
	void OnLoginFailed(ubyte LocalUserNum, OnlineSubsystem.EOnlineServerConnectionStatus ErrorCode)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)&params[1] = ErrorCode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17371], params.ptr, cast(void*)0);
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17374], params.ptr, cast(void*)0);
	}
	void RegisterServer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17376], cast(void*)0, cast(void*)0);
	}
	void OnServerCreateComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17381], params.ptr, cast(void*)0);
	}
	void TellClientsToReturnToPartyHost()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17385], cast(void*)0, cast(void*)0);
	}
	void TellClientsToTravelToSession(ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17389], params.ptr, cast(void*)0);
	}
	void DoTravelTheWorld()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17394], cast(void*)0, cast(void*)0);
	}
	bool IsCheckingForFragmentation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17396], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsCheckingForMemLeaks()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17398], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldAutoContinueToNextRound()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17400], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheckForSentinelRun()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17402], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void BeginBVT(ScriptString TagDesc)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TagDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17404], params.ptr, cast(void*)0);
	}
	void EnableStandbyCheatDetection(bool bIsEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17406], params.ptr, cast(void*)0);
	}
	void StandbyCheatDetected(GameInfo.EStandbyType StandbyType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GameInfo.EStandbyType*)params.ptr = StandbyType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17408], params.ptr, cast(void*)0);
	}
	void OnEngineHasLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17410], cast(void*)0, cast(void*)0);
	}
}
