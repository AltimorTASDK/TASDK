module UnrealScript.TribesGame.TrDevice_S22Rifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_S22Rifle : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_S22Rifle")()); }
	private static __gshared TrDevice_S22Rifle mDefaultProperties;
	@property final static TrDevice_S22Rifle DefaultProperties() { mixin(MGDPC!(TrDevice_S22Rifle, "TrDevice_S22Rifle TribesGame.Default__TrDevice_S22Rifle")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInstantFire;
		public @property static final ScriptFunction InstantFire() { mixin(MGF!("mInstantFire", "Function TribesGame.TrDevice_S22Rifle.InstantFire")()); }
	}
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
}
