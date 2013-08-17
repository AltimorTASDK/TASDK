module UnrealScript.TribesGame.TrCollisionProxy_Rage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.Actor;

extern(C++) interface TrCollisionProxy_Rage : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCollisionProxy_Rage")()); }
	private static __gshared TrCollisionProxy_Rage mDefaultProperties;
	@property final static TrCollisionProxy_Rage DefaultProperties() { mixin(MGDPC!(TrCollisionProxy_Rage, "TrCollisionProxy_Rage TribesGame.Default__TrCollisionProxy_Rage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTouch;
			ScriptFunction mUnTouch;
			ScriptFunction mForceProximityScan;
		}
		public @property static final
		{
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function TribesGame.TrCollisionProxy_Rage.Touch")()); }
			ScriptFunction UnTouch() { mixin(MGF!("mUnTouch", "Function TribesGame.TrCollisionProxy_Rage.UnTouch")()); }
			ScriptFunction ForceProximityScan() { mixin(MGF!("mForceProximityScan", "Function TribesGame.TrCollisionProxy_Rage.ForceProximityScan")()); }
		}
	}
final:
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
	void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnTouch, params.ptr, cast(void*)0);
	}
	void ForceProximityScan(float Radius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Radius;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceProximityScan, params.ptr, cast(void*)0);
	}
}
