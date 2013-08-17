module UnrealScript.Engine.WorldInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavMeshPathConstraint;
import UnrealScript.Engine.GameReplicationInfo;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Scene;
import UnrealScript.Engine.PostProcessChain;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MusicTrackDataStructures;
import UnrealScript.Engine.ReachSpec;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.LightmassLevelSettings;
import UnrealScript.Engine.Sequence;
import UnrealScript.Engine.ReverbVolume;
import UnrealScript.Engine.PortalVolume;
import UnrealScript.Engine.MapInfo;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.ClipPadEntry;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.ZoneInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.DecalManager;
import UnrealScript.Engine.BookMark;
import UnrealScript.Engine.PhysicsLODVerticalEmitter;
import UnrealScript.Engine.GameInfo;
import UnrealScript.Engine.DefaultPhysicsVolume;
import UnrealScript.Engine.LevelStreaming;
import UnrealScript.Engine.EmitterPool;
import UnrealScript.Engine.KismetBookMark;
import UnrealScript.Engine.MassiveLODOverrideVolume;
import UnrealScript.Engine.ObjectReferencer;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.ParticleEventManager;
import UnrealScript.Engine.EnvironmentVolume;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.EngineTypes;
import UnrealScript.Engine.Pylon;
import UnrealScript.Engine.CrowdPopulationManagerBase;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.FractureManager;

