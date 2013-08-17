module UnrealScript.UnrealEd.ResavePackagesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ResavePackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ResavePackagesCommandlet")); }
	private static __gshared ResavePackagesCommandlet mDefaultProperties;
	@property final static ResavePackagesCommandlet DefaultProperties() { mixin(MGDPC("ResavePackagesCommandlet", "ResavePackagesCommandlet UnrealEd.Default__ResavePackagesCommandlet")); }
}
