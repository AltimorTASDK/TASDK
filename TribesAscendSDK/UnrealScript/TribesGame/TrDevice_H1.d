module UnrealScript.TribesGame.TrDevice_H1;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_H1 : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_H1")); }
	private static __gshared TrDevice_H1 mDefaultProperties;
	@property final static TrDevice_H1 DefaultProperties() { mixin(MGDPC("TrDevice_H1", "TrDevice_H1 TribesGame.Default__TrDevice_H1")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInstantFire;
		public @property static final ScriptFunction InstantFire() { mixin(MGF("mInstantFire", "Function TribesGame.TrDevice_H1.InstantFire")); }
	}
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
}
