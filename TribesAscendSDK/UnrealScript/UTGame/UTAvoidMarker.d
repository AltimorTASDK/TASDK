module UnrealScript.UTGame.UTAvoidMarker;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface UTAvoidMarker : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTAvoidMarker")()); }
	private static __gshared UTAvoidMarker mDefaultProperties;
	@property final static UTAvoidMarker DefaultProperties() { mixin(MGDPC!(UTAvoidMarker, "UTAvoidMarker UTGame.Default__UTAvoidMarker")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTouch;
		public @property static final ScriptFunction Touch() { mixin(MGF!("mTouch", "Function UTGame.UTAvoidMarker.Touch")()); }
	}
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'CollisionCylinder'!
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
