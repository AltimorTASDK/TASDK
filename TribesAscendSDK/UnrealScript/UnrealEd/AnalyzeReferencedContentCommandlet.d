module UnrealScript.UnrealEd.AnalyzeReferencedContentCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeReferencedContentCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.AnalyzeReferencedContentCommandlet")()); }
	private static __gshared AnalyzeReferencedContentCommandlet mDefaultProperties;
	@property final static AnalyzeReferencedContentCommandlet DefaultProperties() { mixin(MGDPC!(AnalyzeReferencedContentCommandlet, "AnalyzeReferencedContentCommandlet UnrealEd.Default__AnalyzeReferencedContentCommandlet")()); }
}
