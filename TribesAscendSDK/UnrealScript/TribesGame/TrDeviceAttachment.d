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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeviceAttachment")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAttachTo;
			ScriptFunction mInitAnims;
			ScriptFunction mDetachFrom;
			ScriptFunction mSetPuttingDownWeapon;
			ScriptFunction mShouldFireTracer;
			ScriptFunction mShouldFireTracerBeam;
			ScriptFunction mThirdPersonFireEffects;
			ScriptFunction mStopThirdPersonFireEffects;
			ScriptFunction mFirstPersonFireEffects;
			ScriptFunction mSpawnTracerBeam;
			ScriptFunction mSpawnTracerEffect;
			ScriptFunction mGetTracer;
			ScriptFunction mPlayReload;
			ScriptFunction mPlayImpactEffects;
			ScriptFunction mPlayImpactSound;
			ScriptFunction mGetImpactEffect;
		}
		public @property static final
		{
			ScriptFunction AttachTo() { return mAttachTo ? mAttachTo : (mAttachTo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.AttachTo")); }
			ScriptFunction InitAnims() { return mInitAnims ? mInitAnims : (mInitAnims = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.InitAnims")); }
			ScriptFunction DetachFrom() { return mDetachFrom ? mDetachFrom : (mDetachFrom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.DetachFrom")); }
			ScriptFunction SetPuttingDownWeapon() { return mSetPuttingDownWeapon ? mSetPuttingDownWeapon : (mSetPuttingDownWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.SetPuttingDownWeapon")); }
			ScriptFunction ShouldFireTracer() { return mShouldFireTracer ? mShouldFireTracer : (mShouldFireTracer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.ShouldFireTracer")); }
			ScriptFunction ShouldFireTracerBeam() { return mShouldFireTracerBeam ? mShouldFireTracerBeam : (mShouldFireTracerBeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.ShouldFireTracerBeam")); }
			ScriptFunction ThirdPersonFireEffects() { return mThirdPersonFireEffects ? mThirdPersonFireEffects : (mThirdPersonFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.ThirdPersonFireEffects")); }
			ScriptFunction StopThirdPersonFireEffects() { return mStopThirdPersonFireEffects ? mStopThirdPersonFireEffects : (mStopThirdPersonFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.StopThirdPersonFireEffects")); }
			ScriptFunction FirstPersonFireEffects() { return mFirstPersonFireEffects ? mFirstPersonFireEffects : (mFirstPersonFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.FirstPersonFireEffects")); }
			ScriptFunction SpawnTracerBeam() { return mSpawnTracerBeam ? mSpawnTracerBeam : (mSpawnTracerBeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.SpawnTracerBeam")); }
			ScriptFunction SpawnTracerEffect() { return mSpawnTracerEffect ? mSpawnTracerEffect : (mSpawnTracerEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.SpawnTracerEffect")); }
			ScriptFunction GetTracer() { return mGetTracer ? mGetTracer : (mGetTracer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.GetTracer")); }
			ScriptFunction PlayReload() { return mPlayReload ? mPlayReload : (mPlayReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.PlayReload")); }
			ScriptFunction PlayImpactEffects() { return mPlayImpactEffects ? mPlayImpactEffects : (mPlayImpactEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.PlayImpactEffects")); }
			ScriptFunction PlayImpactSound() { return mPlayImpactSound ? mPlayImpactSound : (mPlayImpactSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.PlayImpactSound")); }
			ScriptFunction GetImpactEffect() { return mGetImpactEffect ? mGetImpactEffect : (mGetImpactEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeviceAttachment.GetImpactEffect")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimSet) m_LightMed3pPawnAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 736); }
			ScriptArray!(AnimSet) m_Heavy3pPawnAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 748); }
			ScriptArray!(TrObject.EffectFormOverwrite) m_EffectFormOverwrite() { return *cast(ScriptArray!(TrObject.EffectFormOverwrite)*)(cast(size_t)cast(void*)this + 760); }
			ScriptName m_nmRidingAsPassengerFireAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 772); }
			float m_fShowTracerDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 732); }
			TrObject.EWeaponTracerType m_TracerType() { return *cast(TrObject.EWeaponTracerType*)(cast(size_t)cast(void*)this + 728); }
			ParticleSystem m_TracerBeamTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 724); }
			ScriptName m_nmHeavyAimProfileName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 712); }
			ScriptName m_nmLightMedAimProfileName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 704); }
		}
		bool m_bScaleFireAnimRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x4) != 0; }
		bool m_bScaleFireAnimRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x4; } return val; }
		bool m_bSpawnTracerBeams() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x2) != 0; }
		bool m_bSpawnTracerBeams(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x2; } return val; }
		bool m_bSpawnTracers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x1) != 0; }
		bool m_bSpawnTracers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x1; } return val; }
	}
final:
	void AttachTo(UTPawn OwnerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachTo, params.ptr, cast(void*)0);
	}
	void InitAnims(TrPawn TRP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitAnims, params.ptr, cast(void*)0);
	}
	void DetachFrom(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* MeshCpnt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MeshCpnt;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachFrom, params.ptr, cast(void*)0);
	}
	void SetPuttingDownWeapon(bool bNowPuttingDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowPuttingDown;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPuttingDownWeapon, params.ptr, cast(void*)0);
	}
	bool ShouldFireTracer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldFireTracer, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldFireTracerBeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldFireTracerBeam, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ThirdPersonFireEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThirdPersonFireEffects, params.ptr, cast(void*)0);
	}
	void StopThirdPersonFireEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopThirdPersonFireEffects, cast(void*)0, cast(void*)0);
	}
	void FirstPersonFireEffects(Weapon PawnWeapon, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = PawnWeapon;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FirstPersonFireEffects, params.ptr, cast(void*)0);
	}
	void SpawnTracerBeam(Vector Start, Vector End)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnTracerBeam, params.ptr, cast(void*)0);
	}
	TrProj_Tracer SpawnTracerEffect(Vector HitLocation, float HitDistance)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(float*)&params[12] = HitDistance;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnTracerEffect, params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[16];
	}
	TrProj_Tracer GetTracer(Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTracer, params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[24];
	}
	void PlayReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayReload, cast(void*)0, cast(void*)0);
	}
	void PlayImpactEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayImpactEffects, params.ptr, cast(void*)0);
	}
	void PlayImpactSound(Actor HitActor, SoundCue SoundToPlay, Vector FireDir, Vector HitLocation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		*cast(SoundCue*)&params[4] = SoundToPlay;
		*cast(Vector*)&params[8] = FireDir;
		*cast(Vector*)&params[20] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayImpactSound, params.ptr, cast(void*)0);
	}
	UDKPawn.MaterialImpactEffect GetImpactEffect(PhysicalMaterial HitMaterial)
	{
		ubyte params[52];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = HitMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetImpactEffect, params.ptr, cast(void*)0);
		return *cast(UDKPawn.MaterialImpactEffect*)&params[4];
	}
}
