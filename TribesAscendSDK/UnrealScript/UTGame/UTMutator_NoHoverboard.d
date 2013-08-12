module UnrealScript.UTGame.UTMutator_NoHoverboard;

import ScriptClasses;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_NoHoverboard : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTMutator_NoHoverboard")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitMutator;
		public @property static final ScriptFunction InitMutator() { return mInitMutator ? mInitMutator : (mInitMutator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator_NoHoverboard.InitMutator")); }
	}
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
