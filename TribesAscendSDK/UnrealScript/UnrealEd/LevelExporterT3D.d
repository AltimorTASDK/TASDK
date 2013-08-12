module UnrealScript.UnrealEd.LevelExporterT3D;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface LevelExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LevelExporterT3D")); }
	private static __gshared LevelExporterT3D mDefaultProperties;
	@property final static LevelExporterT3D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LevelExporterT3D)("LevelExporterT3D UnrealEd.Default__LevelExporterT3D")); }
}
