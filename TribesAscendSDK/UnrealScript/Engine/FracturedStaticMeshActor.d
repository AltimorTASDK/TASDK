module UnrealScript.Engine.FracturedStaticMeshActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.FracturedStaticMeshPart;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface FracturedStaticMeshActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FracturedStaticMeshActor")()); }
	private static __gshared FracturedStaticMeshActor mDefaultProperties;
	@property final static FracturedStaticMeshActor DefaultProperties() { mixin(MGDPC!(FracturedStaticMeshActor, "FracturedStaticMeshActor Engine.Default__FracturedStaticMeshActor")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsFracturedByDamageType;
			ScriptFunction mFractureEffectIsRelevant;
			ScriptFunction mSpawnPart;
			ScriptFunction mSpawnPartMulti;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mResetHealth;
			ScriptFunction mBreakOffIsolatedIslands;
			ScriptFunction mSpawnDeferredParts;
			ScriptFunction mRemoveDecals;
			ScriptFunction mTakeDamage;
			ScriptFunction mExplode;
			ScriptFunction mBreakOffPartsInRadius;
			ScriptFunction mResetVisibility;
			ScriptFunction mHideOneFragment;
			ScriptFunction mHideFragmentsToMaximizeMemoryUsage;
			ScriptFunction mSetLoseChunkReplacementMaterial;
			ScriptFunction mNotifyHitByExplosion;
		}
		public @property static final
		{
			ScriptFunction IsFracturedByDamageType() { mixin(MGF!("mIsFracturedByDamageType", "Function Engine.FracturedStaticMeshActor.IsFracturedByDamageType")()); }
			ScriptFunction FractureEffectIsRelevant() { mixin(MGF!("mFractureEffectIsRelevant", "Function Engine.FracturedStaticMeshActor.FractureEffectIsRelevant")()); }
			ScriptFunction SpawnPart() { mixin(MGF!("mSpawnPart", "Function Engine.FracturedStaticMeshActor.SpawnPart")()); }
			ScriptFunction SpawnPartMulti() { mixin(MGF!("mSpawnPartMulti", "Function Engine.FracturedStaticMeshActor.SpawnPartMulti")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.FracturedStaticMeshActor.PostBeginPlay")()); }
			ScriptFunction ResetHealth() { mixin(MGF!("mResetHealth", "Function Engine.FracturedStaticMeshActor.ResetHealth")()); }
			ScriptFunction BreakOffIsolatedIslands() { mixin(MGF!("mBreakOffIsolatedIslands", "Function Engine.FracturedStaticMeshActor.BreakOffIsolatedIslands")()); }
			ScriptFunction SpawnDeferredParts() { mixin(MGF!("mSpawnDeferredParts", "Function Engine.FracturedStaticMeshActor.SpawnDeferredParts")()); }
			ScriptFunction RemoveDecals() { mixin(MGF!("mRemoveDecals", "Function Engine.FracturedStaticMeshActor.RemoveDecals")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function Engine.FracturedStaticMeshActor.TakeDamage")()); }
			ScriptFunction Explode() { mixin(MGF!("mExplode", "Function Engine.FracturedStaticMeshActor.Explode")()); }
			ScriptFunction BreakOffPartsInRadius() { mixin(MGF!("mBreakOffPartsInRadius", "Function Engine.FracturedStaticMeshActor.BreakOffPartsInRadius")()); }
			ScriptFunction ResetVisibility() { mixin(MGF!("mResetVisibility", "Function Engine.FracturedStaticMeshActor.ResetVisibility")()); }
			ScriptFunction HideOneFragment() { mixin(MGF!("mHideOneFragment", "Function Engine.FracturedStaticMeshActor.HideOneFragment")()); }
			ScriptFunction HideFragmentsToMaximizeMemoryUsage() { mixin(MGF!("mHideFragmentsToMaximizeMemoryUsage", "Function Engine.FracturedStaticMeshActor.HideFragmentsToMaximizeMemoryUsage")()); }
			ScriptFunction SetLoseChunkReplacementMaterial() { mixin(MGF!("mSetLoseChunkReplacementMaterial", "Function Engine.FracturedStaticMeshActor.SetLoseChunkReplacementMaterial")()); }
			ScriptFunction NotifyHitByExplosion() { mixin(MGF!("mNotifyHitByExplosion", "Function Engine.FracturedStaticMeshActor.NotifyHitByExplosion")()); }
		}
	}
	struct DeferredPartToSpawn
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.FracturedStaticMeshActor.DeferredPartToSpawn")()); }
		@property final
		{
			auto ref
			{
				float RelativeScale() { mixin(MGPS!(float, 28)()); }
				Vector InitialAngVel() { mixin(MGPS!(Vector, 16)()); }
				Vector InitialVel() { mixin(MGPS!(Vector, 4)()); }
				int ChunkIndex() { mixin(MGPS!(int, 0)()); }
			}
			bool bExplosion() { mixin(MGBPS!(32, 0x1)()); }
			bool bExplosion(bool val) { mixin(MSBPS!(32, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(int) ChunkHealth() { mixin(MGPC!(ScriptArray!(int), 488)()); }
			ScriptArray!(ScriptClass) FracturedByDamageType() { mixin(MGPC!(ScriptArray!(ScriptClass), 504)()); }
			ScriptArray!(ParticleSystem) OverrideFragmentDestroyEffects() { mixin(MGPC!(ScriptArray!(ParticleSystem), 520)()); }
			ScriptArray!(FracturedStaticMeshActor.DeferredPartToSpawn) DeferredPartsToSpawn() { mixin(MGPC!(ScriptArray!(FracturedStaticMeshActor.DeferredPartToSpawn), 540)()); }
			MaterialInterface MI_LoseChunkPreviousMaterial() { mixin(MGPC!(MaterialInterface, 576)()); }
			SoundCue SingleChunkFractureSound() { mixin(MGPC!(SoundCue, 572)()); }
			SoundCue ExplosionFractureSound() { mixin(MGPC!(SoundCue, 568)()); }
			Actor.PhysEffectInfo PartImpactEffect() { mixin(MGPC!(Actor.PhysEffectInfo, 552)()); }
			float FractureCullMaxDistance() { mixin(MGPC!(float, 536)()); }
			float FractureCullMinDistance() { mixin(MGPC!(float, 532)()); }
			float ChunkHealthScale() { mixin(MGPC!(float, 516)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SkinnedComponent'!
			// WARNING: Property 'FracturedStaticMeshComponent' has the same name as a defined type!
			int MaxPartsToSpawnAtOnce() { mixin(MGPC!(int, 476)()); }
		}
		bool bBreakChunksOnActorTouch() { mixin(MGBPC!(500, 0x2)()); }
		bool bBreakChunksOnActorTouch(bool val) { mixin(MSBPC!(500, 0x2)()); }
		bool bHasShownMissingSoundWarning() { mixin(MGBPC!(500, 0x1)()); }
		bool bHasShownMissingSoundWarning(bool val) { mixin(MSBPC!(500, 0x1)()); }
	}
final:
	bool IsFracturedByDamageType(ScriptClass dmgType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFracturedByDamageType, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FractureEffectIsRelevant(bool bForceDedicated, Pawn EffectInstigator, ref ubyte bWantPhysChunksAndParticles)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bForceDedicated;
		*cast(Pawn*)&params[4] = EffectInstigator;
		params[8] = bWantPhysChunksAndParticles;
		(cast(ScriptObject)this).ProcessEvent(Functions.FractureEffectIsRelevant, params.ptr, cast(void*)0);
		*bWantPhysChunksAndParticles = params[8];
		return *cast(bool*)&params[12];
	}
	FracturedStaticMeshPart SpawnPart(int ChunkIndex, Vector InitialVel, Vector InitialAngVel, float RelativeScale, bool bExplosion)
	{
		ubyte params[40];
		params[] = 0;
		*cast(int*)params.ptr = ChunkIndex;
		*cast(Vector*)&params[4] = InitialVel;
		*cast(Vector*)&params[16] = InitialAngVel;
		*cast(float*)&params[28] = RelativeScale;
		*cast(bool*)&params[32] = bExplosion;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnPart, params.ptr, cast(void*)0);
		return *cast(FracturedStaticMeshPart*)&params[36];
	}
	FracturedStaticMeshPart SpawnPartMulti(ScriptArray!(int) ChunkIndices, Vector InitialVel, Vector InitialAngVel, float RelativeScale, bool bExplosion)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = ChunkIndices;
		*cast(Vector*)&params[12] = InitialVel;
		*cast(Vector*)&params[24] = InitialAngVel;
		*cast(float*)&params[36] = RelativeScale;
		*cast(bool*)&params[40] = bExplosion;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnPartMulti, params.ptr, cast(void*)0);
		return *cast(FracturedStaticMeshPart*)&params[44];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ResetHealth()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetHealth, cast(void*)0, cast(void*)0);
	}
	void BreakOffIsolatedIslands(ref ScriptArray!(ubyte) FragmentVis, ScriptArray!(int) IgnoreFrags, Vector ChunkDir, ScriptArray!(FracturedStaticMeshPart) DisableCollWithPart, bool bWantPhysChunks)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = FragmentVis;
		*cast(ScriptArray!(int)*)&params[12] = IgnoreFrags;
		*cast(Vector*)&params[24] = ChunkDir;
		*cast(ScriptArray!(FracturedStaticMeshPart)*)&params[36] = DisableCollWithPart;
		*cast(bool*)&params[48] = bWantPhysChunks;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakOffIsolatedIslands, params.ptr, cast(void*)0);
		*FragmentVis = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
	bool SpawnDeferredParts()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnDeferredParts, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RemoveDecals(int IndexToRemoveDecalsFrom)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = IndexToRemoveDecalsFrom;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveDecals, params.ptr, cast(void*)0);
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void Explode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, cast(void*)0, cast(void*)0);
	}
	void BreakOffPartsInRadius(Vector Origin, float Radius, float RBStrength, bool bWantPhysChunksAndParticles)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(float*)&params[16] = RBStrength;
		*cast(bool*)&params[20] = bWantPhysChunksAndParticles;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakOffPartsInRadius, params.ptr, cast(void*)0);
	}
	void ResetVisibility()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetVisibility, cast(void*)0, cast(void*)0);
	}
	void HideOneFragment()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideOneFragment, cast(void*)0, cast(void*)0);
	}
	void HideFragmentsToMaximizeMemoryUsage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideFragmentsToMaximizeMemoryUsage, cast(void*)0, cast(void*)0);
	}
	void SetLoseChunkReplacementMaterial()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLoseChunkReplacementMaterial, cast(void*)0, cast(void*)0);
	}
	void NotifyHitByExplosion(Controller InstigatorController, float DamageAmount, ScriptClass dmgType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatorController;
		*cast(float*)&params[4] = DamageAmount;
		*cast(ScriptClass*)&params[8] = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyHitByExplosion, params.ptr, cast(void*)0);
	}
}
