module UnrealScript.GameFramework.GameExplosionActor;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.GameFramework.GamePawn;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameExplosion;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface GameExplosionActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameExplosionActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mGetPhysicalMaterial;
			ScriptFunction mDoFullDamageToActor;
			ScriptFunction mIsBehindExplosion;
			ScriptFunction mBoxDistanceToPoint;
			ScriptFunction mDoExplosionDamage;
			ScriptFunction mGetEffectCheckRadius;
			ScriptFunction mSpecialPawnEffectsFor;
			ScriptFunction mUpdateExplosionTemplateWithPerMaterialFX;
			ScriptFunction mSpawnExplosionParticleSystem;
			ScriptFunction mSpawnExplosionDecal;
			ScriptFunction mSpawnExplosionFogVolume;
			ScriptFunction mExplode;
			ScriptFunction mDelayedExplosionDamage;
			ScriptFunction mDrawDebug;
			ScriptFunction mTick;
			ScriptFunction mDoExplosionCameraEffects;
			ScriptFunction mSpawnCameraLensEffects;
			ScriptFunction mChooseCameraShake;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.PreBeginPlay")); }
			ScriptFunction GetPhysicalMaterial() { return mGetPhysicalMaterial ? mGetPhysicalMaterial : (mGetPhysicalMaterial = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.GetPhysicalMaterial")); }
			ScriptFunction DoFullDamageToActor() { return mDoFullDamageToActor ? mDoFullDamageToActor : (mDoFullDamageToActor = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.DoFullDamageToActor")); }
			ScriptFunction IsBehindExplosion() { return mIsBehindExplosion ? mIsBehindExplosion : (mIsBehindExplosion = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.IsBehindExplosion")); }
			ScriptFunction BoxDistanceToPoint() { return mBoxDistanceToPoint ? mBoxDistanceToPoint : (mBoxDistanceToPoint = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.BoxDistanceToPoint")); }
			ScriptFunction DoExplosionDamage() { return mDoExplosionDamage ? mDoExplosionDamage : (mDoExplosionDamage = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.DoExplosionDamage")); }
			ScriptFunction GetEffectCheckRadius() { return mGetEffectCheckRadius ? mGetEffectCheckRadius : (mGetEffectCheckRadius = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.GetEffectCheckRadius")); }
			ScriptFunction SpecialPawnEffectsFor() { return mSpecialPawnEffectsFor ? mSpecialPawnEffectsFor : (mSpecialPawnEffectsFor = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.SpecialPawnEffectsFor")); }
			ScriptFunction UpdateExplosionTemplateWithPerMaterialFX() { return mUpdateExplosionTemplateWithPerMaterialFX ? mUpdateExplosionTemplateWithPerMaterialFX : (mUpdateExplosionTemplateWithPerMaterialFX = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.UpdateExplosionTemplateWithPerMaterialFX")); }
			ScriptFunction SpawnExplosionParticleSystem() { return mSpawnExplosionParticleSystem ? mSpawnExplosionParticleSystem : (mSpawnExplosionParticleSystem = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.SpawnExplosionParticleSystem")); }
			ScriptFunction SpawnExplosionDecal() { return mSpawnExplosionDecal ? mSpawnExplosionDecal : (mSpawnExplosionDecal = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.SpawnExplosionDecal")); }
			ScriptFunction SpawnExplosionFogVolume() { return mSpawnExplosionFogVolume ? mSpawnExplosionFogVolume : (mSpawnExplosionFogVolume = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.SpawnExplosionFogVolume")); }
			ScriptFunction Explode() { return mExplode ? mExplode : (mExplode = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.Explode")); }
			ScriptFunction DelayedExplosionDamage() { return mDelayedExplosionDamage ? mDelayedExplosionDamage : (mDelayedExplosionDamage = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.DelayedExplosionDamage")); }
			ScriptFunction DrawDebug() { return mDrawDebug ? mDrawDebug : (mDrawDebug = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.DrawDebug")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.Tick")); }
			ScriptFunction DoExplosionCameraEffects() { return mDoExplosionCameraEffects ? mDoExplosionCameraEffects : (mDoExplosionCameraEffects = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.DoExplosionCameraEffects")); }
			ScriptFunction SpawnCameraLensEffects() { return mSpawnCameraLensEffects ? mSpawnCameraLensEffects : (mSpawnCameraLensEffects = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.SpawnCameraLensEffects")); }
			ScriptFunction ChooseCameraShake() { return mChooseCameraShake ? mChooseCameraShake : (mChooseCameraShake = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameExplosionActor.ChooseCameraShake")); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector ExplosionDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 552); }
			float DirectionalExplosionMinDot() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			Controller AttacheeController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 544); }
			Actor Attachee() { return *cast(Actor*)(cast(size_t)cast(void*)this + 540); }
			Vector HitLocationFromPhysMaterialTrace() { return *cast(Vector*)(cast(size_t)cast(void*)this + 528); }
			Actor HitActorFromPhysMaterialTrace() { return *cast(Actor*)(cast(size_t)cast(void*)this + 524); }
			Controller InstigatorController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 520); }
			GameExplosion ExplosionTemplate() { return *cast(GameExplosion*)(cast(size_t)cast(void*)this + 512); }
			float RadialBlurMaxBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float RadialBlurFadeTimeRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float RadialBlurFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float LightInitialBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			float LightFadeTimeRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float LightFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
		}
		bool bDrawDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4) != 0; }
		bool bDrawDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4; } return val; }
		bool bExplodeMoreThanOnce() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
		bool bExplodeMoreThanOnce(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
		bool bHasExploded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
		bool bHasExploded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	PhysicalMaterial GetPhysicalMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalMaterial, params.ptr, cast(void*)0);
		return *cast(PhysicalMaterial*)params.ptr;
	}
	bool DoFullDamageToActor(Actor Victim)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Victim;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoFullDamageToActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsBehindExplosion(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsBehindExplosion, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	static float BoxDistanceToPoint(Vector Start, UObject.Box BBox)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(UObject.Box*)&params[12] = BBox;
		StaticClass.ProcessEvent(Functions.BoxDistanceToPoint, params.ptr, cast(void*)0);
		return *cast(float*)&params[40];
	}
	void DoExplosionDamage(bool bCauseDamage, bool bCauseEffects)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCauseDamage;
		*cast(bool*)&params[4] = bCauseEffects;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoExplosionDamage, params.ptr, cast(void*)0);
	}
	float GetEffectCheckRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEffectCheckRadius, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SpecialPawnEffectsFor(GamePawn VictimPawn, float VictimDist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GamePawn*)params.ptr = VictimPawn;
		*cast(float*)&params[4] = VictimDist;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialPawnEffectsFor, params.ptr, cast(void*)0);
	}
	void UpdateExplosionTemplateWithPerMaterialFX(PhysicalMaterial PhysMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = PhysMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateExplosionTemplateWithPerMaterialFX, params.ptr, cast(void*)0);
	}
	void SpawnExplosionParticleSystem(ParticleSystem Template)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = Template;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnExplosionParticleSystem, params.ptr, cast(void*)0);
	}
	void SpawnExplosionDecal()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnExplosionDecal, cast(void*)0, cast(void*)0);
	}
	void SpawnExplosionFogVolume()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnExplosionFogVolume, cast(void*)0, cast(void*)0);
	}
	void Explode(GameExplosion NewExplosionTemplate, Vector Direction)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameExplosion*)params.ptr = NewExplosionTemplate;
		*cast(Vector*)&params[4] = Direction;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	void DelayedExplosionDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DelayedExplosionDamage, cast(void*)0, cast(void*)0);
	}
	void DrawDebug()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawDebug, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void DoExplosionCameraEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoExplosionCameraEffects, cast(void*)0, cast(void*)0);
	}
	void SpawnCameraLensEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnCameraLensEffects, cast(void*)0, cast(void*)0);
	}
	CameraShake ChooseCameraShake(Vector Epicenter, PlayerController PC)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = Epicenter;
		*cast(PlayerController*)&params[12] = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChooseCameraShake, params.ptr, cast(void*)0);
		return *cast(CameraShake*)&params[16];
	}
}
