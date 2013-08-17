module UnrealScript.UnrealEd.ContentComparisonCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ContentComparisonCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ContentComparisonCommandlet")); }
	private static __gshared ContentComparisonCommandlet mDefaultProperties;
	@property final static ContentComparisonCommandlet DefaultProperties() { mixin(MGDPC("ContentComparisonCommandlet", "ContentComparisonCommandlet UnrealEd.Default__ContentComparisonCommandlet")); }
}
