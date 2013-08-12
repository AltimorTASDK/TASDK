module UnrealScript.UnrealEd.SoundSurroundExporterWAV;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface SoundSurroundExporterWAV : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.SoundSurroundExporterWAV")); }
	private static __gshared SoundSurroundExporterWAV mDefaultProperties;
	@property final static SoundSurroundExporterWAV DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundSurroundExporterWAV)("SoundSurroundExporterWAV UnrealEd.Default__SoundSurroundExporterWAV")); }
}
