module UnrealScript.UnrealEd.TextBufferExporterTXT;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface TextBufferExporterTXT : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TextBufferExporterTXT")); }
	private static __gshared TextBufferExporterTXT mDefaultProperties;
	@property final static TextBufferExporterTXT DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TextBufferExporterTXT)("TextBufferExporterTXT UnrealEd.Default__TextBufferExporterTXT")); }
}
