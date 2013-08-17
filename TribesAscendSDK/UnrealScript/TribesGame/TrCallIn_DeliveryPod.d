module UnrealScript.TribesGame.TrCallIn_DeliveryPod;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.TribesGame.TrCallIn_CrashLandInfo;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface TrCallIn_DeliveryPod : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCallIn_DeliveryPod")()); }
	private static __gshared TrCallIn_DeliveryPod mDefaultProperties;
	@property final static TrCallIn_DeliveryPod DefaultProperties() { mixin(MGDPC!(TrCallIn_DeliveryPod, "TrCallIn_DeliveryPod TribesGame.Default__TrCallIn_DeliveryPod")()); }
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
			ScriptFunction GetTerminalVelocity() { mixin(MGF!("mGetTerminalVelocity", "Function TribesGame.TrCallIn_DeliveryPod.GetTerminalVelocity")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.TrCallIn_DeliveryPod.Init")()); }
			ScriptFunction BreakApart() { mixin(MGF!("mBreakApart", "Function TribesGame.TrCallIn_DeliveryPod.BreakApart")()); }
			ScriptFunction HideMesh() { mixin(MGF!("mHideMesh", "Function TribesGame.TrCallIn_DeliveryPod.HideMesh")()); }
			ScriptFunction ParticleSystemFinished() { mixin(MGF!("mParticleSystemFinished", "Function TribesGame.TrCallIn_DeliveryPod.ParticleSystemFinished")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrCallIn_DeliveryPod.PostBeginPlay")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrCallIn_DeliveryPod.Destroyed")()); }
		}
	}
	@property final auto ref
	{
		float Speed() { mixin(MGPC!(float, 520)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_LightEnvironment'!
		Vector TargetImpactPoint() { mixin(MGPC!(Vector, 536)()); }
		Vector TargetHitNormal() { mixin(MGPC!(Vector, 524)()); }
		float LifeAfterImpact() { mixin(MGPC!(float, 516)()); }
		SoundCue ImpactSound() { mixin(MGPC!(SoundCue, 512)()); }
		SoundCue FallingSound() { mixin(MGPC!(SoundCue, 508)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FallingSoundComponent'!
		ParticleSystem DeliveryPodImpactTemplate() { mixin(MGPC!(ParticleSystem, 500)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DeliveryPodParticleEffects'!
		ParticleSystem DeliveryPodParticleTemplate() { mixin(MGPC!(ParticleSystem, 492)()); }
		float DecalDissolveTime() { mixin(MGPC!(float, 488)()); }
		float HitDecalWidth() { mixin(MGPC!(float, 484)()); }
		float HitDecalHeight() { mixin(MGPC!(float, 480)()); }
		MaterialInstanceTimeVarying PodHitDecal() { mixin(MGPC!(MaterialInstanceTimeVarying, 476)()); }
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
