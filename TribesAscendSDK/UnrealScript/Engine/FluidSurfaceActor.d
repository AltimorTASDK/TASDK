module UnrealScript.Engine.FluidSurfaceActor;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface FluidSurfaceActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FluidSurfaceActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTakeDamage;
			ScriptFunction mTouch;
		}
		public @property static final
		{
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.FluidSurfaceActor.TakeDamage")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.FluidSurfaceActor.Touch")); }
		}
	}
	@property final auto ref ParticleSystem ProjectileEntryEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 480); }
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
