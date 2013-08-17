module UnrealScript.UnrealEd.TagReferencedAssetsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface TagReferencedAssetsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TagReferencedAssetsCommandlet")); }
	private static __gshared TagReferencedAssetsCommandlet mDefaultProperties;
	@property final static TagReferencedAssetsCommandlet DefaultProperties() { mixin(MGDPC("TagReferencedAssetsCommandlet", "TagReferencedAssetsCommandlet UnrealEd.Default__TagReferencedAssetsCommandlet")); }
}
