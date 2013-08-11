module UnrealScript.TribesGame.TrProj_RemoteArxBuster;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_StickyGrenade;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_RemoteArxBuster : TrProj_StickyGrenade
{
	public @property final bool m_bIsDetonating() { return (*cast(uint*)(cast(size_t)cast(void*)this + 892) & 0x1) != 0; }
	public @property final bool m_bIsDetonating(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 892) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 892) &= ~0x1; } return val; }
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108922], cast(void*)0, cast(void*)0);
	}
	final void TakeRadiusDamage(Controller EventInstigator, float BaseDamage, float InDamageRadius, ScriptClass DamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = InDamageRadius;
		*cast(ScriptClass*)&params[12] = DamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108923], params.ptr, cast(void*)0);
	}
	final void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108934], params.ptr, cast(void*)0);
	}
	final void ReportDestroyedByOtherToParentDevice()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108942], cast(void*)0, cast(void*)0);
	}
	final bool StickToTarget(Actor Target, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108946], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108951], cast(void*)0, cast(void*)0);
	}
}
