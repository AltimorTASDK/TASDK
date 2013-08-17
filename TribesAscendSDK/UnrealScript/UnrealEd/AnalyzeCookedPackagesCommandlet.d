module UnrealScript.UnrealEd.AnalyzeCookedPackagesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeCookedPackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.AnalyzeCookedPackagesCommandlet")()); }
	private static __gshared AnalyzeCookedPackagesCommandlet mDefaultProperties;
	@property final static AnalyzeCookedPackagesCommandlet DefaultProperties() { mixin(MGDPC!(AnalyzeCookedPackagesCommandlet, "AnalyzeCookedPackagesCommandlet UnrealEd.Default__AnalyzeCookedPackagesCommandlet")()); }
}
