module UnrealScript.UnrealEd.FixAmbiguousMaterialParametersCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FixAmbiguousMaterialParametersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.FixAmbiguousMaterialParametersCommandlet")); }
	private static __gshared FixAmbiguousMaterialParametersCommandlet mDefaultProperties;
	@property final static FixAmbiguousMaterialParametersCommandlet DefaultProperties() { mixin(MGDPC("FixAmbiguousMaterialParametersCommandlet", "FixAmbiguousMaterialParametersCommandlet UnrealEd.Default__FixAmbiguousMaterialParametersCommandlet")); }
}
