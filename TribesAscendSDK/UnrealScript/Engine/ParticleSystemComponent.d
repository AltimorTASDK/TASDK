module UnrealScript.Engine.ParticleSystemComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystemReplay;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ParticleSystemComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleSystemComponent")); }
	private static __gshared ParticleSystemComponent mDefaultProperties;
	@property final static ParticleSystemComponent DefaultProperties() { mixin(MGDPC("ParticleSystemComponent", "ParticleSystemComponent Engine.Default__ParticleSystemComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetTemplate;
			ScriptFunction mActivateSystem;
			ScriptFunction mSetActive;
			ScriptFunction mOnSystemFinished;
			ScriptFunction mDeactivateSystem;
			ScriptFunction mKillParticlesForced;
			ScriptFunction mKillParticlesInEmitter;
			ScriptFunction mSetSkipUpdateDynamicDataDuringTick;
			ScriptFunction mGetSkipUpdateDynamicDataDuringTick;
			ScriptFunction mSetKillOnDeactivate;
			ScriptFunction mSetKillOnCompleted;
			ScriptFunction mRewindEmitterInstance;
			ScriptFunction mRewindEmitterInstances;
			ScriptFunction mSetBeamType;
			ScriptFunction mSetBeamTessellationFactor;
			ScriptFunction mSetBeamEndPoint;
			ScriptFunction mSetBeamDistance;
			ScriptFunction mSetBeamSourcePoint;
			ScriptFunction mSetBeamSourceTangent;
			ScriptFunction mSetBeamSourceStrength;
			ScriptFunction mSetBeamTargetPoint;
			ScriptFunction mSetBeamTargetTangent;
			ScriptFunction mSetBeamTargetStrength;
			ScriptFunction mDetermineLODLevelForLocation;
			ScriptFunction mSetLODLevel;
			ScriptFunction mSetEditorLODLevel;
			ScriptFunction mGetLODLevel;
			ScriptFunction mGetEditorLODLevel;
			ScriptFunction mSetFloatParameter;
			ScriptFunction mSetFloatRandParameter;
			ScriptFunction mSetVectorParameter;
			ScriptFunction mSetVectorRandParameter;
			ScriptFunction mSetColorParameter;
			ScriptFunction mSetActorParameter;
			ScriptFunction mSetMaterialParameter;
			ScriptFunction mGetFloatParameter;
			ScriptFunction mGetVectorParameter;
			ScriptFunction mGetColorParameter;
			ScriptFunction mGetActorParameter;
			ScriptFunction mGetMaterialParameter;
			ScriptFunction mClearParameter;
			ScriptFunction mResetToDefaults;
			ScriptFunction mSetStopSpawning;
		}
		public @property static final
		{
			ScriptFunction SetTemplate() { mixin(MGF("mSetTemplate", "Function Engine.ParticleSystemComponent.SetTemplate")); }
			ScriptFunction ActivateSystem() { mixin(MGF("mActivateSystem", "Function Engine.ParticleSystemComponent.ActivateSystem")); }
			ScriptFunction SetActive() { mixin(MGF("mSetActive", "Function Engine.ParticleSystemComponent.SetActive")); }
			ScriptFunction OnSystemFinished() { mixin(MGF("mOnSystemFinished", "Function Engine.ParticleSystemComponent.OnSystemFinished")); }
			ScriptFunction DeactivateSystem() { mixin(MGF("mDeactivateSystem", "Function Engine.ParticleSystemComponent.DeactivateSystem")); }
			ScriptFunction KillParticlesForced() { mixin(MGF("mKillParticlesForced", "Function Engine.ParticleSystemComponent.KillParticlesForced")); }
			ScriptFunction KillParticlesInEmitter() { mixin(MGF("mKillParticlesInEmitter", "Function Engine.ParticleSystemComponent.KillParticlesInEmitter")); }
			ScriptFunction SetSkipUpdateDynamicDataDuringTick() { mixin(MGF("mSetSkipUpdateDynamicDataDuringTick", "Function Engine.ParticleSystemComponent.SetSkipUpdateDynamicDataDuringTick")); }
			ScriptFunction GetSkipUpdateDynamicDataDuringTick() { mixin(MGF("mGetSkipUpdateDynamicDataDuringTick", "Function Engine.ParticleSystemComponent.GetSkipUpdateDynamicDataDuringTick")); }
			ScriptFunction SetKillOnDeactivate() { mixin(MGF("mSetKillOnDeactivate", "Function Engine.ParticleSystemComponent.SetKillOnDeactivate")); }
			ScriptFunction SetKillOnCompleted() { mixin(MGF("mSetKillOnCompleted", "Function Engine.ParticleSystemComponent.SetKillOnCompleted")); }
			ScriptFunction RewindEmitterInstance() { mixin(MGF("mRewindEmitterInstance", "Function Engine.ParticleSystemComponent.RewindEmitterInstance")); }
			ScriptFunction RewindEmitterInstances() { mixin(MGF("mRewindEmitterInstances", "Function Engine.ParticleSystemComponent.RewindEmitterInstances")); }
			ScriptFunction SetBeamType() { mixin(MGF("mSetBeamType", "Function Engine.ParticleSystemComponent.SetBeamType")); }
			ScriptFunction SetBeamTessellationFactor() { mixin(MGF("mSetBeamTessellationFactor", "Function Engine.ParticleSystemComponent.SetBeamTessellationFactor")); }
			ScriptFunction SetBeamEndPoint() { mixin(MGF("mSetBeamEndPoint", "Function Engine.ParticleSystemComponent.SetBeamEndPoint")); }
			ScriptFunction SetBeamDistance() { mixin(MGF("mSetBeamDistance", "Function Engine.ParticleSystemComponent.SetBeamDistance")); }
			ScriptFunction SetBeamSourcePoint() { mixin(MGF("mSetBeamSourcePoint", "Function Engine.ParticleSystemComponent.SetBeamSourcePoint")); }
			ScriptFunction SetBeamSourceTangent() { mixin(MGF("mSetBeamSourceTangent", "Function Engine.ParticleSystemComponent.SetBeamSourceTangent")); }
			ScriptFunction SetBeamSourceStrength() { mixin(MGF("mSetBeamSourceStrength", "Function Engine.ParticleSystemComponent.SetBeamSourceStrength")); }
			ScriptFunction SetBeamTargetPoint() { mixin(MGF("mSetBeamTargetPoint", "Function Engine.ParticleSystemComponent.SetBeamTargetPoint")); }
			ScriptFunction SetBeamTargetTangent() { mixin(MGF("mSetBeamTargetTangent", "Function Engine.ParticleSystemComponent.SetBeamTargetTangent")); }
			ScriptFunction SetBeamTargetStrength() { mixin(MGF("mSetBeamTargetStrength", "Function Engine.ParticleSystemComponent.SetBeamTargetStrength")); }
			ScriptFunction DetermineLODLevelForLocation() { mixin(MGF("mDetermineLODLevelForLocation", "Function Engine.ParticleSystemComponent.DetermineLODLevelForLocation")); }
			ScriptFunction SetLODLevel() { mixin(MGF("mSetLODLevel", "Function Engine.ParticleSystemComponent.SetLODLevel")); }
			ScriptFunction SetEditorLODLevel() { mixin(MGF("mSetEditorLODLevel", "Function Engine.ParticleSystemComponent.SetEditorLODLevel")); }
			ScriptFunction GetLODLevel() { mixin(MGF("mGetLODLevel", "Function Engine.ParticleSystemComponent.GetLODLevel")); }
			ScriptFunction GetEditorLODLevel() { mixin(MGF("mGetEditorLODLevel", "Function Engine.ParticleSystemComponent.GetEditorLODLevel")); }
			ScriptFunction SetFloatParameter() { mixin(MGF("mSetFloatParameter", "Function Engine.ParticleSystemComponent.SetFloatParameter")); }
			ScriptFunction SetFloatRandParameter() { mixin(MGF("mSetFloatRandParameter", "Function Engine.ParticleSystemComponent.SetFloatRandParameter")); }
			ScriptFunction SetVectorParameter() { mixin(MGF("mSetVectorParameter", "Function Engine.ParticleSystemComponent.SetVectorParameter")); }
			ScriptFunction SetVectorRandParameter() { mixin(MGF("mSetVectorRandParameter", "Function Engine.ParticleSystemComponent.SetVectorRandParameter")); }
			ScriptFunction SetColorParameter() { mixin(MGF("mSetColorParameter", "Function Engine.ParticleSystemComponent.SetColorParameter")); }
			ScriptFunction SetActorParameter() { mixin(MGF("mSetActorParameter", "Function Engine.ParticleSystemComponent.SetActorParameter")); }
			ScriptFunction SetMaterialParameter() { mixin(MGF("mSetMaterialParameter", "Function Engine.ParticleSystemComponent.SetMaterialParameter")); }
			ScriptFunction GetFloatParameter() { mixin(MGF("mGetFloatParameter", "Function Engine.ParticleSystemComponent.GetFloatParameter")); }
			ScriptFunction GetVectorParameter() { mixin(MGF("mGetVectorParameter", "Function Engine.ParticleSystemComponent.GetVectorParameter")); }
			ScriptFunction GetColorParameter() { mixin(MGF("mGetColorParameter", "Function Engine.ParticleSystemComponent.GetColorParameter")); }
			ScriptFunction GetActorParameter() { mixin(MGF("mGetActorParameter", "Function Engine.ParticleSystemComponent.GetActorParameter")); }
			ScriptFunction GetMaterialParameter() { mixin(MGF("mGetMaterialParameter", "Function Engine.ParticleSystemComponent.GetMaterialParameter")); }
			ScriptFunction ClearParameter() { mixin(MGF("mClearParameter", "Function Engine.ParticleSystemComponent.ClearParameter")); }
			ScriptFunction ResetToDefaults() { mixin(MGF("mResetToDefaults", "Function Engine.ParticleSystemComponent.ResetToDefaults")); }
			ScriptFunction SetStopSpawning() { mixin(MGF("mSetStopSpawning", "Function Engine.ParticleSystemComponent.SetStopSpawning")); }
		}
	}
	enum EParticleSysParamType : ubyte
	{
		PSPT_None = 0,
		PSPT_Scalar = 1,
		PSPT_ScalarRand = 2,
		PSPT_Vector = 3,
		PSPT_VectorRand = 4,
		PSPT_Color = 5,
		PSPT_Actor = 6,
		PSPT_Material = 7,
		PSPT_MAX = 8,
	}
	enum ParticleReplayState : ubyte
	{
		PRS_Disabled = 0,
		PRS_Capturing = 1,
		PRS_Replaying = 2,
		PRS_MAX = 3,
	}
	enum EParticleEventType : ubyte
	{
		EPET_Any = 0,
		EPET_Spawn = 1,
		EPET_Death = 2,
		EPET_Collision = 3,
		EPET_Kismet = 4,
		EPET_MAX = 5,
	}
	struct ViewParticleEmitterInstanceMotionBlurInfo
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleSystemComponent.ViewParticleEmitterInstanceMotionBlurInfo")); }
		@property final auto ref UObject.Map_Mirror EmitterInstanceMBInfoMap() { mixin(MGPS("UObject.Map_Mirror", 0)); }
	}
	struct ParticleSysParam
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleSystemComponent.ParticleSysParam")); }
		@property final auto ref
		{
			// WARNING: Property 'Material' has the same name as a defined type!
			// WARNING: Property 'Actor' has the same name as a defined type!
			// WARNING: Property 'Color' has the same name as a defined type!
			Vector Vector_Low() { mixin(MGPS("Vector", 32)); }
			// WARNING: Property 'Vector' has the same name as a defined type!
			float Scalar_Low() { mixin(MGPS("float", 16)); }
			float Scalar() { mixin(MGPS("float", 12)); }
			ParticleSystemComponent.EParticleSysParamType ParamType() { mixin(MGPS("ParticleSystemComponent.EParticleSysParamType", 8)); }
			ScriptName Name() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct ParticleEventData
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleSystemComponent.ParticleEventData")); }
		@property final auto ref
		{
			Vector Velocity() { mixin(MGPS("Vector", 40)); }
			Vector Direction() { mixin(MGPS("Vector", 28)); }
			Vector Location() { mixin(MGPS("Vector", 16)); }
			float EmitterTime() { mixin(MGPS("float", 12)); }
			ScriptName EventName() { mixin(MGPS("ScriptName", 4)); }
			int Type() { mixin(MGPS("int", 0)); }
		}
	}
	struct ParticleEventSpawnData
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleSystemComponent.ParticleEventSpawnData")); }
		@property final auto ref
		{
			Vector Velocity() { mixin(MGPS("Vector", 40)); }
			Vector Direction() { mixin(MGPS("Vector", 28)); }
			Vector Location() { mixin(MGPS("Vector", 16)); }
			float EmitterTime() { mixin(MGPS("float", 12)); }
			ScriptName EventName() { mixin(MGPS("ScriptName", 4)); }
			int Type() { mixin(MGPS("int", 0)); }
		}
	}
	struct ParticleEventDeathData
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleSystemComponent.ParticleEventDeathData")); }
		@property final auto ref
		{
			Vector Velocity() { mixin(MGPS("Vector", 40)); }
			Vector Direction() { mixin(MGPS("Vector", 28)); }
			Vector Location() { mixin(MGPS("Vector", 16)); }
			float EmitterTime() { mixin(MGPS("float", 12)); }
			ScriptName EventName() { mixin(MGPS("ScriptName", 4)); }
			int Type() { mixin(MGPS("int", 0)); }
		}
		@property final auto ref float ParticleTime() { mixin(MGPS("float", 52)); }
	}
	struct ParticleEventCollideData
	{
		private ubyte __buffer__[84];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleSystemComponent.ParticleEventCollideData")); }
		@property final auto ref
		{
			Vector Velocity() { mixin(MGPS("Vector", 40)); }
			Vector Direction() { mixin(MGPS("Vector", 28)); }
			Vector Location() { mixin(MGPS("Vector", 16)); }
			float EmitterTime() { mixin(MGPS("float", 12)); }
			ScriptName EventName() { mixin(MGPS("ScriptName", 4)); }
			int Type() { mixin(MGPS("int", 0)); }
		}
		@property final auto ref
		{
			ScriptName BoneName() { mixin(MGPS("ScriptName", 76)); }
			int Item() { mixin(MGPS("int", 72)); }
			float Time() { mixin(MGPS("float", 68)); }
			Vector Normal() { mixin(MGPS("Vector", 56)); }
			float ParticleTime() { mixin(MGPS("float", 52)); }
		}
	}
	struct ParticleEventKismetData
	{
		private ubyte __buffer__[68];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleSystemComponent.ParticleEventKismetData")); }
		@property final auto ref
		{
			Vector Velocity() { mixin(MGPS("Vector", 40)); }
			Vector Direction() { mixin(MGPS("Vector", 28)); }
			Vector Location() { mixin(MGPS("Vector", 16)); }
			float EmitterTime() { mixin(MGPS("float", 12)); }
			ScriptName EventName() { mixin(MGPS("ScriptName", 4)); }
			int Type() { mixin(MGPS("int", 0)); }
		}
		@property final
		{
			@property final auto ref Vector Normal() { mixin(MGPS("Vector", 56)); }
			bool UsePSysCompLocation() { mixin(MGBPS(52, 0x1)); }
			bool UsePSysCompLocation(bool val) { mixin(MSBPS(52, 0x1)); }
		}
	}
	struct ParticleEmitterInstanceMotionBlurInfo
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleSystemComponent.ParticleEmitterInstanceMotionBlurInfo")); }
		@property final auto ref UObject.Map_Mirror ParticleMBInfoMap() { mixin(MGPS("UObject.Map_Mirror", 0)); }
	}
	struct ParticleEmitterInstance
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleSystemComponent.ParticleEmitterInstance")); }
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnSystemFinished__Delegate'!
			ParticleSystem Template() { mixin(MGPC("ParticleSystem", 488)); }
			ScriptClass LightEnvironmentClass() { mixin(MGPC("ScriptClass", 492)); }
			ScriptArray!(UObject.Pointer) EmitterInstances() { mixin(MGPC("ScriptArray!(UObject.Pointer)", 496)); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) SMComponents() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 508)); }
			ScriptArray!(MaterialInterface) SMMaterialInterfaces() { mixin(MGPC("ScriptArray!(MaterialInterface)", 520)); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) SkelMeshComponents() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 532)); }
			ScriptArray!(ParticleSystemComponent.ViewParticleEmitterInstanceMotionBlurInfo) ViewMBInfoArray() { mixin(MGPC("ScriptArray!(ParticleSystemComponent.ViewParticleEmitterInstanceMotionBlurInfo)", 544)); }
			ScriptArray!(ParticleSystemComponent.ParticleSysParam) InstanceParameters() { mixin(MGPC("ScriptArray!(ParticleSystemComponent.ParticleSysParam)", 560)); }
			Vector OldPosition() { mixin(MGPC("Vector", 572)); }
			Vector PartSysVelocity() { mixin(MGPC("Vector", 584)); }
			float WarmupTime() { mixin(MGPC("float", 596)); }
			int LODLevel() { mixin(MGPC("int", 600)); }
			float SecondsBeforeInactive() { mixin(MGPC("float", 604)); }
			float TimeSinceLastForceUpdateTransform() { mixin(MGPC("float", 608)); }
			float MaxTimeBeforeForceUpdateTransform() { mixin(MGPC("float", 612)); }
			int EditorLODLevel() { mixin(MGPC("int", 616)); }
			float AccumTickTime() { mixin(MGPC("float", 620)); }
			ParticleSystem.ParticleSystemLODMethod LODMethod() { mixin(MGPC("ParticleSystem.ParticleSystemLODMethod", 624)); }
			ParticleSystemComponent.ParticleReplayState ReplayState() { mixin(MGPC("ParticleSystemComponent.ParticleReplayState", 625)); }
			ScriptArray!(PrimitiveComponent.MaterialViewRelevance) CachedViewRelevanceFlags() { mixin(MGPC("ScriptArray!(PrimitiveComponent.MaterialViewRelevance)", 628)); }
			ScriptArray!(ParticleSystemReplay) ReplayClips() { mixin(MGPC("ScriptArray!(ParticleSystemReplay)", 640)); }
			int ReplayClipIDNumber() { mixin(MGPC("int", 652)); }
			int ReplayFrameIndex() { mixin(MGPC("int", 656)); }
			float AccumLODDistanceCheckTime() { mixin(MGPC("float", 660)); }
			ScriptArray!(ParticleSystemComponent.ParticleEventSpawnData) SpawnEvents() { mixin(MGPC("ScriptArray!(ParticleSystemComponent.ParticleEventSpawnData)", 664)); }
			ScriptArray!(ParticleSystemComponent.ParticleEventDeathData) DeathEvents() { mixin(MGPC("ScriptArray!(ParticleSystemComponent.ParticleEventDeathData)", 676)); }
			ScriptArray!(ParticleSystemComponent.ParticleEventCollideData) CollisionEvents() { mixin(MGPC("ScriptArray!(ParticleSystemComponent.ParticleEventCollideData)", 688)); }
			ScriptArray!(ParticleSystemComponent.ParticleEventKismetData) KismetEvents() { mixin(MGPC("ScriptArray!(ParticleSystemComponent.ParticleEventKismetData)", 700)); }
			UObject.Pointer ReleaseResourcesFence() { mixin(MGPC("UObject.Pointer", 712)); }
			float CustomTimeDilation() { mixin(MGPC("float", 716)); }
			float EmitterDelay() { mixin(MGPC("float", 720)); }
		}
		bool bAutoActivate() { mixin(MGBPC(556, 0x1)); }
		bool bAutoActivate(bool val) { mixin(MSBPC(556, 0x1)); }
		bool bWasCompleted() { mixin(MGBPC(556, 0x2)); }
		bool bWasCompleted(bool val) { mixin(MSBPC(556, 0x2)); }
		bool bSuppressSpawning() { mixin(MGBPC(556, 0x4)); }
		bool bSuppressSpawning(bool val) { mixin(MSBPC(556, 0x4)); }
		bool bWasDeactivated() { mixin(MGBPC(556, 0x8)); }
		bool bWasDeactivated(bool val) { mixin(MSBPC(556, 0x8)); }
		bool bResetOnDetach() { mixin(MGBPC(556, 0x10)); }
		bool bResetOnDetach(bool val) { mixin(MSBPC(556, 0x10)); }
		bool bUpdateOnDedicatedServer() { mixin(MGBPC(556, 0x20)); }
		bool bUpdateOnDedicatedServer(bool val) { mixin(MSBPC(556, 0x20)); }
		bool bJustAttached() { mixin(MGBPC(556, 0x40)); }
		bool bJustAttached(bool val) { mixin(MSBPC(556, 0x40)); }
		bool bIsActive() { mixin(MGBPC(556, 0x80)); }
		bool bIsActive(bool val) { mixin(MSBPC(556, 0x80)); }
		bool bWarmingUp() { mixin(MGBPC(556, 0x100)); }
		bool bWarmingUp(bool val) { mixin(MSBPC(556, 0x100)); }
		bool bIsCachedInPool() { mixin(MGBPC(556, 0x200)); }
		bool bIsCachedInPool(bool val) { mixin(MSBPC(556, 0x200)); }
		bool bOverrideLODMethod() { mixin(MGBPC(556, 0x400)); }
		bool bOverrideLODMethod(bool val) { mixin(MSBPC(556, 0x400)); }
		bool bSkipUpdateDynamicDataDuringTick() { mixin(MGBPC(556, 0x800)); }
		bool bSkipUpdateDynamicDataDuringTick(bool val) { mixin(MSBPC(556, 0x800)); }
		bool bUpdateComponentInTick() { mixin(MGBPC(556, 0x1000)); }
		bool bUpdateComponentInTick(bool val) { mixin(MSBPC(556, 0x1000)); }
		bool bDeferredBeamUpdate() { mixin(MGBPC(556, 0x2000)); }
		bool bDeferredBeamUpdate(bool val) { mixin(MSBPC(556, 0x2000)); }
		bool bForcedInActive() { mixin(MGBPC(556, 0x4000)); }
		bool bForcedInActive(bool val) { mixin(MSBPC(556, 0x4000)); }
		bool bIsWarmingUp() { mixin(MGBPC(556, 0x8000)); }
		bool bIsWarmingUp(bool val) { mixin(MSBPC(556, 0x8000)); }
		bool bIsViewRelevanceDirty() { mixin(MGBPC(556, 0x10000)); }
		bool bIsViewRelevanceDirty(bool val) { mixin(MSBPC(556, 0x10000)); }
		bool bRecacheViewRelevance() { mixin(MGBPC(556, 0x20000)); }
		bool bRecacheViewRelevance(bool val) { mixin(MSBPC(556, 0x20000)); }
		bool bLODUpdatePending() { mixin(MGBPC(556, 0x40000)); }
		bool bLODUpdatePending(bool val) { mixin(MSBPC(556, 0x40000)); }
		bool bSkipSpawnCountCheck() { mixin(MGBPC(556, 0x80000)); }
		bool bSkipSpawnCountCheck(bool val) { mixin(MSBPC(556, 0x80000)); }
	}
