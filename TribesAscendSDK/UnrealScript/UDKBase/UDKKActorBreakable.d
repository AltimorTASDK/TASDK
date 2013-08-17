module UnrealScript.UDKBase.UDKKActorBreakable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.KActor;

extern(C++) interface UDKKActorBreakable : KActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKKActorBreakable")()); }
	private static __gshared UDKKActorBreakable mDefaultProperties;
	@property final static UDKKActorBreakable DefaultProperties() { mixin(MGDPC!(UDKKActorBreakable, "UDKKActorBreakable UDKBase.Default__UDKKActorBreakable")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnEncroach;
			ScriptFunction mOnBreakApart;
			ScriptFunction mTakeDamage;
			ScriptFunction mEncroachingOn;
			ScriptFunction mBreakApart;
			ScriptFunction mReplicatedEvent;
		}
		public @property static final
		{
			ScriptFunction OnEncroach() { mixin(MGF!("mOnEncroach", "Function UDKBase.UDKKActorBreakable.OnEncroach")()); }
			ScriptFunction OnBreakApart() { mixin(MGF!("mOnBreakApart", "Function UDKBase.UDKKActorBreakable.OnBreakApart")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function UDKBase.UDKKActorBreakable.TakeDamage")()); }
			ScriptFunction EncroachingOn() { mixin(MGF!("mEncroachingOn", "Function UDKBase.UDKKActorBreakable.EncroachingOn")()); }
			ScriptFunction BreakApart() { mixin(MGF!("mBreakApart", "Function UDKBase.UDKKActorBreakable.BreakApart")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function UDKBase.UDKKActorBreakable.ReplicatedEvent")()); }
		}
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnEncroach__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnBreakApart__Delegate'!
			Controller InstigatorController() { mixin(MGPC!("Controller", 740)()); }
			ParticleSystem BrokenTemplate() { mixin(MGPC!("ParticleSystem", 736)()); }
			int DOEResetThreshold() { mixin(MGPC!("int", 732)()); }
			ScriptClass DmgTypeClass() { mixin(MGPC!("ScriptClass", 728)()); }
			int EncroachDamage_Self() { mixin(MGPC!("int", 724)()); }
			int EncroachDamage_Other() { mixin(MGPC!("int", 720)()); }
			int Health() { mixin(MGPC!("int", 716)()); }
		}
		bool bBroken() { mixin(MGBPC!(712, 0x20)()); }
		bool bBroken(bool val) { mixin(MSBPC!(712, 0x20)()); }
		bool bBreakWhenCausingDamage() { mixin(MGBPC!(712, 0x10)()); }
		bool bBreakWhenCausingDamage(bool val) { mixin(MSBPC!(712, 0x10)()); }
		bool bTakeDamageOnEncroachment() { mixin(MGBPC!(712, 0x8)()); }
		bool bTakeDamageOnEncroachment(bool val) { mixin(MSBPC!(712, 0x8)()); }
		bool bResetDOEWhenAsleep() { mixin(MGBPC!(712, 0x4)()); }
		bool bResetDOEWhenAsleep(bool val) { mixin(MSBPC!(712, 0x4)()); }
		bool bDamageOnEncroachment() { mixin(MGBPC!(712, 0x2)()); }
		bool bDamageOnEncroachment(bool val) { mixin(MSBPC!(712, 0x2)()); }
		bool bHasHealth() { mixin(MGBPC!(712, 0x1)()); }
		bool bHasHealth(bool val) { mixin(MSBPC!(712, 0x1)()); }
	}
final:
	bool OnEncroach(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEncroach, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnBreakApart()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBreakApart, cast(void*)0, cast(void*)0);
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
	bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachingOn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void BreakApart()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakApart, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
}
