module UnrealScript.UnrealEd.AnalyzeReferencedObjectCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeReferencedObjectCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.AnalyzeReferencedObjectCommandlet")()); }
	private static __gshared AnalyzeReferencedObjectCommandlet mDefaultProperties;
	@property final static AnalyzeReferencedObjectCommandlet DefaultProperties() { mixin(MGDPC!(AnalyzeReferencedObjectCommandlet, "AnalyzeReferencedObjectCommandlet UnrealEd.Default__AnalyzeReferencedObjectCommandlet")()); }
}
