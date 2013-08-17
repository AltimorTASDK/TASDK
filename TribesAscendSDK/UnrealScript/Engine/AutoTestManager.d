module UnrealScript.Engine.AutoTestManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface AutoTestManager : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AutoTestManager")()); }
	private static __gshared AutoTestManager mDefaultProperties;
	@property final static AutoTestManager DefaultProperties() { mixin(MGDPC!(AutoTestManager, "AutoTestManager Engine.Default__AutoTestManager")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.AutoTestManager.PostBeginPlay")()); }
			ScriptFunction Timer() { mixin(MGF!("mTimer", "Function Engine.AutoTestManager.Timer")()); }
			ScriptFunction InitializeOptions() { mixin(MGF!("mInitializeOptions", "Function Engine.AutoTestManager.InitializeOptions")()); }
			ScriptFunction BeginSentinelRun() { mixin(MGF!("mBeginSentinelRun", "Function Engine.AutoTestManager.BeginSentinelRun")()); }
			ScriptFunction AddSentinelPerTimePeriodStats() { mixin(MGF!("mAddSentinelPerTimePeriodStats", "Function Engine.AutoTestManager.AddSentinelPerTimePeriodStats")()); }
			ScriptFunction EndSentinelRun() { mixin(MGF!("mEndSentinelRun", "Function Engine.AutoTestManager.EndSentinelRun")()); }
			ScriptFunction DoTravelTheWorld() { mixin(MGF!("mDoTravelTheWorld", "Function Engine.AutoTestManager.DoTravelTheWorld")()); }
			ScriptFunction DoSentinelActionPerLoadedMap() { mixin(MGF!("mDoSentinelActionPerLoadedMap", "Function Engine.AutoTestManager.DoSentinelActionPerLoadedMap")()); }
			ScriptFunction HandlePerLoadedMapAudioStats() { mixin(MGF!("mHandlePerLoadedMapAudioStats", "Function Engine.AutoTestManager.HandlePerLoadedMapAudioStats")()); }
			ScriptFunction GetTravelLocations() { mixin(MGF!("mGetTravelLocations", "Function Engine.AutoTestManager.GetTravelLocations")()); }
			ScriptFunction DoSentinel_MemoryAtSpecificLocation() { mixin(MGF!("mDoSentinel_MemoryAtSpecificLocation", "Function Engine.AutoTestManager.DoSentinel_MemoryAtSpecificLocation")()); }
			ScriptFunction DoSentinel_PerfAtSpecificLocation() { mixin(MGF!("mDoSentinel_PerfAtSpecificLocation", "Function Engine.AutoTestManager.DoSentinel_PerfAtSpecificLocation")()); }
			ScriptFunction DoSentinel_ViewDependentMemoryAtSpecificLocation() { mixin(MGF!("mDoSentinel_ViewDependentMemoryAtSpecificLocation", "Function Engine.AutoTestManager.DoSentinel_ViewDependentMemoryAtSpecificLocation")()); }
			ScriptFunction DoTimeBasedSentinelStatGathering() { mixin(MGF!("mDoTimeBasedSentinelStatGathering", "Function Engine.AutoTestManager.DoTimeBasedSentinelStatGathering")()); }
			ScriptFunction DoMemoryTracking() { mixin(MGF!("mDoMemoryTracking", "Function Engine.AutoTestManager.DoMemoryTracking")()); }
			ScriptFunction StartAutomatedMapTestTimer() { mixin(MGF!("mStartAutomatedMapTestTimer", "Function Engine.AutoTestManager.StartAutomatedMapTestTimer")()); }
			ScriptFunction StartAutomatedMapTestTimerWorker() { mixin(MGF!("mStartAutomatedMapTestTimerWorker", "Function Engine.AutoTestManager.StartAutomatedMapTestTimerWorker")()); }
			ScriptFunction CloseAutomatedMapTestTimer() { mixin(MGF!("mCloseAutomatedMapTestTimer", "Function Engine.AutoTestManager.CloseAutomatedMapTestTimer")()); }
			ScriptFunction IncrementAutomatedTestingMapIndex() { mixin(MGF!("mIncrementAutomatedTestingMapIndex", "Function Engine.AutoTestManager.IncrementAutomatedTestingMapIndex")()); }
			ScriptFunction IncrementNumberOfMatchesPlayed() { mixin(MGF!("mIncrementNumberOfMatchesPlayed", "Function Engine.AutoTestManager.IncrementNumberOfMatchesPlayed")()); }
			ScriptFunction GetNextAutomatedTestingMap() { mixin(MGF!("mGetNextAutomatedTestingMap", "Function Engine.AutoTestManager.GetNextAutomatedTestingMap")()); }
			ScriptFunction StartMatch() { mixin(MGF!("mStartMatch", "Function Engine.AutoTestManager.StartMatch")()); }
			ScriptFunction CheckForSentinelRun() { mixin(MGF!("mCheckForSentinelRun", "Function Engine.AutoTestManager.CheckForSentinelRun")()); }
		}
	}
	static struct TravelTheWorld
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.AutoTestManager.TravelTheWorld")()); }
	}
	static struct SentinelHandleCauseEventCommand
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.AutoTestManager.SentinelHandleCauseEventCommand")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) AutomatedMapTestingList() { mixin(MGPC!(ScriptArray!(ScriptString), 488)()); }
			ScriptArray!(Vector) SentinelTravelArray() { mixin(MGPC!(ScriptArray!(Vector), 576)()); }
			ScriptArray!(ScriptString) CommandsToRunAtEachTravelTheWorldNode() { mixin(MGPC!(ScriptArray!(ScriptString), 608)()); }
			ScriptString CommandStringToExec() { mixin(MGPC!(ScriptString, 620)()); }
			int NumMinutesPerMap() { mixin(MGPC!(int, 604)()); }
			int TravelPointsIncrement() { mixin(MGPC!(int, 600)()); }
			int NumRotationsIncrement() { mixin(MGPC!(int, 596)()); }
			int SentinelIdx() { mixin(MGPC!(int, 592)()); }
			int SentinelNavigationIdx() { mixin(MGPC!(int, 588)()); }
			PlayerController SentinelPC() { mixin(MGPC!(PlayerController, 572)()); }
			ScriptString SentinelTagDesc() { mixin(MGPC!(ScriptString, 560)()); }
			ScriptString SentinelTaskParameter() { mixin(MGPC!(ScriptString, 548)()); }
			ScriptString SentinelTaskDescription() { mixin(MGPC!(ScriptString, 536)()); }
			ScriptString AutomatedMapTestingTransitionMap() { mixin(MGPC!(ScriptString, 524)()); }
			ScriptString AutomatedTestingExecCommandToRunAtStartMatch() { mixin(MGPC!(ScriptString, 512)()); }
			int NumMapListCyclesDone() { mixin(MGPC!(int, 508)()); }
			int NumberOfMatchesPlayed() { mixin(MGPC!(int, 504)()); }
			int NumAutomatedMapTestingCycles() { mixin(MGPC!(int, 500)()); }
			int AutomatedTestingMapIndex() { mixin(MGPC!(int, 484)()); }
			int AutomatedPerfRemainingTime() { mixin(MGPC!(int, 480)()); }
		}
		bool bSentinelStreamingLevelStillLoading() { mixin(MGBPC!(476, 0x100)()); }
		bool bSentinelStreamingLevelStillLoading(bool val) { mixin(MSBPC!(476, 0x100)()); }
		bool bDoingASentinelRun() { mixin(MGBPC!(476, 0x80)()); }
		bool bDoingASentinelRun(bool val) { mixin(MSBPC!(476, 0x80)()); }
		bool bCheckingForMemLeaks() { mixin(MGBPC!(476, 0x40)()); }
		bool bCheckingForMemLeaks(bool val) { mixin(MSBPC!(476, 0x40)()); }
		bool bCheckingForFragmentation() { mixin(MGBPC!(476, 0x20)()); }
		bool bCheckingForFragmentation(bool val) { mixin(MSBPC!(476, 0x20)()); }
		bool bExitOnCyclesComplete() { mixin(MGBPC!(476, 0x10)()); }
		bool bExitOnCyclesComplete(bool val) { mixin(MSBPC!(476, 0x10)()); }
		bool bAutomatedTestingWithOpen() { mixin(MGBPC!(476, 0x8)()); }
		bool bAutomatedTestingWithOpen(bool val) { mixin(MSBPC!(476, 0x8)()); }
		bool bUsingAutomatedTestingMapList() { mixin(MGBPC!(476, 0x4)()); }
		bool bUsingAutomatedTestingMapList(bool val) { mixin(MSBPC!(476, 0x4)()); }
		bool bAutoContinueToNextRound() { mixin(MGBPC!(476, 0x2)()); }
		bool bAutoContinueToNextRound(bool val) { mixin(MSBPC!(476, 0x2)()); }
		bool bAutomatedPerfTesting() { mixin(MGBPC!(476, 0x1)()); }
		bool bAutomatedPerfTesting(bool val) { mixin(MSBPC!(476, 0x1)()); }
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
	void BeginSentinelRun(const ScriptString TaskDescription, const ScriptString TaskParameter, const ScriptString TagDesc)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TaskDescription;
		*cast(ScriptString*)&params[12] = TaskParameter;
		*cast(ScriptString*)&params[24] = TagDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginSentinelRun, params.ptr, cast(void*)0);
	}
	void AddSentinelPerTimePeriodStats(const Vector InLocation, const Rotator InRotation)
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
	void GetTravelLocations(ScriptName LevelName, PlayerController PC, ref ScriptArray!(Vector) TravelPoints)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = LevelName;
		*cast(PlayerController*)&params[8] = PC;
		*cast(ScriptArray!(Vector)*)&params[12] = TravelPoints;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTravelLocations, params.ptr, cast(void*)0);
		*TravelPoints = *cast(ScriptArray!(Vector)*)&params[12];
	}
	void DoSentinel_MemoryAtSpecificLocation(const Vector InLocation, const Rotator InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		*cast(Rotator*)&params[12] = InRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoSentinel_MemoryAtSpecificLocation, params.ptr, cast(void*)0);
	}
	void DoSentinel_PerfAtSpecificLocation(ref const Vector InLocation, ref const Rotator InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		*cast(Rotator*)&params[12] = InRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoSentinel_PerfAtSpecificLocation, params.ptr, cast(void*)0);
		*InLocation = *cast(Vector*)params.ptr;
		*InRotation = *cast(Rotator*)&params[12];
	}
	void DoSentinel_ViewDependentMemoryAtSpecificLocation(ref const Vector InLocation, ref const Rotator InRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		*cast(Rotator*)&params[12] = InRotation;
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
