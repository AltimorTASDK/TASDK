module UnrealScript.UnrealEd.PolysExporterT3D;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface PolysExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PolysExporterT3D")); }
	private static __gshared PolysExporterT3D mDefaultProperties;
	@property final static PolysExporterT3D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PolysExporterT3D)("PolysExporterT3D UnrealEd.Default__PolysExporterT3D")); }
}
