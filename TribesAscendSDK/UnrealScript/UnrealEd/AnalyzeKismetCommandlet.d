module UnrealScript.UnrealEd.AnalyzeKismetCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeKismetCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.AnalyzeKismetCommandlet")); }
	private static __gshared AnalyzeKismetCommandlet mDefaultProperties;
	@property final static AnalyzeKismetCommandlet DefaultProperties() { mixin(MGDPC("AnalyzeKismetCommandlet", "AnalyzeKismetCommandlet UnrealEd.Default__AnalyzeKismetCommandlet")); }
}
