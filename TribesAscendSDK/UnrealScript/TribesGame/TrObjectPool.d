module UnrealScript.TribesGame.TrObjectPool;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProj_Tracer;

extern(C++) interface TrObjectPool : Actor
{
public extern(D):
	enum MAX_TRACERS = 20;
	struct TracerCacheInfo
	{
		private ubyte __buffer__[92];
	public extern(D):
		@property final auto ref
		{
			TrProj_Tracer List() { return *cast(TrProj_Tracer*)(cast(size_t)&this + 12); }
			int ListIdx() { return *cast(int*)(cast(size_t)&this + 8); }
			ScriptClass TracerClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
			int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref TrObjectPool.TracerCacheInfo m_TracerCache() { return *cast(TrObjectPool.TracerCacheInfo*)(cast(size_t)cast(void*)this + 476); }
final:
	TrProj_Tracer GetTracer(TrObject.EWeaponTracerType TracerType, ubyte ActiveReloadTier, Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(TrObject.EWeaponTracerType*)params.ptr = TracerType;
		params[1] = ActiveReloadTier;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67440], params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[28];
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100300], cast(void*)0, cast(void*)0);
	}
	void CreatePools()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100301], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100302], cast(void*)0, cast(void*)0);
	}
	void CleanUpPools()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100303], cast(void*)0, cast(void*)0);
	}
	void CreateTracers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100304], cast(void*)0, cast(void*)0);
	}
	void CleanupTracers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100305], cast(void*)0, cast(void*)0);
	}
	void CreateTracer(TrObject.EWeaponTracerType TracerType, ScriptClass TracerClass, int Idx, bool bForceCreate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrObject.EWeaponTracerType*)params.ptr = TracerType;
		*cast(ScriptClass*)&params[4] = TracerClass;
		*cast(int*)&params[8] = Idx;
		*cast(bool*)&params[12] = bForceCreate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100309], params.ptr, cast(void*)0);
	}
}
