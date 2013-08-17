module UnrealScript.UTGame.UTMutator_Slomo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_Slomo : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTMutator_Slomo")); }
	private static __gshared UTMutator_Slomo mDefaultProperties;
	@property final static UTMutator_Slomo DefaultProperties() { mixin(MGDPC("UTMutator_Slomo", "UTMutator_Slomo UTGame.Default__UTMutator_Slomo")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitMutator;
		public @property static final ScriptFunction InitMutator() { mixin(MGF("mInitMutator", "Function UTGame.UTMutator_Slomo.InitMutator")); }
	}
	@property final auto ref float GameSpeed() { mixin(MGPC("float", 496)); }
	final void InitMutator(ScriptString Options, ref ScriptString ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMutator, params.ptr, cast(void*)0);
		ErrorMessage = *cast(ScriptString*)&params[12];
	}
}
