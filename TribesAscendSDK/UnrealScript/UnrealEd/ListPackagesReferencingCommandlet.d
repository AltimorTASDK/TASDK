module UnrealScript.UnrealEd.ListPackagesReferencingCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListPackagesReferencingCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ListPackagesReferencingCommandlet")()); }
	private static __gshared ListPackagesReferencingCommandlet mDefaultProperties;
	@property final static ListPackagesReferencingCommandlet DefaultProperties() { mixin(MGDPC!(ListPackagesReferencingCommandlet, "ListPackagesReferencingCommandlet UnrealEd.Default__ListPackagesReferencingCommandlet")()); }
}
