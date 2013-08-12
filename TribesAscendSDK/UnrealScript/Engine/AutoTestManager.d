module UnrealScript.Engine.AutoTestManager;

import ScriptClasses;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface AutoTestManager : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AutoTestManager")); }
	private static __gshared AutoTestManager mDefaultProperties;
	@property final static AutoTestManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AutoTestManager)("AutoTestManager Engine.Default__AutoTestManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mTimer;
			ScriptFunction mInitializeOptions;
			ScriptFunction mBeginSentinelRun;
			ScriptFunction mAddSentinelPerTimePeriodStats;
			ScriptFunction mEndSentinelRun;
			ScriptFunction mDoTravelTheWorld;
			ScriptFunction mDoSentinelActionPerLoadedMap;
			ScriptFunction mHandlePerLoadedMapAudioStats;
			ScriptFunction mGetTravelLocations;
			ScriptFunction mDoSentinel_MemoryAtSpecificLocation;
			ScriptFunction mDoSentinel_PerfAtSpecificLocation;
			ScriptFunction mDoSentinel_ViewDependentMemoryAtSpecificLocation;
			ScriptFunction mDoTimeBasedSentinelStatGathering;
			ScriptFunction mDoMemoryTracking;
			ScriptFunction mStartAutomatedMapTestTimer;
			ScriptFunction mStartAutomatedMapTestTimerWorker;
			ScriptFunction mCloseAutomatedMapTestTimer;
			ScriptFunction mIncrementAutomatedTestingMapIndex;
			ScriptFunction mIncrementNumberOfMatchesPlayed;
			ScriptFunction mGetNextAutomatedTestingMap;
			ScriptFunction mStartMatch;
			ScriptFunction mCheckForSentinelRun;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.PostBeginPlay")); }
			ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.Timer")); }
			ScriptFunction InitializeOptions() { return mInitializeOptions ? mInitializeOptions : (mInitializeOptions = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.InitializeOptions")); }
			ScriptFunction BeginSentinelRun() { return mBeginSentinelRun ? mBeginSentinelRun : (mBeginSentinelRun = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.BeginSentinelRun")); }
			ScriptFunction AddSentinelPerTimePeriodStats() { return mAddSentinelPerTimePeriodStats ? mAddSentinelPerTimePeriodStats : (mAddSentinelPerTimePeriodStats = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.AddSentinelPerTimePeriodStats")); }
			ScriptFunction EndSentinelRun() { return mEndSentinelRun ? mEndSentinelRun : (mEndSentinelRun = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.EndSentinelRun")); }
			ScriptFunction DoTravelTheWorld() { return mDoTravelTheWorld ? mDoTravelTheWorld : (mDoTravelTheWorld = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.DoTravelTheWorld")); }
			ScriptFunction DoSentinelActionPerLoadedMap() { return mDoSentinelActionPerLoadedMap ? mDoSentinelActionPerLoadedMap : (mDoSentinelActionPerLoadedMap = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.DoSentinelActionPerLoadedMap")); }
			ScriptFunction HandlePerLoadedMapAudioStats() { return mHandlePerLoadedMapAudioStats ? mHandlePerLoadedMapAudioStats : (mHandlePerLoadedMapAudioStats = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.HandlePerLoadedMapAudioStats")); }
			ScriptFunction GetTravelLocations() { return mGetTravelLocations ? mGetTravelLocations : (mGetTravelLocations = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.GetTravelLocations")); }
			ScriptFunction DoSentinel_MemoryAtSpecificLocation() { return mDoSentinel_MemoryAtSpecificLocation ? mDoSentinel_MemoryAtSpecificLocation : (mDoSentinel_MemoryAtSpecificLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.DoSentinel_MemoryAtSpecificLocation")); }
			ScriptFunction DoSentinel_PerfAtSpecificLocation() { return mDoSentinel_PerfAtSpecificLocation ? mDoSentinel_PerfAtSpecificLocation : (mDoSentinel_PerfAtSpecificLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.DoSentinel_PerfAtSpecificLocation")); }
			ScriptFunction DoSentinel_ViewDependentMemoryAtSpecificLocation() { return mDoSentinel_ViewDependentMemoryAtSpecificLocation ? mDoSentinel_ViewDependentMemoryAtSpecificLocation : (mDoSentinel_ViewDependentMemoryAtSpecificLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.DoSentinel_ViewDependentMemoryAtSpecificLocation")); }
			ScriptFunction DoTimeBasedSentinelStatGathering() { return mDoTimeBasedSentinelStatGathering ? mDoTimeBasedSentinelStatGathering : (mDoTimeBasedSentinelStatGathering = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.DoTimeBasedSentinelStatGathering")); }
			ScriptFunction DoMemoryTracking() { return mDoMemoryTracking ? mDoMemoryTracking : (mDoMemoryTracking = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.DoMemoryTracking")); }
			ScriptFunction StartAutomatedMapTestTimer() { return mStartAutomatedMapTestTimer ? mStartAutomatedMapTestTimer : (mStartAutomatedMapTestTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.StartAutomatedMapTestTimer")); }
			ScriptFunction StartAutomatedMapTestTimerWorker() { return mStartAutomatedMapTestTimerWorker ? mStartAutomatedMapTestTimerWorker : (mStartAutomatedMapTestTimerWorker = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.StartAutomatedMapTestTimerWorker")); }
			ScriptFunction CloseAutomatedMapTestTimer() { return mCloseAutomatedMapTestTimer ? mCloseAutomatedMapTestTimer : (mCloseAutomatedMapTestTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.CloseAutomatedMapTestTimer")); }
			ScriptFunction IncrementAutomatedTestingMapIndex() { return mIncrementAutomatedTestingMapIndex ? mIncrementAutomatedTestingMapIndex : (mIncrementAutomatedTestingMapIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.IncrementAutomatedTestingMapIndex")); }
			ScriptFunction IncrementNumberOfMatchesPlayed() { return mIncrementNumberOfMatchesPlayed ? mIncrementNumberOfMatchesPlayed : (mIncrementNumberOfMatchesPlayed = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.IncrementNumberOfMatchesPlayed")); }
			ScriptFunction GetNextAutomatedTestingMap() { return mGetNextAutomatedTestingMap ? mGetNextAutomatedTestingMap : (mGetNextAutomatedTestingMap = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.GetNextAutomatedTestingMap")); }
			ScriptFunction StartMatch() { return mStartMatch ? mStartMatch : (mStartMatch = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.StartMatch")); }
			ScriptFunction CheckForSentinelRun() { return mCheckForSentinelRun ? mCheckForSentinelRun : (mCheckForSentinelRun = ScriptObject.Find!(ScriptFunction)("Function Engine.AutoTestManager.CheckForSentinelRun")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
	void InitializeOptions(ScriptString Options)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeOptions, params.ptr, cast(void*)0);
	}
	void BeginSentinelRun(ScriptString TaskDescription, ScriptString TaskParameter, ScriptString TagDesc)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TaskDescription;
		*cast(ScriptString*)&params[12] = TaskParameter;
		*cast(ScriptString*)&params[24] = TagDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginSentinelRun, params.ptr, cast(void*)0);
	}
	void AddSentinelPerTimePeriodStats(Vector InLocation, Rotator InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		*cast(Rotator*)&params[12] = InRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSentinelPerTimePeriodStats, params.ptr, cast(void*)0);
	}
	void EndSentinelRun(UObject.EAutomatedRunResult RunResult)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UObject.EAutomatedRunResult*)params.ptr = RunResult;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndSentinelRun, params.ptr, cast(void*)0);
	}
	void DoTravelTheWorld()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoTravelTheWorld, cast(void*)0, cast(void*)0);
	}
	void DoSentinelActionPerLoadedMap()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoSentinelActionPerLoadedMap, cast(void*)0, cast(void*)0);
	}
	void HandlePerLoadedMapAudioStats()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HandlePerLoadedMapAudioStats, cast(void*)0, cast(void*)0);
	}
	void GetTravelLocations(ScriptName LevelName, PlayerController PC, ScriptArray!(Vector)* TravelPoints)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = LevelName;
		*cast(PlayerController*)&params[8] = PC;
		*cast(ScriptArray!(Vector)*)&params[12] = *TravelPoints;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTravelLocations, params.ptr, cast(void*)0);
		*TravelPoints = *cast(ScriptArray!(Vector)*)&params[12];
	}
	void DoSentinel_MemoryAtSpecificLocation(Vector InLocation, Rotator InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		*cast(Rotator*)&params[12] = InRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoSentinel_MemoryAtSpecificLocation, params.ptr, cast(void*)0);
	}
	void DoSentinel_PerfAtSpecificLocation(Vector* InLocation, Rotator* InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *InLocation;
		*cast(Rotator*)&params[12] = *InRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoSentinel_PerfAtSpecificLocation, params.ptr, cast(void*)0);
		*InLocation = *cast(Vector*)params.ptr;
		*InRotation = *cast(Rotator*)&params[12];
	}
	void DoSentinel_ViewDependentMemoryAtSpecificLocation(Vector* InLocation, Rotator* InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *InLocation;
		*cast(Rotator*)&params[12] = *InRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoSentinel_ViewDependentMemoryAtSpecificLocation, params.ptr, cast(void*)0);
		*InLocation = *cast(Vector*)params.ptr;
		*InRotation = *cast(Rotator*)&params[12];
	}
	void DoTimeBasedSentinelStatGathering()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoTimeBasedSentinelStatGathering, cast(void*)0, cast(void*)0);
	}
	void DoMemoryTracking()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoMemoryTracking, cast(void*)0, cast(void*)0);
	}
	void StartAutomatedMapTestTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartAutomatedMapTestTimer, cast(void*)0, cast(void*)0);
	}
	void StartAutomatedMapTestTimerWorker()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartAutomatedMapTestTimerWorker, cast(void*)0, cast(void*)0);
	}
	void CloseAutomatedMapTestTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseAutomatedMapTestTimer, cast(void*)0, cast(void*)0);
	}
	void IncrementAutomatedTestingMapIndex()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementAutomatedTestingMapIndex, cast(void*)0, cast(void*)0);
	}
	void IncrementNumberOfMatchesPlayed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementNumberOfMatchesPlayed, cast(void*)0, cast(void*)0);
	}
	ScriptString GetNextAutomatedTestingMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNextAutomatedTestingMap, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMatch, cast(void*)0, cast(void*)0);
	}
	bool CheckForSentinelRun()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckForSentinelRun, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
