module UnrealScript.UnrealEd.AnalyzeReferencedContentCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeReferencedContentCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnalyzeReferencedContentCommandlet")); }
}
