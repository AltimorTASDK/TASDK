module UnrealScript.UTGame.UTSimpleDestroyable;

import ScriptClasses;
import UnrealScript.Engine.DynamicSMActor;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface UTSimpleDestroyable : DynamicSMActor
{
	public @property final auto ref float TimeToRespawn() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref StaticMesh RespawnStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref float RespawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref Vector SpawnPhysMeshAngularVel() { return *cast(Vector*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref Vector SpawnPhysMeshLinearVel() { return *cast(Vector*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float SpawnPhysMeshLifeSpan() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref StaticMesh SpawnPhysMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref ParticleSystem ParticlesOnDestroy() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref SoundCue SoundOnDestroy() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref StaticMesh MeshOnDestroy() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 536); }
	public @property final bool bDestroyed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8) != 0; }
	public @property final bool bDestroyed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8; } return val; }
	public @property final bool bDestroyOnVehicleTouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
	public @property final bool bDestroyOnVehicleTouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
	public @property final bool bDestroyOnPlayerTouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
	public @property final bool bDestroyOnPlayerTouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
	public @property final bool bDestroyOnDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
	public @property final bool bDestroyOnDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49255], cast(void*)0, cast(void*)0);
	}
	final void GoBoom()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49256], cast(void*)0, cast(void*)0);
	}
	final void RespawnDestructible()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49258], cast(void*)0, cast(void*)0);
	}
	final void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49259], params.ptr, cast(void*)0);
	}
	final void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49267], params.ptr, cast(void*)0);
	}
	final void CheckRespawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49272], cast(void*)0, cast(void*)0);
	}
}
