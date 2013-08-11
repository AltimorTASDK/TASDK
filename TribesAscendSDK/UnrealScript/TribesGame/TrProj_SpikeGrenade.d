module UnrealScript.TribesGame.TrProj_SpikeGrenade;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface TrProj_SpikeGrenade : TrProj_Grenade
{
public extern(D):
	@property final
	{
		auto ref
		{
			SoundCue m_FractalExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 972); }
			ParticleSystem m_FractalBeamTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 968); }
			ParticleSystem m_FractalExplosionTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 964); }
			float m_fFractalDamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 960); }
			int m_nFractalDamage() { return *cast(int*)(cast(size_t)cast(void*)this + 956); }
			Vector r_vFlashExplosionLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 944); }
			Vector m_vAscentLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 932); }
			float m_fZFractalShotDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 928); }
			float m_fFractalShotDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 924); }
			SkelControlSingleBone m_AscendControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 920); }
			Vector m_CachedHitNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 908); }
			float m_fAscentHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
			float m_fAscentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 900); }
			float m_fFractalInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 896); }
			float m_fFractalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 892); }
			float m_fRemainingFractalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 888); }
		}
		bool m_bStartedFractal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 884) & 0x1) != 0; }
		bool m_bStartedFractal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 884) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 884) &= ~0x1; } return val; }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109075], params.ptr, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109077], params.ptr, cast(void*)0);
	}
	void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109079], params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109082], params.ptr, cast(void*)0);
	}
	void ClientReceivedExplosionLocation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109087], cast(void*)0, cast(void*)0);
	}
	bool IsFractalActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109088], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void StartFractalShots()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109090], cast(void*)0, cast(void*)0);
	}
	void ShootFractalShot()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109091], cast(void*)0, cast(void*)0);
	}
	void SpawnFractalExplosionEffects(Vector ShotLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = ShotLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109095], params.ptr, cast(void*)0);
	}
	void EndFractal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109098], cast(void*)0, cast(void*)0);
	}
	void SpawnExplosionEffects(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109099], params.ptr, cast(void*)0);
	}
}
