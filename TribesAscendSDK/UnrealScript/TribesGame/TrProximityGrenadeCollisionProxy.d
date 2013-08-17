module UnrealScript.TribesGame.TrProximityGrenadeCollisionProxy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProximityGrenadeCollisionProxy : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProximityGrenadeCollisionProxy")); }
	private static __gshared TrProximityGrenadeCollisionProxy mDefaultProperties;
	@property final static TrProximityGrenadeCollisionProxy DefaultProperties() { mixin(MGDPC("TrProximityGrenadeCollisionProxy", "TrProximityGrenadeCollisionProxy TribesGame.Default__TrProximityGrenadeCollisionProxy")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnPawnAdded;
			ScriptFunction mOnPawnRemoved;
			ScriptFunction mTouch;
		}
		public @property static final
		{
			ScriptFunction OnPawnAdded() { mixin(MGF("mOnPawnAdded", "Function TribesGame.TrProximityGrenadeCollisionProxy.OnPawnAdded")); }
			ScriptFunction OnPawnRemoved() { mixin(MGF("mOnPawnRemoved", "Function TribesGame.TrProximityGrenadeCollisionProxy.OnPawnRemoved")); }
			ScriptFunction Touch() { mixin(MGF("mTouch", "Function TribesGame.TrProximityGrenadeCollisionProxy.Touch")); }
		}
	}
final:
	void OnPawnAdded(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnAdded, params.ptr, cast(void*)0);
	}
	void OnPawnRemoved(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnRemoved, params.ptr, cast(void*)0);
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
