module UnrealScript.Engine.KActor;

import ScriptClasses;
import UnrealScript.Engine.DynamicSMActor;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.SeqAct_Teleport;

extern(C++) interface KActor : DynamicSMActor
{
	public @property final auto ref Rotator InitialRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref Vector InitialLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 688); }
	public @property final auto ref Vector ReplicatedDrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 676); }
	public @property final auto ref float AngErrorAccumulator() { return *cast(float*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref Actor.RigidBodyState RBState() { return *cast(Actor.RigidBodyState*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref float MaxPhysicsVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref float StayUprightMaxTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref float StayUprightTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref Actor.PhysEffectInfo SlideEffectInfo() { return *cast(Actor.PhysEffectInfo*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float LastSlideTime() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref Actor.PhysEffectInfo ImpactEffectInfo() { return *cast(Actor.PhysEffectInfo*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float LastImpactTime() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	public @property final bool bDisableClientSidePawnInteractions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x80) != 0; }
	public @property final bool bDisableClientSidePawnInteractions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x80; } return val; }
	public @property final bool bNeedsRBStateReplication() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x40) != 0; }
	public @property final bool bNeedsRBStateReplication(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x40; } return val; }
	public @property final bool bLimitMaxPhysicsVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x20) != 0; }
	public @property final bool bLimitMaxPhysicsVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x20; } return val; }
	public @property final bool bEnableStayUprightSpring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10) != 0; }
	public @property final bool bEnableStayUprightSpring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10; } return val; }
	public @property final bool bSlideActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8) != 0; }
	public @property final bool bSlideActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8; } return val; }
	public @property final bool bCurrentSlide() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
	public @property final bool bCurrentSlide(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
	public @property final bool bWakeOnLevelStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
	public @property final bool bWakeOnLevelStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
	public @property final bool bDamageAppliesImpulse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
	public @property final bool bDamageAppliesImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	final PhysicalMaterial GetKActorPhysMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18980], params.ptr, cast(void*)0);
		return *cast(PhysicalMaterial*)params.ptr;
	}
	final void ResolveRBState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18982], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18983], cast(void*)0, cast(void*)0);
	}
	final void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18984], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18986], cast(void*)0, cast(void*)0);
	}
	final void SetPhysicalCollisionProperties()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18987], cast(void*)0, cast(void*)0);
	}
	final void SpawnedByKismet()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18989], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18990], params.ptr, cast(void*)0);
	}
	final void ApplyImpulse(Vector ImpulseDir, float ImpulseMag, Vector HitLocation, Actor.TraceHitInfo HitInfo, ScriptClass DamageType)
	{
		ubyte params[60];
		params[] = 0;
		*cast(Vector*)params.ptr = ImpulseDir;
		*cast(float*)&params[12] = ImpulseMag;
		*cast(Vector*)&params[16] = HitLocation;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		*cast(ScriptClass*)&params[56] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18993], params.ptr, cast(void*)0);
	}
	final void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19000], params.ptr, cast(void*)0);
	}
	final void TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass DamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = DamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19008], params.ptr, cast(void*)0);
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19020], params.ptr, cast(void*)0);
	}
	final void OnTeleport(SeqAct_Teleport inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Teleport*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19022], params.ptr, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19028], cast(void*)0, cast(void*)0);
	}
}