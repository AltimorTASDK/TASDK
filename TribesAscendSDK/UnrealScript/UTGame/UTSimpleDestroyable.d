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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSimpleDestroyable")); }
	private static __gshared UTSimpleDestroyable mDefaultProperties;
	@property final static UTSimpleDestroyable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSimpleDestroyable)("UTSimpleDestroyable UTGame.Default__UTSimpleDestroyable")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mGoBoom;
			ScriptFunction mRespawnDestructible;
			ScriptFunction mTakeDamage;
			ScriptFunction mTouch;
			ScriptFunction mCheckRespawn;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSimpleDestroyable.PostBeginPlay")); }
			ScriptFunction GoBoom() { return mGoBoom ? mGoBoom : (mGoBoom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSimpleDestroyable.GoBoom")); }
			ScriptFunction RespawnDestructible() { return mRespawnDestructible ? mRespawnDestructible : (mRespawnDestructible = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSimpleDestroyable.RespawnDestructible")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSimpleDestroyable.TakeDamage")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSimpleDestroyable.Touch")); }
			ScriptFunction CheckRespawn() { return mCheckRespawn ? mCheckRespawn : (mCheckRespawn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSimpleDestroyable.CheckRespawn")); }
		}
	}
	@property final
	{
		auto ref
		{
			float TimeToRespawn() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
			StaticMesh RespawnStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 584); }
			float RespawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
			Vector SpawnPhysMeshAngularVel() { return *cast(Vector*)(cast(size_t)cast(void*)this + 568); }
			Vector SpawnPhysMeshLinearVel() { return *cast(Vector*)(cast(size_t)cast(void*)this + 556); }
			float SpawnPhysMeshLifeSpan() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			StaticMesh SpawnPhysMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 548); }
			ParticleSystem ParticlesOnDestroy() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 544); }
			SoundCue SoundOnDestroy() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 540); }
			StaticMesh MeshOnDestroy() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 536); }
		}
		bool bDestroyed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8) != 0; }
		bool bDestroyed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8; } return val; }
		bool bDestroyOnVehicleTouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
		bool bDestroyOnVehicleTouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
		bool bDestroyOnPlayerTouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
		bool bDestroyOnPlayerTouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
		bool bDestroyOnDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
		bool bDestroyOnDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void GoBoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GoBoom, cast(void*)0, cast(void*)0);
	}
	void RespawnDestructible()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RespawnDestructible, cast(void*)0, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
	void CheckRespawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckRespawn, cast(void*)0, cast(void*)0);
	}
}
