module UnrealScript.Engine.AutoTestManager;

import ScriptClasses;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface AutoTestManager : Info
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) AutomatedMapTestingList() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 488); }
			ScriptArray!(Vector) SentinelTravelArray() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 576); }
			ScriptArray!(ScriptString) CommandsToRunAtEachTravelTheWorldNode() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 608); }
			ScriptString CommandStringToExec() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 620); }
			int NumMinutesPerMap() { return *cast(int*)(cast(size_t)cast(void*)this + 604); }
			int TravelPointsIncrement() { return *cast(int*)(cast(size_t)cast(void*)this + 600); }
			int NumRotationsIncrement() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
			int SentinelIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 592); }
			int SentinelNavigationIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 588); }
			PlayerController SentinelPC() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 572); }
			ScriptString SentinelTagDesc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 560); }
			ScriptString SentinelTaskParameter() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 548); }
			ScriptString SentinelTaskDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 536); }
			ScriptString AutomatedMapTestingTransitionMap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 524); }
			ScriptString AutomatedTestingExecCommandToRunAtStartMatch() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 512); }
			int NumMapListCyclesDone() { return *cast(int*)(cast(size_t)cast(void*)this + 508); }
			int NumberOfMatchesPlayed() { return *cast(int*)(cast(size_t)cast(void*)this + 504); }
			int NumAutomatedMapTestingCycles() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
			int AutomatedTestingMapIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
			int AutomatedPerfRemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
		}
		bool bSentinelStreamingLevelStillLoading() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100) != 0; }
		bool bSentinelStreamingLevelStillLoading(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100; } return val; }
		bool bDoingASentinelRun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80) != 0; }
		bool bDoingASentinelRun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80; } return val; }
		bool bCheckingForMemLeaks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40) != 0; }
		bool bCheckingForMemLeaks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40; } return val; }
		bool bCheckingForFragmentation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20) != 0; }
		bool bCheckingForFragmentation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20; } return val; }
		bool bExitOnCyclesComplete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10) != 0; }
		bool bExitOnCyclesComplete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10; } return val; }
		bool bAutomatedTestingWithOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8) != 0; }
		bool bAutomatedTestingWithOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8; } return val; }
		bool bUsingAutomatedTestingMapList() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4) != 0; }
		bool bUsingAutomatedTestingMapList(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4; } return val; }
		bool bAutoContinueToNextRound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
		bool bAutoContinueToNextRound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
		bool bAutomatedPerfTesting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
		bool bAutomatedPerfTesting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11934], cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11935], cast(void*)0, cast(void*)0);
	}
	void InitializeOptions(ScriptString Options)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11936], params.ptr, cast(void*)0);
	}
	void BeginSentinelRun(ScriptString TaskDescription, ScriptString TaskParameter, ScriptString TagDesc)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TaskDescription;
		*cast(ScriptString*)&params[12] = TaskParameter;
		*cast(ScriptString*)&params[24] = TagDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11940], params.ptr, cast(void*)0);
	}
	void AddSentinelPerTimePeriodStats(Vector InLocation, Rotator InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		*cast(Rotator*)&params[12] = InRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11944], params.ptr, cast(void*)0);
	}
	void EndSentinelRun(UObject.EAutomatedRunResult RunResult)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UObject.EAutomatedRunResult*)params.ptr = RunResult;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11947], params.ptr, cast(void*)0);
	}
	void DoTravelTheWorld()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11949], cast(void*)0, cast(void*)0);
	}
	void DoSentinelActionPerLoadedMap()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11969], cast(void*)0, cast(void*)0);
	}
	void HandlePerLoadedMapAudioStats()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11970], cast(void*)0, cast(void*)0);
	}
	void GetTravelLocations(ScriptName LevelName, PlayerController PC, ScriptArray!(Vector)* TravelPoints)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = LevelName;
		*cast(PlayerController*)&params[8] = PC;
		*cast(ScriptArray!(Vector)*)&params[12] = *TravelPoints;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11971], params.ptr, cast(void*)0);
		*TravelPoints = *cast(ScriptArray!(Vector)*)&params[12];
	}
	void DoSentinel_MemoryAtSpecificLocation(Vector InLocation, Rotator InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		*cast(Rotator*)&params[12] = InRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11976], params.ptr, cast(void*)0);
	}
	void DoSentinel_PerfAtSpecificLocation(Vector* InLocation, Rotator* InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *InLocation;
		*cast(Rotator*)&params[12] = *InRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11979], params.ptr, cast(void*)0);
		*InLocation = *cast(Vector*)params.ptr;
		*InRotation = *cast(Rotator*)&params[12];
	}
	void DoSentinel_ViewDependentMemoryAtSpecificLocation(Vector* InLocation, Rotator* InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *InLocation;
		*cast(Rotator*)&params[12] = *InRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11982], params.ptr, cast(void*)0);
		*InLocation = *cast(Vector*)params.ptr;
		*InRotation = *cast(Rotator*)&params[12];
	}
	void DoTimeBasedSentinelStatGathering()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11985], cast(void*)0, cast(void*)0);
	}
	void DoMemoryTracking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11989], cast(void*)0, cast(void*)0);
	}
	void StartAutomatedMapTestTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11990], cast(void*)0, cast(void*)0);
	}
	void StartAutomatedMapTestTimerWorker()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11991], cast(void*)0, cast(void*)0);
	}
	void CloseAutomatedMapTestTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11993], cast(void*)0, cast(void*)0);
	}
	void IncrementAutomatedTestingMapIndex()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11994], cast(void*)0, cast(void*)0);
	}
	void IncrementNumberOfMatchesPlayed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11995], cast(void*)0, cast(void*)0);
	}
	ScriptString GetNextAutomatedTestingMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11996], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12002], cast(void*)0, cast(void*)0);
	}
	bool CheckForSentinelRun()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12004], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
