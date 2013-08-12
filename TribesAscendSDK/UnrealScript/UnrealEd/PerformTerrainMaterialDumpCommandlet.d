module UnrealScript.UnrealEd.PerformTerrainMaterialDumpCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface PerformTerrainMaterialDumpCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PerformTerrainMaterialDumpCommandlet")); }
	private static __gshared PerformTerrainMaterialDumpCommandlet mDefaultProperties;
	@property final static PerformTerrainMaterialDumpCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PerformTerrainMaterialDumpCommandlet)("PerformTerrainMaterialDumpCommandlet UnrealEd.Default__PerformTerrainMaterialDumpCommandlet")); }
}
