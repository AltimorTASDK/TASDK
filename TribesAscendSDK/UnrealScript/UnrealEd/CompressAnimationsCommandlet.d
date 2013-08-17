module UnrealScript.UnrealEd.CompressAnimationsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface CompressAnimationsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.CompressAnimationsCommandlet")()); }
	private static __gshared CompressAnimationsCommandlet mDefaultProperties;
	@property final static CompressAnimationsCommandlet DefaultProperties() { mixin(MGDPC!(CompressAnimationsCommandlet, "CompressAnimationsCommandlet UnrealEd.Default__CompressAnimationsCommandlet")()); }
}
