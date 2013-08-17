module UnrealScript.TribesGame.TrCollisionProxy_Flag;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.Actor;

extern(C++) interface TrCollisionProxy_Flag : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCollisionProxy_Flag")()); }
	private static __gshared TrCollisionProxy_Flag mDefaultProperties;
	@property final static TrCollisionProxy_Flag DefaultProperties() { mixin(MGDPC!(TrCollisionProxy_Flag, "TrCollisionProxy_Flag TribesGame.Default__TrCollisionProxy_Flag")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTouch;
		public @property static final ScriptFunction Touch() { mixin(MGF!("mTouch", "Function TribesGame.TrCollisionProxy_Flag.Touch")()); }
	}
	@property final auto ref int m_nFlagReachLevel() { mixin(MGPC!("int", 492)()); }
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
