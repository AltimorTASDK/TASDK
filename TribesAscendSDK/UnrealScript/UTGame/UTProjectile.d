module UnrealScript.UTGame.UTProjectile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKProjectile;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface UTProjectile : UDKProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTProjectile")()); }
	private static __gshared UTProjectile mDefaultProperties;
	@property final static UTProjectile DefaultProperties() { mixin(MGDPC!(UTProjectile, "UTProjectile UTGame.Default__UTProjectile")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCreateProjectileLight;
			ScriptFunction mLanded;
			ScriptFunction mCanSplash;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetInitialState;
			ScriptFunction mInit;
			ScriptFunction mProcessTouch;
			ScriptFunction mExplode;
			ScriptFunction mSpawnFlightEffects;
			ScriptFunction mSetExplosionEffectParameters;
			ScriptFunction mGetExplosionSound;
			ScriptFunction mSpawnExplosionEffects;
			ScriptFunction mShouldSpawnExplosionLight;
			ScriptFunction mShutDown;
			ScriptFunction mTornOff;
			ScriptFunction mHideProjectile;
			ScriptFunction mDestroyed;
			ScriptFunction mMyOnParticleSystemFinished;
			ScriptFunction mCalcCamera;
			ScriptFunction mGetHomingTarget;
			ScriptFunction mGetPawnOwner;
			ScriptFunction mCalculateTravelTime;
			ScriptFunction mStaticGetTimeToLocation;
			ScriptFunction mGetTimeToLocation;
			ScriptFunction mGetRange;
		}
		public @property static final
		{
			ScriptFunction CreateProjectileLight() { mixin(MGF!("mCreateProjectileLight", "Function UTGame.UTProjectile.CreateProjectileLight")()); }
			ScriptFunction Landed() { mixin(MGF!("mLanded", "Function UTGame.UTProjectile.Landed")()); }
			ScriptFunction CanSplash() { mixin(MGF!("mCanSplash", "Function UTGame.UTProjectile.CanSplash")()); }
			ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function UTGame.UTProjectile.PreBeginPlay")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTProjectile.PostBeginPlay")()); }
			ScriptFunction SetInitialState() { mixin(MGF!("mSetInitialState", "Function UTGame.UTProjectile.SetInitialState")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function UTGame.UTProjectile.Init")()); }
			ScriptFunction ProcessTouch() { mixin(MGF!("mProcessTouch", "Function UTGame.UTProjectile.ProcessTouch")()); }
			ScriptFunction Explode() { mixin(MGF!("mExplode", "Function UTGame.UTProjectile.Explode")()); }
			ScriptFunction SpawnFlightEffects() { mixin(MGF!("mSpawnFlightEffects", "Function UTGame.UTProjectile.SpawnFlightEffects")()); }
			ScriptFunction SetExplosionEffectParameters() { mixin(MGF!("mSetExplosionEffectParameters", "Function UTGame.UTProjectile.SetExplosionEffectParameters")()); }
			ScriptFunction GetExplosionSound() { mixin(MGF!("mGetExplosionSound", "Function UTGame.UTProjectile.GetExplosionSound")()); }
			ScriptFunction SpawnExplosionEffects() { mixin(MGF!("mSpawnExplosionEffects", "Function UTGame.UTProjectile.SpawnExplosionEffects")()); }
			ScriptFunction ShouldSpawnExplosionLight() { mixin(MGF!("mShouldSpawnExplosionLight", "Function UTGame.UTProjectile.ShouldSpawnExplosionLight")()); }
			ScriptFunction ShutDown() { mixin(MGF!("mShutDown", "Function UTGame.UTProjectile.ShutDown")()); }
			ScriptFunction TornOff() { mixin(MGF!("mTornOff", "Function UTGame.UTProjectile.TornOff")()); }
			ScriptFunction HideProjectile() { mixin(MGF!("mHideProjectile", "Function UTGame.UTProjectile.HideProjectile")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UTGame.UTProjectile.Destroyed")()); }
			ScriptFunction MyOnParticleSystemFinished() { mixin(MGF!("mMyOnParticleSystemFinished", "Function UTGame.UTProjectile.MyOnParticleSystemFinished")()); }
			ScriptFunction CalcCamera() { mixin(MGF!("mCalcCamera", "Function UTGame.UTProjectile.CalcCamera")()); }
			ScriptFunction GetHomingTarget() { mixin(MGF!("mGetHomingTarget", "Function UTGame.UTProjectile.GetHomingTarget")()); }
			ScriptFunction GetPawnOwner() { mixin(MGF!("mGetPawnOwner", "Function UTGame.UTProjectile.GetPawnOwner")()); }
			ScriptFunction CalculateTravelTime() { mixin(MGF!("mCalculateTravelTime", "Function UTGame.UTProjectile.CalculateTravelTime")()); }
			ScriptFunction StaticGetTimeToLocation() { mixin(MGF!("mStaticGetTimeToLocation", "Function UTGame.UTProjectile.StaticGetTimeToLocation")()); }
			ScriptFunction GetTimeToLocation() { mixin(MGF!("mGetTimeToLocation", "Function UTGame.UTProjectile.GetTimeToLocation")()); }
			ScriptFunction GetRange() { mixin(MGF!("mGetRange", "Function UTGame.UTProjectile.GetRange")()); }
		}
	}
	static struct WaitingForVelocity
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTProjectile.WaitingForVelocity")()); }
	}
	@property final
	{
		auto ref
		{
			float GlobalCheckRadiusTweak() { mixin(MGPC!("float", 656)()); }
			float TossZ() { mixin(MGPC!("float", 652)()); }
			float MaxExplosionLightDistance() { mixin(MGPC!("float", 672)()); }
			ScriptClass ExplosionLightClass() { mixin(MGPC!("ScriptClass", 668)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ProjectileLight'!
			ScriptClass ProjectileLightClass() { mixin(MGPC!("ScriptClass", 660)()); }
			float MaxEffectDistance() { mixin(MGPC!("float", 648)()); }
			ScriptName DecalDissolveParamName() { mixin(MGPC!("ScriptName", 640)()); }
			float DurationOfDecal() { mixin(MGPC!("float", 636)()); }
			float DecalHeight() { mixin(MGPC!("float", 632)()); }
			float DecalWidth() { mixin(MGPC!("float", 628)()); }
			MaterialInterface ExplosionDecal() { mixin(MGPC!("MaterialInterface", 624)()); }
			ParticleSystem ProjExplosionTemplate() { mixin(MGPC!("ParticleSystem", 620)()); }
			ParticleSystem ProjFlightTemplate() { mixin(MGPC!("ParticleSystem", 616)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ProjEffects'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'AmbientComponent'!
			SoundCue ExplosionSound() { mixin(MGPC!("SoundCue", 604)()); }
			// WARNING: Property 'AmbientSound' has the same name as a defined type!
		}
		bool bAttachExplosionToVehicles() { mixin(MGBPC!(596, 0x40)()); }
		bool bAttachExplosionToVehicles(bool val) { mixin(MSBPC!(596, 0x40)()); }
		bool bWaitForEffects() { mixin(MGBPC!(596, 0x20)()); }
		bool bWaitForEffects(bool val) { mixin(MSBPC!(596, 0x20)()); }
		bool bSuppressExplosionFX() { mixin(MGBPC!(596, 0x10)()); }
		bool bSuppressExplosionFX(bool val) { mixin(MSBPC!(596, 0x10)()); }
		bool bAdvanceExplosionEffect() { mixin(MGBPC!(596, 0x8)()); }
		bool bAdvanceExplosionEffect(bool val) { mixin(MSBPC!(596, 0x8)()); }
		bool m_bDestroyProjEffects() { mixin(MGBPC!(596, 0x4)()); }
		bool m_bDestroyProjEffects(bool val) { mixin(MSBPC!(596, 0x4)()); }
		bool bImportantAmbientSound() { mixin(MGBPC!(596, 0x2)()); }
		bool bImportantAmbientSound(bool val) { mixin(MSBPC!(596, 0x2)()); }
		bool bSuppressSounds() { mixin(MGBPC!(596, 0x1)()); }
		bool bSuppressSounds(bool val) { mixin(MSBPC!(596, 0x1)()); }
	}
final:
	void CreateProjectileLight()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateProjectileLight, cast(void*)0, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Landed, params.ptr, cast(void*)0);
	}
	bool CanSplash()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSplash, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInitialState, cast(void*)0, cast(void*)0);
	}
	void Init(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessTouch, params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
	void SetExplosionEffectParameters(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* ProjExplosion)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = ProjExplosion;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetExplosionEffectParameters, params.ptr, cast(void*)0);
	}
	SoundCue GetExplosionSound(PhysicalMaterial HitMaterial, Actor HitActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = HitMaterial;
		*cast(Actor*)&params[4] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetExplosionSound, params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[8];
	}
	void SpawnExplosionEffects(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnExplosionEffects, params.ptr, cast(void*)0);
	}
	bool ShouldSpawnExplosionLight(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSpawnExplosionLight, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TornOff, cast(void*)0, cast(void*)0);
	}
	void HideProjectile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideProjectile, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void MyOnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.MyOnParticleSystemFinished, params.ptr, cast(void*)0);
	}
	bool CalcCamera(float fDeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot, ref float out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		*cast(float*)&params[28] = out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		out_CamLoc = *cast(Vector*)&params[4];
		out_CamRot = *cast(Rotator*)&params[16];
		out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	Actor GetHomingTarget(UTProjectile Seeker, Controller InstigatedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTProjectile*)params.ptr = Seeker;
		*cast(Controller*)&params[4] = InstigatedBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHomingTarget, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[8];
	}
	Pawn GetPawnOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPawnOwner, params.ptr, cast(void*)0);
		return *cast(Pawn*)params.ptr;
	}
	static float CalculateTravelTime(float Dist, float MoveSpeed, float MaxMoveSpeed, float AccelMag)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Dist;
		*cast(float*)&params[4] = MoveSpeed;
		*cast(float*)&params[8] = MaxMoveSpeed;
		*cast(float*)&params[12] = AccelMag;
		StaticClass.ProcessEvent(Functions.CalculateTravelTime, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	static float StaticGetTimeToLocation(Vector TargetLoc, Vector StartLoc, Controller RequestedBy)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = TargetLoc;
		*cast(Vector*)&params[12] = StartLoc;
		*cast(Controller*)&params[24] = RequestedBy;
		StaticClass.ProcessEvent(Functions.StaticGetTimeToLocation, params.ptr, cast(void*)0);
		return *cast(float*)&params[28];
	}
	float GetTimeToLocation(Vector TargetLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = TargetLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTimeToLocation, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static float GetRange()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetRange, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
