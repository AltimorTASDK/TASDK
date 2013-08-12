module UnrealScript.UnrealEd.GenericBrowserType_All;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType_Custom;

extern(C++) interface GenericBrowserType_All : GenericBrowserType_Custom
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_All")); }
}
