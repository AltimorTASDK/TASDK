module UnrealScript.UnrealEd.LevelExporterSTL;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface LevelExporterSTL : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LevelExporterSTL")); }
	private static __gshared LevelExporterSTL mDefaultProperties;
	@property final static LevelExporterSTL DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LevelExporterSTL)("LevelExporterSTL UnrealEd.Default__LevelExporterSTL")); }
}
