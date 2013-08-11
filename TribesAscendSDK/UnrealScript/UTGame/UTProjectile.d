module UnrealScript.UTGame.UTProjectile;

import ScriptClasses;
import UnrealScript.UDKBase.UDKProjectile;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface UTProjectile : UDKProjectile
{
public extern(D):
	@property final
	{
		auto ref
		{
			float GlobalCheckRadiusTweak() { return *cast(float*)(cast(size_t)cast(void*)this + 656); }
			float TossZ() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
			float MaxExplosionLightDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 672); }
			ScriptClass ExplosionLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 668); }
			ScriptClass ProjectileLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 660); }
			float MaxEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 648); }
			ScriptName DecalDissolveParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 640); }
			float DurationOfDecal() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
			float DecalHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
			float DecalWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 628); }
			MaterialInterface ExplosionDecal() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 624); }
			ParticleSystem ProjExplosionTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 620); }
			ParticleSystem ProjFlightTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 616); }
			SoundCue ExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 604); }
			// WARNING: Property 'AmbientSound' has the same name as a defined type!
		}
		bool bAttachExplosionToVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x40) != 0; }
		bool bAttachExplosionToVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x40; } return val; }
		bool bWaitForEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x20) != 0; }
		bool bWaitForEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x20; } return val; }
		bool bSuppressExplosionFX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x10) != 0; }
		bool bSuppressExplosionFX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x10; } return val; }
		bool bAdvanceExplosionEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x8) != 0; }
		bool bAdvanceExplosionEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x8; } return val; }
		bool m_bDestroyProjEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x4) != 0; }
		bool m_bDestroyProjEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x4; } return val; }
		bool bImportantAmbientSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x2) != 0; }
		bool bImportantAmbientSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x2; } return val; }
		bool bSuppressSounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x1) != 0; }
		bool bSuppressSounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x1; } return val; }
	}
final:
	void CreateProjectileLight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48899], cast(void*)0, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48900], params.ptr, cast(void*)0);
	}
	bool CanSplash()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48903], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48905], cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48907], cast(void*)0, cast(void*)0);
	}
	void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48908], cast(void*)0, cast(void*)0);
	}
	void Init(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48909], params.ptr, cast(void*)0);
	}
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48911], params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48915], params.ptr, cast(void*)0);
	}
	void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48918], cast(void*)0, cast(void*)0);
	}
	void SetExplosionEffectParameters(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* ProjExplosion)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = ProjExplosion;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48919], params.ptr, cast(void*)0);
	}
	SoundCue GetExplosionSound(PhysicalMaterial HitMaterial, Actor HitActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = HitMaterial;
		*cast(Actor*)&params[4] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48921], params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[8];
	}
	void SpawnExplosionEffects(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48925], params.ptr, cast(void*)0);
	}
	bool ShouldSpawnExplosionLight(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48941], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48947], cast(void*)0, cast(void*)0);
	}
	void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48950], cast(void*)0, cast(void*)0);
	}
	void HideProjectile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48951], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48953], cast(void*)0, cast(void*)0);
	}
	void MyOnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48954], params.ptr, cast(void*)0);
	}
	bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48959], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	Actor GetHomingTarget(UTProjectile Seeker, Controller InstigatedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTProjectile*)params.ptr = Seeker;
		*cast(Controller*)&params[4] = InstigatedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48965], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[8];
	}
	Pawn GetPawnOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48969], params.ptr, cast(void*)0);
		return *cast(Pawn*)params.ptr;
	}
	float CalculateTravelTime(float Dist, float MoveSpeed, float MaxMoveSpeed, float AccelMag)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Dist;
		*cast(float*)&params[4] = MoveSpeed;
		*cast(float*)&params[8] = MaxMoveSpeed;
		*cast(float*)&params[12] = AccelMag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48971], params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	float StaticGetTimeToLocation(Vector TargetLoc, Vector StartLoc, Controller RequestedBy)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = TargetLoc;
		*cast(Vector*)&params[12] = StartLoc;
		*cast(Controller*)&params[24] = RequestedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48980], params.ptr, cast(void*)0);
		return *cast(float*)&params[28];
	}
	float GetTimeToLocation(Vector TargetLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = TargetLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48985], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	float GetRange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48988], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
