module UnrealScript.UDKBase.UDKKActorBreakable;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.KActor;

extern(C++) interface UDKKActorBreakable : KActor
{
	public @property final auto ref Controller InstigatorController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref ParticleSystem BrokenTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 736); }
	public @property final auto ref int DOEResetThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref ScriptClass DmgTypeClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref int EncroachDamage_Self() { return *cast(int*)(cast(size_t)cast(void*)this + 724); }
	public @property final auto ref int EncroachDamage_Other() { return *cast(int*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref int Health() { return *cast(int*)(cast(size_t)cast(void*)this + 716); }
	public @property final bool bBroken() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x20) != 0; }
	public @property final bool bBroken(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x20; } return val; }
	public @property final bool bBreakWhenCausingDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x10) != 0; }
	public @property final bool bBreakWhenCausingDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x10; } return val; }
	public @property final bool bTakeDamageOnEncroachment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x8) != 0; }
	public @property final bool bTakeDamageOnEncroachment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x8; } return val; }
	public @property final bool bResetDOEWhenAsleep() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x4) != 0; }
	public @property final bool bResetDOEWhenAsleep(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x4; } return val; }
	public @property final bool bDamageOnEncroachment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x2) != 0; }
	public @property final bool bDamageOnEncroachment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x2; } return val; }
	public @property final bool bHasHealth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x1) != 0; }
	public @property final bool bHasHealth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x1; } return val; }
	final bool OnEncroach(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34950], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void OnBreakApart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34952], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34968], params.ptr, cast(void*)0);
	}
	final bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34976], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void BreakApart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34979], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34980], params.ptr, cast(void*)0);
	}
}
