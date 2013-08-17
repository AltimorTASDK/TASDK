module UnrealScript.UnrealEd.ShowObjectCountCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ShowObjectCountCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ShowObjectCountCommandlet")()); }
	private static __gshared ShowObjectCountCommandlet mDefaultProperties;
	@property final static ShowObjectCountCommandlet DefaultProperties() { mixin(MGDPC!(ShowObjectCountCommandlet, "ShowObjectCountCommandlet UnrealEd.Default__ShowObjectCountCommandlet")()); }
}
