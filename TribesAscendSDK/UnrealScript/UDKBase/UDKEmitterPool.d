module UnrealScript.UDKBase.UDKEmitterPool;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.EmitterPool;

extern(C++) interface UDKEmitterPool : EmitterPool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKEmitterPool")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpawnEmitter;
			ScriptFunction mOnExplosionLightFinished;
			ScriptFunction mSpawnExplosionLight;
		}
		public @property static final
		{
			ScriptFunction SpawnEmitter() { return mSpawnEmitter ? mSpawnEmitter : (mSpawnEmitter = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKEmitterPool.SpawnEmitter")); }
			ScriptFunction OnExplosionLightFinished() { return mOnExplosionLightFinished ? mOnExplosionLightFinished : (mOnExplosionLightFinished = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKEmitterPool.OnExplosionLightFinished")); }
			ScriptFunction SpawnExplosionLight() { return mSpawnExplosionLight ? mSpawnExplosionLight : (mSpawnExplosionLight = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKEmitterPool.SpawnExplosionLight")); }
		}
	}
	struct AttachedExplosionLight
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKEmitterPool.AttachedExplosionLight")); }
		@property final auto ref
		{
			Vector RelativeLocation() { return *cast(Vector*)(cast(size_t)&this + 8); }
			Actor Base() { return *cast(Actor*)(cast(size_t)&this + 4); }
		}
	}
	@property final auto ref ScriptArray!(UDKEmitterPool.AttachedExplosionLight) RelativeExplosionLights() { return *cast(ScriptArray!(UDKEmitterPool.AttachedExplosionLight)*)(cast(size_t)cast(void*)this + 564); }
final:
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SpawnEmitter(ParticleSystem EmitterTemplate, Vector SpawnLocation, Rotator SpawnRotation, Actor AttachToActor, bool bInheritScaleFromBase)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = EmitterTemplate;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		*cast(Actor*)&params[28] = AttachToActor;
		*cast(bool*)&params[32] = bInheritScaleFromBase;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnEmitter, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[36];
	}
	void OnExplosionLightFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pLight)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pLight;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnExplosionLightFinished, params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SpawnExplosionLight(ScriptClass LightClass, Vector SpawnLocation, Actor AttachToActor)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = LightClass;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Actor*)&params[16] = AttachToActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnExplosionLight, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[20];
	}
}