final:
	void SetTemplate(ParticleSystem NewTemplate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTemplate, params.ptr, cast(void*)0);
	}
	void ActivateSystem(bool* bFlagAsJustAttached = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bFlagAsJustAttached !is null)
			*cast(bool*)params.ptr = *bFlagAsJustAttached;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateSystem, params.ptr, cast(void*)0);
	}
	void SetActive(bool bNowActive, bool* bFlagAsJustAttached = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bNowActive;
		if (bFlagAsJustAttached !is null)
			*cast(bool*)&params[4] = *bFlagAsJustAttached;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActive, params.ptr, cast(void*)0);
	}
	void OnSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSystem)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSystem;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSystemFinished, params.ptr, cast(void*)0);
	}
	void DeactivateSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeactivateSystem, cast(void*)0, cast(void*)0);
	}
	void KillParticlesForced()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillParticlesForced, cast(void*)0, cast(void*)0);
	}
	void KillParticlesInEmitter(ScriptName InEmitterName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InEmitterName;
		(cast(ScriptObject)this).ProcessEvent(Functions.KillParticlesInEmitter, params.ptr, cast(void*)0);
	}
	void SetSkipUpdateDynamicDataDuringTick(bool bInSkipUpdateDynamicDataDuringTick)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInSkipUpdateDynamicDataDuringTick;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkipUpdateDynamicDataDuringTick, params.ptr, cast(void*)0);
	}
	bool GetSkipUpdateDynamicDataDuringTick()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSkipUpdateDynamicDataDuringTick, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetKillOnDeactivate(int EmitterIndex, bool bKill)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(bool*)&params[4] = bKill;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetKillOnDeactivate, params.ptr, cast(void*)0);
	}
	void SetKillOnCompleted(int EmitterIndex, bool bKill)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(bool*)&params[4] = bKill;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetKillOnCompleted, params.ptr, cast(void*)0);
	}
	void RewindEmitterInstance(int EmitterIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RewindEmitterInstance, params.ptr, cast(void*)0);
	}
	void RewindEmitterInstances()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RewindEmitterInstances, cast(void*)0, cast(void*)0);
	}
	void SetBeamType(int EmitterIndex, int NewMethod)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(int*)&params[4] = NewMethod;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBeamType, params.ptr, cast(void*)0);
	}
	void SetBeamTessellationFactor(int EmitterIndex, float NewFactor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(float*)&params[4] = NewFactor;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBeamTessellationFactor, params.ptr, cast(void*)0);
	}
	void SetBeamEndPoint(int EmitterIndex, Vector NewEndPoint)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(Vector*)&params[4] = NewEndPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBeamEndPoint, params.ptr, cast(void*)0);
	}
	void SetBeamDistance(int EmitterIndex, float Distance)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(float*)&params[4] = Distance;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBeamDistance, params.ptr, cast(void*)0);
	}
	void SetBeamSourcePoint(int EmitterIndex, Vector NewSourcePoint, int SourceIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(Vector*)&params[4] = NewSourcePoint;
		*cast(int*)&params[16] = SourceIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBeamSourcePoint, params.ptr, cast(void*)0);
	}
	void SetBeamSourceTangent(int EmitterIndex, Vector NewTangentPoint, int SourceIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(Vector*)&params[4] = NewTangentPoint;
		*cast(int*)&params[16] = SourceIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBeamSourceTangent, params.ptr, cast(void*)0);
	}
	void SetBeamSourceStrength(int EmitterIndex, float NewSourceStrength, int SourceIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(float*)&params[4] = NewSourceStrength;
		*cast(int*)&params[8] = SourceIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBeamSourceStrength, params.ptr, cast(void*)0);
	}
	void SetBeamTargetPoint(int EmitterIndex, Vector NewTargetPoint, int TargetIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(Vector*)&params[4] = NewTargetPoint;
		*cast(int*)&params[16] = TargetIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBeamTargetPoint, params.ptr, cast(void*)0);
	}
	void SetBeamTargetTangent(int EmitterIndex, Vector NewTangentPoint, int TargetIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(Vector*)&params[4] = NewTangentPoint;
		*cast(int*)&params[16] = TargetIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBeamTargetTangent, params.ptr, cast(void*)0);
	}
	void SetBeamTargetStrength(int EmitterIndex, float NewTargetStrength, int TargetIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(float*)&params[4] = NewTargetStrength;
		*cast(int*)&params[8] = TargetIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBeamTargetStrength, params.ptr, cast(void*)0);
	}
	int DetermineLODLevelForLocation(ref in Vector EffectLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = cast(Vector)EffectLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetermineLODLevelForLocation, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void SetLODLevel(int InLODLevel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InLODLevel;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLODLevel, params.ptr, cast(void*)0);
	}
	void SetEditorLODLevel(int InLODLevel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InLODLevel;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEditorLODLevel, params.ptr, cast(void*)0);
	}
	int GetLODLevel()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLODLevel, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetEditorLODLevel()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEditorLODLevel, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void SetFloatParameter(ScriptName ParameterName, float Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFloatParameter, params.ptr, cast(void*)0);
	}
	void SetFloatRandParameter(ScriptName ParameterName, float Param, float ParamLow)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Param;
		*cast(float*)&params[12] = ParamLow;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFloatRandParameter, params.ptr, cast(void*)0);
	}
	void SetVectorParameter(ScriptName ParameterName, Vector Param)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Vector*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVectorParameter, params.ptr, cast(void*)0);
	}
	void SetVectorRandParameter(ScriptName ParameterName, ref in Vector Param, ref in Vector ParamLow)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Vector*)&params[8] = cast(Vector)Param;
		*cast(Vector*)&params[20] = cast(Vector)ParamLow;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVectorRandParameter, params.ptr, cast(void*)0);
	}
	void SetColorParameter(ScriptName ParameterName, UObject.Color Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.Color*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetColorParameter, params.ptr, cast(void*)0);
	}
	void SetActorParameter(ScriptName ParameterName, Actor Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Actor*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActorParameter, params.ptr, cast(void*)0);
	}
	void SetMaterialParameter(ScriptName ParameterName, MaterialInterface Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(MaterialInterface*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMaterialParameter, params.ptr, cast(void*)0);
	}
	bool GetFloatParameter(in ScriptName InName, ref float OutFloat)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = cast(ScriptName)InName;
		*cast(float*)&params[8] = OutFloat;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFloatParameter, params.ptr, cast(void*)0);
		OutFloat = *cast(float*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetVectorParameter(in ScriptName InName, ref Vector OutVector)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = cast(ScriptName)InName;
		*cast(Vector*)&params[8] = OutVector;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVectorParameter, params.ptr, cast(void*)0);
		OutVector = *cast(Vector*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetColorParameter(in ScriptName InName, ref UObject.Color OutColor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = cast(ScriptName)InName;
		*cast(UObject.Color*)&params[8] = OutColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetColorParameter, params.ptr, cast(void*)0);
		OutColor = *cast(UObject.Color*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetActorParameter(in ScriptName InName, ref Actor OutActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = cast(ScriptName)InName;
		*cast(Actor*)&params[8] = OutActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActorParameter, params.ptr, cast(void*)0);
		OutActor = *cast(Actor*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetMaterialParameter(in ScriptName InName, ref MaterialInterface OutMaterial)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = cast(ScriptName)InName;
		*cast(MaterialInterface*)&params[8] = OutMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaterialParameter, params.ptr, cast(void*)0);
		OutMaterial = *cast(MaterialInterface*)&params[8];
		return *cast(bool*)&params[12];
	}
	void ClearParameter(ScriptName ParameterName, ParticleSystemComponent.EParticleSysParamType* ParameterType = null)
	{
		ubyte params[9];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		if (ParameterType !is null)
			*cast(ParticleSystemComponent.EParticleSysParamType*)&params[8] = *ParameterType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearParameter, params.ptr, cast(void*)0);
	}
	void ResetToDefaults()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetToDefaults, cast(void*)0, cast(void*)0);
	}
	void SetStopSpawning(int InEmitterIndex, bool bInStopSpawning)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InEmitterIndex;
		*cast(bool*)&params[4] = bInStopSpawning;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStopSpawning, params.ptr, cast(void*)0);
	}
}
