module UnrealScript.TribesGame.TrDevice_CustomEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_CustomEagle : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_CustomEagle")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInstantFire;
		public @property static final ScriptFunction InstantFire() { return mInstantFire ? mInstantFire : (mInstantFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_CustomEagle.InstantFire")); }
	}
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
}
