module UnrealScript.Engine.FractureManager;

import ScriptClasses;
import UnrealScript.Engine.FracturedStaticMeshPart;
import UnrealScript.Engine.FracturedStaticMeshActor;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.UObject;

extern(C++) interface FractureManager : Actor
{
public extern(D):
	enum FSM_DEFAULTRECYCLETIME = 0.2;
	@property final
	{
		auto ref
		{
			ScriptArray!(FracturedStaticMeshPart) PartPool() { return *cast(ScriptArray!(FracturedStaticMeshPart)*)(cast(size_t)cast(void*)this + 496); }
			ScriptArray!(int) FreeParts() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 508); }
			ScriptArray!(FracturedStaticMeshActor) ActorsWithDeferredPartsToSpawn() { return *cast(ScriptArray!(FracturedStaticMeshActor)*)(cast(size_t)cast(void*)this + 520); }
			float ExplosionVelScale() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			float DestroyMinAngVel() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float DestroyVibrationLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
			int FSMPartPoolSize() { return *cast(int*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bEnableSpawnChunkEffectForRadialDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
		bool bEnableSpawnChunkEffectForRadialDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
		bool bEnableAntiVibration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bEnableAntiVibration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
final:
	float GetFSMFractureCullDistanceScale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16517], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetFSMDirectSpawnChanceScale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16549], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SpawnChunkDestroyEffect(ParticleSystem Effect, UObject.Box ChunkBox, Vector ChunkDir, float Scale)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = Effect;
		*cast(UObject.Box*)&params[4] = ChunkBox;
		*cast(Vector*)&params[32] = ChunkDir;
		*cast(float*)&params[44] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16637], params.ptr, cast(void*)0);
	}
	float GetNumFSMPartsScale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16644], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetFSMRadialSpawnChanceScale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16646], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16648], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16649], cast(void*)0, cast(void*)0);
	}
	void CleanUpFSMParts()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16650], cast(void*)0, cast(void*)0);
	}
	void CreateFSMParts()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16652], cast(void*)0, cast(void*)0);
	}
	void ResetPoolVisibility()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16653], cast(void*)0, cast(void*)0);
	}
	FracturedStaticMeshPart GetFSMPart(FracturedStaticMeshActor Parent, Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(FracturedStaticMeshActor*)params.ptr = Parent;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16654], params.ptr, cast(void*)0);
		return *cast(FracturedStaticMeshPart*)&params[28];
	}
	FracturedStaticMeshPart SpawnPartActor(FracturedStaticMeshActor Parent, Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(FracturedStaticMeshActor*)params.ptr = Parent;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16659], params.ptr, cast(void*)0);
		return *cast(FracturedStaticMeshPart*)&params[28];
	}
	void ReturnPartActor(FracturedStaticMeshPart Part)
	{
		ubyte params[4];
		params[] = 0;
		*cast(FracturedStaticMeshPart*)params.ptr = Part;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16665], params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16667], params.ptr, cast(void*)0);
	}
}
