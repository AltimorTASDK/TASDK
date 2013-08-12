module UnrealScript.UnrealEd.GenericBrowserType_SpeedTree;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_SpeedTree : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_SpeedTree")); }
	private static __gshared GenericBrowserType_SpeedTree mDefaultProperties;
	@property final static GenericBrowserType_SpeedTree DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_SpeedTree)("GenericBrowserType_SpeedTree UnrealEd.Default__GenericBrowserType_SpeedTree")); }
}
