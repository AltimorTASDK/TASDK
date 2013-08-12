module UnrealScript.UTGame.UTVehicleCTFGame;

import ScriptClasses;
import UnrealScript.UTGame.UTCTFGame;

extern(C++) interface UTVehicleCTFGame : UTCTFGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTVehicleCTFGame")); }
	private static __gshared UTVehicleCTFGame mDefaultProperties;
	@property final static UTVehicleCTFGame DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTVehicleCTFGame)("UTVehicleCTFGame UTGame.Default__UTVehicleCTFGame")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mAllowMutator;
		public @property static final ScriptFunction AllowMutator() { return mAllowMutator ? mAllowMutator : (mAllowMutator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleCTFGame.AllowMutator")); }
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
