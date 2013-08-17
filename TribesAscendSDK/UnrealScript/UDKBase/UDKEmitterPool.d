module UnrealScript.UDKBase.UDKEmitterPool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.EmitterPool;

extern(C++) interface UDKEmitterPool : EmitterPool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKEmitterPool")); }
	private static __gshared UDKEmitterPool mDefaultProperties;
	@property final static UDKEmitterPool DefaultProperties() { mixin(MGDPC("UDKEmitterPool", "UDKEmitterPool UDKBase.Default__UDKEmitterPool")); }
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
			ScriptFunction SpawnEmitter() { mixin(MGF("mSpawnEmitter", "Function UDKBase.UDKEmitterPool.SpawnEmitter")); }
			ScriptFunction OnExplosionLightFinished() { mixin(MGF("mOnExplosionLightFinished", "Function UDKBase.UDKEmitterPool.OnExplosionLightFinished")); }
			ScriptFunction SpawnExplosionLight() { mixin(MGF("mSpawnExplosionLight", "Function UDKBase.UDKEmitterPool.SpawnExplosionLight")); }
		}
	}
	struct AttachedExplosionLight
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKEmitterPool.AttachedExplosionLight")); }
		@property final auto ref
		{
			Vector RelativeLocation() { mixin(MGPS("Vector", 8)); }
			Actor Base() { mixin(MGPS("Actor", 4)); }
			// WARNING: Property 'Light' has the same name as a defined type!
		}
	}
	@property final auto ref ScriptArray!(UDKEmitterPool.AttachedExplosionLight) RelativeExplosionLights() { mixin(MGPC("ScriptArray!(UDKEmitterPool.AttachedExplosionLight)", 564)); }
final:
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SpawnEmitter(ParticleSystem EmitterTemplate, Vector SpawnLocation, Rotator* SpawnRotation = null, Actor* AttachToActor = null, bool* bInheritScaleFromBase = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = EmitterTemplate;
		*cast(Vector*)&params[4] = SpawnLocation;
		if (SpawnRotation !is null)
			*cast(Rotator*)&params[16] = *SpawnRotation;
		if (AttachToActor !is null)
			*cast(Actor*)&params[28] = *AttachToActor;
		if (bInheritScaleFromBase !is null)
			*cast(bool*)&params[32] = *bInheritScaleFromBase;
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
void* SpawnExplosionLight(ScriptClass LightClass, Vector SpawnLocation, Actor* AttachToActor = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = LightClass;
		*cast(Vector*)&params[4] = SpawnLocation;
		if (AttachToActor !is null)
			*cast(Actor*)&params[16] = *AttachToActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnExplosionLight, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[20];
	}
}
