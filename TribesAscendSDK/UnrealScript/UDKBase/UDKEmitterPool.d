module UnrealScript.UDKBase.UDKEmitterPool;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.EmitterPool;

extern(C++) interface UDKEmitterPool : EmitterPool
{
	struct AttachedExplosionLight
	{
		public @property final auto ref Vector RelativeLocation() { return *cast(Vector*)(cast(size_t)&this + 8); }
		private ubyte __RelativeLocation[12];
		public @property final auto ref Actor Base() { return *cast(Actor*)(cast(size_t)&this + 4); }
		private ubyte __Base[4];
	}
	public @property final auto ref ScriptArray!(UDKEmitterPool.AttachedExplosionLight) RelativeExplosionLights() { return *cast(ScriptArray!(UDKEmitterPool.AttachedExplosionLight)*)(cast(size_t)cast(void*)this + 564); }
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SpawnEmitter(ParticleSystem EmitterTemplate, Vector SpawnLocation, Rotator SpawnRotation, Actor AttachToActor, bool bInheritScaleFromBase)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = EmitterTemplate;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		*cast(Actor*)&params[28] = AttachToActor;
		*cast(bool*)&params[32] = bInheritScaleFromBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34795], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[36];
	}
	final void OnExplosionLightFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* Light)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = Light;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34805], params.ptr, cast(void*)0);
	}
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SpawnExplosionLight(ScriptClass LightClass, Vector SpawnLocation, Actor AttachToActor)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = LightClass;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Actor*)&params[16] = AttachToActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34808], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[20];
	}
}
