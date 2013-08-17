module UnrealScript.UnrealEd.FixupEmittersCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FixupEmittersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FixupEmittersCommandlet")()); }
	private static __gshared FixupEmittersCommandlet mDefaultProperties;
	@property final static FixupEmittersCommandlet DefaultProperties() { mixin(MGDPC!(FixupEmittersCommandlet, "FixupEmittersCommandlet UnrealEd.Default__FixupEmittersCommandlet")()); }
}
