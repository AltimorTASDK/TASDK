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
		public @property final auto ref UObject.Map_Mirror EmitterInstanceMBInfoMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)&this + 0); }
		private ubyte __EmitterInstanceMBInfoMap[60];
	}
	struct ParticleSysParam
	{
		// WARNING: Property 'Material' has the same name as a defined type!
		// WARNING: Property 'Actor' has the same name as a defined type!
		// WARNING: Property 'Color' has the same name as a defined type!
		public @property final auto ref Vector Vector_Low() { return *cast(Vector*)(cast(size_t)&this + 32); }
		private ubyte __Vector_Low[12];
		// WARNING: Property 'Vector' has the same name as a defined type!
		public @property final auto ref float Scalar_Low() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __Scalar_Low[4];
		public @property final auto ref float Scalar() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Scalar[4];
		public @property final auto ref ParticleSystemComponent.EParticleSysParamType ParamType() { return *cast(ParticleSystemComponent.EParticleSysParamType*)(cast(size_t)&this + 8); }
		private ubyte __ParamType[1];
		public @property final auto ref ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __Name[8];
	}
	struct ParticleEventData
	{
		public @property final auto ref Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 40); }
		private ubyte __Velocity[12];
		public @property final auto ref Vector Direction() { return *cast(Vector*)(cast(size_t)&this + 28); }
		private ubyte __Direction[12];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __Location[12];
		public @property final auto ref float EmitterTime() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __EmitterTime[4];
		public @property final auto ref ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __EventName[8];
		public @property final auto ref int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Type[4];
	}
	struct ParticleEventSpawnData
	{
		public @property final auto ref Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 40); }
		private ubyte __Velocity[12];
		public @property final auto ref Vector Direction() { return *cast(Vector*)(cast(size_t)&this + 28); }
		private ubyte __Direction[12];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __Location[12];
		public @property final auto ref float EmitterTime() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __EmitterTime[4];
		public @property final auto ref ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __EventName[8];
		public @property final auto ref int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Type[4];
	}
	struct ParticleEventDeathData
	{
		public @property final auto ref Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 40); }
		private ubyte __Velocity[12];
		public @property final auto ref Vector Direction() { return *cast(Vector*)(cast(size_t)&this + 28); }
		private ubyte __Direction[12];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __Location[12];
		public @property final auto ref float EmitterTime() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __EmitterTime[4];
		public @property final auto ref ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __EventName[8];
		public @property final auto ref int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Type[4];
		public @property final auto ref float ParticleTime() { return *cast(float*)(cast(size_t)&this + 52); }
		private ubyte __ParticleTime[4];
	}
	struct ParticleEventCollideData
	{
		public @property final auto ref Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 40); }
		private ubyte __Velocity[12];
		public @property final auto ref Vector Direction() { return *cast(Vector*)(cast(size_t)&this + 28); }
		private ubyte __Direction[12];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __Location[12];
		public @property final auto ref float EmitterTime() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __EmitterTime[4];
		public @property final auto ref ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __EventName[8];
		public @property final auto ref int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Type[4];
		public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 76); }
		private ubyte __BoneName[8];
		public @property final auto ref int Item() { return *cast(int*)(cast(size_t)&this + 72); }
		private ubyte __Item[4];
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 68); }
		private ubyte __Time[4];
		public @property final auto ref Vector Normal() { return *cast(Vector*)(cast(size_t)&this + 56); }
		private ubyte __Normal[12];
		public @property final auto ref float ParticleTime() { return *cast(float*)(cast(size_t)&this + 52); }
		private ubyte __ParticleTime[4];
	}
	struct ParticleEventKismetData
	{
		public @property final auto ref Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 40); }
		private ubyte __Velocity[12];
		public @property final auto ref Vector Direction() { return *cast(Vector*)(cast(size_t)&this + 28); }
		private ubyte __Direction[12];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __Location[12];
		public @property final auto ref float EmitterTime() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __EmitterTime[4];
		public @property final auto ref ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __EventName[8];
		public @property final auto ref int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Type[4];
		public @property final auto ref Vector Normal() { return *cast(Vector*)(cast(size_t)&this + 56); }
		private ubyte __Normal[12];
		public @property final bool UsePSysCompLocation() { return (*cast(uint*)(cast(size_t)&this + 52) & 0x1) != 0; }
		public @property final bool UsePSysCompLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 52) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 52) &= ~0x1; } return val; }
		private ubyte __UsePSysCompLocation[4];
	}
	struct ParticleEmitterInstanceMotionBlurInfo
	{
		public @property final auto ref UObject.Map_Mirror ParticleMBInfoMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)&this + 0); }
		private ubyte __ParticleMBInfoMap[60];
	}
	struct ParticleEmitterInstance
	{
	}
	public @property final auto ref ParticleSystem Template() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref ScriptClass LightEnvironmentClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref ScriptArray!(UObject.Pointer) EmitterInstances() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) SMComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref ScriptArray!(MaterialInterface) SMMaterialInterfaces() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) SkelMeshComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref ScriptArray!(ParticleSystemComponent.ViewParticleEmitterInstanceMotionBlurInfo) ViewMBInfoArray() { return *cast(ScriptArray!(ParticleSystemComponent.ViewParticleEmitterInstanceMotionBlurInfo)*)(cast(size_t)cast(void*)this + 544); }
	public @property final bool bAutoActivate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x1) != 0; }
	public @property final bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x1; } return val; }
	public @property final bool bWasCompleted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x2) != 0; }
	public @property final bool bWasCompleted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x2; } return val; }
	public @property final bool bSuppressSpawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x4) != 0; }
	public @property final bool bSuppressSpawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x4; } return val; }
	public @property final bool bWasDeactivated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x8) != 0; }
	public @property final bool bWasDeactivated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x8; } return val; }
	public @property final bool bResetOnDetach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x10) != 0; }
	public @property final bool bResetOnDetach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x10; } return val; }
	public @property final bool bUpdateOnDedicatedServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x20) != 0; }
	public @property final bool bUpdateOnDedicatedServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x20; } return val; }
	public @property final bool bJustAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x40) != 0; }
	public @property final bool bJustAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x40; } return val; }
	public @property final bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x80) != 0; }
	public @property final bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x80; } return val; }
	public @property final bool bWarmingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x100) != 0; }
	public @property final bool bWarmingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x100; } return val; }
	public @property final bool bIsCachedInPool() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x200) != 0; }
	public @property final bool bIsCachedInPool(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x200; } return val; }
	public @property final bool bOverrideLODMethod() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x400) != 0; }
	public @property final bool bOverrideLODMethod(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x400; } return val; }
	public @property final bool bSkipUpdateDynamicDataDuringTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x800) != 0; }
	public @property final bool bSkipUpdateDynamicDataDuringTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x800; } return val; }
	public @property final bool bUpdateComponentInTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x1000) != 0; }
	public @property final bool bUpdateComponentInTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x1000; } return val; }
	public @property final bool bDeferredBeamUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x2000) != 0; }
	public @property final bool bDeferredBeamUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x2000; } return val; }
	public @property final bool bForcedInActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x4000) != 0; }
	public @property final bool bForcedInActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x4000; } return val; }
	public @property final bool bIsWarmingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x8000) != 0; }
	public @property final bool bIsWarmingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x8000; } return val; }
	public @property final bool bIsViewRelevanceDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x10000) != 0; }
	public @property final bool bIsViewRelevanceDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x10000; } return val; }
	public @property final bool bRecacheViewRelevance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x20000) != 0; }
	public @property final bool bRecacheViewRelevance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x20000; } return val; }
	public @property final bool bLODUpdatePending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x40000) != 0; }
	public @property final bool bLODUpdatePending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x40000; } return val; }
	public @property final bool bSkipSpawnCountCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x80000) != 0; }
	public @property final bool bSkipSpawnCountCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x80000; } return val; }
	public @property final auto ref ScriptArray!(ParticleSystemComponent.ParticleSysParam) InstanceParameters() { return *cast(ScriptArray!(ParticleSystemComponent.ParticleSysParam)*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref Vector OldPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref Vector PartSysVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref float WarmupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref int LODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref float SecondsBeforeInactive() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref float TimeSinceLastForceUpdateTransform() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref float MaxTimeBeforeForceUpdateTransform() { return *cast(float*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref int EditorLODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref float AccumTickTime() { return *cast(float*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref ParticleSystem.ParticleSystemLODMethod LODMethod() { return *cast(ParticleSystem.ParticleSystemLODMethod*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref ParticleSystemComponent.ParticleReplayState ReplayState() { return *cast(ParticleSystemComponent.ParticleReplayState*)(cast(size_t)cast(void*)this + 625); }
	public @property final auto ref ScriptArray!(PrimitiveComponent.MaterialViewRelevance) CachedViewRelevanceFlags() { return *cast(ScriptArray!(PrimitiveComponent.MaterialViewRelevance)*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref ScriptArray!(ParticleSystemReplay) ReplayClips() { return *cast(ScriptArray!(ParticleSystemReplay)*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref int ReplayClipIDNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref int ReplayFrameIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref float AccumLODDistanceCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref ScriptArray!(ParticleSystemComponent.ParticleEventSpawnData) SpawnEvents() { return *cast(ScriptArray!(ParticleSystemComponent.ParticleEventSpawnData)*)(cast(size_t)cast(void*)this + 664); }
	public @property final auto ref ScriptArray!(ParticleSystemComponent.ParticleEventDeathData) DeathEvents() { return *cast(ScriptArray!(ParticleSystemComponent.ParticleEventDeathData)*)(cast(size_t)cast(void*)this + 676); }
	public @property final auto ref ScriptArray!(ParticleSystemComponent.ParticleEventCollideData) CollisionEvents() { return *cast(ScriptArray!(ParticleSystemComponent.ParticleEventCollideData)*)(cast(size_t)cast(void*)this + 688); }
	public @property final auto ref ScriptArray!(ParticleSystemComponent.ParticleEventKismetData) KismetEvents() { return *cast(ScriptArray!(ParticleSystemComponent.ParticleEventKismetData)*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref UObject.Pointer ReleaseResourcesFence() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref float CustomTimeDilation() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref float EmitterDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 720); }
	final void SetTemplate(ParticleSystem NewTemplate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7292], params.ptr, cast(void*)0);
	}
	final void ActivateSystem(bool bFlagAsJustAttached)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFlagAsJustAttached;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7295], params.ptr, cast(void*)0);
	}
	final void SetActive(bool bNowActive, bool bFlagAsJustAttached)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bNowActive;
		*cast(bool*)&params[4] = bFlagAsJustAttached;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14789], params.ptr, cast(void*)0);
	}
	final void OnSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PSystem)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = PSystem;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14951], params.ptr, cast(void*)0);
	}
	final void DeactivateSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14955], cast(void*)0, cast(void*)0);
	}
	final void KillParticlesForced()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14956], cast(void*)0, cast(void*)0);
	}
	final void KillParticlesInEmitter(ScriptName InEmitterName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InEmitterName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14957], params.ptr, cast(void*)0);
	}
	final void SetSkipUpdateDynamicDataDuringTick(bool bInSkipUpdateDynamicDataDuringTick)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInSkipUpdateDynamicDataDuringTick;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14959], params.ptr, cast(void*)0);
	}
	final bool GetSkipUpdateDynamicDataDuringTick()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14961], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetKillOnDeactivate(int EmitterIndex, bool bKill)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(bool*)&params[4] = bKill;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14963], params.ptr, cast(void*)0);
	}
	final void SetKillOnCompleted(int EmitterIndex, bool bKill)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(bool*)&params[4] = bKill;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14966], params.ptr, cast(void*)0);
	}
	final void RewindEmitterInstance(int EmitterIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14969], params.ptr, cast(void*)0);
	}
	final void RewindEmitterInstances()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14971], cast(void*)0, cast(void*)0);
	}
	final void SetBeamType(int EmitterIndex, int NewMethod)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(int*)&params[4] = NewMethod;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14972], params.ptr, cast(void*)0);
	}
	final void SetBeamTessellationFactor(int EmitterIndex, float NewFactor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(float*)&params[4] = NewFactor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14975], params.ptr, cast(void*)0);
	}
	final void SetBeamEndPoint(int EmitterIndex, Vector NewEndPoint)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(Vector*)&params[4] = NewEndPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14978], params.ptr, cast(void*)0);
	}
	final void SetBeamDistance(int EmitterIndex, float Distance)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(float*)&params[4] = Distance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14981], params.ptr, cast(void*)0);
	}
	final void SetBeamSourcePoint(int EmitterIndex, Vector NewSourcePoint, int SourceIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(Vector*)&params[4] = NewSourcePoint;
		*cast(int*)&params[16] = SourceIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14984], params.ptr, cast(void*)0);
	}
	final void SetBeamSourceTangent(int EmitterIndex, Vector NewTangentPoint, int SourceIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(Vector*)&params[4] = NewTangentPoint;
		*cast(int*)&params[16] = SourceIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14988], params.ptr, cast(void*)0);
	}
	final void SetBeamSourceStrength(int EmitterIndex, float NewSourceStrength, int SourceIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(float*)&params[4] = NewSourceStrength;
		*cast(int*)&params[8] = SourceIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14992], params.ptr, cast(void*)0);
	}
	final void SetBeamTargetPoint(int EmitterIndex, Vector NewTargetPoint, int TargetIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(Vector*)&params[4] = NewTargetPoint;
		*cast(int*)&params[16] = TargetIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14996], params.ptr, cast(void*)0);
	}
	final void SetBeamTargetTangent(int EmitterIndex, Vector NewTangentPoint, int TargetIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(Vector*)&params[4] = NewTangentPoint;
		*cast(int*)&params[16] = TargetIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15000], params.ptr, cast(void*)0);
	}
	final void SetBeamTargetStrength(int EmitterIndex, float NewTargetStrength, int TargetIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EmitterIndex;
		*cast(float*)&params[4] = NewTargetStrength;
		*cast(int*)&params[8] = TargetIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15004], params.ptr, cast(void*)0);
	}
	final int DetermineLODLevelForLocation(Vector* EffectLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = *EffectLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15008], params.ptr, cast(void*)0);
		*EffectLocation = *cast(Vector*)params.ptr;
		return *cast(int*)&params[12];
	}
	final void SetLODLevel(int InLODLevel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InLODLevel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15011], params.ptr, cast(void*)0);
	}
	final void SetEditorLODLevel(int InLODLevel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InLODLevel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15013], params.ptr, cast(void*)0);
	}
	final int GetLODLevel()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15015], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetEditorLODLevel()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15017], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void SetFloatParameter(ScriptName ParameterName, float Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15019], params.ptr, cast(void*)0);
	}
	final void SetFloatRandParameter(ScriptName ParameterName, float Param, float ParamLow)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Param;
		*cast(float*)&params[12] = ParamLow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15022], params.ptr, cast(void*)0);
	}
	final void SetVectorParameter(ScriptName ParameterName, Vector Param)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Vector*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15026], params.ptr, cast(void*)0);
	}
	final void SetVectorRandParameter(ScriptName ParameterName, Vector* Param, Vector* ParamLow)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Vector*)&params[8] = *Param;
		*cast(Vector*)&params[20] = *ParamLow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15029], params.ptr, cast(void*)0);
		*Param = *cast(Vector*)&params[8];
		*ParamLow = *cast(Vector*)&params[20];
	}
	final void SetColorParameter(ScriptName ParameterName, UObject.Color Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.Color*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15033], params.ptr, cast(void*)0);
	}
	final void SetActorParameter(ScriptName ParameterName, Actor Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Actor*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15036], params.ptr, cast(void*)0);
	}
	final void SetMaterialParameter(ScriptName ParameterName, MaterialInterface Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(MaterialInterface*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15039], params.ptr, cast(void*)0);
	}
	final bool GetFloatParameter(ScriptName InName, float* OutFloat)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(float*)&params[8] = *OutFloat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15042], params.ptr, cast(void*)0);
		*OutFloat = *cast(float*)&params[8];
		return *cast(bool*)&params[12];
	}
	final bool GetVectorParameter(ScriptName InName, Vector* OutVector)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(Vector*)&params[8] = *OutVector;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15046], params.ptr, cast(void*)0);
		*OutVector = *cast(Vector*)&params[8];
		return *cast(bool*)&params[20];
	}
	final bool GetColorParameter(ScriptName InName, UObject.Color* OutColor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(UObject.Color*)&params[8] = *OutColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15050], params.ptr, cast(void*)0);
		*OutColor = *cast(UObject.Color*)&params[8];
		return *cast(bool*)&params[12];
	}
	final bool GetActorParameter(ScriptName InName, Actor* OutActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(Actor*)&params[8] = *OutActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15054], params.ptr, cast(void*)0);
		*OutActor = *cast(Actor*)&params[8];
		return *cast(bool*)&params[12];
	}
	final bool GetMaterialParameter(ScriptName InName, MaterialInterface* OutMaterial)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(MaterialInterface*)&params[8] = *OutMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15058], params.ptr, cast(void*)0);
		*OutMaterial = *cast(MaterialInterface*)&params[8];
		return *cast(bool*)&params[12];
	}
	final void ClearParameter(ScriptName ParameterName, ParticleSystemComponent.EParticleSysParamType ParameterType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(ParticleSystemComponent.EParticleSysParamType*)&params[8] = ParameterType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15062], params.ptr, cast(void*)0);
	}
	final void ResetToDefaults()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15067], cast(void*)0, cast(void*)0);
	}
	final void SetStopSpawning(int InEmitterIndex, bool bInStopSpawning)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InEmitterIndex;
		*cast(bool*)&params[4] = bInStopSpawning;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15068], params.ptr, cast(void*)0);
	}
}
