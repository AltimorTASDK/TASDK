module UnrealScript.TribesGame.TrCallIn_DeliveryPod;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.TribesGame.TrCallIn_CrashLandInfo;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface TrCallIn_DeliveryPod : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCallIn_DeliveryPod")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetTerminalVelocity;
			ScriptFunction mInit;
			ScriptFunction mBreakApart;
			ScriptFunction mHideMesh;
			ScriptFunction mParticleSystemFinished;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDestroyed;
		}
		public @property static final
		{
			ScriptFunction GetTerminalVelocity() { return mGetTerminalVelocity ? mGetTerminalVelocity : (mGetTerminalVelocity = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_DeliveryPod.GetTerminalVelocity")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_DeliveryPod.Init")); }
			ScriptFunction BreakApart() { return mBreakApart ? mBreakApart : (mBreakApart = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_DeliveryPod.BreakApart")); }
			ScriptFunction HideMesh() { return mHideMesh ? mHideMesh : (mHideMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_DeliveryPod.HideMesh")); }
			ScriptFunction ParticleSystemFinished() { return mParticleSystemFinished ? mParticleSystemFinished : (mParticleSystemFinished = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_DeliveryPod.ParticleSystemFinished")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_DeliveryPod.PostBeginPlay")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_DeliveryPod.Destroyed")); }
		}
	}
	@property final auto ref
	{
		float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
		Vector TargetImpactPoint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 536); }
		Vector TargetHitNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 524); }
		float LifeAfterImpact() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
		SoundCue ImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 512); }
		SoundCue FallingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 508); }
		ParticleSystem DeliveryPodImpactTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 500); }
		ParticleSystem DeliveryPodParticleTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 492); }
		float DecalDissolveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
		float HitDecalWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
		float HitDecalHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
		MaterialInstanceTimeVarying PodHitDecal() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)cast(void*)this + 476); }
	}
final:
	float GetTerminalVelocity()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTerminalVelocity, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void Init(TrCallIn_CrashLandInfo CrashInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrCallIn_CrashLandInfo*)params.ptr = CrashInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void BreakApart()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakApart, cast(void*)0, cast(void*)0);
	}
	void HideMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideMesh, cast(void*)0, cast(void*)0);
	}
	void ParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParticleSystemFinished, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
