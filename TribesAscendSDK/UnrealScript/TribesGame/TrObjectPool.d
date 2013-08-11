module UnrealScript.TribesGame.TrObjectPool;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProj_Tracer;

extern(C++) interface TrObjectPool : Actor
{
	public static immutable auto MAX_TRACERS = 20;
	struct TracerCacheInfo
	{
		public @property final auto ref TrProj_Tracer List() { return *cast(TrProj_Tracer*)(cast(size_t)&this + 12); }
		private ubyte __List[4];
		public @property final auto ref int ListIdx() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __ListIdx[4];
		public @property final auto ref ScriptClass TracerClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
		private ubyte __TracerClass[4];
		public @property final auto ref int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Type[4];
	}
	public @property final auto ref TrObjectPool.TracerCacheInfo m_TracerCache() { return *cast(TrObjectPool.TracerCacheInfo*)(cast(size_t)cast(void*)this + 476); }
	final TrProj_Tracer GetTracer(TrObject.EWeaponTracerType TracerType, ubyte ActiveReloadTier, Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[30];
		params[] = 0;
		*cast(TrObject.EWeaponTracerType*)params.ptr = TracerType;
		params[1] = ActiveReloadTier;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67440], params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[28];
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100300], cast(void*)0, cast(void*)0);
	}
	final void CreatePools()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100301], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100302], cast(void*)0, cast(void*)0);
	}
	final void CleanUpPools()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100303], cast(void*)0, cast(void*)0);
	}
	final void CreateTracers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100304], cast(void*)0, cast(void*)0);
	}
	final void CleanupTracers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100305], cast(void*)0, cast(void*)0);
	}
	final void CreateTracer(TrObject.EWeaponTracerType TracerType, ScriptClass TracerClass, int Idx, bool bForceCreate)
	{
		ubyte params[13];
		params[] = 0;
		*cast(TrObject.EWeaponTracerType*)params.ptr = TracerType;
		*cast(ScriptClass*)&params[4] = TracerClass;
		*cast(int*)&params[8] = Idx;
		*cast(bool*)&params[12] = bForceCreate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100309], params.ptr, cast(void*)0);
	}
}
