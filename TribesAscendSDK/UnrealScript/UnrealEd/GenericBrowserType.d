module UnrealScript.UnrealEd.GenericBrowserType;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GenericBrowserType : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType")); }
	private static __gshared GenericBrowserType mDefaultProperties;
	@property final static GenericBrowserType DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType)("GenericBrowserType UnrealEd.Default__GenericBrowserType")); }
}
