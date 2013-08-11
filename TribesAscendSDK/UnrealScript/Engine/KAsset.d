module UnrealScript.Engine.KAsset;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.SeqAct_AttachToActor;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.SeqAct_Teleport;

extern(C++) interface KAsset : Actor
{
	public @property final auto ref PhysicsAsset ReplicatedPhysAsset() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref SkeletalMesh ReplicatedMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 484); }
	public @property final bool bBlockPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x4) != 0; }
	public @property final bool bBlockPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x4; } return val; }
	public @property final bool bWakeOnLevelStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
	public @property final bool bWakeOnLevelStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
	public @property final bool bDamageAppliesImpulse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
	public @property final bool bDamageAppliesImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19092], cast(void*)0, cast(void*)0);
	}
	final void SetMeshAndPhysAsset(SkeletalMesh NewMesh, PhysicsAsset NewPhysAsset)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = NewMesh;
		*cast(PhysicsAsset*)&params[4] = NewPhysAsset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19093], params.ptr, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19096], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19098], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19107], params.ptr, cast(void*)0);
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19117], params.ptr, cast(void*)0);
	}
	final void OnTeleport(SeqAct_Teleport inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Teleport*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19119], params.ptr, cast(void*)0);
	}
	final void DoKismetAttachment(Actor Attachment, SeqAct_AttachToActor Action)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Attachment;
		*cast(SeqAct_AttachToActor*)&params[4] = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19122], params.ptr, cast(void*)0);
	}
}
