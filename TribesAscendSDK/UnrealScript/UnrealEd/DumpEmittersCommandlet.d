module UnrealScript.UnrealEd.DumpEmittersCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface DumpEmittersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.DumpEmittersCommandlet")()); }
	private static __gshared DumpEmittersCommandlet mDefaultProperties;
	@property final static DumpEmittersCommandlet DefaultProperties() { mixin(MGDPC!(DumpEmittersCommandlet, "DumpEmittersCommandlet UnrealEd.Default__DumpEmittersCommandlet")()); }
}
