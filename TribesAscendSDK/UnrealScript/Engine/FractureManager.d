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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FractureManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetFSMFractureCullDistanceScale;
			ScriptFunction mGetFSMDirectSpawnChanceScale;
			ScriptFunction mSpawnChunkDestroyEffect;
			ScriptFunction mGetNumFSMPartsScale;
			ScriptFunction mGetFSMRadialSpawnChanceScale;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mDestroyed;
			ScriptFunction mCleanUpFSMParts;
			ScriptFunction mCreateFSMParts;
			ScriptFunction mResetPoolVisibility;
			ScriptFunction mGetFSMPart;
			ScriptFunction mSpawnPartActor;
			ScriptFunction mReturnPartActor;
			ScriptFunction mTick;
		}
		public @property static final
		{
			ScriptFunction GetFSMFractureCullDistanceScale() { return mGetFSMFractureCullDistanceScale ? mGetFSMFractureCullDistanceScale : (mGetFSMFractureCullDistanceScale = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.GetFSMFractureCullDistanceScale")); }
			ScriptFunction GetFSMDirectSpawnChanceScale() { return mGetFSMDirectSpawnChanceScale ? mGetFSMDirectSpawnChanceScale : (mGetFSMDirectSpawnChanceScale = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.GetFSMDirectSpawnChanceScale")); }
			ScriptFunction SpawnChunkDestroyEffect() { return mSpawnChunkDestroyEffect ? mSpawnChunkDestroyEffect : (mSpawnChunkDestroyEffect = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.SpawnChunkDestroyEffect")); }
			ScriptFunction GetNumFSMPartsScale() { return mGetNumFSMPartsScale ? mGetNumFSMPartsScale : (mGetNumFSMPartsScale = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.GetNumFSMPartsScale")); }
			ScriptFunction GetFSMRadialSpawnChanceScale() { return mGetFSMRadialSpawnChanceScale ? mGetFSMRadialSpawnChanceScale : (mGetFSMRadialSpawnChanceScale = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.GetFSMRadialSpawnChanceScale")); }
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.PreBeginPlay")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.Destroyed")); }
			ScriptFunction CleanUpFSMParts() { return mCleanUpFSMParts ? mCleanUpFSMParts : (mCleanUpFSMParts = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.CleanUpFSMParts")); }
			ScriptFunction CreateFSMParts() { return mCreateFSMParts ? mCreateFSMParts : (mCreateFSMParts = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.CreateFSMParts")); }
			ScriptFunction ResetPoolVisibility() { return mResetPoolVisibility ? mResetPoolVisibility : (mResetPoolVisibility = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.ResetPoolVisibility")); }
			ScriptFunction GetFSMPart() { return mGetFSMPart ? mGetFSMPart : (mGetFSMPart = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.GetFSMPart")); }
			ScriptFunction SpawnPartActor() { return mSpawnPartActor ? mSpawnPartActor : (mSpawnPartActor = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.SpawnPartActor")); }
			ScriptFunction ReturnPartActor() { return mReturnPartActor ? mReturnPartActor : (mReturnPartActor = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.ReturnPartActor")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function Engine.FractureManager.Tick")); }
		}
	}
	static struct Constants
	{
		enum FSM_DEFAULTRECYCLETIME = 0.2;
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFSMFractureCullDistanceScale, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetFSMDirectSpawnChanceScale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFSMDirectSpawnChanceScale, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnChunkDestroyEffect, params.ptr, cast(void*)0);
	}
	float GetNumFSMPartsScale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumFSMPartsScale, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetFSMRadialSpawnChanceScale()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFSMRadialSpawnChanceScale, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void CleanUpFSMParts()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanUpFSMParts, cast(void*)0, cast(void*)0);
	}
	void CreateFSMParts()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateFSMParts, cast(void*)0, cast(void*)0);
	}
	void ResetPoolVisibility()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetPoolVisibility, cast(void*)0, cast(void*)0);
	}
	FracturedStaticMeshPart GetFSMPart(FracturedStaticMeshActor Parent, Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(FracturedStaticMeshActor*)params.ptr = Parent;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFSMPart, params.ptr, cast(void*)0);
		return *cast(FracturedStaticMeshPart*)&params[28];
	}
	FracturedStaticMeshPart SpawnPartActor(FracturedStaticMeshActor Parent, Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(FracturedStaticMeshActor*)params.ptr = Parent;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnPartActor, params.ptr, cast(void*)0);
		return *cast(FracturedStaticMeshPart*)&params[28];
	}
	void ReturnPartActor(FracturedStaticMeshPart Part)
	{
		ubyte params[4];
		params[] = 0;
		*cast(FracturedStaticMeshPart*)params.ptr = Part;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReturnPartActor, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
