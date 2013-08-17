module UnrealScript.UTGame.UTMutator_LowGrav;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_LowGrav : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTMutator_LowGrav")()); }
	private static __gshared UTMutator_LowGrav mDefaultProperties;
	@property final static UTMutator_LowGrav DefaultProperties() { mixin(MGDPC!(UTMutator_LowGrav, "UTMutator_LowGrav UTGame.Default__UTMutator_LowGrav")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitMutator;
		public @property static final ScriptFunction InitMutator() { mixin(MGF!("mInitMutator", "Function UTGame.UTMutator_LowGrav.InitMutator")()); }
	}
	@property final auto ref float GravityZ() { mixin(MGPC!(float, 496)()); }
	final void InitMutator(ScriptString Options, ref ScriptString ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMutator, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
}
