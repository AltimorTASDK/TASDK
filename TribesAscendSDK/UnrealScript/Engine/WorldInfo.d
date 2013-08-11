module UnrealScript.Engine.WorldInfo;

import ScriptClasses;
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
	enum MAX_INSTANCES_PER_CLASS = 5;
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
		@property final auto ref
		{
			int ListIdx() { return *cast(int*)(cast(size_t)&this + 0); }
			NavMeshPathGoalEvaluator List() { return *cast(NavMeshPathGoalEvaluator*)(cast(size_t)&this + 4); }
		}
	}
	struct HostMigrationState
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptString HostMigrationTravelURL() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
				float HostMigrationTravelCountdown() { return *cast(float*)(cast(size_t)&this + 8); }
				float HostMigrationElapsedTime() { return *cast(float*)(cast(size_t)&this + 4); }
				WorldInfo.EHostMigrationProgress HostMigrationProgress() { return *cast(WorldInfo.EHostMigrationProgress*)(cast(size_t)&this + 0); }
			}
			bool bHostMigrationEnabled() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bHostMigrationEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	struct PhysXVerticalProperties
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final auto ref WorldInfo.PhysXEmitterVerticalProperties Emitters() { return *cast(WorldInfo.PhysXEmitterVerticalProperties*)(cast(size_t)&this + 0); }
	}
	struct WorldFractureSettings
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final
		{
			auto ref
			{
				float ChanceOfPhysicsChunkOverride() { return *cast(float*)(cast(size_t)&this + 0); }
				float MaxExplosionChunkSize() { return *cast(float*)(cast(size_t)&this + 8); }
				float MaxDamageChunkSize() { return *cast(float*)(cast(size_t)&this + 16); }
				int MaxNumFacturedChunksToSpawnInAFrame() { return *cast(int*)(cast(size_t)&this + 20); }
				float FractureExplosionVelScale() { return *cast(float*)(cast(size_t)&this + 24); }
			}
			bool bEnableChanceOfPhysicsChunkOverride() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
			bool bEnableChanceOfPhysicsChunkOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
			bool bLimitExplosionChunkSize() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
			bool bLimitExplosionChunkSize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
			bool bLimitDamageChunkSize() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bLimitDamageChunkSize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	struct NavMeshPathConstraintCacheDatum
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final auto ref
		{
			int ListIdx() { return *cast(int*)(cast(size_t)&this + 0); }
			NavMeshPathConstraint List() { return *cast(NavMeshPathConstraint*)(cast(size_t)&this + 4); }
		}
	}
	struct LightmassWorldInfoSettings
	{
		private ubyte __buffer__[60];
	public extern(D):
		@property final
		{
			auto ref
			{
				float StaticLightingLevelScale() { return *cast(float*)(cast(size_t)&this + 0); }
				int NumIndirectLightingBounces() { return *cast(int*)(cast(size_t)&this + 4); }
				UObject.Color EnvironmentColor() { return *cast(UObject.Color*)(cast(size_t)&this + 8); }
				float EnvironmentIntensity() { return *cast(float*)(cast(size_t)&this + 12); }
				float EmissiveBoost() { return *cast(float*)(cast(size_t)&this + 16); }
				float DiffuseBoost() { return *cast(float*)(cast(size_t)&this + 20); }
				float SpecularBoost() { return *cast(float*)(cast(size_t)&this + 24); }
				float IndirectNormalInfluenceBoost() { return *cast(float*)(cast(size_t)&this + 28); }
				float DirectIlluminationOcclusionFraction() { return *cast(float*)(cast(size_t)&this + 36); }
				float IndirectIlluminationOcclusionFraction() { return *cast(float*)(cast(size_t)&this + 40); }
				float OcclusionExponent() { return *cast(float*)(cast(size_t)&this + 44); }
				float FullyOccludedSamplesFraction() { return *cast(float*)(cast(size_t)&this + 48); }
				float MaxOcclusionDistance() { return *cast(float*)(cast(size_t)&this + 52); }
			}
			bool bUseNormalMapsForSimpleLightMaps() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
			bool bUseNormalMapsForSimpleLightMaps(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
			bool bUseAmbientOcclusion() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x2) != 0; }
			bool bUseAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x2; } return val; }
			bool bEnableImageReflectionShadowing() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x4) != 0; }
			bool bEnableImageReflectionShadowing(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x4; } return val; }
			bool bVisualizeMaterialDiffuse() { return (*cast(uint*)(cast(size_t)&this + 56) & 0x1) != 0; }
			bool bVisualizeMaterialDiffuse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 56) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 56) &= ~0x1; } return val; }
			bool bVisualizeAmbientOcclusion() { return (*cast(uint*)(cast(size_t)&this + 56) & 0x2) != 0; }
			bool bVisualizeAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 56) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 56) &= ~0x2; } return val; }
		}
	}
	struct ScreenMessageString
	{
		private ubyte __buffer__[32];
	public extern(D):
		@property final auto ref
		{
			QWord Key() { return *cast(QWord*)(cast(size_t)&this + 0); }
			ScriptString ScreenMessage() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
			UObject.Color DisplayColor() { return *cast(UObject.Color*)(cast(size_t)&this + 20); }
			float TimeToDisplay() { return *cast(float*)(cast(size_t)&this + 24); }
			float CurrentTimeDisplayed() { return *cast(float*)(cast(size_t)&this + 28); }
		}
	}
	struct PhysXEmitterVerticalProperties
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final
		{
			auto ref
			{
				int ParticlesLodMin() { return *cast(int*)(cast(size_t)&this + 4); }
				int ParticlesLodMax() { return *cast(int*)(cast(size_t)&this + 8); }
				int PacketsPerPhysXParticleSystemMax() { return *cast(int*)(cast(size_t)&this + 12); }
				float SpawnLodVsFifoBias() { return *cast(float*)(cast(size_t)&this + 20); }
			}
			bool bDisableLod() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bDisableLod(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
			bool bApplyCylindricalPacketCulling() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bApplyCylindricalPacketCulling(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		}
	}
	struct ApexModuleDestructibleSettings
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final
		{
			auto ref
			{
				int MaxChunkIslandCount() { return *cast(int*)(cast(size_t)&this + 0); }
				int MaxRrbActorCount() { return *cast(int*)(cast(size_t)&this + 4); }
				float MaxChunkSeparationLOD() { return *cast(float*)(cast(size_t)&this + 8); }
			}
			bool bOverrideMaxChunkSeparationLOD() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bOverrideMaxChunkSeparationLOD(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	struct PhysXSceneProperties
	{
		private ubyte __buffer__[60];
	public extern(D):
		@property final auto ref
		{
			WorldInfo.PhysXSimulationProperties PrimaryScene() { return *cast(WorldInfo.PhysXSimulationProperties*)(cast(size_t)&this + 0); }
			WorldInfo.PhysXSimulationProperties CompartmentRigidBody() { return *cast(WorldInfo.PhysXSimulationProperties*)(cast(size_t)&this + 12); }
			WorldInfo.PhysXSimulationProperties CompartmentFluid() { return *cast(WorldInfo.PhysXSimulationProperties*)(cast(size_t)&this + 24); }
			WorldInfo.PhysXSimulationProperties CompartmentCloth() { return *cast(WorldInfo.PhysXSimulationProperties*)(cast(size_t)&this + 36); }
			WorldInfo.PhysXSimulationProperties CompartmentSoftBody() { return *cast(WorldInfo.PhysXSimulationProperties*)(cast(size_t)&this + 48); }
		}
	}
	struct PhysXSimulationProperties
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final
		{
			auto ref
			{
				float TimeStep() { return *cast(float*)(cast(size_t)&this + 4); }
				int MaxSubSteps() { return *cast(int*)(cast(size_t)&this + 8); }
			}
			bool bUseHardware() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bUseHardware(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
			bool bFixedTimeStep() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bFixedTimeStep(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		}
	}
	struct CompartmentRunList
	{
		private ubyte __buffer__[4];
	public extern(D):
		@property final
		{
			bool RigidBody() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool RigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
			bool Fluid() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool Fluid(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool Cloth() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool Cloth(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool SoftBody() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
			bool SoftBody(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
		}
	}
	struct NetViewer
	{
		private ubyte __buffer__[32];
	public extern(D):
		@property final auto ref
		{
			PlayerController InViewer() { return *cast(PlayerController*)(cast(size_t)&this + 0); }
			Actor Viewer() { return *cast(Actor*)(cast(size_t)&this + 4); }
			Vector ViewLocation() { return *cast(Vector*)(cast(size_t)&this + 8); }
			Vector ViewDir() { return *cast(Vector*)(cast(size_t)&this + 20); }
		}
	}
	@property final
	{
		auto ref
		{
			WorldInfo.ENetMode NetMode() { return *cast(WorldInfo.ENetMode*)(cast(size_t)cast(void*)this + 1048); }
			GameInfo Game() { return *cast(GameInfo*)(cast(size_t)cast(void*)this + 1088); }
			float TimeSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 960); }
			GameReplicationInfo GRI() { return *cast(GameReplicationInfo*)(cast(size_t)cast(void*)this + 1044); }
			Vector DefaultColorScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1168); }
			EmitterPool MyEmitterPool() { return *cast(EmitterPool*)(cast(size_t)cast(void*)this + 1348); }
			float TimeDilation() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
			PlayerReplicationInfo Pauser() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 984); }
			float MoveRepSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1132); }
			float StallZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1092); }
			ScriptArray!(LevelStreaming) StreamingLevels() { return *cast(ScriptArray!(LevelStreaming)*)(cast(size_t)cast(void*)this + 840); }
			float PauseDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 976); }
			float WorldGravityZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1096); }
			float DemoPlayTimeDilation() { return *cast(float*)(cast(size_t)cast(void*)this + 956); }
			MusicTrackDataStructures.MusicTrackStruct ReplicatedMusicTrack() { return *cast(MusicTrackDataStructures.MusicTrackStruct*)(cast(size_t)cast(void*)this + 1272); }
			Actor.ETravelType NextTravelType() { return *cast(Actor.ETravelType*)(cast(size_t)cast(void*)this + 1049); }
			ScriptString NextURL() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1148); }
			float NextSwitchCountdown() { return *cast(float*)(cast(size_t)cast(void*)this + 1160); }
			ScriptString EmitterPoolClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1336); }
			ScriptString DecalManagerClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1352); }
			DecalManager MyDecalManager() { return *cast(DecalManager*)(cast(size_t)cast(void*)this + 1364); }
			ScriptString FractureManagerClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1368); }
			FractureManager MyFractureManager() { return *cast(FractureManager*)(cast(size_t)cast(void*)this + 1380); }
			ScriptString ParticleEventManagerClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1384); }
			ParticleEventManager MyParticleEventManager() { return *cast(ParticleEventManager*)(cast(size_t)cast(void*)this + 1396); }
			PostProcessVolume.PostProcessSettings DefaultPostProcessSettings() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)cast(void*)this + 492); }
			PostProcessChain WorldPostProcessChain() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 712); }
			float SquintModeKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 724); }
			PostProcessVolume HighestPriorityPostProcessVolume() { return *cast(PostProcessVolume*)(cast(size_t)cast(void*)this + 728); }
			ReverbVolume.ReverbSettings DefaultReverbSettings() { return *cast(ReverbVolume.ReverbSettings*)(cast(size_t)cast(void*)this + 732); }
			ReverbVolume.InteriorSettings DefaultAmbientZoneSettings() { return *cast(ReverbVolume.InteriorSettings*)(cast(size_t)cast(void*)this + 748); }
			float FogStart() { return *cast(float*)(cast(size_t)cast(void*)this + 784); }
			float FogEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 788); }
			UObject.Color FogColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 792); }
			float BumpEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 796); }
			ReverbVolume HighestPriorityReverbVolume() { return *cast(ReverbVolume*)(cast(size_t)cast(void*)this + 800); }
			ScriptArray!(MassiveLODOverrideVolume) MassiveLODOverrideVolumes() { return *cast(ScriptArray!(MassiveLODOverrideVolume)*)(cast(size_t)cast(void*)this + 804); }
			ScriptArray!(PortalVolume) PortalVolumes() { return *cast(ScriptArray!(PortalVolume)*)(cast(size_t)cast(void*)this + 816); }
			ScriptArray!(EnvironmentVolume) EnvironmentVolumes() { return *cast(ScriptArray!(EnvironmentVolume)*)(cast(size_t)cast(void*)this + 828); }
			UObject.Double LastTimeUnbuiltLightingWasEncountered() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 852); }
			BookMark BookMarks() { return *cast(BookMark*)(cast(size_t)cast(void*)this + 860); }
			KismetBookMark KismetBookMarks() { return *cast(KismetBookMark*)(cast(size_t)cast(void*)this + 900); }
			ScriptArray!(ClipPadEntry) ClipPadEntries() { return *cast(ScriptArray!(ClipPadEntry)*)(cast(size_t)cast(void*)this + 940); }
			float RealTimeSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 964); }
			float AudioTimeSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 968); }
			float DeltaSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 972); }
			float RealTimeToUnPause() { return *cast(float*)(cast(size_t)cast(void*)this + 980); }
			ScriptString VisibleGroups() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 988); }
			ScriptString SelectedGroups() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1000); }
			Texture2D DefaultTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1012); }
			Texture2D WireframeTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1016); }
			Texture2D WhiteSquareTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1020); }
			Texture2D LargeVertex() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1024); }
			Texture2D BSPVertex() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1028); }
			ScriptArray!(ScriptString) DeferredExecs() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 1032); }
			WorldInfo.EVisibilityAggressiveness VisibilityAggressiveness() { return *cast(WorldInfo.EVisibilityAggressiveness*)(cast(size_t)cast(void*)this + 1050); }
			EngineTypes.ELightingBuildQuality LevelLightingQuality() { return *cast(EngineTypes.ELightingBuildQuality*)(cast(size_t)cast(void*)this + 1051); }
			ScriptString ComputerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1052); }
			ScriptString EngineVersion() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1064); }
			ScriptString MinNetVersion() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1076); }
			float DefaultGravityZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1100); }
			float GlobalGravityZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1104); }
			float RBPhysicsGravityScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1108); }
			NavigationPoint NavigationPointList() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1112); }
			Controller ControllerList() { return *cast(Controller*)(cast(size_t)cast(void*)this + 1116); }
			Pawn PawnList() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1120); }
			CoverLink CoverList() { return *cast(CoverLink*)(cast(size_t)cast(void*)this + 1124); }
			Pylon PylonList() { return *cast(Pylon*)(cast(size_t)cast(void*)this + 1128); }
			ScriptArray!(WorldInfo.NetViewer) ReplicationViewers() { return *cast(ScriptArray!(WorldInfo.NetViewer)*)(cast(size_t)cast(void*)this + 1136); }
			int PackedLightAndShadowMapTextureSize() { return *cast(int*)(cast(size_t)cast(void*)this + 1164); }
			ScriptArray!(ScriptClass) GameTypesSupportedOnThisMap() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 1180); }
			ScriptClass GameTypeForPIE() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1192); }
			ScriptArray!(UObject) ClientDestroyedActorContent() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 1196); }
			ScriptArray!(ScriptName) PreparingLevelNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1208); }
			ScriptName CommittedPersistentLevelName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1220); }
			ObjectReferencer PersistentMapForcedObjects() { return *cast(ObjectReferencer*)(cast(size_t)cast(void*)this + 1228); }
			MusicTrackDataStructures.MusicTrackStruct CurrentMusicTrack() { return *cast(MusicTrackDataStructures.MusicTrackStruct*)(cast(size_t)cast(void*)this + 1236); }
			ScriptString Title() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1308); }
			ScriptString Author() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1320); }
			MapInfo MyMapInfo() { return *cast(MapInfo*)(cast(size_t)cast(void*)this + 1332); }
			ProcBuildingRuleset ProcBuildingRulesetOverride() { return *cast(ProcBuildingRuleset*)(cast(size_t)cast(void*)this + 1400); }
			float MaxPhysicsDeltaTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1404); }
			int MaxPhysicsSubsteps() { return *cast(int*)(cast(size_t)cast(void*)this + 1408); }
			WorldInfo.PhysXSceneProperties PhysicsProperties() { return *cast(WorldInfo.PhysXSceneProperties*)(cast(size_t)cast(void*)this + 1412); }
			ScriptArray!(WorldInfo.CompartmentRunList) CompartmentRunFrames() { return *cast(ScriptArray!(WorldInfo.CompartmentRunList)*)(cast(size_t)cast(void*)this + 1472); }
			float DefaultSkinWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 1484); }
			float ApexLODResourceBudget() { return *cast(float*)(cast(size_t)cast(void*)this + 1488); }
			WorldInfo.ApexModuleDestructibleSettings DestructibleSettings() { return *cast(WorldInfo.ApexModuleDestructibleSettings*)(cast(size_t)cast(void*)this + 1492); }
			PhysicsLODVerticalEmitter EmitterVertical() { return *cast(PhysicsLODVerticalEmitter*)(cast(size_t)cast(void*)this + 1508); }
			WorldInfo.PhysXVerticalProperties VerticalProperties() { return *cast(WorldInfo.PhysXVerticalProperties*)(cast(size_t)cast(void*)this + 1512); }
			float ChanceOfPhysicsChunkOverride() { return *cast(float*)(cast(size_t)cast(void*)this + 1536); }
			float MaxExplosionChunkSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
			float MaxDamageChunkSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1544); }
			float FractureExplosionVelScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1548); }
			int MaxNumFacturedChunksToSpawnInAFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 1552); }
			int NumFacturedChunksSpawnedThisFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 1556); }
			float FracturedMeshWeaponDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
			int VisibilityCellSize() { return *cast(int*)(cast(size_t)cast(void*)this + 1564); }
			float CharacterLitIndirectBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 1568); }
			float CharacterLitIndirectContrastFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
			float CharacterShadowedIndirectBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 1576); }
			float CharacterShadowedIndirectContrastFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1580); }
			float CharacterLightingContrastFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1584); }
			Texture2D ImageReflectionEnvironmentTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1588); }
			UObject.LinearColor ImageReflectionEnvironmentColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1592); }
			float ImageReflectionEnvironmentRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 1608); }
			UObject.Map_Mirror ScreenMessages() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 1612); }
			ScriptArray!(WorldInfo.ScreenMessageString) PriorityScreenMessages() { return *cast(ScriptArray!(WorldInfo.ScreenMessageString)*)(cast(size_t)cast(void*)this + 1672); }
			int MaxTrianglesPerLeaf() { return *cast(int*)(cast(size_t)cast(void*)this + 1684); }
			LightmassLevelSettings LMLevelSettings() { return *cast(LightmassLevelSettings*)(cast(size_t)cast(void*)this + 1688); }
			WorldInfo.LightmassWorldInfoSettings LightmassSettings() { return *cast(WorldInfo.LightmassWorldInfoSettings*)(cast(size_t)cast(void*)this + 1692); }
			CrowdPopulationManagerBase PopulationManager() { return *cast(CrowdPopulationManagerBase*)(cast(size_t)cast(void*)this + 1872); }
			ScriptArray!(SeqAct_Latent) CrowdSpawnerActions() { return *cast(ScriptArray!(SeqAct_Latent)*)(cast(size_t)cast(void*)this + 1876); }
			WorldInfo.HostMigrationState PeerHostMigration() { return *cast(WorldInfo.HostMigrationState*)(cast(size_t)cast(void*)this + 1888); }
			float HostMigrationTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 1916); }
		}
		bool bPlayersOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x200) != 0; }
		bool bPlayersOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x200; } return val; }
		bool bRequestedBlockOnAsyncLoading() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x80) != 0; }
		bool bRequestedBlockOnAsyncLoading(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x80; } return val; }
		bool bPlayersOnlyPending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x400) != 0; }
		bool bPlayersOnlyPending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x400; } return val; }
		bool bUseConsoleInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x20000) != 0; }
		bool bUseConsoleInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x20000; } return val; }
		bool bPersistPostProcessToNextLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x1) != 0; }
		bool bPersistPostProcessToNextLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x1; } return val; }
		bool bFogEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x2) != 0; }
		bool bFogEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x2; } return val; }
		bool bBumpOffsetEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x4) != 0; }
		bool bBumpOffsetEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x4; } return val; }
		bool bMapNeedsLightingFullyRebuilt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x8) != 0; }
		bool bMapNeedsLightingFullyRebuilt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x8; } return val; }
		bool bMapHasDLEsOutsideOfImportanceVolume() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x10) != 0; }
		bool bMapHasDLEsOutsideOfImportanceVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x10; } return val; }
		bool bMapHasMultipleDominantLightsAffectingOnePrimitive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x20) != 0; }
		bool bMapHasMultipleDominantLightsAffectingOnePrimitive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x20; } return val; }
		bool bMapHasPathingErrors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x40) != 0; }
		bool bMapHasPathingErrors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x40; } return val; }
		bool bBegunPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x100) != 0; }
		bool bBegunPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x100; } return val; }
		bool bDropDetail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x800) != 0; }
		bool bDropDetail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x800; } return val; }
		bool bAggressiveLOD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x1000) != 0; }
		bool bAggressiveLOD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x1000; } return val; }
		bool bStartup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x2000) != 0; }
		bool bStartup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x2000; } return val; }
		bool bPathsRebuilt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x4000) != 0; }
		bool bPathsRebuilt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x4000; } return val; }
		bool bHasPathNodes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x8000) != 0; }
		bool bHasPathNodes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x8000; } return val; }
		bool bIsMenuLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x10000) != 0; }
		bool bIsMenuLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x10000; } return val; }
		bool bNoDefaultInventoryForPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x40000) != 0; }
		bool bNoDefaultInventoryForPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x40000; } return val; }
		bool bNoPathWarnings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x80000) != 0; }
		bool bNoPathWarnings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x80000; } return val; }
		bool bHighPriorityLoading() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x100000) != 0; }
		bool bHighPriorityLoading(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x100000; } return val; }
		bool bHighPriorityLoadingLocal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x200000) != 0; }
		bool bHighPriorityLoadingLocal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x200000; } return val; }
		bool bUseProcBuildingRulesetOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x400000) != 0; }
		bool bUseProcBuildingRulesetOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x400000; } return val; }
		bool bSupportDoubleBufferedPhysics() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x800000) != 0; }
		bool bSupportDoubleBufferedPhysics(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x800000; } return val; }
		bool bEnableChanceOfPhysicsChunkOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x1000000) != 0; }
		bool bEnableChanceOfPhysicsChunkOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x1000000; } return val; }
		bool bLimitExplosionChunkSize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x2000000) != 0; }
		bool bLimitExplosionChunkSize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x2000000; } return val; }
		bool bLimitDamageChunkSize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x4000000) != 0; }
		bool bLimitDamageChunkSize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x4000000; } return val; }
		bool bPrecomputeVisibility() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x8000000) != 0; }
		bool bPrecomputeVisibility(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x8000000; } return val; }
		bool bPlaceCellsOnSurfaces() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x10000000) != 0; }
		bool bPlaceCellsOnSurfaces(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x10000000; } return val; }
		bool bAllowLightEnvSphericalHarmonicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x20000000) != 0; }
		bool bAllowLightEnvSphericalHarmonicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x20000000; } return val; }
		bool bAllowModulateBetterShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x40000000) != 0; }
		bool bAllowModulateBetterShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x40000000; } return val; }
		bool bIncreaseFogNearPrecision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x80000000) != 0; }
		bool bIncreaseFogNearPrecision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x80000000; } return val; }
		bool bUseGlobalIllumination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x1) != 0; }
		bool bUseGlobalIllumination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x1; } return val; }
		bool bForceNoPrecomputedLighting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x2) != 0; }
		bool bForceNoPrecomputedLighting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x2; } return val; }
		bool bSimpleLightmapsStoredInLinearSpace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x4) != 0; }
		bool bSimpleLightmapsStoredInLinearSpace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x4; } return val; }
		bool bHaveActiveCrowd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x8) != 0; }
		bool bHaveActiveCrowd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x8; } return val; }
		bool bAllowHostMigration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x10) != 0; }
		bool bAllowHostMigration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x10; } return val; }
	}
