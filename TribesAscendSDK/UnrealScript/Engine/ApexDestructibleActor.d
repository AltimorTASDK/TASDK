module UnrealScript.Engine.ApexDestructibleActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.FractureMaterial;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface ApexDestructibleActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ApexDestructibleActor")()); }
	private static __gshared ApexDestructibleActor mDefaultProperties;
	@property final static ApexDestructibleActor DefaultProperties() { mixin(MGDPC!(ApexDestructibleActor, "ApexDestructibleActor Engine.Default__ApexDestructibleActor")()); }
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
			ScriptFunction SpawnFractureEmitter() { mixin(MGF!("mSpawnFractureEmitter", "Function Engine.ApexDestructibleActor.SpawnFractureEmitter")()); }
			ScriptFunction CacheFractureEffects() { mixin(MGF!("mCacheFractureEffects", "Function Engine.ApexDestructibleActor.CacheFractureEffects")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.ApexDestructibleActor.PostBeginPlay")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function Engine.ApexDestructibleActor.TakeDamage")()); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF!("mTakeRadiusDamage", "Function Engine.ApexDestructibleActor.TakeRadiusDamage")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(FractureMaterial) FractureMaterials() { mixin(MGPC!(ScriptArray!(FractureMaterial), 484)()); }
			ScriptArray!(ubyte) VisibilityFactors() { mixin(MGPC!(ScriptArray!(ubyte), 500)()); }
			ScriptArray!(SoundCue) FractureSounds() { mixin(MGPC!(ScriptArray!(SoundCue), 512)()); }
			ScriptArray!(ParticleSystem) FractureParticleEffects() { mixin(MGPC!(ScriptArray!(ParticleSystem), 524)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'StaticDestructibleComponent'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
		}
		bool bFractureMaterialOverride() { mixin(MGBPC!(480, 0x1)()); }
		bool bFractureMaterialOverride(bool val) { mixin(MSBPC!(480, 0x1)()); }
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
