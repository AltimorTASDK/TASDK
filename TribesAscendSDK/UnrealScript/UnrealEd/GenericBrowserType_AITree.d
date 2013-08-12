module UnrealScript.UnrealEd.GenericBrowserType_AITree;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_AITree : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_AITree")); }
}
