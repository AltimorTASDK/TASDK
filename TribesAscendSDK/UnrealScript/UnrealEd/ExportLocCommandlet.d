module UnrealScript.UnrealEd.ExportLocCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ExportLocCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ExportLocCommandlet")); }
	private static __gshared ExportLocCommandlet mDefaultProperties;
	@property final static ExportLocCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ExportLocCommandlet)("ExportLocCommandlet UnrealEd.Default__ExportLocCommandlet")); }
}
