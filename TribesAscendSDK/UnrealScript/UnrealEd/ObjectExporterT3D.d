module UnrealScript.UnrealEd.ObjectExporterT3D;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface ObjectExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ObjectExporterT3D")); }
}
