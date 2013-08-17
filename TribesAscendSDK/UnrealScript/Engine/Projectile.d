module UnrealScript.Engine.Projectile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.FluidSurfaceActor;

extern(C++) interface Projectile : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Projectile")()); }
	private static __gshared Projectile mDefaultProperties;
	@property final static Projectile DefaultProperties() { mixin(MGDPC!(Projectile, "Projectile Engine.Default__Projectile")()); }
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
			ScriptFunction EncroachingOn() { mixin(MGF!("mEncroachingOn", "Function Engine.Projectile.EncroachingOn")()); }
			ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function Engine.Projectile.PreBeginPlay")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.Projectile.PostBeginPlay")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function Engine.Projectile.Init")()); }
			ScriptFunction GetTeamNum() { mixin(MGF!("mGetTeamNum", "Function Engine.Projectile.GetTeamNum")()); }
			ScriptFunction CanSplash() { mixin(MGF!("mCanSplash", "Function Engine.Projectile.CanSplash")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.Projectile.Reset")()); }
			ScriptFunction ProjectileHurtRadius() { mixin(MGF!("mProjectileHurtRadius", "Function Engine.Projectile.ProjectileHurtRadius")()); }
			ScriptFunction HurtRadius() { mixin(MGF!("mHurtRadius", "Function Engine.Projectile.HurtRadius")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function Engine.Projectile.Touch")()); }
			ScriptFunction ProcessTouch() { mixin(MGF!("mProcessTouch", "Function Engine.Projectile.ProcessTouch")()); }
			ScriptFunction HitWall() { mixin(MGF!("mHitWall", "Function Engine.Projectile.HitWall")()); }
			ScriptFunction EncroachedBy() { mixin(MGF!("mEncroachedBy", "Function Engine.Projectile.EncroachedBy")()); }
			ScriptFunction Explode() { mixin(MGF!("mExplode", "Function Engine.Projectile.Explode")()); }
			ScriptFunction RandSpin() { mixin(MGF!("mRandSpin", "Function Engine.Projectile.RandSpin")()); }
			ScriptFunction IsStationary() { mixin(MGF!("mIsStationary", "Function Engine.Projectile.IsStationary")()); }
			ScriptFunction FellOutOfWorld() { mixin(MGF!("mFellOutOfWorld", "Function Engine.Projectile.FellOutOfWorld")()); }
			ScriptFunction GetTimeToLocation() { mixin(MGF!("mGetTimeToLocation", "Function Engine.Projectile.GetTimeToLocation")()); }
			ScriptFunction StaticGetTimeToLocation() { mixin(MGF!("mStaticGetTimeToLocation", "Function Engine.Projectile.StaticGetTimeToLocation")()); }
			ScriptFunction GetRange() { mixin(MGF!("mGetRange", "Function Engine.Projectile.GetRange")()); }
			ScriptFunction ApplyFluidSurfaceImpact() { mixin(MGF!("mApplyFluidSurfaceImpact", "Function Engine.Projectile.ApplyFluidSurfaceImpact")()); }
		}
	}
	@property final
	{
		auto ref
		{
			// WARNING: Property 'CylinderComponent' has the same name as a defined type!
			float NetCullDistanceSquared() { mixin(MGPC!("float", 528)()); }
			Actor ImpactedActor() { mixin(MGPC!("Actor", 524)()); }
			Controller InstigatorController() { mixin(MGPC!("Controller", 520)()); }
			SoundCue ImpactSound() { mixin(MGPC!("SoundCue", 516)()); }
			SoundCue SpawnSound() { mixin(MGPC!("SoundCue", 512)()); }
			ScriptClass MyDamageType() { mixin(MGPC!("ScriptClass", 508)()); }
			float MomentumTransfer() { mixin(MGPC!("float", 504)()); }
			float DamageRadius() { mixin(MGPC!("float", 500)()); }
			float Damage() { mixin(MGPC!("float", 496)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ZeroColliderComponent'!
			Actor ZeroCollider() { mixin(MGPC!("Actor", 488)()); }
			float MaxSpeed() { mixin(MGPC!("float", 480)()); }
			float Speed() { mixin(MGPC!("float", 476)()); }
		}
		bool bRotationFollowsVelocity() { mixin(MGBPC!(484, 0x8)()); }
		bool bRotationFollowsVelocity(bool val) { mixin(MSBPC!(484, 0x8)()); }
		bool bBegunPlay() { mixin(MGBPC!(484, 0x4)()); }
		bool bBegunPlay(bool val) { mixin(MSBPC!(484, 0x4)()); }
		bool bBlockedByInstigator() { mixin(MGBPC!(484, 0x2)()); }
		bool bBlockedByInstigator(bool val) { mixin(MSBPC!(484, 0x2)()); }
		bool bSwitchToZeroCollision() { mixin(MGBPC!(484, 0x1)()); }
		bool bSwitchToZeroCollision(bool val) { mixin(MSBPC!(484, 0x1)()); }
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
	bool HurtRadius(float DamageAmount, float InDamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, Actor* IgnoredActor = null, Controller* InstigatedByController = null, bool* bDoFullDamage = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = InDamageRadius;
		*cast(ScriptClass*)&params[8] = pDamageType;
		*cast(float*)&params[12] = Momentum;
		*cast(Vector*)&params[16] = HurtOrigin;
		if (IgnoredActor !is null)
			*cast(Actor*)&params[28] = *IgnoredActor;
		if (InstigatedByController !is null)
			*cast(Controller*)&params[32] = *InstigatedByController;
		if (bDoFullDamage !is null)
			*cast(bool*)&params[36] = *bDoFullDamage;
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
