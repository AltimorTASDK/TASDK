module UnrealScript.UDKBase.UDKPlayerInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface UDKPlayerInput : MobilePlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKPlayerInput")()); }
	private static __gshared UDKPlayerInput mDefaultProperties;
	@property final static UDKPlayerInput DefaultProperties() { mixin(MGDPC!(UDKPlayerInput, "UDKPlayerInput UDKBase.Default__UDKPlayerInput")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetUDKBindNameFromCommand;
		public @property static final ScriptFunction GetUDKBindNameFromCommand() { mixin(MGF!("mGetUDKBindNameFromCommand", "Function UDKBase.UDKPlayerInput.GetUDKBindNameFromCommand")()); }
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
