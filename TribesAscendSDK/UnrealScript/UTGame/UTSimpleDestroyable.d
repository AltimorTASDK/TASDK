module UnrealScript.UTGame.UTSimpleDestroyable;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSimpleDestroyable")()); }
	private static __gshared UTSimpleDestroyable mDefaultProperties;
	@property final static UTSimpleDestroyable DefaultProperties() { mixin(MGDPC!(UTSimpleDestroyable, "UTSimpleDestroyable UTGame.Default__UTSimpleDestroyable")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTSimpleDestroyable.PostBeginPlay")()); }
			ScriptFunction GoBoom() { mixin(MGF!("mGoBoom", "Function UTGame.UTSimpleDestroyable.GoBoom")()); }
			ScriptFunction RespawnDestructible() { mixin(MGF!("mRespawnDestructible", "Function UTGame.UTSimpleDestroyable.RespawnDestructible")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function UTGame.UTSimpleDestroyable.TakeDamage")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function UTGame.UTSimpleDestroyable.Touch")()); }
			ScriptFunction CheckRespawn() { mixin(MGF!("mCheckRespawn", "Function UTGame.UTSimpleDestroyable.CheckRespawn")()); }
		}
	}
	static struct IgnoreItAll
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTSimpleDestroyable.IgnoreItAll")()); }
	}
	@property final
	{
		auto ref
		{
			float TimeToRespawn() { mixin(MGPC!(float, 588)()); }
			StaticMesh RespawnStaticMesh() { mixin(MGPC!(StaticMesh, 584)()); }
			float RespawnTime() { mixin(MGPC!(float, 580)()); }
			Vector SpawnPhysMeshAngularVel() { mixin(MGPC!(Vector, 568)()); }
			Vector SpawnPhysMeshLinearVel() { mixin(MGPC!(Vector, 556)()); }
			float SpawnPhysMeshLifeSpan() { mixin(MGPC!(float, 552)()); }
			StaticMesh SpawnPhysMesh() { mixin(MGPC!(StaticMesh, 548)()); }
			ParticleSystem ParticlesOnDestroy() { mixin(MGPC!(ParticleSystem, 544)()); }
			SoundCue SoundOnDestroy() { mixin(MGPC!(SoundCue, 540)()); }
			StaticMesh MeshOnDestroy() { mixin(MGPC!(StaticMesh, 536)()); }
		}
		bool bDestroyed() { mixin(MGBPC!(532, 0x8)()); }
		bool bDestroyed(bool val) { mixin(MSBPC!(532, 0x8)()); }
		bool bDestroyOnVehicleTouch() { mixin(MGBPC!(532, 0x4)()); }
		bool bDestroyOnVehicleTouch(bool val) { mixin(MSBPC!(532, 0x4)()); }
		bool bDestroyOnPlayerTouch() { mixin(MGBPC!(532, 0x2)()); }
		bool bDestroyOnPlayerTouch(bool val) { mixin(MSBPC!(532, 0x2)()); }
		bool bDestroyOnDamage() { mixin(MGBPC!(532, 0x1)()); }
		bool bDestroyOnDamage(bool val) { mixin(MSBPC!(532, 0x1)()); }
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
