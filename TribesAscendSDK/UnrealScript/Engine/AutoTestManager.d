module UnrealScript.Engine.AutoTestManager;

import ScriptClasses;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface AutoTestManager : Info
{
	public @property final auto ref ScriptArray!(ScriptString) AutomatedMapTestingList() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref ScriptArray!(Vector) SentinelTravelArray() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref ScriptArray!(ScriptString) CommandsToRunAtEachTravelTheWorldNode() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref ScriptString CommandStringToExec() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref int NumMinutesPerMap() { return *cast(int*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref int TravelPointsIncrement() { return *cast(int*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref int NumRotationsIncrement() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref int SentinelIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref int SentinelNavigationIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref PlayerController SentinelPC() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref ScriptString SentinelTagDesc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref ScriptString SentinelTaskParameter() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref ScriptString SentinelTaskDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref ScriptString AutomatedMapTestingTransitionMap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref ScriptString AutomatedTestingExecCommandToRunAtStartMatch() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref int NumMapListCyclesDone() { return *cast(int*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref int NumberOfMatchesPlayed() { return *cast(int*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref int NumAutomatedMapTestingCycles() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref int AutomatedTestingMapIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref int AutomatedPerfRemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
	public @property final bool bSentinelStreamingLevelStillLoading() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100) != 0; }
	public @property final bool bSentinelStreamingLevelStillLoading(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100; } return val; }
	public @property final bool bDoingASentinelRun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80) != 0; }
	public @property final bool bDoingASentinelRun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80; } return val; }
	public @property final bool bCheckingForMemLeaks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40) != 0; }
	public @property final bool bCheckingForMemLeaks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40; } return val; }
	public @property final bool bCheckingForFragmentation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20) != 0; }
	public @property final bool bCheckingForFragmentation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20; } return val; }
	public @property final bool bExitOnCyclesComplete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10) != 0; }
	public @property final bool bExitOnCyclesComplete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10; } return val; }
	public @property final bool bAutomatedTestingWithOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8) != 0; }
	public @property final bool bAutomatedTestingWithOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8; } return val; }
	public @property final bool bUsingAutomatedTestingMapList() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4) != 0; }
	public @property final bool bUsingAutomatedTestingMapList(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4; } return val; }
	public @property final bool bAutoContinueToNextRound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
	public @property final bool bAutoContinueToNextRound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
	public @property final bool bAutomatedPerfTesting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
	public @property final bool bAutomatedPerfTesting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11934], cast(void*)0, cast(void*)0);
	}
	final void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11935], cast(void*)0, cast(void*)0);
	}
	final void InitializeOptions(ScriptString Options)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11936], params.ptr, cast(void*)0);
	}
	final void BeginSentinelRun(ScriptString TaskDescription, ScriptString TaskParameter, ScriptString TagDesc)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TaskDescription;
		*cast(ScriptString*)&params[12] = TaskParameter;
		*cast(ScriptString*)&params[24] = TagDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11940], params.ptr, cast(void*)0);
	}
	final void AddSentinelPerTimePeriodStats(Vector InLocation, Rotator InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		*cast(Rotator*)&params[12] = InRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11944], params.ptr, cast(void*)0);
	}
	final void EndSentinelRun(UObject.EAutomatedRunResult RunResult)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UObject.EAutomatedRunResult*)params.ptr = RunResult;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11947], params.ptr, cast(void*)0);
	}
	final void DoTravelTheWorld()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11949], cast(void*)0, cast(void*)0);
	}
	final void DoSentinelActionPerLoadedMap()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11969], cast(void*)0, cast(void*)0);
	}
	final void HandlePerLoadedMapAudioStats()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11970], cast(void*)0, cast(void*)0);
	}
	final void GetTravelLocations(ScriptName LevelName, PlayerController PC, ScriptArray!(Vector)* TravelPoints)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = LevelName;
		*cast(PlayerController*)&params[8] = PC;
		*cast(ScriptArray!(Vector)*)&params[12] = *TravelPoints;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11971], params.ptr, cast(void*)0);
		*TravelPoints = *cast(ScriptArray!(Vector)*)&params[12];
	}
	final void DoSentinel_MemoryAtSpecificLocation(Vector InLocation, Rotator InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		*cast(Rotator*)&params[12] = InRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11976], params.ptr, cast(void*)0);
	}
	final void DoSentinel_PerfAtSpecificLocation(Vector* InLocation, Rotator* InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *InLocation;
		*cast(Rotator*)&params[12] = *InRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11979], params.ptr, cast(void*)0);
		*InLocation = *cast(Vector*)params.ptr;
		*InRotation = *cast(Rotator*)&params[12];
	}
	final void DoSentinel_ViewDependentMemoryAtSpecificLocation(Vector* InLocation, Rotator* InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *InLocation;
		*cast(Rotator*)&params[12] = *InRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11982], params.ptr, cast(void*)0);
		*InLocation = *cast(Vector*)params.ptr;
		*InRotation = *cast(Rotator*)&params[12];
	}
	final void DoTimeBasedSentinelStatGathering()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11985], cast(void*)0, cast(void*)0);
	}
	final void DoMemoryTracking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11989], cast(void*)0, cast(void*)0);
	}
	final void StartAutomatedMapTestTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11990], cast(void*)0, cast(void*)0);
	}
	final void StartAutomatedMapTestTimerWorker()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11991], cast(void*)0, cast(void*)0);
	}
	final void CloseAutomatedMapTestTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11993], cast(void*)0, cast(void*)0);
	}
	final void IncrementAutomatedTestingMapIndex()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11994], cast(void*)0, cast(void*)0);
	}
	final void IncrementNumberOfMatchesPlayed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11995], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetNextAutomatedTestingMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11996], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12002], cast(void*)0, cast(void*)0);
	}
	final bool CheckForSentinelRun()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12004], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
