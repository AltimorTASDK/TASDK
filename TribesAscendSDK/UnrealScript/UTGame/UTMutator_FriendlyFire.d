module UnrealScript.UTGame.UTMutator_FriendlyFire;

import ScriptClasses;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_FriendlyFire : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTMutator_FriendlyFire")); }
	private static __gshared UTMutator_FriendlyFire mDefaultProperties;
	@property final static UTMutator_FriendlyFire DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTMutator_FriendlyFire)("UTMutator_FriendlyFire UTGame.Default__UTMutator_FriendlyFire")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mMutatorIsAllowed;
			ScriptFunction mInitMutator;
		}
		public @property static final
		{
			ScriptFunction MutatorIsAllowed() { return mMutatorIsAllowed ? mMutatorIsAllowed : (mMutatorIsAllowed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator_FriendlyFire.MutatorIsAllowed")); }
			ScriptFunction InitMutator() { return mInitMutator ? mInitMutator : (mInitMutator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator_FriendlyFire.InitMutator")); }
		}
	}
	@property final auto ref float FriendlyFireScale() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
final:
	bool MutatorIsAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MutatorIsAllowed, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void InitMutator(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMutator, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
}
