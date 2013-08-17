module UnrealScript.TribesGame.TrDeviceAttachment;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeviceAttachment")()); }
	private static __gshared TrDeviceAttachment mDefaultProperties;
	@property final static TrDeviceAttachment DefaultProperties() { mixin(MGDPC!(TrDeviceAttachment, "TrDeviceAttachment TribesGame.Default__TrDeviceAttachment")()); }
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
			ScriptFunction AttachTo() { mixin(MGF!("mAttachTo", "Function TribesGame.TrDeviceAttachment.AttachTo")()); }
			ScriptFunction InitAnims() { mixin(MGF!("mInitAnims", "Function TribesGame.TrDeviceAttachment.InitAnims")()); }
			ScriptFunction DetachFrom() { mixin(MGF!("mDetachFrom", "Function TribesGame.TrDeviceAttachment.DetachFrom")()); }
			ScriptFunction SetPuttingDownWeapon() { mixin(MGF!("mSetPuttingDownWeapon", "Function TribesGame.TrDeviceAttachment.SetPuttingDownWeapon")()); }
			ScriptFunction ShouldFireTracer() { mixin(MGF!("mShouldFireTracer", "Function TribesGame.TrDeviceAttachment.ShouldFireTracer")()); }
			ScriptFunction ShouldFireTracerBeam() { mixin(MGF!("mShouldFireTracerBeam", "Function TribesGame.TrDeviceAttachment.ShouldFireTracerBeam")()); }
			ScriptFunction ThirdPersonFireEffects() { mixin(MGF!("mThirdPersonFireEffects", "Function TribesGame.TrDeviceAttachment.ThirdPersonFireEffects")()); }
			ScriptFunction StopThirdPersonFireEffects() { mixin(MGF!("mStopThirdPersonFireEffects", "Function TribesGame.TrDeviceAttachment.StopThirdPersonFireEffects")()); }
			ScriptFunction FirstPersonFireEffects() { mixin(MGF!("mFirstPersonFireEffects", "Function TribesGame.TrDeviceAttachment.FirstPersonFireEffects")()); }
			ScriptFunction SpawnTracerBeam() { mixin(MGF!("mSpawnTracerBeam", "Function TribesGame.TrDeviceAttachment.SpawnTracerBeam")()); }
			ScriptFunction SpawnTracerEffect() { mixin(MGF!("mSpawnTracerEffect", "Function TribesGame.TrDeviceAttachment.SpawnTracerEffect")()); }
			ScriptFunction GetTracer() { mixin(MGF!("mGetTracer", "Function TribesGame.TrDeviceAttachment.GetTracer")()); }
			ScriptFunction PlayReload() { mixin(MGF!("mPlayReload", "Function TribesGame.TrDeviceAttachment.PlayReload")()); }
			ScriptFunction PlayImpactEffects() { mixin(MGF!("mPlayImpactEffects", "Function TribesGame.TrDeviceAttachment.PlayImpactEffects")()); }
			ScriptFunction PlayImpactSound() { mixin(MGF!("mPlayImpactSound", "Function TribesGame.TrDeviceAttachment.PlayImpactSound")()); }
			ScriptFunction GetImpactEffect() { mixin(MGF!("mGetImpactEffect", "Function TribesGame.TrDeviceAttachment.GetImpactEffect")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimSet) m_LightMed3pPawnAnimSets() { mixin(MGPC!(ScriptArray!(AnimSet), 736)()); }
			ScriptArray!(AnimSet) m_Heavy3pPawnAnimSets() { mixin(MGPC!(ScriptArray!(AnimSet), 748)()); }
			ScriptArray!(TrObject.EffectFormOverwrite) m_EffectFormOverwrite() { mixin(MGPC!(ScriptArray!(TrObject.EffectFormOverwrite), 760)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentWeaponLoop'!
			ScriptName m_nmRidingAsPassengerFireAnimName() { mixin(MGPC!(ScriptName, 772)()); }
			float m_fShowTracerDistance() { mixin(MGPC!(float, 732)()); }
			TrObject.EWeaponTracerType m_TracerType() { mixin(MGPC!(TrObject.EWeaponTracerType, 728)()); }
			ParticleSystem m_TracerBeamTemplate() { mixin(MGPC!(ParticleSystem, 724)()); }
			ScriptName m_nmHeavyAimProfileName() { mixin(MGPC!(ScriptName, 712)()); }
			ScriptName m_nmLightMedAimProfileName() { mixin(MGPC!(ScriptName, 704)()); }
		}
		bool m_bScaleFireAnimRate() { mixin(MGBPC!(720, 0x4)()); }
		bool m_bScaleFireAnimRate(bool val) { mixin(MSBPC!(720, 0x4)()); }
		bool m_bSpawnTracerBeams() { mixin(MGBPC!(720, 0x2)()); }
		bool m_bSpawnTracerBeams(bool val) { mixin(MSBPC!(720, 0x2)()); }
		bool m_bSpawnTracers() { mixin(MGBPC!(720, 0x1)()); }
		bool m_bSpawnTracers(bool val) { mixin(MSBPC!(720, 0x1)()); }
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
