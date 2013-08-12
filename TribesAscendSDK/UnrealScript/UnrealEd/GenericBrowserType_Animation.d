module UnrealScript.UnrealEd.GenericBrowserType_Animation;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Animation : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_Animation")); }
	private static __gshared GenericBrowserType_Animation mDefaultProperties;
	@property final static GenericBrowserType_Animation DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_Animation)("GenericBrowserType_Animation UnrealEd.Default__GenericBrowserType_Animation")); }
}