extern(C++) interface WorldInfo : ZoneInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.WorldInfo")()); }
	private static __gshared WorldInfo mDefaultProperties;
	@property final static WorldInfo DefaultProperties() { mixin(MGDPC!(WorldInfo, "WorldInfo Engine.Default__WorldInfo")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetGameSequence;
			ScriptFunction mAllControllers;
			ScriptFunction mIsConsoleBuild;
			ScriptFunction mGetWorldInfo;
			ScriptFunction mGetMapName;
			ScriptFunction mGetGameClass;
			ScriptFunction mAllNavigationPoints;
			ScriptFunction mForceGarbageCollection;
			ScriptFunction mIsPreparingMapChange;
			ScriptFunction mPrepareMapChange;
			ScriptFunction mCommitMapChange;
			ScriptFunction mCancelPendingMapChange;
			ScriptFunction mReleaseCachedConstraintsAndEvaluators;
			ScriptFunction mGetNavMeshPathConstraintFromCache;
			ScriptFunction mGetNavMeshPathGoalEvaluatorFromCache;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mUpdateMusicTrack;
			ScriptFunction mAddOnScreenDebugMessage;
			ScriptFunction mIsMenuLevel;
			ScriptFunction mGetGravityZ;
			ScriptFunction mGetAllRootSequences;
			ScriptFunction mSetLevelRBGravity;
			ScriptFunction mGetLocalURL;
			ScriptFunction mIsDemoBuild;
			ScriptFunction mIsPlayInEditor;
			ScriptFunction mIsPlayInPreview;
			ScriptFunction mVerifyNavList;
			ScriptFunction mGetAddressURL;
			ScriptFunction mServerTravel;
			ScriptFunction mIsInSeamlessTravel;
			ScriptFunction mThisIsNeverExecuted;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReset;
			ScriptFunction mRadiusNavigationPoints;
			ScriptFunction mNavigationPointCheck;
			ScriptFunction mAllPawns;
			ScriptFunction mNotifyMatchStarted;
			ScriptFunction mIsMapChangeReady;
			ScriptFunction mSeamlessTravel;
			ScriptFunction mSetSeamlessTravelMidpointPause;
			ScriptFunction mGetMapInfo;
			ScriptFunction mSetMapInfo;
			ScriptFunction mGetDetailMode;
			ScriptFunction mIsRecordingDemo;
			ScriptFunction mIsPlayingDemo;
			ScriptFunction mGetDemoFrameInfo;
			ScriptFunction mGetDemoRewindPoints;
			ScriptFunction mDoMemoryTracking;
			ScriptFunction mGetWorldFractureSettings;
			ScriptFunction mFindEnvironmentVolume;
			ScriptFunction mBeginHostMigration;
			ScriptFunction mToggleHostMigration;
			ScriptFunction mClearPhysicsPools;
		}
		public @property static final
		{
			ScriptFunction GetGameSequence() { mixin(MGF!("mGetGameSequence", "Function Engine.WorldInfo.GetGameSequence")()); }
			ScriptFunction AllControllers() { mixin(MGF!("mAllControllers", "Function Engine.WorldInfo.AllControllers")()); }
			ScriptFunction IsConsoleBuild() { mixin(MGF!("mIsConsoleBuild", "Function Engine.WorldInfo.IsConsoleBuild")()); }
			ScriptFunction GetWorldInfo() { mixin(MGF!("mGetWorldInfo", "Function Engine.WorldInfo.GetWorldInfo")()); }
			ScriptFunction GetMapName() { mixin(MGF!("mGetMapName", "Function Engine.WorldInfo.GetMapName")()); }
			ScriptFunction GetGameClass() { mixin(MGF!("mGetGameClass", "Function Engine.WorldInfo.GetGameClass")()); }
			ScriptFunction AllNavigationPoints() { mixin(MGF!("mAllNavigationPoints", "Function Engine.WorldInfo.AllNavigationPoints")()); }
			ScriptFunction ForceGarbageCollection() { mixin(MGF!("mForceGarbageCollection", "Function Engine.WorldInfo.ForceGarbageCollection")()); }
			ScriptFunction IsPreparingMapChange() { mixin(MGF!("mIsPreparingMapChange", "Function Engine.WorldInfo.IsPreparingMapChange")()); }
			ScriptFunction PrepareMapChange() { mixin(MGF!("mPrepareMapChange", "Function Engine.WorldInfo.PrepareMapChange")()); }
			ScriptFunction CommitMapChange() { mixin(MGF!("mCommitMapChange", "Function Engine.WorldInfo.CommitMapChange")()); }
			ScriptFunction CancelPendingMapChange() { mixin(MGF!("mCancelPendingMapChange", "Function Engine.WorldInfo.CancelPendingMapChange")()); }
			ScriptFunction ReleaseCachedConstraintsAndEvaluators() { mixin(MGF!("mReleaseCachedConstraintsAndEvaluators", "Function Engine.WorldInfo.ReleaseCachedConstraintsAndEvaluators")()); }
			ScriptFunction GetNavMeshPathConstraintFromCache() { mixin(MGF!("mGetNavMeshPathConstraintFromCache", "Function Engine.WorldInfo.GetNavMeshPathConstraintFromCache")()); }
			ScriptFunction GetNavMeshPathGoalEvaluatorFromCache() { mixin(MGF!("mGetNavMeshPathGoalEvaluatorFromCache", "Function Engine.WorldInfo.GetNavMeshPathGoalEvaluatorFromCache")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.WorldInfo.ReplicatedEvent")()); }
			ScriptFunction UpdateMusicTrack() { mixin(MGF!("mUpdateMusicTrack", "Function Engine.WorldInfo.UpdateMusicTrack")()); }
			ScriptFunction AddOnScreenDebugMessage() { mixin(MGF!("mAddOnScreenDebugMessage", "Function Engine.WorldInfo.AddOnScreenDebugMessage")()); }
			ScriptFunction IsMenuLevel() { mixin(MGF!("mIsMenuLevel", "Function Engine.WorldInfo.IsMenuLevel")()); }
			ScriptFunction GetGravityZ() { mixin(MGF!("mGetGravityZ", "Function Engine.WorldInfo.GetGravityZ")()); }
			ScriptFunction GetAllRootSequences() { mixin(MGF!("mGetAllRootSequences", "Function Engine.WorldInfo.GetAllRootSequences")()); }
			ScriptFunction SetLevelRBGravity() { mixin(MGF!("mSetLevelRBGravity", "Function Engine.WorldInfo.SetLevelRBGravity")()); }
			ScriptFunction GetLocalURL() { mixin(MGF!("mGetLocalURL", "Function Engine.WorldInfo.GetLocalURL")()); }
			ScriptFunction IsDemoBuild() { mixin(MGF!("mIsDemoBuild", "Function Engine.WorldInfo.IsDemoBuild")()); }
			ScriptFunction IsPlayInEditor() { mixin(MGF!("mIsPlayInEditor", "Function Engine.WorldInfo.IsPlayInEditor")()); }
			ScriptFunction IsPlayInPreview() { mixin(MGF!("mIsPlayInPreview", "Function Engine.WorldInfo.IsPlayInPreview")()); }
			ScriptFunction VerifyNavList() { mixin(MGF!("mVerifyNavList", "Function Engine.WorldInfo.VerifyNavList")()); }
			ScriptFunction GetAddressURL() { mixin(MGF!("mGetAddressURL", "Function Engine.WorldInfo.GetAddressURL")()); }
			ScriptFunction ServerTravel() { mixin(MGF!("mServerTravel", "Function Engine.WorldInfo.ServerTravel")()); }
			ScriptFunction IsInSeamlessTravel() { mixin(MGF!("mIsInSeamlessTravel", "Function Engine.WorldInfo.IsInSeamlessTravel")()); }
			ScriptFunction ThisIsNeverExecuted() { mixin(MGF!("mThisIsNeverExecuted", "Function Engine.WorldInfo.ThisIsNeverExecuted")()); }
			ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function Engine.WorldInfo.PreBeginPlay")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.WorldInfo.PostBeginPlay")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.WorldInfo.Reset")()); }
			ScriptFunction RadiusNavigationPoints() { mixin(MGF!("mRadiusNavigationPoints", "Function Engine.WorldInfo.RadiusNavigationPoints")()); }
			ScriptFunction NavigationPointCheck() { mixin(MGF!("mNavigationPointCheck", "Function Engine.WorldInfo.NavigationPointCheck")()); }
			ScriptFunction AllPawns() { mixin(MGF!("mAllPawns", "Function Engine.WorldInfo.AllPawns")()); }
			ScriptFunction NotifyMatchStarted() { mixin(MGF!("mNotifyMatchStarted", "Function Engine.WorldInfo.NotifyMatchStarted")()); }
			ScriptFunction IsMapChangeReady() { mixin(MGF!("mIsMapChangeReady", "Function Engine.WorldInfo.IsMapChangeReady")()); }
			ScriptFunction SeamlessTravel() { mixin(MGF!("mSeamlessTravel", "Function Engine.WorldInfo.SeamlessTravel")()); }
			ScriptFunction SetSeamlessTravelMidpointPause() { mixin(MGF!("mSetSeamlessTravelMidpointPause", "Function Engine.WorldInfo.SetSeamlessTravelMidpointPause")()); }
			ScriptFunction GetMapInfo() { mixin(MGF!("mGetMapInfo", "Function Engine.WorldInfo.GetMapInfo")()); }
			ScriptFunction SetMapInfo() { mixin(MGF!("mSetMapInfo", "Function Engine.WorldInfo.SetMapInfo")()); }
			ScriptFunction GetDetailMode() { mixin(MGF!("mGetDetailMode", "Function Engine.WorldInfo.GetDetailMode")()); }
			ScriptFunction IsRecordingDemo() { mixin(MGF!("mIsRecordingDemo", "Function Engine.WorldInfo.IsRecordingDemo")()); }
			ScriptFunction IsPlayingDemo() { mixin(MGF!("mIsPlayingDemo", "Function Engine.WorldInfo.IsPlayingDemo")()); }
			ScriptFunction GetDemoFrameInfo() { mixin(MGF!("mGetDemoFrameInfo", "Function Engine.WorldInfo.GetDemoFrameInfo")()); }
			ScriptFunction GetDemoRewindPoints() { mixin(MGF!("mGetDemoRewindPoints", "Function Engine.WorldInfo.GetDemoRewindPoints")()); }
			ScriptFunction DoMemoryTracking() { mixin(MGF!("mDoMemoryTracking", "Function Engine.WorldInfo.DoMemoryTracking")()); }
			ScriptFunction GetWorldFractureSettings() { mixin(MGF!("mGetWorldFractureSettings", "Function Engine.WorldInfo.GetWorldFractureSettings")()); }
			ScriptFunction FindEnvironmentVolume() { mixin(MGF!("mFindEnvironmentVolume", "Function Engine.WorldInfo.FindEnvironmentVolume")()); }
			ScriptFunction BeginHostMigration() { mixin(MGF!("mBeginHostMigration", "Function Engine.WorldInfo.BeginHostMigration")()); }
			ScriptFunction ToggleHostMigration() { mixin(MGF!("mToggleHostMigration", "Function Engine.WorldInfo.ToggleHostMigration")()); }
			ScriptFunction ClearPhysicsPools() { mixin(MGF!("mClearPhysicsPools", "Function Engine.WorldInfo.ClearPhysicsPools")()); }
		}
	}
	static struct Constants
	{
		enum MAX_INSTANCES_PER_CLASS = 5;
	}
	enum EHostMigrationProgress : ubyte
	{
		HostMigration_None = 0,
		HostMigration_FindingNewHost = 1,
		HostMigration_MigratingAsHost = 2,
		HostMigration_MigratingAsClient = 3,
		HostMigration_HostReadyToTravel = 4,
		HostMigration_MAX = 5,
	}
	enum EConsoleType : ubyte
	{
		CONSOLE_Any = 0,
		CONSOLE_Xbox360 = 1,
		CONSOLE_PS3 = 2,
		CONSOLE_Mobile = 3,
		CONSOLE_IPhone = 4,
		CONSOLE_Android = 5,
		CONSOLE_MAX = 6,
	}
	enum EVisibilityAggressiveness : ubyte
	{
		VIS_LeastAggressive = 0,
		VIS_ModeratelyAggressive = 1,
		VIS_MostAggressive = 2,
		VIS_Max = 3,
	}
	enum ENetMode : ubyte
	{
		NM_Standalone = 0,
		NM_DedicatedServer = 1,
		NM_ListenServer = 2,
		NM_Client = 3,
		NM_MAX = 4,
	}
	struct NavMeshPathGoalEvaluatorCacheDatum
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.NavMeshPathGoalEvaluatorCacheDatum")()); }
		@property final auto ref
		{
			int ListIdx() { mixin(MGPS!(int, 0)()); }
			NavMeshPathGoalEvaluator List() { mixin(MGPS!(NavMeshPathGoalEvaluator, 4)()); }
		}
	}
	struct HostMigrationState
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.HostMigrationState")()); }
		@property final
		{
			auto ref
			{
				ScriptString HostMigrationTravelURL() { mixin(MGPS!(ScriptString, 12)()); }
				float HostMigrationTravelCountdown() { mixin(MGPS!(float, 8)()); }
				float HostMigrationElapsedTime() { mixin(MGPS!(float, 4)()); }
				WorldInfo.EHostMigrationProgress HostMigrationProgress() { mixin(MGPS!(WorldInfo.EHostMigrationProgress, 0)()); }
			}
			bool bHostMigrationEnabled() { mixin(MGBPS!(24, 0x1)()); }
			bool bHostMigrationEnabled(bool val) { mixin(MSBPS!(24, 0x1)()); }
		}
	}
	struct PhysXVerticalProperties
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.PhysXVerticalProperties")()); }
		@property final auto ref WorldInfo.PhysXEmitterVerticalProperties Emitters() { mixin(MGPS!(WorldInfo.PhysXEmitterVerticalProperties, 0)()); }
	}
	struct WorldFractureSettings
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.WorldFractureSettings")()); }
		@property final
		{
			auto ref
			{
				float ChanceOfPhysicsChunkOverride() { mixin(MGPS!(float, 0)()); }
				float MaxExplosionChunkSize() { mixin(MGPS!(float, 8)()); }
				float MaxDamageChunkSize() { mixin(MGPS!(float, 16)()); }
				int MaxNumFacturedChunksToSpawnInAFrame() { mixin(MGPS!(int, 20)()); }
				float FractureExplosionVelScale() { mixin(MGPS!(float, 24)()); }
			}
			bool bEnableChanceOfPhysicsChunkOverride() { mixin(MGBPS!(4, 0x1)()); }
			bool bEnableChanceOfPhysicsChunkOverride(bool val) { mixin(MSBPS!(4, 0x1)()); }
			bool bLimitExplosionChunkSize() { mixin(MGBPS!(4, 0x2)()); }
			bool bLimitExplosionChunkSize(bool val) { mixin(MSBPS!(4, 0x2)()); }
			bool bLimitDamageChunkSize() { mixin(MGBPS!(12, 0x1)()); }
			bool bLimitDamageChunkSize(bool val) { mixin(MSBPS!(12, 0x1)()); }
		}
	}
	struct NavMeshPathConstraintCacheDatum
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.NavMeshPathConstraintCacheDatum")()); }
		@property final auto ref
		{
			int ListIdx() { mixin(MGPS!(int, 0)()); }
			NavMeshPathConstraint List() { mixin(MGPS!(NavMeshPathConstraint, 4)()); }
		}
	}
	struct LightmassWorldInfoSettings
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.LightmassWorldInfoSettings")()); }
		@property final
		{
			auto ref
			{
				float StaticLightingLevelScale() { mixin(MGPS!(float, 0)()); }
				int NumIndirectLightingBounces() { mixin(MGPS!(int, 4)()); }
				UObject.Color EnvironmentColor() { mixin(MGPS!(UObject.Color, 8)()); }
				float EnvironmentIntensity() { mixin(MGPS!(float, 12)()); }
				float EmissiveBoost() { mixin(MGPS!(float, 16)()); }
				float DiffuseBoost() { mixin(MGPS!(float, 20)()); }
				float SpecularBoost() { mixin(MGPS!(float, 24)()); }
				float IndirectNormalInfluenceBoost() { mixin(MGPS!(float, 28)()); }
				float DirectIlluminationOcclusionFraction() { mixin(MGPS!(float, 36)()); }
				float IndirectIlluminationOcclusionFraction() { mixin(MGPS!(float, 40)()); }
				float OcclusionExponent() { mixin(MGPS!(float, 44)()); }
				float FullyOccludedSamplesFraction() { mixin(MGPS!(float, 48)()); }
				float MaxOcclusionDistance() { mixin(MGPS!(float, 52)()); }
			}
			bool bUseNormalMapsForSimpleLightMaps() { mixin(MGBPS!(32, 0x1)()); }
			bool bUseNormalMapsForSimpleLightMaps(bool val) { mixin(MSBPS!(32, 0x1)()); }
			bool bUseAmbientOcclusion() { mixin(MGBPS!(32, 0x2)()); }
			bool bUseAmbientOcclusion(bool val) { mixin(MSBPS!(32, 0x2)()); }
			bool bEnableImageReflectionShadowing() { mixin(MGBPS!(32, 0x4)()); }
			bool bEnableImageReflectionShadowing(bool val) { mixin(MSBPS!(32, 0x4)()); }
			bool bVisualizeMaterialDiffuse() { mixin(MGBPS!(56, 0x1)()); }
			bool bVisualizeMaterialDiffuse(bool val) { mixin(MSBPS!(56, 0x1)()); }
			bool bVisualizeAmbientOcclusion() { mixin(MGBPS!(56, 0x2)()); }
			bool bVisualizeAmbientOcclusion(bool val) { mixin(MSBPS!(56, 0x2)()); }
		}
	}
	struct ScreenMessageString
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.ScreenMessageString")()); }
		@property final auto ref
		{
			QWord Key() { mixin(MGPS!(QWord, 0)()); }
			ScriptString ScreenMessage() { mixin(MGPS!(ScriptString, 8)()); }
			UObject.Color DisplayColor() { mixin(MGPS!(UObject.Color, 20)()); }
			float TimeToDisplay() { mixin(MGPS!(float, 24)()); }
			float CurrentTimeDisplayed() { mixin(MGPS!(float, 28)()); }
		}
	}
	struct PhysXEmitterVerticalProperties
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.PhysXEmitterVerticalProperties")()); }
		@property final
		{
			auto ref
			{
				int ParticlesLodMin() { mixin(MGPS!(int, 4)()); }
				int ParticlesLodMax() { mixin(MGPS!(int, 8)()); }
				int PacketsPerPhysXParticleSystemMax() { mixin(MGPS!(int, 12)()); }
				float SpawnLodVsFifoBias() { mixin(MGPS!(float, 20)()); }
			}
			bool bDisableLod() { mixin(MGBPS!(0, 0x1)()); }
			bool bDisableLod(bool val) { mixin(MSBPS!(0, 0x1)()); }
			bool bApplyCylindricalPacketCulling() { mixin(MGBPS!(16, 0x1)()); }
			bool bApplyCylindricalPacketCulling(bool val) { mixin(MSBPS!(16, 0x1)()); }
		}
	}
	struct ApexModuleDestructibleSettings
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.ApexModuleDestructibleSettings")()); }
		@property final
		{
			auto ref
			{
				int MaxChunkIslandCount() { mixin(MGPS!(int, 0)()); }
				int MaxRrbActorCount() { mixin(MGPS!(int, 4)()); }
				float MaxChunkSeparationLOD() { mixin(MGPS!(float, 8)()); }
			}
			bool bOverrideMaxChunkSeparationLOD() { mixin(MGBPS!(12, 0x1)()); }
			bool bOverrideMaxChunkSeparationLOD(bool val) { mixin(MSBPS!(12, 0x1)()); }
		}
	}
	struct PhysXSceneProperties
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.PhysXSceneProperties")()); }
		@property final auto ref
		{
			WorldInfo.PhysXSimulationProperties PrimaryScene() { mixin(MGPS!(WorldInfo.PhysXSimulationProperties, 0)()); }
			WorldInfo.PhysXSimulationProperties CompartmentRigidBody() { mixin(MGPS!(WorldInfo.PhysXSimulationProperties, 12)()); }
			WorldInfo.PhysXSimulationProperties CompartmentFluid() { mixin(MGPS!(WorldInfo.PhysXSimulationProperties, 24)()); }
			WorldInfo.PhysXSimulationProperties CompartmentCloth() { mixin(MGPS!(WorldInfo.PhysXSimulationProperties, 36)()); }
			WorldInfo.PhysXSimulationProperties CompartmentSoftBody() { mixin(MGPS!(WorldInfo.PhysXSimulationProperties, 48)()); }
		}
	}
	struct PhysXSimulationProperties
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.PhysXSimulationProperties")()); }
		@property final
		{
			auto ref
			{
				float TimeStep() { mixin(MGPS!(float, 4)()); }
				int MaxSubSteps() { mixin(MGPS!(int, 8)()); }
			}
			bool bUseHardware() { mixin(MGBPS!(0, 0x1)()); }
			bool bUseHardware(bool val) { mixin(MSBPS!(0, 0x1)()); }
			bool bFixedTimeStep() { mixin(MGBPS!(0, 0x2)()); }
			bool bFixedTimeStep(bool val) { mixin(MSBPS!(0, 0x2)()); }
		}
	}
	struct CompartmentRunList
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.CompartmentRunList")()); }
		@property final
		{
			bool RigidBody() { mixin(MGBPS!(0, 0x1)()); }
			bool RigidBody(bool val) { mixin(MSBPS!(0, 0x1)()); }
			bool Fluid() { mixin(MGBPS!(0, 0x2)()); }
			bool Fluid(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool Cloth() { mixin(MGBPS!(0, 0x4)()); }
			bool Cloth(bool val) { mixin(MSBPS!(0, 0x4)()); }
			bool SoftBody() { mixin(MGBPS!(0, 0x8)()); }
			bool SoftBody(bool val) { mixin(MSBPS!(0, 0x8)()); }
		}
	}
	struct NetViewer
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.WorldInfo.NetViewer")()); }
		@property final auto ref
		{
			PlayerController InViewer() { mixin(MGPS!(PlayerController, 0)()); }
			Actor Viewer() { mixin(MGPS!(Actor, 4)()); }
			Vector ViewLocation() { mixin(MGPS!(Vector, 8)()); }
			Vector ViewDir() { mixin(MGPS!(Vector, 20)()); }
		}
	}
	@property final
	{
		auto ref
		{
			WorldInfo.ENetMode NetMode() { mixin(MGPC!(WorldInfo.ENetMode, 1048)()); }
			GameInfo Game() { mixin(MGPC!(GameInfo, 1088)()); }
			float TimeSeconds() { mixin(MGPC!(float, 960)()); }
			GameReplicationInfo GRI() { mixin(MGPC!(GameReplicationInfo, 1044)()); }
			Vector DefaultColorScale() { mixin(MGPC!(Vector, 1168)()); }
			EmitterPool MyEmitterPool() { mixin(MGPC!(EmitterPool, 1348)()); }
			float TimeDilation() { mixin(MGPC!(float, 952)()); }
			PlayerReplicationInfo Pauser() { mixin(MGPC!(PlayerReplicationInfo, 984)()); }
			float MoveRepSize() { mixin(MGPC!(float, 1132)()); }
			float StallZ() { mixin(MGPC!(float, 1092)()); }
			ScriptArray!(LevelStreaming) StreamingLevels() { mixin(MGPC!(ScriptArray!(LevelStreaming), 840)()); }
			float PauseDelay() { mixin(MGPC!(float, 976)()); }
			float WorldGravityZ() { mixin(MGPC!(float, 1096)()); }
			float DemoPlayTimeDilation() { mixin(MGPC!(float, 956)()); }
			MusicTrackDataStructures.MusicTrackStruct ReplicatedMusicTrack() { mixin(MGPC!(MusicTrackDataStructures.MusicTrackStruct, 1272)()); }
			Actor.ETravelType NextTravelType() { mixin(MGPC!(Actor.ETravelType, 1049)()); }
			ScriptString NextURL() { mixin(MGPC!(ScriptString, 1148)()); }
			float NextSwitchCountdown() { mixin(MGPC!(float, 1160)()); }
			ScriptString EmitterPoolClassPath() { mixin(MGPC!(ScriptString, 1336)()); }
			ScriptString DecalManagerClassPath() { mixin(MGPC!(ScriptString, 1352)()); }
			DecalManager MyDecalManager() { mixin(MGPC!(DecalManager, 1364)()); }
			ScriptString FractureManagerClassPath() { mixin(MGPC!(ScriptString, 1368)()); }
			FractureManager MyFractureManager() { mixin(MGPC!(FractureManager, 1380)()); }
			ScriptString ParticleEventManagerClassPath() { mixin(MGPC!(ScriptString, 1384)()); }
			ParticleEventManager MyParticleEventManager() { mixin(MGPC!(ParticleEventManager, 1396)()); }
			PostProcessVolume.PostProcessSettings DefaultPostProcessSettings() { mixin(MGPC!(PostProcessVolume.PostProcessSettings, 492)()); }
			PostProcessChain WorldPostProcessChain() { mixin(MGPC!(PostProcessChain, 712)()); }
			float SquintModeKernelSize() { mixin(MGPC!(float, 724)()); }
			PostProcessVolume HighestPriorityPostProcessVolume() { mixin(MGPC!(PostProcessVolume, 728)()); }
			ReverbVolume.ReverbSettings DefaultReverbSettings() { mixin(MGPC!(ReverbVolume.ReverbSettings, 732)()); }
			ReverbVolume.InteriorSettings DefaultAmbientZoneSettings() { mixin(MGPC!(ReverbVolume.InteriorSettings, 748)()); }
			float FogStart() { mixin(MGPC!(float, 784)()); }
			float FogEnd() { mixin(MGPC!(float, 788)()); }
			UObject.Color FogColor() { mixin(MGPC!(UObject.Color, 792)()); }
			float BumpEnd() { mixin(MGPC!(float, 796)()); }
			ReverbVolume HighestPriorityReverbVolume() { mixin(MGPC!(ReverbVolume, 800)()); }
			ScriptArray!(MassiveLODOverrideVolume) MassiveLODOverrideVolumes() { mixin(MGPC!(ScriptArray!(MassiveLODOverrideVolume), 804)()); }
			ScriptArray!(PortalVolume) PortalVolumes() { mixin(MGPC!(ScriptArray!(PortalVolume), 816)()); }
			ScriptArray!(EnvironmentVolume) EnvironmentVolumes() { mixin(MGPC!(ScriptArray!(EnvironmentVolume), 828)()); }
			UObject.Double LastTimeUnbuiltLightingWasEncountered() { mixin(MGPC!(UObject.Double, 852)()); }
			BookMark BookMarks() { mixin(MGPC!(BookMark, 860)()); }
			KismetBookMark KismetBookMarks() { mixin(MGPC!(KismetBookMark, 900)()); }
			ScriptArray!(ClipPadEntry) ClipPadEntries() { mixin(MGPC!(ScriptArray!(ClipPadEntry), 940)()); }
			float RealTimeSeconds() { mixin(MGPC!(float, 964)()); }
			float AudioTimeSeconds() { mixin(MGPC!(float, 968)()); }
			float DeltaSeconds() { mixin(MGPC!(float, 972)()); }
			float RealTimeToUnPause() { mixin(MGPC!(float, 980)()); }
			ScriptString VisibleGroups() { mixin(MGPC!(ScriptString, 988)()); }
			ScriptString SelectedGroups() { mixin(MGPC!(ScriptString, 1000)()); }
			Texture2D DefaultTexture() { mixin(MGPC!(Texture2D, 1012)()); }
			Texture2D WireframeTexture() { mixin(MGPC!(Texture2D, 1016)()); }
			Texture2D WhiteSquareTexture() { mixin(MGPC!(Texture2D, 1020)()); }
			Texture2D LargeVertex() { mixin(MGPC!(Texture2D, 1024)()); }
			Texture2D BSPVertex() { mixin(MGPC!(Texture2D, 1028)()); }
			ScriptArray!(ScriptString) DeferredExecs() { mixin(MGPC!(ScriptArray!(ScriptString), 1032)()); }
			WorldInfo.EVisibilityAggressiveness VisibilityAggressiveness() { mixin(MGPC!(WorldInfo.EVisibilityAggressiveness, 1050)()); }
			EngineTypes.ELightingBuildQuality LevelLightingQuality() { mixin(MGPC!(EngineTypes.ELightingBuildQuality, 1051)()); }
			ScriptString ComputerName() { mixin(MGPC!(ScriptString, 1052)()); }
			ScriptString EngineVersion() { mixin(MGPC!(ScriptString, 1064)()); }
			ScriptString MinNetVersion() { mixin(MGPC!(ScriptString, 1076)()); }
			float DefaultGravityZ() { mixin(MGPC!(float, 1100)()); }
			float GlobalGravityZ() { mixin(MGPC!(float, 1104)()); }
			float RBPhysicsGravityScaling() { mixin(MGPC!(float, 1108)()); }
			NavigationPoint NavigationPointList() { mixin(MGPC!(NavigationPoint, 1112)()); }
			Controller ControllerList() { mixin(MGPC!(Controller, 1116)()); }
			Pawn PawnList() { mixin(MGPC!(Pawn, 1120)()); }
			CoverLink CoverList() { mixin(MGPC!(CoverLink, 1124)()); }
			Pylon PylonList() { mixin(MGPC!(Pylon, 1128)()); }
			ScriptArray!(WorldInfo.NetViewer) ReplicationViewers() { mixin(MGPC!(ScriptArray!(WorldInfo.NetViewer), 1136)()); }
			int PackedLightAndShadowMapTextureSize() { mixin(MGPC!(int, 1164)()); }
			ScriptArray!(ScriptClass) GameTypesSupportedOnThisMap() { mixin(MGPC!(ScriptArray!(ScriptClass), 1180)()); }
			ScriptClass GameTypeForPIE() { mixin(MGPC!(ScriptClass, 1192)()); }
			ScriptArray!(UObject) ClientDestroyedActorContent() { mixin(MGPC!(ScriptArray!(UObject), 1196)()); }
			ScriptArray!(ScriptName) PreparingLevelNames() { mixin(MGPC!(ScriptArray!(ScriptName), 1208)()); }
			ScriptName CommittedPersistentLevelName() { mixin(MGPC!(ScriptName, 1220)()); }
			ObjectReferencer PersistentMapForcedObjects() { mixin(MGPC!(ObjectReferencer, 1228)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'MusicComp'!
			MusicTrackDataStructures.MusicTrackStruct CurrentMusicTrack() { mixin(MGPC!(MusicTrackDataStructures.MusicTrackStruct, 1236)()); }
			ScriptString Title() { mixin(MGPC!(ScriptString, 1308)()); }
			ScriptString Author() { mixin(MGPC!(ScriptString, 1320)()); }
			MapInfo MyMapInfo() { mixin(MGPC!(MapInfo, 1332)()); }
			ProcBuildingRuleset ProcBuildingRulesetOverride() { mixin(MGPC!(ProcBuildingRuleset, 1400)()); }
			float MaxPhysicsDeltaTime() { mixin(MGPC!(float, 1404)()); }
			int MaxPhysicsSubsteps() { mixin(MGPC!(int, 1408)()); }
			WorldInfo.PhysXSceneProperties PhysicsProperties() { mixin(MGPC!(WorldInfo.PhysXSceneProperties, 1412)()); }
			ScriptArray!(WorldInfo.CompartmentRunList) CompartmentRunFrames() { mixin(MGPC!(ScriptArray!(WorldInfo.CompartmentRunList), 1472)()); }
			float DefaultSkinWidth() { mixin(MGPC!(float, 1484)()); }
			float ApexLODResourceBudget() { mixin(MGPC!(float, 1488)()); }
			WorldInfo.ApexModuleDestructibleSettings DestructibleSettings() { mixin(MGPC!(WorldInfo.ApexModuleDestructibleSettings, 1492)()); }
			PhysicsLODVerticalEmitter EmitterVertical() { mixin(MGPC!(PhysicsLODVerticalEmitter, 1508)()); }
			WorldInfo.PhysXVerticalProperties VerticalProperties() { mixin(MGPC!(WorldInfo.PhysXVerticalProperties, 1512)()); }
			float ChanceOfPhysicsChunkOverride() { mixin(MGPC!(float, 1536)()); }
			float MaxExplosionChunkSize() { mixin(MGPC!(float, 1540)()); }
			float MaxDamageChunkSize() { mixin(MGPC!(float, 1544)()); }
			float FractureExplosionVelScale() { mixin(MGPC!(float, 1548)()); }
			int MaxNumFacturedChunksToSpawnInAFrame() { mixin(MGPC!(int, 1552)()); }
			int NumFacturedChunksSpawnedThisFrame() { mixin(MGPC!(int, 1556)()); }
			float FracturedMeshWeaponDamage() { mixin(MGPC!(float, 1560)()); }
			int VisibilityCellSize() { mixin(MGPC!(int, 1564)()); }
			float CharacterLitIndirectBrightness() { mixin(MGPC!(float, 1568)()); }
			float CharacterLitIndirectContrastFactor() { mixin(MGPC!(float, 1572)()); }
			float CharacterShadowedIndirectBrightness() { mixin(MGPC!(float, 1576)()); }
			float CharacterShadowedIndirectContrastFactor() { mixin(MGPC!(float, 1580)()); }
			float CharacterLightingContrastFactor() { mixin(MGPC!(float, 1584)()); }
			Texture2D ImageReflectionEnvironmentTexture() { mixin(MGPC!(Texture2D, 1588)()); }
			UObject.LinearColor ImageReflectionEnvironmentColor() { mixin(MGPC!(UObject.LinearColor, 1592)()); }
			float ImageReflectionEnvironmentRotation() { mixin(MGPC!(float, 1608)()); }
			UObject.Map_Mirror ScreenMessages() { mixin(MGPC!(UObject.Map_Mirror, 1612)()); }
			ScriptArray!(WorldInfo.ScreenMessageString) PriorityScreenMessages() { mixin(MGPC!(ScriptArray!(WorldInfo.ScreenMessageString), 1672)()); }
			int MaxTrianglesPerLeaf() { mixin(MGPC!(int, 1684)()); }
			LightmassLevelSettings LMLevelSettings() { mixin(MGPC!(LightmassLevelSettings, 1688)()); }
			WorldInfo.LightmassWorldInfoSettings LightmassSettings() { mixin(MGPC!(WorldInfo.LightmassWorldInfoSettings, 1692)()); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'NavMeshPathConstraintCache'!
			// ERROR: Unsupported object class 'MapProperty' for the property named 'NavMeshPathGoalEvaluatorCache'!
			CrowdPopulationManagerBase PopulationManager() { mixin(MGPC!(CrowdPopulationManagerBase, 1872)()); }
			ScriptArray!(SeqAct_Latent) CrowdSpawnerActions() { mixin(MGPC!(ScriptArray!(SeqAct_Latent), 1876)()); }
			WorldInfo.HostMigrationState PeerHostMigration() { mixin(MGPC!(WorldInfo.HostMigrationState, 1888)()); }
			float HostMigrationTimeout() { mixin(MGPC!(float, 1916)()); }
		}
		bool bPlayersOnly() { mixin(MGBPC!(716, 0x200)()); }
		bool bPlayersOnly(bool val) { mixin(MSBPC!(716, 0x200)()); }
		bool bRequestedBlockOnAsyncLoading() { mixin(MGBPC!(716, 0x80)()); }
		bool bRequestedBlockOnAsyncLoading(bool val) { mixin(MSBPC!(716, 0x80)()); }
		bool bPlayersOnlyPending() { mixin(MGBPC!(716, 0x400)()); }
		bool bPlayersOnlyPending(bool val) { mixin(MSBPC!(716, 0x400)()); }
		bool bUseConsoleInput() { mixin(MGBPC!(716, 0x20000)()); }
		bool bUseConsoleInput(bool val) { mixin(MSBPC!(716, 0x20000)()); }
		bool bPersistPostProcessToNextLevel() { mixin(MGBPC!(716, 0x1)()); }
		bool bPersistPostProcessToNextLevel(bool val) { mixin(MSBPC!(716, 0x1)()); }
		bool bFogEnabled() { mixin(MGBPC!(716, 0x2)()); }
		bool bFogEnabled(bool val) { mixin(MSBPC!(716, 0x2)()); }
		bool bBumpOffsetEnabled() { mixin(MGBPC!(716, 0x4)()); }
		bool bBumpOffsetEnabled(bool val) { mixin(MSBPC!(716, 0x4)()); }
		bool bMapNeedsLightingFullyRebuilt() { mixin(MGBPC!(716, 0x8)()); }
		bool bMapNeedsLightingFullyRebuilt(bool val) { mixin(MSBPC!(716, 0x8)()); }
		bool bMapHasDLEsOutsideOfImportanceVolume() { mixin(MGBPC!(716, 0x10)()); }
		bool bMapHasDLEsOutsideOfImportanceVolume(bool val) { mixin(MSBPC!(716, 0x10)()); }
		bool bMapHasMultipleDominantLightsAffectingOnePrimitive() { mixin(MGBPC!(716, 0x20)()); }
		bool bMapHasMultipleDominantLightsAffectingOnePrimitive(bool val) { mixin(MSBPC!(716, 0x20)()); }
		bool bMapHasPathingErrors() { mixin(MGBPC!(716, 0x40)()); }
		bool bMapHasPathingErrors(bool val) { mixin(MSBPC!(716, 0x40)()); }
		bool bBegunPlay() { mixin(MGBPC!(716, 0x100)()); }
		bool bBegunPlay(bool val) { mixin(MSBPC!(716, 0x100)()); }
		bool bDropDetail() { mixin(MGBPC!(716, 0x800)()); }
		bool bDropDetail(bool val) { mixin(MSBPC!(716, 0x800)()); }
		bool bAggressiveLOD() { mixin(MGBPC!(716, 0x1000)()); }
		bool bAggressiveLOD(bool val) { mixin(MSBPC!(716, 0x1000)()); }
		bool bStartup() { mixin(MGBPC!(716, 0x2000)()); }
		bool bStartup(bool val) { mixin(MSBPC!(716, 0x2000)()); }
		bool bPathsRebuilt() { mixin(MGBPC!(716, 0x4000)()); }
		bool bPathsRebuilt(bool val) { mixin(MSBPC!(716, 0x4000)()); }
		bool bHasPathNodes() { mixin(MGBPC!(716, 0x8000)()); }
		bool bHasPathNodes(bool val) { mixin(MSBPC!(716, 0x8000)()); }
		bool bIsMenuLevel() { mixin(MGBPC!(716, 0x10000)()); }
		bool bIsMenuLevel(bool val) { mixin(MSBPC!(716, 0x10000)()); }
		bool bNoDefaultInventoryForPlayer() { mixin(MGBPC!(716, 0x40000)()); }
		bool bNoDefaultInventoryForPlayer(bool val) { mixin(MSBPC!(716, 0x40000)()); }
		bool bNoPathWarnings() { mixin(MGBPC!(716, 0x80000)()); }
		bool bNoPathWarnings(bool val) { mixin(MSBPC!(716, 0x80000)()); }
		bool bHighPriorityLoading() { mixin(MGBPC!(716, 0x100000)()); }
		bool bHighPriorityLoading(bool val) { mixin(MSBPC!(716, 0x100000)()); }
		bool bHighPriorityLoadingLocal() { mixin(MGBPC!(716, 0x200000)()); }
		bool bHighPriorityLoadingLocal(bool val) { mixin(MSBPC!(716, 0x200000)()); }
		bool bUseProcBuildingRulesetOverride() { mixin(MGBPC!(716, 0x400000)()); }
		bool bUseProcBuildingRulesetOverride(bool val) { mixin(MSBPC!(716, 0x400000)()); }
		bool bSupportDoubleBufferedPhysics() { mixin(MGBPC!(716, 0x800000)()); }
		bool bSupportDoubleBufferedPhysics(bool val) { mixin(MSBPC!(716, 0x800000)()); }
		bool bEnableChanceOfPhysicsChunkOverride() { mixin(MGBPC!(716, 0x1000000)()); }
		bool bEnableChanceOfPhysicsChunkOverride(bool val) { mixin(MSBPC!(716, 0x1000000)()); }
		bool bLimitExplosionChunkSize() { mixin(MGBPC!(716, 0x2000000)()); }
		bool bLimitExplosionChunkSize(bool val) { mixin(MSBPC!(716, 0x2000000)()); }
		bool bLimitDamageChunkSize() { mixin(MGBPC!(716, 0x4000000)()); }
		bool bLimitDamageChunkSize(bool val) { mixin(MSBPC!(716, 0x4000000)()); }
		bool bPrecomputeVisibility() { mixin(MGBPC!(716, 0x8000000)()); }
		bool bPrecomputeVisibility(bool val) { mixin(MSBPC!(716, 0x8000000)()); }
		bool bPlaceCellsOnSurfaces() { mixin(MGBPC!(716, 0x10000000)()); }
		bool bPlaceCellsOnSurfaces(bool val) { mixin(MSBPC!(716, 0x10000000)()); }
		bool bAllowLightEnvSphericalHarmonicLights() { mixin(MGBPC!(716, 0x20000000)()); }
		bool bAllowLightEnvSphericalHarmonicLights(bool val) { mixin(MSBPC!(716, 0x20000000)()); }
		bool bAllowModulateBetterShadows() { mixin(MGBPC!(716, 0x40000000)()); }
		bool bAllowModulateBetterShadows(bool val) { mixin(MSBPC!(716, 0x40000000)()); }
		bool bIncreaseFogNearPrecision() { mixin(MGBPC!(716, 0x80000000)()); }
		bool bIncreaseFogNearPrecision(bool val) { mixin(MSBPC!(716, 0x80000000)()); }
		bool bUseGlobalIllumination() { mixin(MGBPC!(720, 0x1)()); }
		bool bUseGlobalIllumination(bool val) { mixin(MSBPC!(720, 0x1)()); }
		bool bForceNoPrecomputedLighting() { mixin(MGBPC!(720, 0x2)()); }
		bool bForceNoPrecomputedLighting(bool val) { mixin(MSBPC!(720, 0x2)()); }
		bool bSimpleLightmapsStoredInLinearSpace() { mixin(MGBPC!(720, 0x4)()); }
		bool bSimpleLightmapsStoredInLinearSpace(bool val) { mixin(MSBPC!(720, 0x4)()); }
		bool bHaveActiveCrowd() { mixin(MGBPC!(720, 0x8)()); }
		bool bHaveActiveCrowd(bool val) { mixin(MSBPC!(720, 0x8)()); }
		bool bAllowHostMigration() { mixin(MGBPC!(720, 0x10)()); }
		bool bAllowHostMigration(bool val) { mixin(MSBPC!(720, 0x10)()); }
	}
final:
	Sequence GetGameSequence()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameSequence, params.ptr, cast(void*)0);
		return *cast(Sequence*)params.ptr;
	}
	void AllControllers(ScriptClass BaseClass, ref Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllControllers, params.ptr, cast(void*)0);
		*C = *cast(Controller*)&params[4];
	}
	static bool IsConsoleBuild(WorldInfo.EConsoleType ConsoleType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(WorldInfo.EConsoleType*)params.ptr = ConsoleType;
		StaticClass.ProcessEvent(Functions.IsConsoleBuild, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	static WorldInfo GetWorldInfo()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetWorldInfo, params.ptr, cast(void*)0);
		return *cast(WorldInfo*)params.ptr;
	}
	ScriptString GetMapName(bool bIncludePrefix)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bIncludePrefix;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMapName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptClass GetGameClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void AllNavigationPoints(ScriptClass BaseClass, ref NavigationPoint N)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(NavigationPoint*)&params[4] = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllNavigationPoints, params.ptr, cast(void*)0);
		*N = *cast(NavigationPoint*)&params[4];
	}
	void ForceGarbageCollection(bool bFullPurge)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFullPurge;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceGarbageCollection, params.ptr, cast(void*)0);
	}
	bool IsPreparingMapChange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPreparingMapChange, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PrepareMapChange(ref const ScriptArray!(ScriptName) LevelNames)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = LevelNames;
		(cast(ScriptObject)this).ProcessEvent(Functions.PrepareMapChange, params.ptr, cast(void*)0);
		*LevelNames = *cast(ScriptArray!(ScriptName)*)params.ptr;
	}
	void CommitMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CommitMapChange, cast(void*)0, cast(void*)0);
	}
	void CancelPendingMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CancelPendingMapChange, cast(void*)0, cast(void*)0);
	}
	void ReleaseCachedConstraintsAndEvaluators()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReleaseCachedConstraintsAndEvaluators, cast(void*)0, cast(void*)0);
	}
	NavMeshPathConstraint GetNavMeshPathConstraintFromCache(ScriptClass ConstraintClass, NavigationHandle Requestor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ConstraintClass;
		*cast(NavigationHandle*)&params[4] = Requestor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNavMeshPathConstraintFromCache, params.ptr, cast(void*)0);
		return *cast(NavMeshPathConstraint*)&params[8];
	}
	NavMeshPathGoalEvaluator GetNavMeshPathGoalEvaluatorFromCache(ScriptClass GoalEvalClass, NavigationHandle Requestor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GoalEvalClass;
		*cast(NavigationHandle*)&params[4] = Requestor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNavMeshPathGoalEvaluatorFromCache, params.ptr, cast(void*)0);
		return *cast(NavMeshPathGoalEvaluator*)&params[8];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void UpdateMusicTrack(MusicTrackDataStructures.MusicTrackStruct NewMusicTrack)
	{
		ubyte params[36];
		params[] = 0;
		*cast(MusicTrackDataStructures.MusicTrackStruct*)params.ptr = NewMusicTrack;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateMusicTrack, params.ptr, cast(void*)0);
	}
	void AddOnScreenDebugMessage(int Key, float TimeToDisplay, UObject.Color DisplayColor, ScriptString DebugMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Key;
		*cast(float*)&params[4] = TimeToDisplay;
		*cast(UObject.Color*)&params[8] = DisplayColor;
		*cast(ScriptString*)&params[12] = DebugMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddOnScreenDebugMessage, params.ptr, cast(void*)0);
	}
	static bool IsMenuLevel(ScriptString MapName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		StaticClass.ProcessEvent(Functions.IsMenuLevel, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	float GetGravityZ()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGravityZ, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	ScriptArray!(Sequence) GetAllRootSequences()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAllRootSequences, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(Sequence)*)params.ptr;
	}
	void SetLevelRBGravity(Vector NewGrav)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewGrav;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLevelRBGravity, params.ptr, cast(void*)0);
	}
	ScriptString GetLocalURL()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocalURL, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	static bool IsDemoBuild()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.IsDemoBuild, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static bool IsPlayInEditor()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.IsPlayInEditor, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static bool IsPlayInPreview()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.IsPlayInPreview, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void VerifyNavList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.VerifyNavList, cast(void*)0, cast(void*)0);
	}
	ScriptString GetAddressURL()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAddressURL, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void ServerTravel(ScriptString pURL, bool bAbsolute, bool bShouldSkipGameNotify)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(bool*)&params[12] = bAbsolute;
		*cast(bool*)&params[16] = bShouldSkipGameNotify;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerTravel, params.ptr, cast(void*)0);
	}
	bool IsInSeamlessTravel()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInSeamlessTravel, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ThisIsNeverExecuted(DefaultPhysicsVolume P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(DefaultPhysicsVolume*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThisIsNeverExecuted, params.ptr, cast(void*)0);
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void RadiusNavigationPoints(ScriptClass BaseClass, ref NavigationPoint N, Vector Point, float Radius)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(NavigationPoint*)&params[4] = N;
		*cast(Vector*)&params[8] = Point;
		*cast(float*)&params[20] = Radius;
		(cast(ScriptObject)this).ProcessEvent(Functions.RadiusNavigationPoints, params.ptr, cast(void*)0);
		*N = *cast(NavigationPoint*)&params[4];
	}
	void NavigationPointCheck(Vector Point, Vector Extent, ScriptArray!(NavigationPoint)* Navs, ScriptArray!(ReachSpec)* Specs)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Vector*)&params[12] = Extent;
		*cast(ScriptArray!(NavigationPoint)*)&params[24] = Navs;
		*cast(ScriptArray!(ReachSpec)*)&params[36] = Specs;
		(cast(ScriptObject)this).ProcessEvent(Functions.NavigationPointCheck, params.ptr, cast(void*)0);
		*Navs = *cast(ScriptArray!(NavigationPoint)*)&params[24];
		*Specs = *cast(ScriptArray!(ReachSpec)*)&params[36];
	}
	void AllPawns(ScriptClass BaseClass, ref Pawn P, Vector TestLocation, float TestRadius)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Pawn*)&params[4] = P;
		*cast(Vector*)&params[8] = TestLocation;
		*cast(float*)&params[20] = TestRadius;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllPawns, params.ptr, cast(void*)0);
		*P = *cast(Pawn*)&params[4];
	}
	void NotifyMatchStarted(bool bShouldActivateLevelStartupEvents, bool bShouldActivateLevelBeginningEvents, bool bShouldActivateLevelLoadedEvents)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldActivateLevelStartupEvents;
		*cast(bool*)&params[4] = bShouldActivateLevelBeginningEvents;
		*cast(bool*)&params[8] = bShouldActivateLevelLoadedEvents;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyMatchStarted, params.ptr, cast(void*)0);
	}
	bool IsMapChangeReady()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsMapChangeReady, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SeamlessTravel(ScriptString pURL, bool bAbsolute, UObject.Guid MapPackageGuid)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(bool*)&params[12] = bAbsolute;
		*cast(UObject.Guid*)&params[16] = MapPackageGuid;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeamlessTravel, params.ptr, cast(void*)0);
	}
	void SetSeamlessTravelMidpointPause(bool bNowPaused)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowPaused;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSeamlessTravelMidpointPause, params.ptr, cast(void*)0);
	}
	MapInfo GetMapInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMapInfo, params.ptr, cast(void*)0);
		return *cast(MapInfo*)params.ptr;
	}
	void SetMapInfo(MapInfo NewMapInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MapInfo*)params.ptr = NewMapInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMapInfo, params.ptr, cast(void*)0);
	}
	Scene.EDetailMode GetDetailMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDetailMode, params.ptr, cast(void*)0);
		return *cast(Scene.EDetailMode*)params.ptr;
	}
	bool IsRecordingDemo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsRecordingDemo, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsPlayingDemo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPlayingDemo, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void GetDemoFrameInfo(int* CurrentFrame, int* TotalFrames)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = CurrentFrame;
		*cast(int*)&params[4] = TotalFrames;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDemoFrameInfo, params.ptr, cast(void*)0);
		*CurrentFrame = *cast(int*)params.ptr;
		*TotalFrames = *cast(int*)&params[4];
	}
	bool GetDemoRewindPoints(ref ScriptArray!(int) OutRewindPoints)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = OutRewindPoints;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDemoRewindPoints, params.ptr, cast(void*)0);
		*OutRewindPoints = *cast(ScriptArray!(int)*)params.ptr;
		return *cast(bool*)&params[12];
	}
	void DoMemoryTracking()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoMemoryTracking, cast(void*)0, cast(void*)0);
	}
	WorldInfo.WorldFractureSettings GetWorldFractureSettings()
	{
		ubyte params[28];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWorldFractureSettings, params.ptr, cast(void*)0);
		return *cast(WorldInfo.WorldFractureSettings*)params.ptr;
	}
	EnvironmentVolume FindEnvironmentVolume(Vector TestLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = TestLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindEnvironmentVolume, params.ptr, cast(void*)0);
		return *cast(EnvironmentVolume*)&params[12];
	}
	bool BeginHostMigration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginHostMigration, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ToggleHostMigration(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleHostMigration, params.ptr, cast(void*)0);
	}
	void ClearPhysicsPools()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPhysicsPools, cast(void*)0, cast(void*)0);
	}
}
