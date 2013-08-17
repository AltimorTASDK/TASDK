module UnrealScript.UnrealEd.MergePackagesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface MergePackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.MergePackagesCommandlet")()); }
	private static __gshared MergePackagesCommandlet mDefaultProperties;
	@property final static MergePackagesCommandlet DefaultProperties() { mixin(MGDPC!(MergePackagesCommandlet, "MergePackagesCommandlet UnrealEd.Default__MergePackagesCommandlet")()); }
}
