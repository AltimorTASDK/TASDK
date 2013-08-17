module UnrealScript.UnrealEd.DumpShadersCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface DumpShadersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.DumpShadersCommandlet")()); }
	private static __gshared DumpShadersCommandlet mDefaultProperties;
	@property final static DumpShadersCommandlet DefaultProperties() { mixin(MGDPC!(DumpShadersCommandlet, "DumpShadersCommandlet UnrealEd.Default__DumpShadersCommandlet")()); }
}
