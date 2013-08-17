module UnrealScript.TribesGame.TrObjectPool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProj_Tracer;

extern(C++) interface TrObjectPool : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrObjectPool")); }
	private static __gshared TrObjectPool mDefaultProperties;
	@property final static TrObjectPool DefaultProperties() { mixin(MGDPC("TrObjectPool", "TrObjectPool TribesGame.Default__TrObjectPool")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetTracer;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mCreatePools;
			ScriptFunction mDestroyed;
			ScriptFunction mCleanUpPools;
			ScriptFunction mCreateTracers;
			ScriptFunction mCleanupTracers;
			ScriptFunction mCreateTracer;
		}
		public @property static final
		{
			ScriptFunction GetTracer() { mixin(MGF("mGetTracer", "Function TribesGame.TrObjectPool.GetTracer")); }
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function TribesGame.TrObjectPool.PreBeginPlay")); }
			ScriptFunction CreatePools() { mixin(MGF("mCreatePools", "Function TribesGame.TrObjectPool.CreatePools")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function TribesGame.TrObjectPool.Destroyed")); }
			ScriptFunction CleanUpPools() { mixin(MGF("mCleanUpPools", "Function TribesGame.TrObjectPool.CleanUpPools")); }
			ScriptFunction CreateTracers() { mixin(MGF("mCreateTracers", "Function TribesGame.TrObjectPool.CreateTracers")); }
			ScriptFunction CleanupTracers() { mixin(MGF("mCleanupTracers", "Function TribesGame.TrObjectPool.CleanupTracers")); }
			ScriptFunction CreateTracer() { mixin(MGF("mCreateTracer", "Function TribesGame.TrObjectPool.CreateTracer")); }
		}
	}
	static struct Constants
	{
		enum MAX_TRACERS = 20;
	}
	struct TracerCacheInfo
	{
		private ubyte __buffer__[92];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrObjectPool.TracerCacheInfo")); }
		@property final auto ref
		{
			TrProj_Tracer List() { mixin(MGPS("TrProj_Tracer", 12)); }
			int ListIdx() { mixin(MGPS("int", 8)); }
			ScriptClass TracerClass() { mixin(MGPS("ScriptClass", 4)); }
			int Type() { mixin(MGPS("int", 0)); }
		}
	}
	@property final auto ref TrObjectPool.TracerCacheInfo m_TracerCache() { mixin(MGPC("TrObjectPool.TracerCacheInfo", 476)); }
final:
	TrProj_Tracer GetTracer(TrObject.EWeaponTracerType TracerType, ubyte ActiveReloadTier, Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(TrObject.EWeaponTracerType*)params.ptr = TracerType;
		params[1] = ActiveReloadTier;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTracer, params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[28];
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void CreatePools()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreatePools, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void CleanUpPools()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanUpPools, cast(void*)0, cast(void*)0);
	}
	void CreateTracers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateTracers, cast(void*)0, cast(void*)0);
	}
	void CleanupTracers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanupTracers, cast(void*)0, cast(void*)0);
	}
	void CreateTracer(TrObject.EWeaponTracerType TracerType, ScriptClass TracerClass, int Idx, bool bForceCreate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrObject.EWeaponTracerType*)params.ptr = TracerType;
		*cast(ScriptClass*)&params[4] = TracerClass;
		*cast(int*)&params[8] = Idx;
		*cast(bool*)&params[12] = bForceCreate;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateTracer, params.ptr, cast(void*)0);
	}
}
