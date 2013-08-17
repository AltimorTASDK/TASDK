module UnrealScript.UnrealEd.CookPackagesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface CookPackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.CookPackagesCommandlet")); }
	private static __gshared CookPackagesCommandlet mDefaultProperties;
	@property final static CookPackagesCommandlet DefaultProperties() { mixin(MGDPC("CookPackagesCommandlet", "CookPackagesCommandlet UnrealEd.Default__CookPackagesCommandlet")); }
}
