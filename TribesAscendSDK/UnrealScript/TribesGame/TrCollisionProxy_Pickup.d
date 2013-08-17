module UnrealScript.TribesGame.TrCollisionProxy_Pickup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.Actor;

extern(C++) interface TrCollisionProxy_Pickup : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrCollisionProxy_Pickup")); }
	private static __gshared TrCollisionProxy_Pickup mDefaultProperties;
	@property final static TrCollisionProxy_Pickup DefaultProperties() { mixin(MGDPC("TrCollisionProxy_Pickup", "TrCollisionProxy_Pickup TribesGame.Default__TrCollisionProxy_Pickup")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTouch;
		public @property static final ScriptFunction Touch() { mixin(MGF("mTouch", "Function TribesGame.TrCollisionProxy_Pickup.Touch")); }
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
