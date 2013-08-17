module UnrealScript.Engine.KActorFromStatic;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.KActor;

extern(C++) interface KActorFromStatic : KActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.KActorFromStatic")()); }
	private static __gshared KActorFromStatic mDefaultProperties;
	@property final static KActorFromStatic DefaultProperties() { mixin(MGDPC!(KActorFromStatic, "KActorFromStatic Engine.Default__KActorFromStatic")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mMakeDynamic;
			ScriptFunction mDisablePrecomputedLighting;
			ScriptFunction mOnSleepRBPhysics;
			ScriptFunction mOnWakeRBPhysics;
			ScriptFunction mBecomeStatic;
			ScriptFunction mMakeStatic;
			ScriptFunction mApplyImpulse;
			ScriptFunction mReceiveImpulse;
			ScriptFunction mBump;
			ScriptFunction mTouch;
			ScriptFunction mTakeRadiusDamage;
		}
		public @property static final
		{
			ScriptFunction MakeDynamic() { mixin(MGF!("mMakeDynamic", "Function Engine.KActorFromStatic.MakeDynamic")()); }
			ScriptFunction DisablePrecomputedLighting() { mixin(MGF!("mDisablePrecomputedLighting", "Function Engine.KActorFromStatic.DisablePrecomputedLighting")()); }
			ScriptFunction OnSleepRBPhysics() { mixin(MGF!("mOnSleepRBPhysics", "Function Engine.KActorFromStatic.OnSleepRBPhysics")()); }
			ScriptFunction OnWakeRBPhysics() { mixin(MGF!("mOnWakeRBPhysics", "Function Engine.KActorFromStatic.OnWakeRBPhysics")()); }
			ScriptFunction BecomeStatic() { mixin(MGF!("mBecomeStatic", "Function Engine.KActorFromStatic.BecomeStatic")()); }
			ScriptFunction MakeStatic() { mixin(MGF!("mMakeStatic", "Function Engine.KActorFromStatic.MakeStatic")()); }
			ScriptFunction ApplyImpulse() { mixin(MGF!("mApplyImpulse", "Function Engine.KActorFromStatic.ApplyImpulse")()); }
			ScriptFunction ReceiveImpulse() { mixin(MGF!("mReceiveImpulse", "Function Engine.KActorFromStatic.ReceiveImpulse")()); }
			ScriptFunction Bump() { mixin(MGF!("mBump", "Function Engine.KActorFromStatic.Bump")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function Engine.KActorFromStatic.Touch")()); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF!("mTakeRadiusDamage", "Function Engine.KActorFromStatic.TakeRadiusDamage")()); }
		}
	}
	static struct Initializing
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.KActorFromStatic.Initializing")()); }
	}
	@property final auto ref
	{
		float MaxImpulseSpeed() { mixin(MGPC!("float", 716)()); }
		Actor MyStaticMeshActor() { mixin(MGPC!("Actor", 712)()); }
	}
final:
	static KActorFromStatic MakeDynamic(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* MovableMesh)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MovableMesh;
		StaticClass.ProcessEvent(Functions.MakeDynamic, params.ptr, cast(void*)0);
		return *cast(KActorFromStatic*)&params[4];
	}
	void DisablePrecomputedLighting()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisablePrecomputedLighting, cast(void*)0, cast(void*)0);
	}
	void OnSleepRBPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSleepRBPhysics, cast(void*)0, cast(void*)0);
	}
	void OnWakeRBPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnWakeRBPhysics, cast(void*)0, cast(void*)0);
	}
	void BecomeStatic()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BecomeStatic, cast(void*)0, cast(void*)0);
	}
	static void MakeStatic()
	{
		StaticClass.ProcessEvent(Functions.MakeStatic, cast(void*)0, cast(void*)0);
	}
	void ApplyImpulse(Vector ImpulseDir, float ImpulseMag, Vector HitLocation, Actor.TraceHitInfo* HitInfo = null, ScriptClass* pDamageType = null)
	{
		ubyte params[60];
		params[] = 0;
		*cast(Vector*)params.ptr = ImpulseDir;
		*cast(float*)&params[12] = ImpulseMag;
		*cast(Vector*)&params[16] = HitLocation;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[28] = *HitInfo;
		if (pDamageType !is null)
			*cast(ScriptClass*)&params[56] = *pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyImpulse, params.ptr, cast(void*)0);
	}
	void ReceiveImpulse(Pawn Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceiveImpulse, params.ptr, cast(void*)0);
	}
	void Bump(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitNormal)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Bump, params.ptr, cast(void*)0);
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
}
