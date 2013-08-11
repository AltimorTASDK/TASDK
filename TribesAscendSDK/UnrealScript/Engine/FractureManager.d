module UnrealScript.Engine.FractureManager;

import ScriptClasses;
import UnrealScript.Engine.FracturedStaticMeshPart;
import UnrealScript.Engine.FracturedStaticMeshActor;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.UObject;

extern(C++) interface FractureManager : Actor
{
	public static immutable auto FSM_DEFAULTRECYCLETIME = 0.2;
	public @property final auto ref ScriptArray!(FracturedStaticMeshPart) PartPool() { return *cast(ScriptArray!(FracturedStaticMeshPart)*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref ScriptArray!(int) FreeParts() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref ScriptArray!(FracturedStaticMeshActor) ActorsWithDeferredPartsToSpawn() { return *cast(ScriptArray!(FracturedStaticMeshActor)*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref float ExplosionVelScale() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float DestroyMinAngVel() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float DestroyVibrationLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final bool bEnableSpawnChunkEffectForRadialDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
	public @property final bool bEnableSpawnChunkEffectForRadialDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
	public @property final bool bEnableAntiVibration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
	public @property final bool bEnableAntiVibration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	public @property final auto ref int FSMPartPoolSize() { return *cast(int*)(cast(size_t)cast(void*)this + 476); }
	final float GetFSMFractureCullDistanceScale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16517], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetFSMDirectSpawnChanceScale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16549], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void SpawnChunkDestroyEffect(ParticleSystem Effect, UObject.Box ChunkBox, Vector ChunkDir, float Scale)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = Effect;
		*cast(UObject.Box*)&params[4] = ChunkBox;
		*cast(Vector*)&params[32] = ChunkDir;
		*cast(float*)&params[44] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16637], params.ptr, cast(void*)0);
	}
	final float GetNumFSMPartsScale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16644], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetFSMRadialSpawnChanceScale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16646], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16648], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16649], cast(void*)0, cast(void*)0);
	}
	final void CleanUpFSMParts()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16650], cast(void*)0, cast(void*)0);
	}
	final void CreateFSMParts()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16652], cast(void*)0, cast(void*)0);
	}
	final void ResetPoolVisibility()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16653], cast(void*)0, cast(void*)0);
	}
	final FracturedStaticMeshPart GetFSMPart(FracturedStaticMeshActor Parent, Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(FracturedStaticMeshActor*)params.ptr = Parent;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16654], params.ptr, cast(void*)0);
		return *cast(FracturedStaticMeshPart*)&params[28];
	}
	final FracturedStaticMeshPart SpawnPartActor(FracturedStaticMeshActor Parent, Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(FracturedStaticMeshActor*)params.ptr = Parent;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16659], params.ptr, cast(void*)0);
		return *cast(FracturedStaticMeshPart*)&params[28];
	}
	final void ReturnPartActor(FracturedStaticMeshPart Part)
	{
		ubyte params[4];
		params[] = 0;
		*cast(FracturedStaticMeshPart*)params.ptr = Part;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16665], params.ptr, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16667], params.ptr, cast(void*)0);
	}
}
