module UnrealScript.UnrealEd.GenericBrowserType_AnimTree;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_AnimTree : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_AnimTree")); }
	private static __gshared GenericBrowserType_AnimTree mDefaultProperties;
	@property final static GenericBrowserType_AnimTree DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_AnimTree)("GenericBrowserType_AnimTree UnrealEd.Default__GenericBrowserType_AnimTree")); }
}
