module UnrealScript.TribesGame.TrCollisionProxy_Pickup;

import ScriptClasses;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.Actor;

extern(C++) interface TrCollisionProxy_Pickup : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCollisionProxy_Pickup")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTouch;
		public @property static final ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy_Pickup.Touch")); }
	}
	final void Touch(Actor Other, 
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
