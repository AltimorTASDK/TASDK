module UnrealScript.GFxUIEditor.GFxImportCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface GFxImportCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUIEditor.GFxImportCommandlet")); }
	private static __gshared GFxImportCommandlet mDefaultProperties;
	@property final static GFxImportCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxImportCommandlet)("GFxImportCommandlet GFxUIEditor.Default__GFxImportCommandlet")); }
}
