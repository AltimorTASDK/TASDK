module UnrealScript.UnrealEd.FindDarkDiffuseTexturesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindDarkDiffuseTexturesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.FindDarkDiffuseTexturesCommandlet")); }
	private static __gshared FindDarkDiffuseTexturesCommandlet mDefaultProperties;
	@property final static FindDarkDiffuseTexturesCommandlet DefaultProperties() { mixin(MGDPC("FindDarkDiffuseTexturesCommandlet", "FindDarkDiffuseTexturesCommandlet UnrealEd.Default__FindDarkDiffuseTexturesCommandlet")); }
}
