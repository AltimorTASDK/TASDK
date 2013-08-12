module UnrealScript.UnrealEd.BatchExportCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface BatchExportCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.BatchExportCommandlet")); }
	private static __gshared BatchExportCommandlet mDefaultProperties;
	@property final static BatchExportCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(BatchExportCommandlet)("BatchExportCommandlet UnrealEd.Default__BatchExportCommandlet")); }
}
