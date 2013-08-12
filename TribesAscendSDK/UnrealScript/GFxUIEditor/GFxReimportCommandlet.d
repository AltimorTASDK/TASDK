module UnrealScript.GFxUIEditor.GFxReimportCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface GFxReimportCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUIEditor.GFxReimportCommandlet")); }
	private static __gshared GFxReimportCommandlet mDefaultProperties;
	@property final static GFxReimportCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxReimportCommandlet)("GFxReimportCommandlet GFxUIEditor.Default__GFxReimportCommandlet")); }
}
