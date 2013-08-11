module UnrealScript.Engine.FracturedStaticMeshPart;

import ScriptClasses;
import UnrealScript.Engine.FracturedStaticMeshActor;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface FracturedStaticMeshPart : FracturedStaticMeshActor
{
public extern(D):
	@property final
	{
		auto ref
		{
			float LastImpactSoundTime() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
			float CurrentVibrationLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 620); }
			Vector OldVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 608); }
			PrimitiveComponent.ERBCollisionChannel AsleepRBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 604); }
			float FracPartGravScale() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
			int PartPoolIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
			float LastSpawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			FracturedStaticMeshActor BaseFracturedMeshActor() { return *cast(FracturedStaticMeshActor*)(cast(size_t)cast(void*)this + 584); }
			float DestroyPartRadiusFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
		}
		bool bCompositeThatExplodesOnImpact() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x4) != 0; }
		bool bCompositeThatExplodesOnImpact(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x4; } return val; }
		bool bChangeRBChannelWhenAsleep() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x2) != 0; }
		bool bChangeRBChannelWhenAsleep(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x2; } return val; }
		bool bHasBeenRecycled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x1) != 0; }
		bool bHasBeenRecycled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16603], cast(void*)0, cast(void*)0);
	}
	void RecyclePart(bool bAddToFreePool)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAddToFreePool;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16604], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16606], params.ptr, cast(void*)0);
	}
	void TryToCleanUp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16614], cast(void*)0, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16615], params.ptr, cast(void*)0);
	}
	void Explode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16617], cast(void*)0, cast(void*)0);
	}
	void BreakOffPartsInRadius(Vector Origin, float Radius, float RBStrength, bool bWantPhysChunksAndParticles)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(float*)&params[16] = RBStrength;
		*cast(bool*)&params[20] = bWantPhysChunksAndParticles;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16618], params.ptr, cast(void*)0);
	}
}
