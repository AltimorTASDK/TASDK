module UnrealScript.Engine.KActorFromStatic;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.KActor;

extern(C++) interface KActorFromStatic : KActor
{
public extern(D):
	@property final auto ref
	{
		float MaxImpulseSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
		Actor MyStaticMeshActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 712); }
	}
final:
	KActorFromStatic MakeDynamic(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* MovableMesh)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MovableMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4082], params.ptr, cast(void*)0);
		return *cast(KActorFromStatic*)&params[4];
	}
	void DisablePrecomputedLighting()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19033], cast(void*)0, cast(void*)0);
	}
	void OnSleepRBPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19037], cast(void*)0, cast(void*)0);
	}
	void OnWakeRBPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19038], cast(void*)0, cast(void*)0);
	}
	void BecomeStatic()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19039], cast(void*)0, cast(void*)0);
	}
	void MakeStatic()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19040], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19042], params.ptr, cast(void*)0);
	}
	void ReceiveImpulse(Pawn Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19051], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19057], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19061], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19066], params.ptr, cast(void*)0);
	}
}
