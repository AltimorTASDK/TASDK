module UnrealScript.TribesGame.TrDevice_Eagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Eagle : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_Eagle")); }
	private static __gshared TrDevice_Eagle mDefaultProperties;
	@property final static TrDevice_Eagle DefaultProperties() { mixin(MGDPC("TrDevice_Eagle", "TrDevice_Eagle TribesGame.Default__TrDevice_Eagle")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInstantFire;
		public @property static final ScriptFunction InstantFire() { mixin(MGF("mInstantFire", "Function TribesGame.TrDevice_Eagle.InstantFire")); }
	}
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
}
