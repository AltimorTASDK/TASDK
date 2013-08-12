module UnrealScript.TribesGame.TrDevice_Sparrow;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Sparrow : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Sparrow")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInstantFire;
		public @property static final ScriptFunction InstantFire() { return mInstantFire ? mInstantFire : (mInstantFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Sparrow.InstantFire")); }
	}
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
}
