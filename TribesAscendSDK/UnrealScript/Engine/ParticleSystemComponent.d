module UnrealScript.Engine.ParticleSystemComponent;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleSystemComponent")); }
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
			ScriptFunction SetTemplate() { return mSetTemplate ? mSetTemplate : (mSetTemplate = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetTemplate")); }
			ScriptFunction ActivateSystem() { return mActivateSystem ? mActivateSystem : (mActivateSystem = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.ActivateSystem")); }
			ScriptFunction SetActive() { return mSetActive ? mSetActive : (mSetActive = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetActive")); }
			ScriptFunction OnSystemFinished() { return mOnSystemFinished ? mOnSystemFinished : (mOnSystemFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.OnSystemFinished")); }
			ScriptFunction DeactivateSystem() { return mDeactivateSystem ? mDeactivateSystem : (mDeactivateSystem = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.DeactivateSystem")); }
			ScriptFunction KillParticlesForced() { return mKillParticlesForced ? mKillParticlesForced : (mKillParticlesForced = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.KillParticlesForced")); }
			ScriptFunction KillParticlesInEmitter() { return mKillParticlesInEmitter ? mKillParticlesInEmitter : (mKillParticlesInEmitter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.KillParticlesInEmitter")); }
			ScriptFunction SetSkipUpdateDynamicDataDuringTick() { return mSetSkipUpdateDynamicDataDuringTick ? mSetSkipUpdateDynamicDataDuringTick : (mSetSkipUpdateDynamicDataDuringTick = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetSkipUpdateDynamicDataDuringTick")); }
			ScriptFunction GetSkipUpdateDynamicDataDuringTick() { return mGetSkipUpdateDynamicDataDuringTick ? mGetSkipUpdateDynamicDataDuringTick : (mGetSkipUpdateDynamicDataDuringTick = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.GetSkipUpdateDynamicDataDuringTick")); }
			ScriptFunction SetKillOnDeactivate() { return mSetKillOnDeactivate ? mSetKillOnDeactivate : (mSetKillOnDeactivate = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetKillOnDeactivate")); }
			ScriptFunction SetKillOnCompleted() { return mSetKillOnCompleted ? mSetKillOnCompleted : (mSetKillOnCompleted = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetKillOnCompleted")); }
			ScriptFunction RewindEmitterInstance() { return mRewindEmitterInstance ? mRewindEmitterInstance : (mRewindEmitterInstance = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.RewindEmitterInstance")); }
			ScriptFunction RewindEmitterInstances() { return mRewindEmitterInstances ? mRewindEmitterInstances : (mRewindEmitterInstances = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.RewindEmitterInstances")); }
			ScriptFunction SetBeamType() { return mSetBeamType ? mSetBeamType : (mSetBeamType = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetBeamType")); }
			ScriptFunction SetBeamTessellationFactor() { return mSetBeamTessellationFactor ? mSetBeamTessellationFactor : (mSetBeamTessellationFactor = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetBeamTessellationFactor")); }
			ScriptFunction SetBeamEndPoint() { return mSetBeamEndPoint ? mSetBeamEndPoint : (mSetBeamEndPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetBeamEndPoint")); }
			ScriptFunction SetBeamDistance() { return mSetBeamDistance ? mSetBeamDistance : (mSetBeamDistance = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetBeamDistance")); }
			ScriptFunction SetBeamSourcePoint() { return mSetBeamSourcePoint ? mSetBeamSourcePoint : (mSetBeamSourcePoint = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetBeamSourcePoint")); }
			ScriptFunction SetBeamSourceTangent() { return mSetBeamSourceTangent ? mSetBeamSourceTangent : (mSetBeamSourceTangent = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetBeamSourceTangent")); }
			ScriptFunction SetBeamSourceStrength() { return mSetBeamSourceStrength ? mSetBeamSourceStrength : (mSetBeamSourceStrength = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetBeamSourceStrength")); }
			ScriptFunction SetBeamTargetPoint() { return mSetBeamTargetPoint ? mSetBeamTargetPoint : (mSetBeamTargetPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetBeamTargetPoint")); }
			ScriptFunction SetBeamTargetTangent() { return mSetBeamTargetTangent ? mSetBeamTargetTangent : (mSetBeamTargetTangent = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetBeamTargetTangent")); }
			ScriptFunction SetBeamTargetStrength() { return mSetBeamTargetStrength ? mSetBeamTargetStrength : (mSetBeamTargetStrength = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetBeamTargetStrength")); }
			ScriptFunction DetermineLODLevelForLocation() { return mDetermineLODLevelForLocation ? mDetermineLODLevelForLocation : (mDetermineLODLevelForLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.DetermineLODLevelForLocation")); }
			ScriptFunction SetLODLevel() { return mSetLODLevel ? mSetLODLevel : (mSetLODLevel = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetLODLevel")); }
			ScriptFunction SetEditorLODLevel() { return mSetEditorLODLevel ? mSetEditorLODLevel : (mSetEditorLODLevel = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetEditorLODLevel")); }
			ScriptFunction GetLODLevel() { return mGetLODLevel ? mGetLODLevel : (mGetLODLevel = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.GetLODLevel")); }
			ScriptFunction GetEditorLODLevel() { return mGetEditorLODLevel ? mGetEditorLODLevel : (mGetEditorLODLevel = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.GetEditorLODLevel")); }
			ScriptFunction SetFloatParameter() { return mSetFloatParameter ? mSetFloatParameter : (mSetFloatParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetFloatParameter")); }
			ScriptFunction SetFloatRandParameter() { return mSetFloatRandParameter ? mSetFloatRandParameter : (mSetFloatRandParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetFloatRandParameter")); }
			ScriptFunction SetVectorParameter() { return mSetVectorParameter ? mSetVectorParameter : (mSetVectorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetVectorParameter")); }
			ScriptFunction SetVectorRandParameter() { return mSetVectorRandParameter ? mSetVectorRandParameter : (mSetVectorRandParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetVectorRandParameter")); }
			ScriptFunction SetColorParameter() { return mSetColorParameter ? mSetColorParameter : (mSetColorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetColorParameter")); }
			ScriptFunction SetActorParameter() { return mSetActorParameter ? mSetActorParameter : (mSetActorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetActorParameter")); }
			ScriptFunction SetMaterialParameter() { return mSetMaterialParameter ? mSetMaterialParameter : (mSetMaterialParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetMaterialParameter")); }
			ScriptFunction GetFloatParameter() { return mGetFloatParameter ? mGetFloatParameter : (mGetFloatParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.GetFloatParameter")); }
			ScriptFunction GetVectorParameter() { return mGetVectorParameter ? mGetVectorParameter : (mGetVectorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.GetVectorParameter")); }
			ScriptFunction GetColorParameter() { return mGetColorParameter ? mGetColorParameter : (mGetColorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.GetColorParameter")); }
			ScriptFunction GetActorParameter() { return mGetActorParameter ? mGetActorParameter : (mGetActorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.GetActorParameter")); }
			ScriptFunction GetMaterialParameter() { return mGetMaterialParameter ? mGetMaterialParameter : (mGetMaterialParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.GetMaterialParameter")); }
			ScriptFunction ClearParameter() { return mClearParameter ? mClearParameter : (mClearParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.ClearParameter")); }
			ScriptFunction ResetToDefaults() { return mResetToDefaults ? mResetToDefaults : (mResetToDefaults = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.ResetToDefaults")); }
			ScriptFunction SetStopSpawning() { return mSetStopSpawning ? mSetStopSpawning : (mSetStopSpawning = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystemComponent.SetStopSpawning")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystemComponent.ViewParticleEmitterInstanceMotionBlurInfo")); }
		@property final auto ref UObject.Map_Mirror EmitterInstanceMBInfoMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)&this + 0); }
	}
	struct ParticleSysParam
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystemComponent.ParticleSysParam")); }
		@property final auto ref
		{
			// WARNING: Property 'Material' has the same name as a defined type!
			// WARNING: Property 'Actor' has the same name as a defined type!
			// WARNING: Property 'Color' has the same name as a defined type!
			Vector Vector_Low() { return *cast(Vector*)(cast(size_t)&this + 32); }
			// WARNING: Property 'Vector' has the same name as a defined type!
			float Scalar_Low() { return *cast(float*)(cast(size_t)&this + 16); }
			float Scalar() { return *cast(float*)(cast(size_t)&this + 12); }
			ParticleSystemComponent.EParticleSysParamType ParamType() { return *cast(ParticleSystemComponent.EParticleSysParamType*)(cast(size_t)&this + 8); }
			ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct ParticleEventData
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystemComponent.ParticleEventData")); }
		@property final auto ref
		{
			Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 40); }
			Vector Direction() { return *cast(Vector*)(cast(size_t)&this + 28); }
			Vector Location() { return *cast(Vector*)(cast(size_t)&this + 16); }
			float EmitterTime() { return *cast(float*)(cast(size_t)&this + 12); }
			ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct ParticleEventSpawnData
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystemComponent.ParticleEventSpawnData")); }
		@property final auto ref
		{
			Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 40); }
			Vector Direction() { return *cast(Vector*)(cast(size_t)&this + 28); }
			Vector Location() { return *cast(Vector*)(cast(size_t)&this + 16); }
			float EmitterTime() { return *cast(float*)(cast(size_t)&this + 12); }
			ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct ParticleEventDeathData
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystemComponent.ParticleEventDeathData")); }
		@property final auto ref
		{
			Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 40); }
			Vector Direction() { return *cast(Vector*)(cast(size_t)&this + 28); }
			Vector Location() { return *cast(Vector*)(cast(size_t)&this + 16); }
			float EmitterTime() { return *cast(float*)(cast(size_t)&this + 12); }
			ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		}
		@property final auto ref float ParticleTime() { return *cast(float*)(cast(size_t)&this + 52); }
	}
	struct ParticleEventCollideData
	{
		private ubyte __buffer__[84];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystemComponent.ParticleEventCollideData")); }
		@property final auto ref
		{
			Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 40); }
			Vector Direction() { return *cast(Vector*)(cast(size_t)&this + 28); }
			Vector Location() { return *cast(Vector*)(cast(size_t)&this + 16); }
			float EmitterTime() { return *cast(float*)(cast(size_t)&this + 12); }
			ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		}
		@property final auto ref
		{
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 76); }
			int Item() { return *cast(int*)(cast(size_t)&this + 72); }
			float Time() { return *cast(float*)(cast(size_t)&this + 68); }
			Vector Normal() { return *cast(Vector*)(cast(size_t)&this + 56); }
			float ParticleTime() { return *cast(float*)(cast(size_t)&this + 52); }
		}
	}
	struct ParticleEventKismetData
	{
		private ubyte __buffer__[68];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystemComponent.ParticleEventKismetData")); }
		@property final auto ref
		{
			Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 40); }
			Vector Direction() { return *cast(Vector*)(cast(size_t)&this + 28); }
			Vector Location() { return *cast(Vector*)(cast(size_t)&this + 16); }
			float EmitterTime() { return *cast(float*)(cast(size_t)&this + 12); }
			ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		}
		@property final
		{
			@property final auto ref Vector Normal() { return *cast(Vector*)(cast(size_t)&this + 56); }
			bool UsePSysCompLocation() { return (*cast(uint*)(cast(size_t)&this + 52) & 0x1) != 0; }
			bool UsePSysCompLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 52) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 52) &= ~0x1; } return val; }
		}
	}
	struct ParticleEmitterInstanceMotionBlurInfo
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystemComponent.ParticleEmitterInstanceMotionBlurInfo")); }
		@property final auto ref UObject.Map_Mirror ParticleMBInfoMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)&this + 0); }
	}
	struct ParticleEmitterInstance
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystemComponent.ParticleEmitterInstance")); }
	}
	@property final
	{
		auto ref
		{
			ParticleSystem Template() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 488); }
			ScriptClass LightEnvironmentClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 492); }
			ScriptArray!(UObject.Pointer) EmitterInstances() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 496); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) SMComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 508); }
			ScriptArray!(MaterialInterface) SMMaterialInterfaces() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 520); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) SkelMeshComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 532); }
			ScriptArray!(ParticleSystemComponent.ViewParticleEmitterInstanceMotionBlurInfo) ViewMBInfoArray() { return *cast(ScriptArray!(ParticleSystemComponent.ViewParticleEmitterInstanceMotionBlurInfo)*)(cast(size_t)cast(void*)this + 544); }
			ScriptArray!(ParticleSystemComponent.ParticleSysParam) InstanceParameters() { return *cast(ScriptArray!(ParticleSystemComponent.ParticleSysParam)*)(cast(size_t)cast(void*)this + 560); }
			Vector OldPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 572); }
			Vector PartSysVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 584); }
			float WarmupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
			int LODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 600); }
			float SecondsBeforeInactive() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
			float TimeSinceLastForceUpdateTransform() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
			float MaxTimeBeforeForceUpdateTransform() { return *cast(float*)(cast(size_t)cast(void*)this + 612); }
			int EditorLODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 616); }
			float AccumTickTime() { return *cast(float*)(cast(size_t)cast(void*)this + 620); }
			ParticleSystem.ParticleSystemLODMethod LODMethod() { return *cast(ParticleSystem.ParticleSystemLODMethod*)(cast(size_t)cast(void*)this + 624); }
			ParticleSystemComponent.ParticleReplayState ReplayState() { return *cast(ParticleSystemComponent.ParticleReplayState*)(cast(size_t)cast(void*)this + 625); }
			ScriptArray!(PrimitiveComponent.MaterialViewRelevance) CachedViewRelevanceFlags() { return *cast(ScriptArray!(PrimitiveComponent.MaterialViewRelevance)*)(cast(size_t)cast(void*)this + 628); }
			ScriptArray!(ParticleSystemReplay) ReplayClips() { return *cast(ScriptArray!(ParticleSystemReplay)*)(cast(size_t)cast(void*)this + 640); }
			int ReplayClipIDNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 652); }
			int ReplayFrameIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 656); }
			float AccumLODDistanceCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 660); }
			ScriptArray!(ParticleSystemComponent.ParticleEventSpawnData) SpawnEvents() { return *cast(ScriptArray!(ParticleSystemComponent.ParticleEventSpawnData)*)(cast(size_t)cast(void*)this + 664); }
			ScriptArray!(ParticleSystemComponent.ParticleEventDeathData) DeathEvents() { return *cast(ScriptArray!(ParticleSystemComponent.ParticleEventDeathData)*)(cast(size_t)cast(void*)this + 676); }
			ScriptArray!(ParticleSystemComponent.ParticleEventCollideData) CollisionEvents() { return *cast(ScriptArray!(ParticleSystemComponent.ParticleEventCollideData)*)(cast(size_t)cast(void*)this + 688); }
			ScriptArray!(ParticleSystemComponent.ParticleEventKismetData) KismetEvents() { return *cast(ScriptArray!(ParticleSystemComponent.ParticleEventKismetData)*)(cast(size_t)cast(void*)this + 700); }
			UObject.Pointer ReleaseResourcesFence() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 712); }
			float CustomTimeDilation() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
			float EmitterDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 720); }
		}
		bool bAutoActivate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x1) != 0; }
		bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x1; } return val; }
		bool bWasCompleted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x2) != 0; }
		bool bWasCompleted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x2; } return val; }
		bool bSuppressSpawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x4) != 0; }
		bool bSuppressSpawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x4; } return val; }
		bool bWasDeactivated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x8) != 0; }
		bool bWasDeactivated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x8; } return val; }
		bool bResetOnDetach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x10) != 0; }
		bool bResetOnDetach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x10; } return val; }
		bool bUpdateOnDedicatedServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x20) != 0; }
		bool bUpdateOnDedicatedServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x20; } return val; }
		bool bJustAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x40) != 0; }
		bool bJustAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x40; } return val; }
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x80) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x80; } return val; }
		bool bWarmingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x100) != 0; }
		bool bWarmingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x100; } return val; }
		bool bIsCachedInPool() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x200) != 0; }
		bool bIsCachedInPool(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x200; } return val; }
		bool bOverrideLODMethod() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x400) != 0; }
		bool bOverrideLODMethod(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x400; } return val; }
		bool bSkipUpdateDynamicDataDuringTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x800) != 0; }
		bool bSkipUpdateDynamicDataDuringTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x800; } return val; }
		bool bUpdateComponentInTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x1000) != 0; }
		bool bUpdateComponentInTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x1000; } return val; }
		bool bDeferredBeamUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x2000) != 0; }
		bool bDeferredBeamUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x2000; } return val; }
		bool bForcedInActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x4000) != 0; }
		bool bForcedInActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x4000; } return val; }
		bool bIsWarmingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x8000) != 0; }
		bool bIsWarmingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x8000; } return val; }
		bool bIsViewRelevanceDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x10000) != 0; }
		bool bIsViewRelevanceDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x10000; } return val; }
		bool bRecacheViewRelevance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x20000) != 0; }
		bool bRecacheViewRelevance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x20000; } return val; }
		bool bLODUpdatePending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x40000) != 0; }
		bool bLODUpdatePending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x40000; } return val; }
		bool bSkipSpawnCountCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x80000) != 0; }
		bool bSkipSpawnCountCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x80000; } return val; }
	}
