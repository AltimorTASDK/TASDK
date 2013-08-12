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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.KAsset")); }
	private static __gshared KAsset mDefaultProperties;
	@property final static KAsset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(KAsset)("KAsset Engine.Default__KAsset")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetMeshAndPhysAsset;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mTakeDamage;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mOnToggle;
			ScriptFunction mOnTeleport;
			ScriptFunction mDoKismetAttachment;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.KAsset.PostBeginPlay")); }
			ScriptFunction SetMeshAndPhysAsset() { return mSetMeshAndPhysAsset ? mSetMeshAndPhysAsset : (mSetMeshAndPhysAsset = ScriptObject.Find!(ScriptFunction)("Function Engine.KAsset.SetMeshAndPhysAsset")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.KAsset.ReplicatedEvent")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.KAsset.TakeDamage")); }
			ScriptFunction TakeRadiusDamage() { return mTakeRadiusDamage ? mTakeRadiusDamage : (mTakeRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.KAsset.TakeRadiusDamage")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.KAsset.OnToggle")); }
			ScriptFunction OnTeleport() { return mOnTeleport ? mOnTeleport : (mOnTeleport = ScriptObject.Find!(ScriptFunction)("Function Engine.KAsset.OnTeleport")); }
			ScriptFunction DoKismetAttachment() { return mDoKismetAttachment ? mDoKismetAttachment : (mDoKismetAttachment = ScriptObject.Find!(ScriptFunction)("Function Engine.KAsset.DoKismetAttachment")); }
		}
	}
	@property final
	{
		auto ref
		{
			PhysicsAsset ReplicatedPhysAsset() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 488); }
			SkeletalMesh ReplicatedMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 484); }
		}
		bool bBlockPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x4) != 0; }
		bool bBlockPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x4; } return val; }
		bool bWakeOnLevelStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
		bool bWakeOnLevelStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
		bool bDamageAppliesImpulse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bDamageAppliesImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetMeshAndPhysAsset(SkeletalMesh NewMesh, PhysicsAsset NewPhysAsset)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = NewMesh;
		*cast(PhysicsAsset*)&params[4] = NewPhysAsset;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMeshAndPhysAsset, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
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
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void OnTeleport(SeqAct_Teleport inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Teleport*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTeleport, params.ptr, cast(void*)0);
	}
	void DoKismetAttachment(Actor pAttachment, SeqAct_AttachToActor Action)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = pAttachment;
		*cast(SeqAct_AttachToActor*)&params[4] = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoKismetAttachment, params.ptr, cast(void*)0);
	}
}
