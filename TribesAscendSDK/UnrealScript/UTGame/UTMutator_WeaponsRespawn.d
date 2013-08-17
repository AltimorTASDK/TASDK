module UnrealScript.UTGame.UTMutator_WeaponsRespawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_WeaponsRespawn : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTMutator_WeaponsRespawn")); }
	private static __gshared UTMutator_WeaponsRespawn mDefaultProperties;
	@property final static UTMutator_WeaponsRespawn DefaultProperties() { mixin(MGDPC("UTMutator_WeaponsRespawn", "UTMutator_WeaponsRespawn UTGame.Default__UTMutator_WeaponsRespawn")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitMutator;
		public @property static final ScriptFunction InitMutator() { mixin(MGF("mInitMutator", "Function UTGame.UTMutator_WeaponsRespawn.InitMutator")); }
	}
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
