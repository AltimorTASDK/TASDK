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
	public @property final auto ref Vector ExplosionDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float DirectionalExplosionMinDot() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref Controller AttacheeController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref Actor Attachee() { return *cast(Actor*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref Vector HitLocationFromPhysMaterialTrace() { return *cast(Vector*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref Actor HitActorFromPhysMaterialTrace() { return *cast(Actor*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref Controller InstigatorController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref GameExplosion ExplosionTemplate() { return *cast(GameExplosion*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float RadialBlurMaxBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float RadialBlurFadeTimeRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float RadialBlurFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float LightInitialBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float LightFadeTimeRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float LightFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final bool bDrawDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4) != 0; }
	public @property final bool bDrawDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4; } return val; }
	public @property final bool bExplodeMoreThanOnce() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
	public @property final bool bExplodeMoreThanOnce(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
	public @property final bool bHasExploded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
	public @property final bool bHasExploded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31590], cast(void*)0, cast(void*)0);
	}
	final PhysicalMaterial GetPhysicalMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31591], params.ptr, cast(void*)0);
		return *cast(PhysicalMaterial*)params.ptr;
	}
	final bool DoFullDamageToActor(Actor Victim)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Victim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31599], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsBehindExplosion(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31602], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float BoxDistanceToPoint(Vector Start, UObject.Box BBox)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(UObject.Box*)&params[12] = BBox;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31605], params.ptr, cast(void*)0);
		return *cast(float*)&params[40];
	}
	final void DoExplosionDamage(bool bCauseDamage, bool bCauseEffects)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCauseDamage;
		*cast(bool*)&params[4] = bCauseEffects;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31609], params.ptr, cast(void*)0);
	}
	final float GetEffectCheckRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31637], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void SpecialPawnEffectsFor(GamePawn VictimPawn, float VictimDist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GamePawn*)params.ptr = VictimPawn;
		*cast(float*)&params[4] = VictimDist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31640], params.ptr, cast(void*)0);
	}
	final void UpdateExplosionTemplateWithPerMaterialFX(PhysicalMaterial PhysMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = PhysMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31643], params.ptr, cast(void*)0);
	}
	final void SpawnExplosionParticleSystem(ParticleSystem Template)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = Template;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31645], params.ptr, cast(void*)0);
	}
	final void SpawnExplosionDecal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31647], cast(void*)0, cast(void*)0);
	}
	final void SpawnExplosionFogVolume()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31648], cast(void*)0, cast(void*)0);
	}
	final void Explode(GameExplosion NewExplosionTemplate, Vector Direction)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameExplosion*)params.ptr = NewExplosionTemplate;
		*cast(Vector*)&params[4] = Direction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31649], params.ptr, cast(void*)0);
	}
	final void DelayedExplosionDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31654], cast(void*)0, cast(void*)0);
	}
	final void DrawDebug()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31655], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31658], params.ptr, cast(void*)0);
	}
	final void DoExplosionCameraEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31661], cast(void*)0, cast(void*)0);
	}
	final void SpawnCameraLensEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31665], cast(void*)0, cast(void*)0);
	}
	final CameraShake ChooseCameraShake(Vector Epicenter, PlayerController PC)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = Epicenter;
		*cast(PlayerController*)&params[12] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31667], params.ptr, cast(void*)0);
		return *cast(CameraShake*)&params[16];
	}
}
