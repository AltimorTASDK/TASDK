module UnrealScript.UnrealEd.SoundExporterWAV;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface SoundExporterWAV : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.SoundExporterWAV")); }
}
