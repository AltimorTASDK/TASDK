module UnrealScript.TribesGame.TrProj_SpikeGrenade;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface TrProj_SpikeGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_SpikeGrenade")); }
	private static __gshared TrProj_SpikeGrenade mDefaultProperties;
	@property final static TrProj_SpikeGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_SpikeGrenade)("TrProj_SpikeGrenade TribesGame.Default__TrProj_SpikeGrenade")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mInitProjectile;
			ScriptFunction mExplode;
			ScriptFunction mClientReceivedExplosionLocation;
			ScriptFunction mIsFractalActive;
			ScriptFunction mStartFractalShots;
			ScriptFunction mShootFractalShot;
			ScriptFunction mSpawnFractalExplosionEffects;
			ScriptFunction mEndFractal;
			ScriptFunction mSpawnExplosionEffects;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_SpikeGrenade.ReplicatedEvent")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_SpikeGrenade.PostInitAnimTree")); }
			ScriptFunction InitProjectile() { return mInitProjectile ? mInitProjectile : (mInitProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_SpikeGrenade.InitProjectile")); }
			ScriptFunction Explode() { return mExplode ? mExplode : (mExplode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_SpikeGrenade.Explode")); }
			ScriptFunction ClientReceivedExplosionLocation() { return mClientReceivedExplosionLocation ? mClientReceivedExplosionLocation : (mClientReceivedExplosionLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_SpikeGrenade.ClientReceivedExplosionLocation")); }
			ScriptFunction IsFractalActive() { return mIsFractalActive ? mIsFractalActive : (mIsFractalActive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_SpikeGrenade.IsFractalActive")); }
			ScriptFunction StartFractalShots() { return mStartFractalShots ? mStartFractalShots : (mStartFractalShots = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_SpikeGrenade.StartFractalShots")); }
			ScriptFunction ShootFractalShot() { return mShootFractalShot ? mShootFractalShot : (mShootFractalShot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_SpikeGrenade.ShootFractalShot")); }
			ScriptFunction SpawnFractalExplosionEffects() { return mSpawnFractalExplosionEffects ? mSpawnFractalExplosionEffects : (mSpawnFractalExplosionEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_SpikeGrenade.SpawnFractalExplosionEffects")); }
			ScriptFunction EndFractal() { return mEndFractal ? mEndFractal : (mEndFractal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_SpikeGrenade.EndFractal")); }
			ScriptFunction SpawnExplosionEffects() { return mSpawnExplosionEffects ? mSpawnExplosionEffects : (mSpawnExplosionEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_SpikeGrenade.SpawnExplosionEffects")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitProjectile, params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	void ClientReceivedExplosionLocation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReceivedExplosionLocation, cast(void*)0, cast(void*)0);
	}
	bool IsFractalActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFractalActive, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void StartFractalShots()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFractalShots, cast(void*)0, cast(void*)0);
	}
	void ShootFractalShot()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShootFractalShot, cast(void*)0, cast(void*)0);
	}
	void SpawnFractalExplosionEffects(Vector ShotLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = ShotLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFractalExplosionEffects, params.ptr, cast(void*)0);
	}
	void EndFractal()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndFractal, cast(void*)0, cast(void*)0);
	}
	void SpawnExplosionEffects(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnExplosionEffects, params.ptr, cast(void*)0);
	}
}
