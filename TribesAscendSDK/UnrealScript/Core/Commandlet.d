module UnrealScript.Core.Commandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Commandlet : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.Commandlet")()); }
	private static __gshared Commandlet mDefaultProperties;
	@property final static Commandlet DefaultProperties() { mixin(MGDPC!(Commandlet, "Commandlet Core.Default__Commandlet")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mMain;
		public @property static final ScriptFunction Main() { mixin(MGF!("mMain", "Function Core.Commandlet.Main")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) HelpParamNames() { mixin(MGPC!(ScriptArray!(ScriptString), 96)()); }
			ScriptArray!(ScriptString) HelpParamDescriptions() { mixin(MGPC!(ScriptArray!(ScriptString), 108)()); }
			ScriptString HelpWebLink() { mixin(MGPC!(ScriptString, 84)()); }
			ScriptString HelpUsage() { mixin(MGPC!(ScriptString, 72)()); }
			ScriptString HelpDescription() { mixin(MGPC!(ScriptString, 60)()); }
		}
		bool ShowErrorCount() { mixin(MGBPC!(120, 0x10)()); }
		bool ShowErrorCount(bool val) { mixin(MSBPC!(120, 0x10)()); }
		bool LogToConsole() { mixin(MGBPC!(120, 0x8)()); }
		bool LogToConsole(bool val) { mixin(MSBPC!(120, 0x8)()); }
		bool IsEditor() { mixin(MGBPC!(120, 0x4)()); }
		bool IsEditor(bool val) { mixin(MSBPC!(120, 0x4)()); }
		bool IsClient() { mixin(MGBPC!(120, 0x2)()); }
		bool IsClient(bool val) { mixin(MSBPC!(120, 0x2)()); }
		bool IsServer() { mixin(MGBPC!(120, 0x1)()); }
		bool IsServer(bool val) { mixin(MSBPC!(120, 0x1)()); }
	}
	final int Main(ScriptString Params)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Params;
		(cast(ScriptObject)this).ProcessEvent(Functions.Main, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
}