final:
	void SetTemplate(ParticleSystem NewTemplate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTemplate, params.ptr, cast(void*)0);
	}
	void ActivateSystem(bool bFlagAsJustAttached)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFlagAsJustAttached;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateSystem, params.ptr, cast(void*)0);
	}
	void SetActive(bool bNowActive, bool bFlagAsJustAttached)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bNowActive;
		*cast(bool*)&params[4] = bFlagAsJustAttached;
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
	int DetermineLODLevelForLocation(Vector* EffectLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = *EffectLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetermineLODLevelForLocation, params.ptr, cast(void*)0);
		*EffectLocation = *cast(Vector*)params.ptr;
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
	void SetVectorRandParameter(ScriptName ParameterName, Vector* Param, Vector* ParamLow)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Vector*)&params[8] = *Param;
		*cast(Vector*)&params[20] = *ParamLow;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVectorRandParameter, params.ptr, cast(void*)0);
		*Param = *cast(Vector*)&params[8];
		*ParamLow = *cast(Vector*)&params[20];
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
	bool GetFloatParameter(ScriptName InName, float* OutFloat)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(float*)&params[8] = *OutFloat;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFloatParameter, params.ptr, cast(void*)0);
		*OutFloat = *cast(float*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetVectorParameter(ScriptName InName, Vector* OutVector)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(Vector*)&params[8] = *OutVector;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVectorParameter, params.ptr, cast(void*)0);
		*OutVector = *cast(Vector*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetColorParameter(ScriptName InName, UObject.Color* OutColor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(UObject.Color*)&params[8] = *OutColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetColorParameter, params.ptr, cast(void*)0);
		*OutColor = *cast(UObject.Color*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetActorParameter(ScriptName InName, Actor* OutActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(Actor*)&params[8] = *OutActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActorParameter, params.ptr, cast(void*)0);
		*OutActor = *cast(Actor*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetMaterialParameter(ScriptName InName, MaterialInterface* OutMaterial)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(MaterialInterface*)&params[8] = *OutMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaterialParameter, params.ptr, cast(void*)0);
		*OutMaterial = *cast(MaterialInterface*)&params[8];
		return *cast(bool*)&params[12];
	}
	void ClearParameter(ScriptName ParameterName, ParticleSystemComponent.EParticleSysParamType ParameterType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(ParticleSystemComponent.EParticleSysParamType*)&params[8] = ParameterType;
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
