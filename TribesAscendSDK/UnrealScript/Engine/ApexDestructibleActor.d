module UnrealScript.Engine.ApexDestructibleActor;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.FractureMaterial;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface ApexDestructibleActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ApexDestructibleActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpawnFractureEmitter;
			ScriptFunction mCacheFractureEffects;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mTakeDamage;
			ScriptFunction mTakeRadiusDamage;
		}
		public @property static final
		{
			ScriptFunction SpawnFractureEmitter() { return mSpawnFractureEmitter ? mSpawnFractureEmitter : (mSpawnFractureEmitter = ScriptObject.Find!(ScriptFunction)("Function Engine.ApexDestructibleActor.SpawnFractureEmitter")); }
			ScriptFunction CacheFractureEffects() { return mCacheFractureEffects ? mCacheFractureEffects : (mCacheFractureEffects = ScriptObject.Find!(ScriptFunction)("Function Engine.ApexDestructibleActor.CacheFractureEffects")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.ApexDestructibleActor.PostBeginPlay")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.ApexDestructibleActor.TakeDamage")); }
			ScriptFunction TakeRadiusDamage() { return mTakeRadiusDamage ? mTakeRadiusDamage : (mTakeRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.ApexDestructibleActor.TakeRadiusDamage")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(FractureMaterial) FractureMaterials() { return *cast(ScriptArray!(FractureMaterial)*)(cast(size_t)cast(void*)this + 484); }
			ScriptArray!(ubyte) VisibilityFactors() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 500); }
			ScriptArray!(SoundCue) FractureSounds() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 512); }
			ScriptArray!(ParticleSystem) FractureParticleEffects() { return *cast(ScriptArray!(ParticleSystem)*)(cast(size_t)cast(void*)this + 524); }
		}
		bool bFractureMaterialOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bFractureMaterialOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
final:
	void SpawnFractureEmitter(ParticleSystem EmitterTemplate, Vector SpawnLocation, Vector SpawnDirection)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = EmitterTemplate;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Vector*)&params[16] = SpawnDirection;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFractureEmitter, params.ptr, cast(void*)0);
	}
	void CacheFractureEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CacheFractureEffects, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeRadiusDamage, params.ptr, cast(void*)0);
	}
}
