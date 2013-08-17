module UnrealScript.UTGame.UTVehicleCTFGame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTCTFGame;

extern(C++) interface UTVehicleCTFGame : UTCTFGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTVehicleCTFGame")()); }
	private static __gshared UTVehicleCTFGame mDefaultProperties;
	@property final static UTVehicleCTFGame DefaultProperties() { mixin(MGDPC!(UTVehicleCTFGame, "UTVehicleCTFGame UTGame.Default__UTVehicleCTFGame")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mAllowMutator;
		public @property static final ScriptFunction AllowMutator() { mixin(MGF!("mAllowMutator", "Function UTGame.UTVehicleCTFGame.AllowMutator")()); }
	}
	final static bool AllowMutator(ScriptString MutatorClassName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutatorClassName;
		StaticClass.ProcessEvent(Functions.AllowMutator, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
