module UnrealScript.TribesGame.TrStormCarrierShield;

import ScriptClasses;
import UnrealScript.Engine.DynamicSMActor;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrStormCore;

extern(C++) interface TrStormCarrierShield : DynamicSMActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrStormCarrierShield")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnShieldsDestroyed;
			ScriptFunction mTouch;
		}
		public @property static final
		{
			ScriptFunction OnShieldsDestroyed() { return mOnShieldsDestroyed ? mOnShieldsDestroyed : (mOnShieldsDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStormCarrierShield.OnShieldsDestroyed")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStormCarrierShield.Touch")); }
		}
	}
	@property final
	{
		@property final auto ref TrStormCore m_AssociatedCarrierCore() { return *cast(TrStormCore*)(cast(size_t)cast(void*)this + 536); }
		bool m_bAreShieldsUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
		bool m_bAreShieldsUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	}
final:
	void OnShieldsDestroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnShieldsDestroyed, cast(void*)0, cast(void*)0);
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
