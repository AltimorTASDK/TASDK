module UnrealScript.UDKBase.UDKKActorBreakable;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.KActor;

extern(C++) interface UDKKActorBreakable : KActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKKActorBreakable")); }
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
			ScriptFunction OnEncroach() { return mOnEncroach ? mOnEncroach : (mOnEncroach = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKKActorBreakable.OnEncroach")); }
			ScriptFunction OnBreakApart() { return mOnBreakApart ? mOnBreakApart : (mOnBreakApart = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKKActorBreakable.OnBreakApart")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKKActorBreakable.TakeDamage")); }
			ScriptFunction EncroachingOn() { return mEncroachingOn ? mEncroachingOn : (mEncroachingOn = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKKActorBreakable.EncroachingOn")); }
			ScriptFunction BreakApart() { return mBreakApart ? mBreakApart : (mBreakApart = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKKActorBreakable.BreakApart")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKKActorBreakable.ReplicatedEvent")); }
		}
	}
	@property final
	{
		auto ref
		{
			Controller InstigatorController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 740); }
			ParticleSystem BrokenTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 736); }
			int DOEResetThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 732); }
			ScriptClass DmgTypeClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 728); }
			int EncroachDamage_Self() { return *cast(int*)(cast(size_t)cast(void*)this + 724); }
			int EncroachDamage_Other() { return *cast(int*)(cast(size_t)cast(void*)this + 720); }
			int Health() { return *cast(int*)(cast(size_t)cast(void*)this + 716); }
		}
		bool bBroken() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x20) != 0; }
		bool bBroken(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x20; } return val; }
		bool bBreakWhenCausingDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x10) != 0; }
		bool bBreakWhenCausingDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x10; } return val; }
		bool bTakeDamageOnEncroachment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x8) != 0; }
		bool bTakeDamageOnEncroachment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x8; } return val; }
		bool bResetDOEWhenAsleep() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x4) != 0; }
		bool bResetDOEWhenAsleep(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x4; } return val; }
		bool bDamageOnEncroachment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x2) != 0; }
		bool bDamageOnEncroachment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x2; } return val; }
		bool bHasHealth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x1) != 0; }
		bool bHasHealth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x1; } return val; }
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
