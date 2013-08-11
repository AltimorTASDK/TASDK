module UnrealScript.Engine.FracturedStaticMeshActor;

import ScriptClasses;
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
	struct DeferredPartToSpawn
	{
		private ubyte __buffer__[36];
	public extern(D):
		@property final
		{
			auto ref
			{
				float RelativeScale() { return *cast(float*)(cast(size_t)&this + 28); }
				Vector InitialAngVel() { return *cast(Vector*)(cast(size_t)&this + 16); }
				Vector InitialVel() { return *cast(Vector*)(cast(size_t)&this + 4); }
				int ChunkIndex() { return *cast(int*)(cast(size_t)&this + 0); }
			}
			bool bExplosion() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
			bool bExplosion(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(int) ChunkHealth() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 488); }
			ScriptArray!(ScriptClass) FracturedByDamageType() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 504); }
			ScriptArray!(ParticleSystem) OverrideFragmentDestroyEffects() { return *cast(ScriptArray!(ParticleSystem)*)(cast(size_t)cast(void*)this + 520); }
			ScriptArray!(FracturedStaticMeshActor.DeferredPartToSpawn) DeferredPartsToSpawn() { return *cast(ScriptArray!(FracturedStaticMeshActor.DeferredPartToSpawn)*)(cast(size_t)cast(void*)this + 540); }
			MaterialInterface MI_LoseChunkPreviousMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 576); }
			SoundCue SingleChunkFractureSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 572); }
			SoundCue ExplosionFractureSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 568); }
			Actor.PhysEffectInfo PartImpactEffect() { return *cast(Actor.PhysEffectInfo*)(cast(size_t)cast(void*)this + 552); }
			float FractureCullMaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
			float FractureCullMinDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
			float ChunkHealthScale() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
			int MaxPartsToSpawnAtOnce() { return *cast(int*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bBreakChunksOnActorTouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
		bool bBreakChunksOnActorTouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
		bool bHasShownMissingSoundWarning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
		bool bHasShownMissingSoundWarning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	}
final:
	bool IsFracturedByDamageType(ScriptClass dmgType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13388], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FractureEffectIsRelevant(bool bForceDedicated, Pawn EffectInstigator, ubyte* bWantPhysChunksAndParticles)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bForceDedicated;
		*cast(Pawn*)&params[4] = EffectInstigator;
		params[8] = *bWantPhysChunksAndParticles;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13390], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16474], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16481], params.ptr, cast(void*)0);
		return *cast(FracturedStaticMeshPart*)&params[44];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16489], cast(void*)0, cast(void*)0);
	}
	void ResetHealth()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16491], cast(void*)0, cast(void*)0);
	}
	void BreakOffIsolatedIslands(ScriptArray!(ubyte)* FragmentVis, ScriptArray!(int) IgnoreFrags, Vector ChunkDir, ScriptArray!(FracturedStaticMeshPart) DisableCollWithPart, bool bWantPhysChunks)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *FragmentVis;
		*cast(ScriptArray!(int)*)&params[12] = IgnoreFrags;
		*cast(Vector*)&params[24] = ChunkDir;
		*cast(ScriptArray!(FracturedStaticMeshPart)*)&params[36] = DisableCollWithPart;
		*cast(bool*)&params[48] = bWantPhysChunks;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16494], params.ptr, cast(void*)0);
		*FragmentVis = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
	bool SpawnDeferredParts()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16503], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RemoveDecals(int IndexToRemoveDecalsFrom)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = IndexToRemoveDecalsFrom;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16519], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16521], params.ptr, cast(void*)0);
	}
	void Explode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16551], cast(void*)0, cast(void*)0);
	}
	void BreakOffPartsInRadius(Vector Origin, float Radius, float RBStrength, bool bWantPhysChunksAndParticles)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(float*)&params[16] = RBStrength;
		*cast(bool*)&params[20] = bWantPhysChunksAndParticles;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16559], params.ptr, cast(void*)0);
	}
	void ResetVisibility()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16564], cast(void*)0, cast(void*)0);
	}
	void HideOneFragment()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16565], cast(void*)0, cast(void*)0);
	}
	void HideFragmentsToMaximizeMemoryUsage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16569], cast(void*)0, cast(void*)0);
	}
	void SetLoseChunkReplacementMaterial()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16574], cast(void*)0, cast(void*)0);
	}
	void NotifyHitByExplosion(Controller InstigatorController, float DamageAmount, ScriptClass dmgType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatorController;
		*cast(float*)&params[4] = DamageAmount;
		*cast(ScriptClass*)&params[8] = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16577], params.ptr, cast(void*)0);
	}
}
