module UnrealScript.Engine.FractureManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FracturedStaticMeshPart;
import UnrealScript.Engine.FracturedStaticMeshActor;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.UObject;

extern(C++) interface FractureManager : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FractureManager")); }
	private static __gshared FractureManager mDefaultProperties;
	@property final static FractureManager DefaultProperties() { mixin(MGDPC("FractureManager", "FractureManager Engine.Default__FractureManager")); }
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
			ScriptFunction GetFSMFractureCullDistanceScale() { mixin(MGF("mGetFSMFractureCullDistanceScale", "Function Engine.FractureManager.GetFSMFractureCullDistanceScale")); }
			ScriptFunction GetFSMDirectSpawnChanceScale() { mixin(MGF("mGetFSMDirectSpawnChanceScale", "Function Engine.FractureManager.GetFSMDirectSpawnChanceScale")); }
			ScriptFunction SpawnChunkDestroyEffect() { mixin(MGF("mSpawnChunkDestroyEffect", "Function Engine.FractureManager.SpawnChunkDestroyEffect")); }
			ScriptFunction GetNumFSMPartsScale() { mixin(MGF("mGetNumFSMPartsScale", "Function Engine.FractureManager.GetNumFSMPartsScale")); }
			ScriptFunction GetFSMRadialSpawnChanceScale() { mixin(MGF("mGetFSMRadialSpawnChanceScale", "Function Engine.FractureManager.GetFSMRadialSpawnChanceScale")); }
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function Engine.FractureManager.PreBeginPlay")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function Engine.FractureManager.Destroyed")); }
			ScriptFunction CleanUpFSMParts() { mixin(MGF("mCleanUpFSMParts", "Function Engine.FractureManager.CleanUpFSMParts")); }
			ScriptFunction CreateFSMParts() { mixin(MGF("mCreateFSMParts", "Function Engine.FractureManager.CreateFSMParts")); }
			ScriptFunction ResetPoolVisibility() { mixin(MGF("mResetPoolVisibility", "Function Engine.FractureManager.ResetPoolVisibility")); }
			ScriptFunction GetFSMPart() { mixin(MGF("mGetFSMPart", "Function Engine.FractureManager.GetFSMPart")); }
			ScriptFunction SpawnPartActor() { mixin(MGF("mSpawnPartActor", "Function Engine.FractureManager.SpawnPartActor")); }
			ScriptFunction ReturnPartActor() { mixin(MGF("mReturnPartActor", "Function Engine.FractureManager.ReturnPartActor")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function Engine.FractureManager.Tick")); }
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
			ScriptArray!(FracturedStaticMeshPart) PartPool() { mixin(MGPC("ScriptArray!(FracturedStaticMeshPart)", 496)); }
			ScriptArray!(int) FreeParts() { mixin(MGPC("ScriptArray!(int)", 508)); }
			ScriptArray!(FracturedStaticMeshActor) ActorsWithDeferredPartsToSpawn() { mixin(MGPC("ScriptArray!(FracturedStaticMeshActor)", 520)); }
			float ExplosionVelScale() { mixin(MGPC("float", 492)); }
			float DestroyMinAngVel() { mixin(MGPC("float", 488)); }
			float DestroyVibrationLevel() { mixin(MGPC("float", 484)); }
			int FSMPartPoolSize() { mixin(MGPC("int", 476)); }
		}
		bool bEnableSpawnChunkEffectForRadialDamage() { mixin(MGBPC(480, 0x2)); }
		bool bEnableSpawnChunkEffectForRadialDamage(bool val) { mixin(MSBPC(480, 0x2)); }
		bool bEnableAntiVibration() { mixin(MGBPC(480, 0x1)); }
		bool bEnableAntiVibration(bool val) { mixin(MSBPC(480, 0x1)); }
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
