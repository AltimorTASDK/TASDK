module UnrealScript.Engine.Projectile;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.FluidSurfaceActor;

extern(C++) interface Projectile : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Projectile")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mEncroachingOn;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mInit;
			ScriptFunction mGetTeamNum;
			ScriptFunction mCanSplash;
			ScriptFunction mReset;
			ScriptFunction mProjectileHurtRadius;
			ScriptFunction mHurtRadius;
			ScriptFunction mTouch;
			ScriptFunction mProcessTouch;
			ScriptFunction mHitWall;
			ScriptFunction mEncroachedBy;
			ScriptFunction mExplode;
			ScriptFunction mRandSpin;
			ScriptFunction mIsStationary;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mGetTimeToLocation;
			ScriptFunction mStaticGetTimeToLocation;
			ScriptFunction mGetRange;
			ScriptFunction mApplyFluidSurfaceImpact;
		}
		public @property static final
		{
			ScriptFunction EncroachingOn() { return mEncroachingOn ? mEncroachingOn : (mEncroachingOn = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.EncroachingOn")); }
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.PreBeginPlay")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.PostBeginPlay")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.Init")); }
			ScriptFunction GetTeamNum() { return mGetTeamNum ? mGetTeamNum : (mGetTeamNum = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.GetTeamNum")); }
			ScriptFunction CanSplash() { return mCanSplash ? mCanSplash : (mCanSplash = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.CanSplash")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.Reset")); }
			ScriptFunction ProjectileHurtRadius() { return mProjectileHurtRadius ? mProjectileHurtRadius : (mProjectileHurtRadius = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.ProjectileHurtRadius")); }
			ScriptFunction HurtRadius() { return mHurtRadius ? mHurtRadius : (mHurtRadius = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.HurtRadius")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.Touch")); }
			ScriptFunction ProcessTouch() { return mProcessTouch ? mProcessTouch : (mProcessTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.ProcessTouch")); }
			ScriptFunction HitWall() { return mHitWall ? mHitWall : (mHitWall = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.HitWall")); }
			ScriptFunction EncroachedBy() { return mEncroachedBy ? mEncroachedBy : (mEncroachedBy = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.EncroachedBy")); }
			ScriptFunction Explode() { return mExplode ? mExplode : (mExplode = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.Explode")); }
			ScriptFunction RandSpin() { return mRandSpin ? mRandSpin : (mRandSpin = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.RandSpin")); }
			ScriptFunction IsStationary() { return mIsStationary ? mIsStationary : (mIsStationary = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.IsStationary")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.FellOutOfWorld")); }
			ScriptFunction GetTimeToLocation() { return mGetTimeToLocation ? mGetTimeToLocation : (mGetTimeToLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.GetTimeToLocation")); }
			ScriptFunction StaticGetTimeToLocation() { return mStaticGetTimeToLocation ? mStaticGetTimeToLocation : (mStaticGetTimeToLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.StaticGetTimeToLocation")); }
			ScriptFunction GetRange() { return mGetRange ? mGetRange : (mGetRange = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.GetRange")); }
			ScriptFunction ApplyFluidSurfaceImpact() { return mApplyFluidSurfaceImpact ? mApplyFluidSurfaceImpact : (mApplyFluidSurfaceImpact = ScriptObject.Find!(ScriptFunction)("Function Engine.Projectile.ApplyFluidSurfaceImpact")); }
		}
	}
	@property final
	{
		auto ref
		{
			float NetCullDistanceSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			Actor ImpactedActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 524); }
			Controller InstigatorController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 520); }
			SoundCue ImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 516); }
			SoundCue SpawnSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 512); }
			ScriptClass MyDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 508); }
			float MomentumTransfer() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float DamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float Damage() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			Actor ZeroCollider() { return *cast(Actor*)(cast(size_t)cast(void*)this + 488); }
			float MaxSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
			float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bRotationFollowsVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x8) != 0; }
		bool bRotationFollowsVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x8; } return val; }
		bool bBegunPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x4) != 0; }
		bool bBegunPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x4; } return val; }
		bool bBlockedByInstigator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x2) != 0; }
		bool bBlockedByInstigator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x2; } return val; }
		bool bSwitchToZeroCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
		bool bSwitchToZeroCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
	}
final:
	bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachingOn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Init(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
	bool CanSplash()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSplash, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	bool ProjectileHurtRadius(Vector HurtOrigin, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HurtOrigin;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileHurtRadius, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool HurtRadius(float DamageAmount, float InDamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, Actor IgnoredActor, Controller InstigatedByController, bool bDoFullDamage)
	{
		ubyte params[44];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = InDamageRadius;
		*cast(ScriptClass*)&params[8] = pDamageType;
		*cast(float*)&params[12] = Momentum;
		*cast(Vector*)&params[16] = HurtOrigin;
		*cast(Actor*)&params[28] = IgnoredActor;
		*cast(Controller*)&params[32] = InstigatedByController;
		*cast(bool*)&params[36] = bDoFullDamage;
		(cast(ScriptObject)this).ProcessEvent(Functions.HurtRadius, params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
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
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessTouch, params.ptr, cast(void*)0);
	}
	void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.HitWall, params.ptr, cast(void*)0);
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachedBy, params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	void RandSpin(float spinRate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = spinRate;
		(cast(ScriptObject)this).ProcessEvent(Functions.RandSpin, params.ptr, cast(void*)0);
	}
	bool IsStationary()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsStationary, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	float GetTimeToLocation(Vector TargetLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = TargetLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTimeToLocation, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
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
	static float GetRange()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetRange, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void ApplyFluidSurfaceImpact(FluidSurfaceActor Fluid, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(FluidSurfaceActor*)params.ptr = Fluid;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyFluidSurfaceImpact, params.ptr, cast(void*)0);
	}
}
