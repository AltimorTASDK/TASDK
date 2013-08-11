module UnrealScript.Engine.InteractiveFoliageActor;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.StaticMeshActor;

extern(C++) interface InteractiveFoliageActor : StaticMeshActor
{
public extern(D):
	@property final auto ref
	{
		float Mass() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
		float MaxForce() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
		float MaxTouchImpulse() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
		float MaxDamageImpulse() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
		float FoliageDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
		float FoliageStiffnessQuadratic() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
		float FoliageStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
		float FoliageTouchImpulseScale() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
		float FoliageDamageImpulseScale() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
		Vector FoliagePosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 524); }
		Vector FoliageForce() { return *cast(Vector*)(cast(size_t)cast(void*)this + 512); }
		Vector FoliageVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 500); }
		Vector TouchingActorEntryPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 488); }
	}
final:
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18334], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18342], params.ptr, cast(void*)0);
	}
}
