module UnrealScript.UnrealEd.PolysExporterT3D;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface PolysExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PolysExporterT3D")); }
}
