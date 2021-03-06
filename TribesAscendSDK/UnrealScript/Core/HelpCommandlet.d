module UnrealScript.Core.HelpCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface HelpCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.HelpCommandlet")); }
	private static __gshared HelpCommandlet mDefaultProperties;
	@property final static HelpCommandlet DefaultProperties() { mixin(MGDPC("HelpCommandlet", "HelpCommandlet Core.Default__HelpCommandlet")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mMain;
		public @property static final ScriptFunction Main() { mixin(MGF("mMain", "Function Core.HelpCommandlet.Main")); }
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
