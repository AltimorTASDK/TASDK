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
	public static immutable auto MAX_INSTANCES_PER_CLASS = 5;
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
		public @property final auto ref int ListIdx() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ListIdx[4];
		public @property final auto ref NavMeshPathGoalEvaluator List() { return *cast(NavMeshPathGoalEvaluator*)(cast(size_t)&this + 4); }
		private ubyte __List[4];
	}
	struct HostMigrationState
	{
		public @property final bool bHostMigrationEnabled() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bHostMigrationEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bHostMigrationEnabled[4];
		public @property final auto ref ScriptString HostMigrationTravelURL() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __HostMigrationTravelURL[12];
		public @property final auto ref float HostMigrationTravelCountdown() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __HostMigrationTravelCountdown[4];
		public @property final auto ref float HostMigrationElapsedTime() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __HostMigrationElapsedTime[4];
		public @property final auto ref WorldInfo.EHostMigrationProgress HostMigrationProgress() { return *cast(WorldInfo.EHostMigrationProgress*)(cast(size_t)&this + 0); }
		private ubyte __HostMigrationProgress[1];
	}
	struct PhysXVerticalProperties
	{
		public @property final auto ref WorldInfo.PhysXEmitterVerticalProperties Emitters() { return *cast(WorldInfo.PhysXEmitterVerticalProperties*)(cast(size_t)&this + 0); }
		private ubyte __Emitters[24];
	}
	struct WorldFractureSettings
	{
		public @property final auto ref float ChanceOfPhysicsChunkOverride() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __ChanceOfPhysicsChunkOverride[4];
		public @property final bool bEnableChanceOfPhysicsChunkOverride() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool bEnableChanceOfPhysicsChunkOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __bEnableChanceOfPhysicsChunkOverride[4];
		public @property final bool bLimitExplosionChunkSize() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
		public @property final bool bLimitExplosionChunkSize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
		private ubyte __bLimitExplosionChunkSize[4];
		public @property final auto ref float MaxExplosionChunkSize() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __MaxExplosionChunkSize[4];
		public @property final bool bLimitDamageChunkSize() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bLimitDamageChunkSize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bLimitDamageChunkSize[4];
		public @property final auto ref float MaxDamageChunkSize() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __MaxDamageChunkSize[4];
		public @property final auto ref int MaxNumFacturedChunksToSpawnInAFrame() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __MaxNumFacturedChunksToSpawnInAFrame[4];
		public @property final auto ref float FractureExplosionVelScale() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __FractureExplosionVelScale[4];
	}
	struct NavMeshPathConstraintCacheDatum
	{
		public @property final auto ref int ListIdx() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ListIdx[4];
		public @property final auto ref NavMeshPathConstraint List() { return *cast(NavMeshPathConstraint*)(cast(size_t)&this + 4); }
		private ubyte __List[4];
	}
	struct LightmassWorldInfoSettings
	{
		public @property final auto ref float StaticLightingLevelScale() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __StaticLightingLevelScale[4];
		public @property final auto ref int NumIndirectLightingBounces() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __NumIndirectLightingBounces[4];
		public @property final auto ref UObject.Color EnvironmentColor() { return *cast(UObject.Color*)(cast(size_t)&this + 8); }
		private ubyte __EnvironmentColor[4];
		public @property final auto ref float EnvironmentIntensity() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __EnvironmentIntensity[4];
		public @property final auto ref float EmissiveBoost() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __EmissiveBoost[4];
		public @property final auto ref float DiffuseBoost() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __DiffuseBoost[4];
		public @property final auto ref float SpecularBoost() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __SpecularBoost[4];
		public @property final auto ref float IndirectNormalInfluenceBoost() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __IndirectNormalInfluenceBoost[4];
		public @property final bool bUseNormalMapsForSimpleLightMaps() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
		public @property final bool bUseNormalMapsForSimpleLightMaps(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		private ubyte __bUseNormalMapsForSimpleLightMaps[4];
		public @property final bool bUseAmbientOcclusion() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x2) != 0; }
		public @property final bool bUseAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x2; } return val; }
		private ubyte __bUseAmbientOcclusion[4];
		public @property final bool bEnableImageReflectionShadowing() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x4) != 0; }
		public @property final bool bEnableImageReflectionShadowing(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x4; } return val; }
		private ubyte __bEnableImageReflectionShadowing[4];
		public @property final auto ref float DirectIlluminationOcclusionFraction() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __DirectIlluminationOcclusionFraction[4];
		public @property final auto ref float IndirectIlluminationOcclusionFraction() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __IndirectIlluminationOcclusionFraction[4];
		public @property final auto ref float OcclusionExponent() { return *cast(float*)(cast(size_t)&this + 44); }
		private ubyte __OcclusionExponent[4];
		public @property final auto ref float FullyOccludedSamplesFraction() { return *cast(float*)(cast(size_t)&this + 48); }
		private ubyte __FullyOccludedSamplesFraction[4];
		public @property final auto ref float MaxOcclusionDistance() { return *cast(float*)(cast(size_t)&this + 52); }
		private ubyte __MaxOcclusionDistance[4];
		public @property final bool bVisualizeMaterialDiffuse() { return (*cast(uint*)(cast(size_t)&this + 56) & 0x1) != 0; }
		public @property final bool bVisualizeMaterialDiffuse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 56) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 56) &= ~0x1; } return val; }
		private ubyte __bVisualizeMaterialDiffuse[4];
		public @property final bool bVisualizeAmbientOcclusion() { return (*cast(uint*)(cast(size_t)&this + 56) & 0x2) != 0; }
		public @property final bool bVisualizeAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 56) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 56) &= ~0x2; } return val; }
		private ubyte __bVisualizeAmbientOcclusion[4];
	}
	struct ScreenMessageString
	{
		public @property final auto ref QWord Key() { return *cast(QWord*)(cast(size_t)&this + 0); }
		private ubyte __Key[8];
		public @property final auto ref ScriptString ScreenMessage() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __ScreenMessage[12];
		public @property final auto ref UObject.Color DisplayColor() { return *cast(UObject.Color*)(cast(size_t)&this + 20); }
		private ubyte __DisplayColor[4];
		public @property final auto ref float TimeToDisplay() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __TimeToDisplay[4];
		public @property final auto ref float CurrentTimeDisplayed() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __CurrentTimeDisplayed[4];
	}
	struct PhysXEmitterVerticalProperties
	{
		public @property final bool bDisableLod() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bDisableLod(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bDisableLod[4];
		public @property final auto ref int ParticlesLodMin() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ParticlesLodMin[4];
		public @property final auto ref int ParticlesLodMax() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __ParticlesLodMax[4];
		public @property final auto ref int PacketsPerPhysXParticleSystemMax() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __PacketsPerPhysXParticleSystemMax[4];
		public @property final bool bApplyCylindricalPacketCulling() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool bApplyCylindricalPacketCulling(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __bApplyCylindricalPacketCulling[4];
		public @property final auto ref float SpawnLodVsFifoBias() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __SpawnLodVsFifoBias[4];
	}
	struct ApexModuleDestructibleSettings
	{
		public @property final auto ref int MaxChunkIslandCount() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __MaxChunkIslandCount[4];
		public @property final auto ref int MaxRrbActorCount() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __MaxRrbActorCount[4];
		public @property final auto ref float MaxChunkSeparationLOD() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __MaxChunkSeparationLOD[4];
		public @property final bool bOverrideMaxChunkSeparationLOD() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bOverrideMaxChunkSeparationLOD(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bOverrideMaxChunkSeparationLOD[4];
	}
	struct PhysXSceneProperties
	{
		public @property final auto ref WorldInfo.PhysXSimulationProperties PrimaryScene() { return *cast(WorldInfo.PhysXSimulationProperties*)(cast(size_t)&this + 0); }
		private ubyte __PrimaryScene[12];
		public @property final auto ref WorldInfo.PhysXSimulationProperties CompartmentRigidBody() { return *cast(WorldInfo.PhysXSimulationProperties*)(cast(size_t)&this + 12); }
		private ubyte __CompartmentRigidBody[12];
		public @property final auto ref WorldInfo.PhysXSimulationProperties CompartmentFluid() { return *cast(WorldInfo.PhysXSimulationProperties*)(cast(size_t)&this + 24); }
		private ubyte __CompartmentFluid[12];
		public @property final auto ref WorldInfo.PhysXSimulationProperties CompartmentCloth() { return *cast(WorldInfo.PhysXSimulationProperties*)(cast(size_t)&this + 36); }
		private ubyte __CompartmentCloth[12];
		public @property final auto ref WorldInfo.PhysXSimulationProperties CompartmentSoftBody() { return *cast(WorldInfo.PhysXSimulationProperties*)(cast(size_t)&this + 48); }
		private ubyte __CompartmentSoftBody[12];
	}
	struct PhysXSimulationProperties
	{
		public @property final bool bUseHardware() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bUseHardware(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bUseHardware[4];
		public @property final bool bFixedTimeStep() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bFixedTimeStep(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bFixedTimeStep[4];
		public @property final auto ref float TimeStep() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __TimeStep[4];
		public @property final auto ref int MaxSubSteps() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __MaxSubSteps[4];
	}
	struct CompartmentRunList
	{
		public @property final bool RigidBody() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool RigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __RigidBody[4];
		public @property final bool Fluid() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool Fluid(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __Fluid[4];
		public @property final bool Cloth() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool Cloth(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __Cloth[4];
		public @property final bool SoftBody() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
		public @property final bool SoftBody(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
		private ubyte __SoftBody[4];
	}
	struct NetViewer
	{
		public @property final auto ref PlayerController InViewer() { return *cast(PlayerController*)(cast(size_t)&this + 0); }
		private ubyte __InViewer[4];
		public @property final auto ref Actor Viewer() { return *cast(Actor*)(cast(size_t)&this + 4); }
		private ubyte __Viewer[4];
		public @property final auto ref Vector ViewLocation() { return *cast(Vector*)(cast(size_t)&this + 8); }
		private ubyte __ViewLocation[12];
		public @property final auto ref Vector ViewDir() { return *cast(Vector*)(cast(size_t)&this + 20); }
		private ubyte __ViewDir[12];
	}
	public @property final auto ref WorldInfo.ENetMode NetMode() { return *cast(WorldInfo.ENetMode*)(cast(size_t)cast(void*)this + 1048); }
	public @property final auto ref GameInfo Game() { return *cast(GameInfo*)(cast(size_t)cast(void*)this + 1088); }
	public @property final auto ref float TimeSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 960); }
	public @property final auto ref GameReplicationInfo GRI() { return *cast(GameReplicationInfo*)(cast(size_t)cast(void*)this + 1044); }
	public @property final auto ref Vector DefaultColorScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1168); }
	public @property final auto ref EmitterPool MyEmitterPool() { return *cast(EmitterPool*)(cast(size_t)cast(void*)this + 1348); }
	public @property final auto ref float TimeDilation() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
	public @property final auto ref PlayerReplicationInfo Pauser() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 984); }
	public @property final auto ref float MoveRepSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1132); }
	public @property final bool bPlayersOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x200) != 0; }
	public @property final bool bPlayersOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x200; } return val; }
	public @property final auto ref float StallZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1092); }
	public @property final bool bRequestedBlockOnAsyncLoading() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x80) != 0; }
	public @property final bool bRequestedBlockOnAsyncLoading(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x80; } return val; }
	public @property final auto ref ScriptArray!(LevelStreaming) StreamingLevels() { return *cast(ScriptArray!(LevelStreaming)*)(cast(size_t)cast(void*)this + 840); }
	public @property final auto ref float PauseDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 976); }
	public @property final auto ref float WorldGravityZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1096); }
	public @property final bool bPlayersOnlyPending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x400) != 0; }
	public @property final bool bPlayersOnlyPending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x400; } return val; }
	public @property final auto ref float DemoPlayTimeDilation() { return *cast(float*)(cast(size_t)cast(void*)this + 956); }
	public @property final auto ref MusicTrackDataStructures.MusicTrackStruct ReplicatedMusicTrack() { return *cast(MusicTrackDataStructures.MusicTrackStruct*)(cast(size_t)cast(void*)this + 1272); }
	public @property final auto ref Actor.ETravelType NextTravelType() { return *cast(Actor.ETravelType*)(cast(size_t)cast(void*)this + 1049); }
	public @property final auto ref ScriptString NextURL() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1148); }
	public @property final auto ref float NextSwitchCountdown() { return *cast(float*)(cast(size_t)cast(void*)this + 1160); }
	public @property final auto ref ScriptString EmitterPoolClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1336); }
	public @property final auto ref ScriptString DecalManagerClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1352); }
	public @property final auto ref DecalManager MyDecalManager() { return *cast(DecalManager*)(cast(size_t)cast(void*)this + 1364); }
	public @property final auto ref ScriptString FractureManagerClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1368); }
	public @property final auto ref FractureManager MyFractureManager() { return *cast(FractureManager*)(cast(size_t)cast(void*)this + 1380); }
	public @property final auto ref ScriptString ParticleEventManagerClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1384); }
	public @property final auto ref ParticleEventManager MyParticleEventManager() { return *cast(ParticleEventManager*)(cast(size_t)cast(void*)this + 1396); }
	public @property final bool bUseConsoleInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x20000) != 0; }
	public @property final bool bUseConsoleInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x20000; } return val; }
	public @property final auto ref PostProcessVolume.PostProcessSettings DefaultPostProcessSettings() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref PostProcessChain WorldPostProcessChain() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 712); }
	public @property final bool bPersistPostProcessToNextLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x1) != 0; }
	public @property final bool bPersistPostProcessToNextLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x1; } return val; }
	public @property final bool bFogEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x2) != 0; }
	public @property final bool bFogEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x2; } return val; }
	public @property final bool bBumpOffsetEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x4) != 0; }
	public @property final bool bBumpOffsetEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x4; } return val; }
	public @property final bool bMapNeedsLightingFullyRebuilt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x8) != 0; }
	public @property final bool bMapNeedsLightingFullyRebuilt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x8; } return val; }
	public @property final bool bMapHasDLEsOutsideOfImportanceVolume() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x10) != 0; }
	public @property final bool bMapHasDLEsOutsideOfImportanceVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x10; } return val; }
	public @property final bool bMapHasMultipleDominantLightsAffectingOnePrimitive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x20) != 0; }
	public @property final bool bMapHasMultipleDominantLightsAffectingOnePrimitive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x20; } return val; }
	public @property final bool bMapHasPathingErrors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x40) != 0; }
	public @property final bool bMapHasPathingErrors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x40; } return val; }
	public @property final bool bBegunPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x100) != 0; }
	public @property final bool bBegunPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x100; } return val; }
	public @property final bool bDropDetail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x800) != 0; }
	public @property final bool bDropDetail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x800; } return val; }
	public @property final bool bAggressiveLOD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x1000) != 0; }
	public @property final bool bAggressiveLOD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x1000; } return val; }
	public @property final bool bStartup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x2000) != 0; }
	public @property final bool bStartup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x2000; } return val; }
	public @property final bool bPathsRebuilt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x4000) != 0; }
	public @property final bool bPathsRebuilt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x4000; } return val; }
	public @property final bool bHasPathNodes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x8000) != 0; }
	public @property final bool bHasPathNodes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x8000; } return val; }
	public @property final bool bIsMenuLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x10000) != 0; }
	public @property final bool bIsMenuLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x10000; } return val; }
	public @property final bool bNoDefaultInventoryForPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x40000) != 0; }
	public @property final bool bNoDefaultInventoryForPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x40000; } return val; }
	public @property final bool bNoPathWarnings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x80000) != 0; }
	public @property final bool bNoPathWarnings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x80000; } return val; }
	public @property final bool bHighPriorityLoading() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x100000) != 0; }
	public @property final bool bHighPriorityLoading(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x100000; } return val; }
	public @property final bool bHighPriorityLoadingLocal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x200000) != 0; }
	public @property final bool bHighPriorityLoadingLocal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x200000; } return val; }
	public @property final bool bUseProcBuildingRulesetOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x400000) != 0; }
	public @property final bool bUseProcBuildingRulesetOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x400000; } return val; }
	public @property final bool bSupportDoubleBufferedPhysics() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x800000) != 0; }
	public @property final bool bSupportDoubleBufferedPhysics(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x800000; } return val; }
	public @property final bool bEnableChanceOfPhysicsChunkOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x1000000) != 0; }
	public @property final bool bEnableChanceOfPhysicsChunkOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x1000000; } return val; }
	public @property final bool bLimitExplosionChunkSize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x2000000) != 0; }
	public @property final bool bLimitExplosionChunkSize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x2000000; } return val; }
	public @property final bool bLimitDamageChunkSize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x4000000) != 0; }
	public @property final bool bLimitDamageChunkSize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x4000000; } return val; }
	public @property final bool bPrecomputeVisibility() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x8000000) != 0; }
	public @property final bool bPrecomputeVisibility(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x8000000; } return val; }
	public @property final bool bPlaceCellsOnSurfaces() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x10000000) != 0; }
	public @property final bool bPlaceCellsOnSurfaces(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x10000000; } return val; }
	public @property final bool bAllowLightEnvSphericalHarmonicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x20000000) != 0; }
	public @property final bool bAllowLightEnvSphericalHarmonicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x20000000; } return val; }
	public @property final bool bAllowModulateBetterShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x40000000) != 0; }
	public @property final bool bAllowModulateBetterShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x40000000; } return val; }
	public @property final bool bIncreaseFogNearPrecision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 716) & 0x80000000) != 0; }
	public @property final bool bIncreaseFogNearPrecision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 716) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 716) &= ~0x80000000; } return val; }
	public @property final bool bUseGlobalIllumination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x1) != 0; }
	public @property final bool bUseGlobalIllumination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x1; } return val; }
	public @property final bool bForceNoPrecomputedLighting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x2) != 0; }
	public @property final bool bForceNoPrecomputedLighting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x2; } return val; }
	public @property final bool bSimpleLightmapsStoredInLinearSpace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x4) != 0; }
	public @property final bool bSimpleLightmapsStoredInLinearSpace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x4; } return val; }
	public @property final bool bHaveActiveCrowd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x8) != 0; }
	public @property final bool bHaveActiveCrowd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x8; } return val; }
	public @property final bool bAllowHostMigration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x10) != 0; }
	public @property final bool bAllowHostMigration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x10; } return val; }
	public @property final auto ref float SquintModeKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 724); }
	public @property final auto ref PostProcessVolume HighestPriorityPostProcessVolume() { return *cast(PostProcessVolume*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref ReverbVolume.ReverbSettings DefaultReverbSettings() { return *cast(ReverbVolume.ReverbSettings*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref ReverbVolume.InteriorSettings DefaultAmbientZoneSettings() { return *cast(ReverbVolume.InteriorSettings*)(cast(size_t)cast(void*)this + 748); }
	public @property final auto ref float FogStart() { return *cast(float*)(cast(size_t)cast(void*)this + 784); }
	public @property final auto ref float FogEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 788); }
	public @property final auto ref UObject.Color FogColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 792); }
	public @property final auto ref float BumpEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 796); }
	public @property final auto ref ReverbVolume HighestPriorityReverbVolume() { return *cast(ReverbVolume*)(cast(size_t)cast(void*)this + 800); }
	public @property final auto ref ScriptArray!(MassiveLODOverrideVolume) MassiveLODOverrideVolumes() { return *cast(ScriptArray!(MassiveLODOverrideVolume)*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref ScriptArray!(PortalVolume) PortalVolumes() { return *cast(ScriptArray!(PortalVolume)*)(cast(size_t)cast(void*)this + 816); }
	public @property final auto ref ScriptArray!(EnvironmentVolume) EnvironmentVolumes() { return *cast(ScriptArray!(EnvironmentVolume)*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref UObject.Double LastTimeUnbuiltLightingWasEncountered() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 852); }
	public @property final auto ref BookMark BookMarks() { return *cast(BookMark*)(cast(size_t)cast(void*)this + 860); }
	public @property final auto ref KismetBookMark KismetBookMarks() { return *cast(KismetBookMark*)(cast(size_t)cast(void*)this + 900); }
	public @property final auto ref ScriptArray!(ClipPadEntry) ClipPadEntries() { return *cast(ScriptArray!(ClipPadEntry)*)(cast(size_t)cast(void*)this + 940); }
	public @property final auto ref float RealTimeSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 964); }
	public @property final auto ref float AudioTimeSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 968); }
	public @property final auto ref float DeltaSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 972); }
	public @property final auto ref float RealTimeToUnPause() { return *cast(float*)(cast(size_t)cast(void*)this + 980); }
	public @property final auto ref ScriptString VisibleGroups() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 988); }
	public @property final auto ref ScriptString SelectedGroups() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1000); }
	public @property final auto ref Texture2D DefaultTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1012); }
	public @property final auto ref Texture2D WireframeTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1016); }
	public @property final auto ref Texture2D WhiteSquareTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1020); }
	public @property final auto ref Texture2D LargeVertex() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1024); }
	public @property final auto ref Texture2D BSPVertex() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1028); }
	public @property final auto ref ScriptArray!(ScriptString) DeferredExecs() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 1032); }
	public @property final auto ref WorldInfo.EVisibilityAggressiveness VisibilityAggressiveness() { return *cast(WorldInfo.EVisibilityAggressiveness*)(cast(size_t)cast(void*)this + 1050); }
	public @property final auto ref EngineTypes.ELightingBuildQuality LevelLightingQuality() { return *cast(EngineTypes.ELightingBuildQuality*)(cast(size_t)cast(void*)this + 1051); }
	public @property final auto ref ScriptString ComputerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1052); }
	public @property final auto ref ScriptString EngineVersion() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1064); }
	public @property final auto ref ScriptString MinNetVersion() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1076); }
	public @property final auto ref float DefaultGravityZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1100); }
	public @property final auto ref float GlobalGravityZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1104); }
	public @property final auto ref float RBPhysicsGravityScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1108); }
	public @property final auto ref NavigationPoint NavigationPointList() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1112); }
	public @property final auto ref Controller ControllerList() { return *cast(Controller*)(cast(size_t)cast(void*)this + 1116); }
	public @property final auto ref Pawn PawnList() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1120); }
	public @property final auto ref CoverLink CoverList() { return *cast(CoverLink*)(cast(size_t)cast(void*)this + 1124); }
	public @property final auto ref Pylon PylonList() { return *cast(Pylon*)(cast(size_t)cast(void*)this + 1128); }
	public @property final auto ref ScriptArray!(WorldInfo.NetViewer) ReplicationViewers() { return *cast(ScriptArray!(WorldInfo.NetViewer)*)(cast(size_t)cast(void*)this + 1136); }
	public @property final auto ref int PackedLightAndShadowMapTextureSize() { return *cast(int*)(cast(size_t)cast(void*)this + 1164); }
	public @property final auto ref ScriptArray!(ScriptClass) GameTypesSupportedOnThisMap() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 1180); }
	public @property final auto ref ScriptClass GameTypeForPIE() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1192); }
	public @property final auto ref ScriptArray!(UObject) ClientDestroyedActorContent() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 1196); }
	public @property final auto ref ScriptArray!(ScriptName) PreparingLevelNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1208); }
	public @property final auto ref ScriptName CommittedPersistentLevelName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1220); }
	public @property final auto ref ObjectReferencer PersistentMapForcedObjects() { return *cast(ObjectReferencer*)(cast(size_t)cast(void*)this + 1228); }
	public @property final auto ref MusicTrackDataStructures.MusicTrackStruct CurrentMusicTrack() { return *cast(MusicTrackDataStructures.MusicTrackStruct*)(cast(size_t)cast(void*)this + 1236); }
	public @property final auto ref ScriptString Title() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1308); }
	public @property final auto ref ScriptString Author() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1320); }
	public @property final auto ref MapInfo MyMapInfo() { return *cast(MapInfo*)(cast(size_t)cast(void*)this + 1332); }
	public @property final auto ref ProcBuildingRuleset ProcBuildingRulesetOverride() { return *cast(ProcBuildingRuleset*)(cast(size_t)cast(void*)this + 1400); }
	public @property final auto ref float MaxPhysicsDeltaTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1404); }
	public @property final auto ref int MaxPhysicsSubsteps() { return *cast(int*)(cast(size_t)cast(void*)this + 1408); }
	public @property final auto ref WorldInfo.PhysXSceneProperties PhysicsProperties() { return *cast(WorldInfo.PhysXSceneProperties*)(cast(size_t)cast(void*)this + 1412); }
	public @property final auto ref ScriptArray!(WorldInfo.CompartmentRunList) CompartmentRunFrames() { return *cast(ScriptArray!(WorldInfo.CompartmentRunList)*)(cast(size_t)cast(void*)this + 1472); }
	public @property final auto ref float DefaultSkinWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 1484); }
	public @property final auto ref float ApexLODResourceBudget() { return *cast(float*)(cast(size_t)cast(void*)this + 1488); }
	public @property final auto ref WorldInfo.ApexModuleDestructibleSettings DestructibleSettings() { return *cast(WorldInfo.ApexModuleDestructibleSettings*)(cast(size_t)cast(void*)this + 1492); }
	public @property final auto ref PhysicsLODVerticalEmitter EmitterVertical() { return *cast(PhysicsLODVerticalEmitter*)(cast(size_t)cast(void*)this + 1508); }
	public @property final auto ref WorldInfo.PhysXVerticalProperties VerticalProperties() { return *cast(WorldInfo.PhysXVerticalProperties*)(cast(size_t)cast(void*)this + 1512); }
	public @property final auto ref float ChanceOfPhysicsChunkOverride() { return *cast(float*)(cast(size_t)cast(void*)this + 1536); }
	public @property final auto ref float MaxExplosionChunkSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
	public @property final auto ref float MaxDamageChunkSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1544); }
	public @property final auto ref float FractureExplosionVelScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1548); }
	public @property final auto ref int MaxNumFacturedChunksToSpawnInAFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 1552); }
	public @property final auto ref int NumFacturedChunksSpawnedThisFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 1556); }
	public @property final auto ref float FracturedMeshWeaponDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
	public @property final auto ref int VisibilityCellSize() { return *cast(int*)(cast(size_t)cast(void*)this + 1564); }
	public @property final auto ref float CharacterLitIndirectBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 1568); }
	public @property final auto ref float CharacterLitIndirectContrastFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
	public @property final auto ref float CharacterShadowedIndirectBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 1576); }
	public @property final auto ref float CharacterShadowedIndirectContrastFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1580); }
	public @property final auto ref float CharacterLightingContrastFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1584); }
	public @property final auto ref Texture2D ImageReflectionEnvironmentTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1588); }
	public @property final auto ref UObject.LinearColor ImageReflectionEnvironmentColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1592); }
	public @property final auto ref float ImageReflectionEnvironmentRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 1608); }
	public @property final auto ref UObject.Map_Mirror ScreenMessages() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 1612); }
	public @property final auto ref ScriptArray!(WorldInfo.ScreenMessageString) PriorityScreenMessages() { return *cast(ScriptArray!(WorldInfo.ScreenMessageString)*)(cast(size_t)cast(void*)this + 1672); }
	public @property final auto ref int MaxTrianglesPerLeaf() { return *cast(int*)(cast(size_t)cast(void*)this + 1684); }
	public @property final auto ref LightmassLevelSettings LMLevelSettings() { return *cast(LightmassLevelSettings*)(cast(size_t)cast(void*)this + 1688); }
	public @property final auto ref WorldInfo.LightmassWorldInfoSettings LightmassSettings() { return *cast(WorldInfo.LightmassWorldInfoSettings*)(cast(size_t)cast(void*)this + 1692); }
	public @property final auto ref CrowdPopulationManagerBase PopulationManager() { return *cast(CrowdPopulationManagerBase*)(cast(size_t)cast(void*)this + 1872); }
	public @property final auto ref ScriptArray!(SeqAct_Latent) CrowdSpawnerActions() { return *cast(ScriptArray!(SeqAct_Latent)*)(cast(size_t)cast(void*)this + 1876); }
	public @property final auto ref WorldInfo.HostMigrationState PeerHostMigration() { return *cast(WorldInfo.HostMigrationState*)(cast(size_t)cast(void*)this + 1888); }
	public @property final auto ref float HostMigrationTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 1916); }
	final Sequence GetGameSequence()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4289], params.ptr, cast(void*)0);
		return *cast(Sequence*)params.ptr;
	}
	final void AllControllers(ScriptClass BaseClass, Controller* C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Controller*)&params[4] = *C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5715], params.ptr, cast(void*)0);
		*C = *cast(Controller*)&params[4];
	}
	final bool IsConsoleBuild(WorldInfo.EConsoleType ConsoleType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(WorldInfo.EConsoleType*)params.ptr = ConsoleType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5728], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final WorldInfo GetWorldInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7283], params.ptr, cast(void*)0);
		return *cast(WorldInfo*)params.ptr;
	}
	final ScriptString GetMapName(bool bIncludePrefix)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bIncludePrefix;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7713], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final ScriptClass GetGameClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7715], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	final void AllNavigationPoints(ScriptClass BaseClass, NavigationPoint* N)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(NavigationPoint*)&params[4] = *N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8413], params.ptr, cast(void*)0);
		*N = *cast(NavigationPoint*)&params[4];
	}
	final void ForceGarbageCollection(bool bFullPurge)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFullPurge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9153], params.ptr, cast(void*)0);
	}
	final bool IsPreparingMapChange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9175], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PrepareMapChange(ScriptArray!(ScriptName)* LevelNames)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = *LevelNames;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9177], params.ptr, cast(void*)0);
		*LevelNames = *cast(ScriptArray!(ScriptName)*)params.ptr;
	}
	final void CommitMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9179], cast(void*)0, cast(void*)0);
	}
	final void CancelPendingMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9181], cast(void*)0, cast(void*)0);
	}
	final void ReleaseCachedConstraintsAndEvaluators()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16085], cast(void*)0, cast(void*)0);
	}
	final NavMeshPathConstraint GetNavMeshPathConstraintFromCache(ScriptClass ConstraintClass, NavigationHandle Requestor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ConstraintClass;
		*cast(NavigationHandle*)&params[4] = Requestor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16086], params.ptr, cast(void*)0);
		return *cast(NavMeshPathConstraint*)&params[8];
	}
	final NavMeshPathGoalEvaluator GetNavMeshPathGoalEvaluatorFromCache(ScriptClass GoalEvalClass, NavigationHandle Requestor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GoalEvalClass;
		*cast(NavigationHandle*)&params[4] = Requestor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16090], params.ptr, cast(void*)0);
		return *cast(NavMeshPathGoalEvaluator*)&params[8];
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16094], params.ptr, cast(void*)0);
	}
	final void UpdateMusicTrack(MusicTrackDataStructures.MusicTrackStruct NewMusicTrack)
	{
		ubyte params[36];
		params[] = 0;
		*cast(MusicTrackDataStructures.MusicTrackStruct*)params.ptr = NewMusicTrack;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16096], params.ptr, cast(void*)0);
	}
	final void AddOnScreenDebugMessage(int Key, float TimeToDisplay, UObject.Color DisplayColor, ScriptString DebugMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Key;
		*cast(float*)&params[4] = TimeToDisplay;
		*cast(UObject.Color*)&params[8] = DisplayColor;
		*cast(ScriptString*)&params[12] = DebugMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16098], params.ptr, cast(void*)0);
	}
	final bool IsMenuLevel(ScriptString MapName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16103], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final float GetGravityZ()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16116], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final ScriptArray!(Sequence) GetAllRootSequences()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16118], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(Sequence)*)params.ptr;
	}
	final void SetLevelRBGravity(Vector NewGrav)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewGrav;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16121], params.ptr, cast(void*)0);
	}
	final ScriptString GetLocalURL()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16123], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final bool IsDemoBuild()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16125], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsPlayInEditor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16130], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsPlayInPreview()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16132], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void VerifyNavList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16135], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetAddressURL()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16136], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void ServerTravel(ScriptString URL, bool bAbsolute, bool bShouldSkipGameNotify)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		*cast(bool*)&params[12] = bAbsolute;
		*cast(bool*)&params[16] = bShouldSkipGameNotify;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16138], params.ptr, cast(void*)0);
	}
	final bool IsInSeamlessTravel()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16145], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ThisIsNeverExecuted(DefaultPhysicsVolume P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(DefaultPhysicsVolume*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16147], params.ptr, cast(void*)0);
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16149], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16161], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16163], cast(void*)0, cast(void*)0);
	}
	final void RadiusNavigationPoints(ScriptClass BaseClass, NavigationPoint* N, Vector Point, float Radius)
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
	final void NavigationPointCheck(Vector Point, Vector Extent, ScriptArray!(NavigationPoint)* Navs, ScriptArray!(ReachSpec)* Specs)
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
	final void AllPawns(ScriptClass BaseClass, Pawn* P, Vector TestLocation, float TestRadius)
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
	final void NotifyMatchStarted(bool bShouldActivateLevelStartupEvents, bool bShouldActivateLevelBeginningEvents, bool bShouldActivateLevelLoadedEvents)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldActivateLevelStartupEvents;
		*cast(bool*)&params[4] = bShouldActivateLevelBeginningEvents;
		*cast(bool*)&params[8] = bShouldActivateLevelLoadedEvents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16185], params.ptr, cast(void*)0);
	}
	final bool IsMapChangeReady()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16191], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SeamlessTravel(ScriptString URL, bool bAbsolute, UObject.Guid MapPackageGuid)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		*cast(bool*)&params[12] = bAbsolute;
		*cast(UObject.Guid*)&params[16] = MapPackageGuid;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16193], params.ptr, cast(void*)0);
	}
	final void SetSeamlessTravelMidpointPause(bool bNowPaused)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowPaused;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16198], params.ptr, cast(void*)0);
	}
	final MapInfo GetMapInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16200], params.ptr, cast(void*)0);
		return *cast(MapInfo*)params.ptr;
	}
	final void SetMapInfo(MapInfo NewMapInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MapInfo*)params.ptr = NewMapInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16202], params.ptr, cast(void*)0);
	}
	final Scene.EDetailMode GetDetailMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16205], params.ptr, cast(void*)0);
		return *cast(Scene.EDetailMode*)params.ptr;
	}
	final bool IsRecordingDemo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16207], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsPlayingDemo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16209], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void GetDemoFrameInfo(int* CurrentFrame, int* TotalFrames)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = *CurrentFrame;
		*cast(int*)&params[4] = *TotalFrames;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16211], params.ptr, cast(void*)0);
		*CurrentFrame = *cast(int*)params.ptr;
		*TotalFrames = *cast(int*)&params[4];
	}
	final bool GetDemoRewindPoints(ScriptArray!(int)* OutRewindPoints)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = *OutRewindPoints;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16214], params.ptr, cast(void*)0);
		*OutRewindPoints = *cast(ScriptArray!(int)*)params.ptr;
		return *cast(bool*)&params[12];
	}
	final void DoMemoryTracking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16218], cast(void*)0, cast(void*)0);
	}
	final WorldInfo.WorldFractureSettings GetWorldFractureSettings()
	{
		ubyte params[28];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16219], params.ptr, cast(void*)0);
		return *cast(WorldInfo.WorldFractureSettings*)params.ptr;
	}
	final EnvironmentVolume FindEnvironmentVolume(Vector TestLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = TestLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16230], params.ptr, cast(void*)0);
		return *cast(EnvironmentVolume*)&params[12];
	}
	final bool BeginHostMigration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16233], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ToggleHostMigration(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16235], params.ptr, cast(void*)0);
	}
	final void ClearPhysicsPools()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16237], cast(void*)0, cast(void*)0);
	}
}
