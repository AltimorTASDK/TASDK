module UnrealScript.UnrealEd.TagSuboptimalTexturesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface TagSuboptimalTexturesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.TagSuboptimalTexturesCommandlet")()); }
	private static __gshared TagSuboptimalTexturesCommandlet mDefaultProperties;
	@property final static TagSuboptimalTexturesCommandlet DefaultProperties() { mixin(MGDPC!(TagSuboptimalTexturesCommandlet, "TagSuboptimalTexturesCommandlet UnrealEd.Default__TagSuboptimalTexturesCommandlet")()); }
}
