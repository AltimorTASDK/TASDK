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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31590], cast(void*)0, cast(void*)0);
	}
	PhysicalMaterial GetPhysicalMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31591], params.ptr, cast(void*)0);
		return *cast(PhysicalMaterial*)params.ptr;
	}
	bool DoFullDamageToActor(Actor Victim)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Victim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31599], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsBehindExplosion(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31602], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float BoxDistanceToPoint(Vector Start, UObject.Box BBox)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(UObject.Box*)&params[12] = BBox;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31605], params.ptr, cast(void*)0);
		return *cast(float*)&params[40];
	}
	void DoExplosionDamage(bool bCauseDamage, bool bCauseEffects)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCauseDamage;
		*cast(bool*)&params[4] = bCauseEffects;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31609], params.ptr, cast(void*)0);
	}
	float GetEffectCheckRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31637], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SpecialPawnEffectsFor(GamePawn VictimPawn, float VictimDist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GamePawn*)params.ptr = VictimPawn;
		*cast(float*)&params[4] = VictimDist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31640], params.ptr, cast(void*)0);
	}
	void UpdateExplosionTemplateWithPerMaterialFX(PhysicalMaterial PhysMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = PhysMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31643], params.ptr, cast(void*)0);
	}
	void SpawnExplosionParticleSystem(ParticleSystem Template)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = Template;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31645], params.ptr, cast(void*)0);
	}
	void SpawnExplosionDecal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31647], cast(void*)0, cast(void*)0);
	}
	void SpawnExplosionFogVolume()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31648], cast(void*)0, cast(void*)0);
	}
	void Explode(GameExplosion NewExplosionTemplate, Vector Direction)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameExplosion*)params.ptr = NewExplosionTemplate;
		*cast(Vector*)&params[4] = Direction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31649], params.ptr, cast(void*)0);
	}
	void DelayedExplosionDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31654], cast(void*)0, cast(void*)0);
	}
	void DrawDebug()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31655], cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31658], params.ptr, cast(void*)0);
	}
	void DoExplosionCameraEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31661], cast(void*)0, cast(void*)0);
	}
	void SpawnCameraLensEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31665], cast(void*)0, cast(void*)0);
	}
	CameraShake ChooseCameraShake(Vector Epicenter, PlayerController PC)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = Epicenter;
		*cast(PlayerController*)&params[12] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31667], params.ptr, cast(void*)0);
		return *cast(CameraShake*)&params[16];
	}
}
