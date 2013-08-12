module UnrealScript.UnrealEd.GenericBrowserType_Prefab;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Prefab : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_Prefab")); }
	private static __gshared GenericBrowserType_Prefab mDefaultProperties;
	@property final static GenericBrowserType_Prefab DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_Prefab)("GenericBrowserType_Prefab UnrealEd.Default__GenericBrowserType_Prefab")); }
}
