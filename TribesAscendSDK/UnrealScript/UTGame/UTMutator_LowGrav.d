module UnrealScript.UTGame.UTMutator_LowGrav;

import ScriptClasses;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_LowGrav : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTMutator_LowGrav")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitMutator;
		public @property static final ScriptFunction InitMutator() { return mInitMutator ? mInitMutator : (mInitMutator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator_LowGrav.InitMutator")); }
	}
	@property final auto ref float GravityZ() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	final void InitMutator(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMutator, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
}