final:
	Sequence GetGameSequence()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4289], params.ptr, cast(void*)0);
		return *cast(Sequence*)params.ptr;
	}
	void AllControllers(ScriptClass BaseClass, Controller* C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Controller*)&params[4] = *C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5715], params.ptr, cast(void*)0);
		*C = *cast(Controller*)&params[4];
	}
	bool IsConsoleBuild(WorldInfo.EConsoleType ConsoleType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(WorldInfo.EConsoleType*)params.ptr = ConsoleType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5728], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	WorldInfo GetWorldInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7283], params.ptr, cast(void*)0);
		return *cast(WorldInfo*)params.ptr;
	}
	ScriptString GetMapName(bool bIncludePrefix)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bIncludePrefix;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7713], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptClass GetGameClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7715], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void AllNavigationPoints(ScriptClass BaseClass, NavigationPoint* N)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(NavigationPoint*)&params[4] = *N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8413], params.ptr, cast(void*)0);
		*N = *cast(NavigationPoint*)&params[4];
	}
	void ForceGarbageCollection(bool bFullPurge)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFullPurge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9153], params.ptr, cast(void*)0);
	}
	bool IsPreparingMapChange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9175], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PrepareMapChange(ScriptArray!(ScriptName)* LevelNames)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = *LevelNames;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9177], params.ptr, cast(void*)0);
		*LevelNames = *cast(ScriptArray!(ScriptName)*)params.ptr;
	}
	void CommitMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9179], cast(void*)0, cast(void*)0);
	}
	void CancelPendingMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9181], cast(void*)0, cast(void*)0);
	}
	void ReleaseCachedConstraintsAndEvaluators()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16085], cast(void*)0, cast(void*)0);
	}
	NavMeshPathConstraint GetNavMeshPathConstraintFromCache(ScriptClass ConstraintClass, NavigationHandle Requestor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ConstraintClass;
		*cast(NavigationHandle*)&params[4] = Requestor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16086], params.ptr, cast(void*)0);
		return *cast(NavMeshPathConstraint*)&params[8];
	}
	NavMeshPathGoalEvaluator GetNavMeshPathGoalEvaluatorFromCache(ScriptClass GoalEvalClass, NavigationHandle Requestor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GoalEvalClass;
		*cast(NavigationHandle*)&params[4] = Requestor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16090], params.ptr, cast(void*)0);
		return *cast(NavMeshPathGoalEvaluator*)&params[8];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16094], params.ptr, cast(void*)0);
	}
	void UpdateMusicTrack(MusicTrackDataStructures.MusicTrackStruct NewMusicTrack)
	{
		ubyte params[36];
		params[] = 0;
		*cast(MusicTrackDataStructures.MusicTrackStruct*)params.ptr = NewMusicTrack;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16096], params.ptr, cast(void*)0);
	}
	void AddOnScreenDebugMessage(int Key, float TimeToDisplay, UObject.Color DisplayColor, ScriptString DebugMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Key;
		*cast(float*)&params[4] = TimeToDisplay;
		*cast(UObject.Color*)&params[8] = DisplayColor;
		*cast(ScriptString*)&params[12] = DebugMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16098], params.ptr, cast(void*)0);
	}
	bool IsMenuLevel(ScriptString MapName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16103], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	float GetGravityZ()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16116], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	ScriptArray!(Sequence) GetAllRootSequences()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16118], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(Sequence)*)params.ptr;
	}
	void SetLevelRBGravity(Vector NewGrav)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewGrav;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16121], params.ptr, cast(void*)0);
	}
	ScriptString GetLocalURL()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16123], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool IsDemoBuild()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16125], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsPlayInEditor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16130], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsPlayInPreview()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16132], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void VerifyNavList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16135], cast(void*)0, cast(void*)0);
	}
	ScriptString GetAddressURL()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16136], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void ServerTravel(ScriptString pURL, bool bAbsolute, bool bShouldSkipGameNotify)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(bool*)&params[12] = bAbsolute;
		*cast(bool*)&params[16] = bShouldSkipGameNotify;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16138], params.ptr, cast(void*)0);
	}
	bool IsInSeamlessTravel()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16145], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ThisIsNeverExecuted(DefaultPhysicsVolume P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(DefaultPhysicsVolume*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16147], params.ptr, cast(void*)0);
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16149], cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16161], cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16163], cast(void*)0, cast(void*)0);
	}
	void RadiusNavigationPoints(ScriptClass BaseClass, NavigationPoint* N, Vector Point, float Radius)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(NavigationPoint*)&params[4] = *N;
		*cast(Vector*)&params[8] = Point;
		*cast(float*)&params[20] = Radius;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16166], params.ptr, cast(void*)0);
		*N = *cast(NavigationPoint*)&params[4];
	}
	void NavigationPointCheck(Vector Point, Vector Extent, ScriptArray!(NavigationPoint)* Navs, ScriptArray!(ReachSpec)* Specs)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Vector*)&params[12] = Extent;
		*cast(ScriptArray!(NavigationPoint)*)&params[24] = *Navs;
		*cast(ScriptArray!(ReachSpec)*)&params[36] = *Specs;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16171], params.ptr, cast(void*)0);
		*Navs = *cast(ScriptArray!(NavigationPoint)*)&params[24];
		*Specs = *cast(ScriptArray!(ReachSpec)*)&params[36];
	}
	void AllPawns(ScriptClass BaseClass, Pawn* P, Vector TestLocation, float TestRadius)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Pawn*)&params[4] = *P;
		*cast(Vector*)&params[8] = TestLocation;
		*cast(float*)&params[20] = TestRadius;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16180], params.ptr, cast(void*)0);
		*P = *cast(Pawn*)&params[4];
	}
	void NotifyMatchStarted(bool bShouldActivateLevelStartupEvents, bool bShouldActivateLevelBeginningEvents, bool bShouldActivateLevelLoadedEvents)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldActivateLevelStartupEvents;
		*cast(bool*)&params[4] = bShouldActivateLevelBeginningEvents;
		*cast(bool*)&params[8] = bShouldActivateLevelLoadedEvents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16185], params.ptr, cast(void*)0);
	}
	bool IsMapChangeReady()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16191], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SeamlessTravel(ScriptString pURL, bool bAbsolute, UObject.Guid MapPackageGuid)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(bool*)&params[12] = bAbsolute;
		*cast(UObject.Guid*)&params[16] = MapPackageGuid;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16193], params.ptr, cast(void*)0);
	}
	void SetSeamlessTravelMidpointPause(bool bNowPaused)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowPaused;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16198], params.ptr, cast(void*)0);
	}
	MapInfo GetMapInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16200], params.ptr, cast(void*)0);
		return *cast(MapInfo*)params.ptr;
	}
	void SetMapInfo(MapInfo NewMapInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MapInfo*)params.ptr = NewMapInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16202], params.ptr, cast(void*)0);
	}
	Scene.EDetailMode GetDetailMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16205], params.ptr, cast(void*)0);
		return *cast(Scene.EDetailMode*)params.ptr;
	}
	bool IsRecordingDemo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16207], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsPlayingDemo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16209], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void GetDemoFrameInfo(int* CurrentFrame, int* TotalFrames)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = *CurrentFrame;
		*cast(int*)&params[4] = *TotalFrames;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16211], params.ptr, cast(void*)0);
		*CurrentFrame = *cast(int*)params.ptr;
		*TotalFrames = *cast(int*)&params[4];
	}
	bool GetDemoRewindPoints(ScriptArray!(int)* OutRewindPoints)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = *OutRewindPoints;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16214], params.ptr, cast(void*)0);
		*OutRewindPoints = *cast(ScriptArray!(int)*)params.ptr;
		return *cast(bool*)&params[12];
	}
	void DoMemoryTracking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16218], cast(void*)0, cast(void*)0);
	}
	WorldInfo.WorldFractureSettings GetWorldFractureSettings()
	{
		ubyte params[28];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16219], params.ptr, cast(void*)0);
		return *cast(WorldInfo.WorldFractureSettings*)params.ptr;
	}
	EnvironmentVolume FindEnvironmentVolume(Vector TestLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = TestLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16230], params.ptr, cast(void*)0);
		return *cast(EnvironmentVolume*)&params[12];
	}
	bool BeginHostMigration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16233], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ToggleHostMigration(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16235], params.ptr, cast(void*)0);
	}
	void ClearPhysicsPools()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16237], cast(void*)0, cast(void*)0);
	}
}
