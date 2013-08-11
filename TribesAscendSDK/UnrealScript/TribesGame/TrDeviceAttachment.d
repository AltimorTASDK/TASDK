module UnrealScript.TribesGame.TrDeviceAttachment;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProj_Tracer;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.UTGame.UTWeaponAttachment;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface TrDeviceAttachment : UTWeaponAttachment
{
	public @property final auto ref ScriptArray!(AnimSet) m_LightMed3pPawnAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 736); }
	public @property final auto ref ScriptArray!(AnimSet) m_Heavy3pPawnAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 748); }
	public @property final auto ref ScriptArray!(TrObject.EffectFormOverwrite) m_EffectFormOverwrite() { return *cast(ScriptArray!(TrObject.EffectFormOverwrite)*)(cast(size_t)cast(void*)this + 760); }
	public @property final auto ref ScriptName m_nmRidingAsPassengerFireAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 772); }
	public @property final auto ref float m_fShowTracerDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref TrObject.EWeaponTracerType m_TracerType() { return *cast(TrObject.EWeaponTracerType*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref ParticleSystem m_TracerBeamTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 724); }
	public @property final bool m_bScaleFireAnimRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x4) != 0; }
	public @property final bool m_bScaleFireAnimRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x4; } return val; }
	public @property final bool m_bSpawnTracerBeams() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x2) != 0; }
	public @property final bool m_bSpawnTracerBeams(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x2; } return val; }
	public @property final bool m_bSpawnTracers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x1) != 0; }
	public @property final bool m_bSpawnTracers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x1; } return val; }
	public @property final auto ref ScriptName m_nmHeavyAimProfileName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref ScriptName m_nmLightMedAimProfileName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 704); }
	final void AttachTo(UTPawn OwnerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68019], params.ptr, cast(void*)0);
	}
	final void InitAnims(TrPawn TRP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68032], params.ptr, cast(void*)0);
	}
	final void DetachFrom(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* MeshCpnt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = MeshCpnt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68040], params.ptr, cast(void*)0);
	}
	final void SetPuttingDownWeapon(bool bNowPuttingDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowPuttingDown;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68045], params.ptr, cast(void*)0);
	}
	final bool ShouldFireTracer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68052], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ShouldFireTracerBeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68055], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ThirdPersonFireEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68058], params.ptr, cast(void*)0);
	}
	final void StopThirdPersonFireEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68065], cast(void*)0, cast(void*)0);
	}
	final void FirstPersonFireEffects(Weapon PawnWeapon, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = PawnWeapon;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68066], params.ptr, cast(void*)0);
	}
	final void SpawnTracerBeam(Vector Start, Vector End)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68071], params.ptr, cast(void*)0);
	}
	final TrProj_Tracer SpawnTracerEffect(Vector HitLocation, float HitDistance)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(float*)&params[12] = HitDistance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68075], params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[16];
	}
	final TrProj_Tracer GetTracer(Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68082], params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[24];
	}
	final void PlayReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68086], cast(void*)0, cast(void*)0);
	}
	final void PlayImpactEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68091], params.ptr, cast(void*)0);
	}
	final void PlayImpactSound(Actor HitActor, SoundCue SoundToPlay, Vector FireDir, Vector HitLocation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		*cast(SoundCue*)&params[4] = SoundToPlay;
		*cast(Vector*)&params[8] = FireDir;
		*cast(Vector*)&params[20] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68108], params.ptr, cast(void*)0);
	}
	final UDKPawn.MaterialImpactEffect GetImpactEffect(PhysicalMaterial HitMaterial)
	{
		ubyte params[52];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = HitMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68114], params.ptr, cast(void*)0);
		return *cast(UDKPawn.MaterialImpactEffect*)&params[4];
	}
}
