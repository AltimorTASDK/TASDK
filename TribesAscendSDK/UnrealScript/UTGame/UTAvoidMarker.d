module UnrealScript.UTGame.UTAvoidMarker;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface UTAvoidMarker : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAvoidMarker")); }
	private static __gshared UTAvoidMarker mDefaultProperties;
	@property final static UTAvoidMarker DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAvoidMarker)("UTAvoidMarker UTGame.Default__UTAvoidMarker")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTouch;
		public @property static final ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAvoidMarker.Touch")); }
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
