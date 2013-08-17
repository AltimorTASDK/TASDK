module UnrealScript.UnrealEd.ShowPropertyFlagsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ShowPropertyFlagsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ShowPropertyFlagsCommandlet")()); }
	private static __gshared ShowPropertyFlagsCommandlet mDefaultProperties;
	@property final static ShowPropertyFlagsCommandlet DefaultProperties() { mixin(MGDPC!(ShowPropertyFlagsCommandlet, "ShowPropertyFlagsCommandlet UnrealEd.Default__ShowPropertyFlagsCommandlet")()); }
}
