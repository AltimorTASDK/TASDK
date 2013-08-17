module UnrealScript.UnrealEd.AnalyzeContentCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeContentCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.AnalyzeContentCommandlet")); }
	private static __gshared AnalyzeContentCommandlet mDefaultProperties;
	@property final static AnalyzeContentCommandlet DefaultProperties() { mixin(MGDPC("AnalyzeContentCommandlet", "AnalyzeContentCommandlet UnrealEd.Default__AnalyzeContentCommandlet")); }
}
