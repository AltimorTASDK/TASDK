module UnrealScript.UTGame.UTProjectile;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTProjectile")); }
	private static __gshared UTProjectile mDefaultProperties;
	@property final static UTProjectile DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTProjectile)("UTProjectile UTGame.Default__UTProjectile")); }
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
			ScriptFunction CreateProjectileLight() { return mCreateProjectileLight ? mCreateProjectileLight : (mCreateProjectileLight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.CreateProjectileLight")); }
			ScriptFunction Landed() { return mLanded ? mLanded : (mLanded = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.Landed")); }
			ScriptFunction CanSplash() { return mCanSplash ? mCanSplash : (mCanSplash = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.CanSplash")); }
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.PreBeginPlay")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.PostBeginPlay")); }
			ScriptFunction SetInitialState() { return mSetInitialState ? mSetInitialState : (mSetInitialState = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.SetInitialState")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.Init")); }
			ScriptFunction ProcessTouch() { return mProcessTouch ? mProcessTouch : (mProcessTouch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.ProcessTouch")); }
			ScriptFunction Explode() { return mExplode ? mExplode : (mExplode = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.Explode")); }
			ScriptFunction SpawnFlightEffects() { return mSpawnFlightEffects ? mSpawnFlightEffects : (mSpawnFlightEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.SpawnFlightEffects")); }
			ScriptFunction SetExplosionEffectParameters() { return mSetExplosionEffectParameters ? mSetExplosionEffectParameters : (mSetExplosionEffectParameters = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.SetExplosionEffectParameters")); }
			ScriptFunction GetExplosionSound() { return mGetExplosionSound ? mGetExplosionSound : (mGetExplosionSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.GetExplosionSound")); }
			ScriptFunction SpawnExplosionEffects() { return mSpawnExplosionEffects ? mSpawnExplosionEffects : (mSpawnExplosionEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.SpawnExplosionEffects")); }
			ScriptFunction ShouldSpawnExplosionLight() { return mShouldSpawnExplosionLight ? mShouldSpawnExplosionLight : (mShouldSpawnExplosionLight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.ShouldSpawnExplosionLight")); }
			ScriptFunction ShutDown() { return mShutDown ? mShutDown : (mShutDown = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.ShutDown")); }
			ScriptFunction TornOff() { return mTornOff ? mTornOff : (mTornOff = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.TornOff")); }
			ScriptFunction HideProjectile() { return mHideProjectile ? mHideProjectile : (mHideProjectile = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.HideProjectile")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.Destroyed")); }
			ScriptFunction MyOnParticleSystemFinished() { return mMyOnParticleSystemFinished ? mMyOnParticleSystemFinished : (mMyOnParticleSystemFinished = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.MyOnParticleSystemFinished")); }
			ScriptFunction CalcCamera() { return mCalcCamera ? mCalcCamera : (mCalcCamera = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.CalcCamera")); }
			ScriptFunction GetHomingTarget() { return mGetHomingTarget ? mGetHomingTarget : (mGetHomingTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.GetHomingTarget")); }
			ScriptFunction GetPawnOwner() { return mGetPawnOwner ? mGetPawnOwner : (mGetPawnOwner = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.GetPawnOwner")); }
			ScriptFunction CalculateTravelTime() { return mCalculateTravelTime ? mCalculateTravelTime : (mCalculateTravelTime = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.CalculateTravelTime")); }
			ScriptFunction StaticGetTimeToLocation() { return mStaticGetTimeToLocation ? mStaticGetTimeToLocation : (mStaticGetTimeToLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.StaticGetTimeToLocation")); }
			ScriptFunction GetTimeToLocation() { return mGetTimeToLocation ? mGetTimeToLocation : (mGetTimeToLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.GetTimeToLocation")); }
			ScriptFunction GetRange() { return mGetRange ? mGetRange : (mGetRange = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTProjectile.GetRange")); }
		}
	}
	@property final
	{
		auto ref
		{
			float GlobalCheckRadiusTweak() { return *cast(float*)(cast(size_t)cast(void*)this + 656); }
			float TossZ() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
			float MaxExplosionLightDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 672); }
			ScriptClass ExplosionLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 668); }
			ScriptClass ProjectileLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 660); }
			float MaxEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 648); }
			ScriptName DecalDissolveParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 640); }
			float DurationOfDecal() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
			float DecalHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
			float DecalWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 628); }
			MaterialInterface ExplosionDecal() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 624); }
			ParticleSystem ProjExplosionTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 620); }
			ParticleSystem ProjFlightTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 616); }
			SoundCue ExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 604); }
			// WARNING: Property 'AmbientSound' has the same name as a defined type!
		}
		bool bAttachExplosionToVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x40) != 0; }
		bool bAttachExplosionToVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x40; } return val; }
		bool bWaitForEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x20) != 0; }
		bool bWaitForEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x20; } return val; }
		bool bSuppressExplosionFX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x10) != 0; }
		bool bSuppressExplosionFX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x10; } return val; }
		bool bAdvanceExplosionEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x8) != 0; }
		bool bAdvanceExplosionEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x8; } return val; }
		bool m_bDestroyProjEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x4) != 0; }
		bool m_bDestroyProjEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x4; } return val; }
		bool bImportantAmbientSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x2) != 0; }
		bool bImportantAmbientSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x2; } return val; }
		bool bSuppressSounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 596) & 0x1) != 0; }
		bool bSuppressSounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 596) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 596) &= ~0x1; } return val; }
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
	bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
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
