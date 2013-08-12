module UnrealScript.UDKBase.UDKPlayerInput;

import ScriptClasses;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface UDKPlayerInput : MobilePlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKPlayerInput")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetUDKBindNameFromCommand;
		public @property static final ScriptFunction GetUDKBindNameFromCommand() { return mGetUDKBindNameFromCommand ? mGetUDKBindNameFromCommand : (mGetUDKBindNameFromCommand = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKPlayerInput.GetUDKBindNameFromCommand")); }
	}
	final ScriptString GetUDKBindNameFromCommand(ScriptString BindCommand)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BindCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUDKBindNameFromCommand, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
