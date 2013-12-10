module UnrealScript.Engine.InteractiveFoliageActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.StaticMeshActor;

extern(C++) interface InteractiveFoliageActor : StaticMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InteractiveFoliageActor")); }
	private static __gshared InteractiveFoliageActor mDefaultProperties;
	@property final static InteractiveFoliageActor DefaultProperties() { mixin(MGDPC("InteractiveFoliageActor", "InteractiveFoliageActor Engine.Default__InteractiveFoliageActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTakeDamage;
			ScriptFunction mTouch;
		}
		public @property static final
		{
			ScriptFunction TakeDamage() { mixin(MGF("mTakeDamage", "Function Engine.InteractiveFoliageActor.TakeDamage")); }
			ScriptFunction Touch() { mixin(MGF("mTouch", "Function Engine.InteractiveFoliageActor.Touch")); }
		}
	}
	@property final auto ref
	{
		float Mass() { mixin(MGPC("float", 568)); }
		float MaxForce() { mixin(MGPC("float", 564)); }
		float MaxTouchImpulse() { mixin(MGPC("float", 560)); }
		float MaxDamageImpulse() { mixin(MGPC("float", 556)); }
		float FoliageDamping() { mixin(MGPC("float", 552)); }
		float FoliageStiffnessQuadratic() { mixin(MGPC("float", 548)); }
		float FoliageStiffness() { mixin(MGPC("float", 544)); }
		float FoliageTouchImpulseScale() { mixin(MGPC("float", 540)); }
		float FoliageDamageImpulseScale() { mixin(MGPC("float", 536)); }
		Vector FoliagePosition() { mixin(MGPC("Vector", 524)); }
		Vector FoliageForce() { mixin(MGPC("Vector", 512)); }
		Vector FoliageVelocity() { mixin(MGPC("Vector", 500)); }
		Vector TouchingActorEntryPosition() { mixin(MGPC("Vector", 488)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'CylinderComponent'!
	}
final:
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
}
