module UnrealScript.Engine.Projectile;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.FluidSurfaceActor;

extern(C++) interface Projectile : Actor
{
	public @property final auto ref float NetCullDistanceSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref Actor ImpactedActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref Controller InstigatorController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref SoundCue ImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref SoundCue SpawnSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref ScriptClass MyDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float MomentumTransfer() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float DamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float Damage() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref Actor ZeroCollider() { return *cast(Actor*)(cast(size_t)cast(void*)this + 488); }
	public @property final bool bRotationFollowsVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x8) != 0; }
	public @property final bool bRotationFollowsVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x8; } return val; }
	public @property final bool bBegunPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x4) != 0; }
	public @property final bool bBegunPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x4; } return val; }
	public @property final bool bBlockedByInstigator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x2) != 0; }
	public @property final bool bBlockedByInstigator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x2; } return val; }
	public @property final bool bSwitchToZeroCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
	public @property final bool bSwitchToZeroCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
	public @property final auto ref float MaxSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
	final bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24859], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24862], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24863], cast(void*)0, cast(void*)0);
	}
	final void Init(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24864], params.ptr, cast(void*)0);
	}
	final ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24866], params.ptr, cast(void*)0);
		return params[0];
	}
	final bool CanSplash()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24868], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24870], cast(void*)0, cast(void*)0);
	}
	final bool ProjectileHurtRadius(Vector HurtOrigin, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HurtOrigin;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24871], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool HurtRadius(float DamageAmount, float InDamageRadius, ScriptClass DamageType, float Momentum, Vector HurtOrigin, Actor IgnoredActor, Controller InstigatedByController, bool bDoFullDamage)
	{
		ubyte params[44];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = InDamageRadius;
		*cast(ScriptClass*)&params[8] = DamageType;
		*cast(float*)&params[12] = Momentum;
		*cast(Vector*)&params[16] = HurtOrigin;
		*cast(Actor*)&params[28] = IgnoredActor;
		*cast(Controller*)&params[32] = InstigatedByController;
		*cast(bool*)&params[36] = bDoFullDamage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24879], params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24891], params.ptr, cast(void*)0);
	}
	final void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24896], params.ptr, cast(void*)0);
	}
	final void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24900], params.ptr, cast(void*)0);
	}
	final void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24906], params.ptr, cast(void*)0);
	}
	final void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24908], params.ptr, cast(void*)0);
	}
	final void RandSpin(float spinRate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = spinRate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24911], params.ptr, cast(void*)0);
	}
	final bool IsStationary()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24913], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24915], params.ptr, cast(void*)0);
	}
	final float GetTimeToLocation(Vector TargetLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = TargetLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24917], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float StaticGetTimeToLocation(Vector TargetLoc, Vector StartLoc, Controller RequestedBy)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = TargetLoc;
		*cast(Vector*)&params[12] = StartLoc;
		*cast(Controller*)&params[24] = RequestedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24920], params.ptr, cast(void*)0);
		return *cast(float*)&params[28];
	}
	final float GetRange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24925], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void ApplyFluidSurfaceImpact(FluidSurfaceActor Fluid, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(FluidSurfaceActor*)params.ptr = Fluid;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24927], params.ptr, cast(void*)0);
	}
}
