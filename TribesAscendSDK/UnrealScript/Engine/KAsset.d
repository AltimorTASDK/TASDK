module UnrealScript.Engine.KAsset;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.KAsset")); }
	private static __gshared KAsset mDefaultProperties;
	@property final static KAsset DefaultProperties() { mixin(MGDPC("KAsset", "KAsset Engine.Default__KAsset")); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.KAsset.PostBeginPlay")); }
			ScriptFunction SetMeshAndPhysAsset() { mixin(MGF("mSetMeshAndPhysAsset", "Function Engine.KAsset.SetMeshAndPhysAsset")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.KAsset.ReplicatedEvent")); }
			ScriptFunction TakeDamage() { mixin(MGF("mTakeDamage", "Function Engine.KAsset.TakeDamage")); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF("mTakeRadiusDamage", "Function Engine.KAsset.TakeRadiusDamage")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.KAsset.OnToggle")); }
			ScriptFunction OnTeleport() { mixin(MGF("mOnTeleport", "Function Engine.KAsset.OnTeleport")); }
			ScriptFunction DoKismetAttachment() { mixin(MGF("mDoKismetAttachment", "Function Engine.KAsset.DoKismetAttachment")); }
		}
	}
	@property final
	{
		auto ref
		{
			PhysicsAsset ReplicatedPhysAsset() { mixin(MGPC("PhysicsAsset", 488)); }
			SkeletalMesh ReplicatedMesh() { mixin(MGPC("SkeletalMesh", 484)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SkeletalMeshComponent'!
		}
		bool bBlockPawns() { mixin(MGBPC(480, 0x4)); }
		bool bBlockPawns(bool val) { mixin(MSBPC(480, 0x4)); }
		bool bWakeOnLevelStart() { mixin(MGBPC(480, 0x2)); }
		bool bWakeOnLevelStart(bool val) { mixin(MSBPC(480, 0x2)); }
		bool bDamageAppliesImpulse() { mixin(MGBPC(480, 0x1)); }
		bool bDamageAppliesImpulse(bool val) { mixin(MSBPC(480, 0x1)); }
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
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null, Actor* DamageCauser = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[36] = *HitInfo;
		if (DamageCauser !is null)
			*cast(Actor*)&params[64] = *DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float* DamageFalloffExponent = null)
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
		if (DamageFalloffExponent !is null)
			*cast(float*)&params[40] = *DamageFalloffExponent;
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
