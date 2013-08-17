module UnrealScript.UnrealEd.FixupSourceUVsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FixupSourceUVsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FixupSourceUVsCommandlet")()); }
	private static __gshared FixupSourceUVsCommandlet mDefaultProperties;
	@property final static FixupSourceUVsCommandlet DefaultProperties() { mixin(MGDPC!(FixupSourceUVsCommandlet, "FixupSourceUVsCommandlet UnrealEd.Default__FixupSourceUVsCommandlet")()); }
}
