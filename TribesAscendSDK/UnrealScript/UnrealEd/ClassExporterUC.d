module UnrealScript.UnrealEd.ClassExporterUC;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface ClassExporterUC : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ClassExporterUC")); }
}
