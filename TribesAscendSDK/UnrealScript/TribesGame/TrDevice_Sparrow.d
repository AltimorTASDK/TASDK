module UnrealScript.TribesGame.TrDevice_Sparrow;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Sparrow : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Sparrow")()); }
	private static __gshared TrDevice_Sparrow mDefaultProperties;
	@property final static TrDevice_Sparrow DefaultProperties() { mixin(MGDPC!(TrDevice_Sparrow, "TrDevice_Sparrow TribesGame.Default__TrDevice_Sparrow")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInstantFire;
		public @property static final ScriptFunction InstantFire() { mixin(MGF!("mInstantFire", "Function TribesGame.TrDevice_Sparrow.InstantFire")()); }
	}
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
}
