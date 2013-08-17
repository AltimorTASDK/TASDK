module UnrealScript.TribesGame.TrProj_SpikeGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface TrProj_SpikeGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_SpikeGrenade")); }
	private static __gshared TrProj_SpikeGrenade mDefaultProperties;
	@property final static TrProj_SpikeGrenade DefaultProperties() { mixin(MGDPC("TrProj_SpikeGrenade", "TrProj_SpikeGrenade TribesGame.Default__TrProj_SpikeGrenade")); }
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
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function TribesGame.TrProj_SpikeGrenade.ReplicatedEvent")); }
			ScriptFunction PostInitAnimTree() { mixin(MGF("mPostInitAnimTree", "Function TribesGame.TrProj_SpikeGrenade.PostInitAnimTree")); }
			ScriptFunction InitProjectile() { mixin(MGF("mInitProjectile", "Function TribesGame.TrProj_SpikeGrenade.InitProjectile")); }
			ScriptFunction Explode() { mixin(MGF("mExplode", "Function TribesGame.TrProj_SpikeGrenade.Explode")); }
			ScriptFunction ClientReceivedExplosionLocation() { mixin(MGF("mClientReceivedExplosionLocation", "Function TribesGame.TrProj_SpikeGrenade.ClientReceivedExplosionLocation")); }
			ScriptFunction IsFractalActive() { mixin(MGF("mIsFractalActive", "Function TribesGame.TrProj_SpikeGrenade.IsFractalActive")); }
			ScriptFunction StartFractalShots() { mixin(MGF("mStartFractalShots", "Function TribesGame.TrProj_SpikeGrenade.StartFractalShots")); }
			ScriptFunction ShootFractalShot() { mixin(MGF("mShootFractalShot", "Function TribesGame.TrProj_SpikeGrenade.ShootFractalShot")); }
			ScriptFunction SpawnFractalExplosionEffects() { mixin(MGF("mSpawnFractalExplosionEffects", "Function TribesGame.TrProj_SpikeGrenade.SpawnFractalExplosionEffects")); }
			ScriptFunction EndFractal() { mixin(MGF("mEndFractal", "Function TribesGame.TrProj_SpikeGrenade.EndFractal")); }
			ScriptFunction SpawnExplosionEffects() { mixin(MGF("mSpawnExplosionEffects", "Function TribesGame.TrProj_SpikeGrenade.SpawnExplosionEffects")); }
		}
	}
	@property final
	{
		auto ref
		{
			SoundCue m_FractalExplosionSound() { mixin(MGPC("SoundCue", 972)); }
			ParticleSystem m_FractalBeamTemplate() { mixin(MGPC("ParticleSystem", 968)); }
			ParticleSystem m_FractalExplosionTemplate() { mixin(MGPC("ParticleSystem", 964)); }
			float m_fFractalDamageRadius() { mixin(MGPC("float", 960)); }
			int m_nFractalDamage() { mixin(MGPC("int", 956)); }
			Vector r_vFlashExplosionLocation() { mixin(MGPC("Vector", 944)); }
			Vector m_vAscentLocation() { mixin(MGPC("Vector", 932)); }
			float m_fZFractalShotDistance() { mixin(MGPC("float", 928)); }
			float m_fFractalShotDistance() { mixin(MGPC("float", 924)); }
			SkelControlSingleBone m_AscendControl() { mixin(MGPC("SkelControlSingleBone", 920)); }
			Vector m_CachedHitNormal() { mixin(MGPC("Vector", 908)); }
			float m_fAscentHeight() { mixin(MGPC("float", 904)); }
			float m_fAscentTime() { mixin(MGPC("float", 900)); }
			float m_fFractalInterval() { mixin(MGPC("float", 896)); }
			float m_fFractalTime() { mixin(MGPC("float", 892)); }
			float m_fRemainingFractalTime() { mixin(MGPC("float", 888)); }
		}
		bool m_bStartedFractal() { mixin(MGBPC(884, 0x1)); }
		bool m_bStartedFractal(bool val) { mixin(MSBPC(884, 0x1)); }
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
	void InitProjectile(Vector Direction, ScriptClass* ClassToInherit = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		if (ClassToInherit !is null)
			*cast(ScriptClass*)&params[12] = *ClassToInherit;
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
