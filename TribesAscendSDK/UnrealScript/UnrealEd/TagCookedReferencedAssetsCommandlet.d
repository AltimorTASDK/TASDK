module UnrealScript.UnrealEd.TagCookedReferencedAssetsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface TagCookedReferencedAssetsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.TagCookedReferencedAssetsCommandlet")()); }
	private static __gshared TagCookedReferencedAssetsCommandlet mDefaultProperties;
	@property final static TagCookedReferencedAssetsCommandlet DefaultProperties() { mixin(MGDPC!(TagCookedReferencedAssetsCommandlet, "TagCookedReferencedAssetsCommandlet UnrealEd.Default__TagCookedReferencedAssetsCommandlet")()); }
}
