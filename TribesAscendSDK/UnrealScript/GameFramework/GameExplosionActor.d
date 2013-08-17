module UnrealScript.GameFramework.GameExplosionActor;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameExplosionActor")); }
	private static __gshared GameExplosionActor mDefaultProperties;
	@property final static GameExplosionActor DefaultProperties() { mixin(MGDPC("GameExplosionActor", "GameExplosionActor GameFramework.Default__GameExplosionActor")); }
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
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function GameFramework.GameExplosionActor.PreBeginPlay")); }
			ScriptFunction GetPhysicalMaterial() { mixin(MGF("mGetPhysicalMaterial", "Function GameFramework.GameExplosionActor.GetPhysicalMaterial")); }
			ScriptFunction DoFullDamageToActor() { mixin(MGF("mDoFullDamageToActor", "Function GameFramework.GameExplosionActor.DoFullDamageToActor")); }
			ScriptFunction IsBehindExplosion() { mixin(MGF("mIsBehindExplosion", "Function GameFramework.GameExplosionActor.IsBehindExplosion")); }
			ScriptFunction BoxDistanceToPoint() { mixin(MGF("mBoxDistanceToPoint", "Function GameFramework.GameExplosionActor.BoxDistanceToPoint")); }
			ScriptFunction DoExplosionDamage() { mixin(MGF("mDoExplosionDamage", "Function GameFramework.GameExplosionActor.DoExplosionDamage")); }
			ScriptFunction GetEffectCheckRadius() { mixin(MGF("mGetEffectCheckRadius", "Function GameFramework.GameExplosionActor.GetEffectCheckRadius")); }
			ScriptFunction SpecialPawnEffectsFor() { mixin(MGF("mSpecialPawnEffectsFor", "Function GameFramework.GameExplosionActor.SpecialPawnEffectsFor")); }
			ScriptFunction UpdateExplosionTemplateWithPerMaterialFX() { mixin(MGF("mUpdateExplosionTemplateWithPerMaterialFX", "Function GameFramework.GameExplosionActor.UpdateExplosionTemplateWithPerMaterialFX")); }
			ScriptFunction SpawnExplosionParticleSystem() { mixin(MGF("mSpawnExplosionParticleSystem", "Function GameFramework.GameExplosionActor.SpawnExplosionParticleSystem")); }
			ScriptFunction SpawnExplosionDecal() { mixin(MGF("mSpawnExplosionDecal", "Function GameFramework.GameExplosionActor.SpawnExplosionDecal")); }
			ScriptFunction SpawnExplosionFogVolume() { mixin(MGF("mSpawnExplosionFogVolume", "Function GameFramework.GameExplosionActor.SpawnExplosionFogVolume")); }
			ScriptFunction Explode() { mixin(MGF("mExplode", "Function GameFramework.GameExplosionActor.Explode")); }
			ScriptFunction DelayedExplosionDamage() { mixin(MGF("mDelayedExplosionDamage", "Function GameFramework.GameExplosionActor.DelayedExplosionDamage")); }
			ScriptFunction DrawDebug() { mixin(MGF("mDrawDebug", "Function GameFramework.GameExplosionActor.DrawDebug")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function GameFramework.GameExplosionActor.Tick")); }
			ScriptFunction DoExplosionCameraEffects() { mixin(MGF("mDoExplosionCameraEffects", "Function GameFramework.GameExplosionActor.DoExplosionCameraEffects")); }
			ScriptFunction SpawnCameraLensEffects() { mixin(MGF("mSpawnCameraLensEffects", "Function GameFramework.GameExplosionActor.SpawnCameraLensEffects")); }
			ScriptFunction ChooseCameraShake() { mixin(MGF("mChooseCameraShake", "Function GameFramework.GameExplosionActor.ChooseCameraShake")); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector ExplosionDirection() { mixin(MGPC("Vector", 552)); }
			float DirectionalExplosionMinDot() { mixin(MGPC("float", 548)); }
			Controller AttacheeController() { mixin(MGPC("Controller", 544)); }
			Actor Attachee() { mixin(MGPC("Actor", 540)); }
			Vector HitLocationFromPhysMaterialTrace() { mixin(MGPC("Vector", 528)); }
			Actor HitActorFromPhysMaterialTrace() { mixin(MGPC("Actor", 524)); }
			Controller InstigatorController() { mixin(MGPC("Controller", 520)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RadialImpulseComponent'!
			GameExplosion ExplosionTemplate() { mixin(MGPC("GameExplosion", 512)); }
			float RadialBlurMaxBlurAmount() { mixin(MGPC("float", 508)); }
			float RadialBlurFadeTimeRemaining() { mixin(MGPC("float", 504)); }
			float RadialBlurFadeTime() { mixin(MGPC("float", 500)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ExplosionRadialBlur'!
			float LightInitialBrightness() { mixin(MGPC("float", 492)); }
			float LightFadeTimeRemaining() { mixin(MGPC("float", 488)); }
			float LightFadeTime() { mixin(MGPC("float", 484)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ExplosionLight'!
		}
		bool bDrawDebug() { mixin(MGBPC(476, 0x4)); }
		bool bDrawDebug(bool val) { mixin(MSBPC(476, 0x4)); }
		bool bExplodeMoreThanOnce() { mixin(MGBPC(476, 0x2)); }
		bool bExplodeMoreThanOnce(bool val) { mixin(MSBPC(476, 0x2)); }
		bool bHasExploded() { mixin(MGBPC(476, 0x1)); }
		bool bHasExploded(bool val) { mixin(MSBPC(476, 0x1)); }
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
	void Explode(GameExplosion NewExplosionTemplate, Vector* Direction = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameExplosion*)params.ptr = NewExplosionTemplate;
		if (Direction !is null)
			*cast(Vector*)&params[4] = *Direction;
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
