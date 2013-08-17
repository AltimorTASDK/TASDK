module UnrealScript.Engine.KActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DynamicSMActor;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.SeqAct_Teleport;

extern(C++) interface KActor : DynamicSMActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.KActor")()); }
	private static __gshared KActor mDefaultProperties;
	@property final static KActor DefaultProperties() { mixin(MGDPC!(KActor, "KActor Engine.Default__KActor")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetKActorPhysMaterial;
			ScriptFunction mResolveRBState;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mDestroyed;
			ScriptFunction mSetPhysicalCollisionProperties;
			ScriptFunction mSpawnedByKismet;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mApplyImpulse;
			ScriptFunction mTakeDamage;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mOnToggle;
			ScriptFunction mOnTeleport;
			ScriptFunction mReset;
		}
		public @property static final
		{
			ScriptFunction GetKActorPhysMaterial() { mixin(MGF!("mGetKActorPhysMaterial", "Function Engine.KActor.GetKActorPhysMaterial")()); }
			ScriptFunction ResolveRBState() { mixin(MGF!("mResolveRBState", "Function Engine.KActor.ResolveRBState")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.KActor.PostBeginPlay")()); }
			ScriptFunction FellOutOfWorld() { mixin(MGF!("mFellOutOfWorld", "Function Engine.KActor.FellOutOfWorld")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.KActor.Destroyed")()); }
			ScriptFunction SetPhysicalCollisionProperties() { mixin(MGF!("mSetPhysicalCollisionProperties", "Function Engine.KActor.SetPhysicalCollisionProperties")()); }
			ScriptFunction SpawnedByKismet() { mixin(MGF!("mSpawnedByKismet", "Function Engine.KActor.SpawnedByKismet")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.KActor.ReplicatedEvent")()); }
			ScriptFunction ApplyImpulse() { mixin(MGF!("mApplyImpulse", "Function Engine.KActor.ApplyImpulse")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function Engine.KActor.TakeDamage")()); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF!("mTakeRadiusDamage", "Function Engine.KActor.TakeRadiusDamage")()); }
			ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.KActor.OnToggle")()); }
			ScriptFunction OnTeleport() { mixin(MGF!("mOnTeleport", "Function Engine.KActor.OnTeleport")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.KActor.Reset")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Rotator InitialRotation() { mixin(MGPC!(Rotator, 700)()); }
			Vector InitialLocation() { mixin(MGPC!(Vector, 688)()); }
			Vector ReplicatedDrawScale3D() { mixin(MGPC!(Vector, 676)()); }
			float AngErrorAccumulator() { mixin(MGPC!(float, 672)()); }
			Actor.RigidBodyState RBState() { mixin(MGPC!(Actor.RigidBodyState, 608)()); }
			float MaxPhysicsVelocity() { mixin(MGPC!(float, 604)()); }
			float StayUprightMaxTorque() { mixin(MGPC!(float, 600)()); }
			float StayUprightTorqueFactor() { mixin(MGPC!(float, 596)()); }
			Actor.PhysEffectInfo SlideEffectInfo() { mixin(MGPC!(Actor.PhysEffectInfo, 580)()); }
			float LastSlideTime() { mixin(MGPC!(float, 576)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SlideSoundComponent'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SlideEffectComponent'!
			Actor.PhysEffectInfo ImpactEffectInfo() { mixin(MGPC!(Actor.PhysEffectInfo, 552)()); }
			float LastImpactTime() { mixin(MGPC!(float, 548)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ImpactSoundComponent2'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ImpactSoundComponent'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ImpactEffectComponent'!
		}
		bool bDisableClientSidePawnInteractions() { mixin(MGBPC!(532, 0x80)()); }
		bool bDisableClientSidePawnInteractions(bool val) { mixin(MSBPC!(532, 0x80)()); }
		bool bNeedsRBStateReplication() { mixin(MGBPC!(532, 0x40)()); }
		bool bNeedsRBStateReplication(bool val) { mixin(MSBPC!(532, 0x40)()); }
		bool bLimitMaxPhysicsVelocity() { mixin(MGBPC!(532, 0x20)()); }
		bool bLimitMaxPhysicsVelocity(bool val) { mixin(MSBPC!(532, 0x20)()); }
		bool bEnableStayUprightSpring() { mixin(MGBPC!(532, 0x10)()); }
		bool bEnableStayUprightSpring(bool val) { mixin(MSBPC!(532, 0x10)()); }
		bool bSlideActive() { mixin(MGBPC!(532, 0x8)()); }
		bool bSlideActive(bool val) { mixin(MSBPC!(532, 0x8)()); }
		bool bCurrentSlide() { mixin(MGBPC!(532, 0x4)()); }
		bool bCurrentSlide(bool val) { mixin(MSBPC!(532, 0x4)()); }
		bool bWakeOnLevelStart() { mixin(MGBPC!(532, 0x2)()); }
		bool bWakeOnLevelStart(bool val) { mixin(MSBPC!(532, 0x2)()); }
		bool bDamageAppliesImpulse() { mixin(MGBPC!(532, 0x1)()); }
		bool bDamageAppliesImpulse(bool val) { mixin(MSBPC!(532, 0x1)()); }
	}
final:
	PhysicalMaterial GetKActorPhysMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetKActorPhysMaterial, params.ptr, cast(void*)0);
		return *cast(PhysicalMaterial*)params.ptr;
	}
	void ResolveRBState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResolveRBState, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void SetPhysicalCollisionProperties()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPhysicalCollisionProperties, cast(void*)0, cast(void*)0);
	}
	void SpawnedByKismet()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnedByKismet, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void ApplyImpulse(Vector ImpulseDir, float ImpulseMag, Vector HitLocation, Actor.TraceHitInfo HitInfo, ScriptClass pDamageType)
	{
		ubyte params[60];
		params[] = 0;
		*cast(Vector*)params.ptr = ImpulseDir;
		*cast(float*)&params[12] = ImpulseMag;
		*cast(Vector*)&params[16] = HitLocation;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		*cast(ScriptClass*)&params[56] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyImpulse, params.ptr, cast(void*)0);
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
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
}
