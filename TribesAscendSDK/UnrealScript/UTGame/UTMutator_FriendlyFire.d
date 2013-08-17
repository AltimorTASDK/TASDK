module UnrealScript.UTGame.UTMutator_FriendlyFire;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_FriendlyFire : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTMutator_FriendlyFire")()); }
	private static __gshared UTMutator_FriendlyFire mDefaultProperties;
	@property final static UTMutator_FriendlyFire DefaultProperties() { mixin(MGDPC!(UTMutator_FriendlyFire, "UTMutator_FriendlyFire UTGame.Default__UTMutator_FriendlyFire")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mMutatorIsAllowed;
			ScriptFunction mInitMutator;
		}
		public @property static final
		{
			ScriptFunction MutatorIsAllowed() { mixin(MGF!("mMutatorIsAllowed", "Function UTGame.UTMutator_FriendlyFire.MutatorIsAllowed")()); }
			ScriptFunction InitMutator() { mixin(MGF!("mInitMutator", "Function UTGame.UTMutator_FriendlyFire.InitMutator")()); }
		}
	}
	@property final auto ref float FriendlyFireScale() { mixin(MGPC!(float, 496)()); }
final:
	bool MutatorIsAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MutatorIsAllowed, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void InitMutator(ScriptString Options, ref ScriptString ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMutator, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
}
