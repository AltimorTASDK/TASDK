module UnrealScript.UnrealEd.FixupRedirectsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FixupRedirectsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FixupRedirectsCommandlet")()); }
	private static __gshared FixupRedirectsCommandlet mDefaultProperties;
	@property final static FixupRedirectsCommandlet DefaultProperties() { mixin(MGDPC!(FixupRedirectsCommandlet, "FixupRedirectsCommandlet UnrealEd.Default__FixupRedirectsCommandlet")()); }
}
