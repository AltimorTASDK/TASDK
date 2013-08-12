module UnrealScript.UnrealEd.AnalyzeReferencedContentCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeReferencedContentCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnalyzeReferencedContentCommandlet")); }
	private static __gshared AnalyzeReferencedContentCommandlet mDefaultProperties;
	@property final static AnalyzeReferencedContentCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnalyzeReferencedContentCommandlet)("AnalyzeReferencedContentCommandlet UnrealEd.Default__AnalyzeReferencedContentCommandlet")); }
}
