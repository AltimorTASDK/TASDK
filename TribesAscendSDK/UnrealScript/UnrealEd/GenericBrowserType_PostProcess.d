module UnrealScript.UnrealEd.GenericBrowserType_PostProcess;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_PostProcess : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_PostProcess")); }
	private static __gshared GenericBrowserType_PostProcess mDefaultProperties;
	@property final static GenericBrowserType_PostProcess DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_PostProcess)("GenericBrowserType_PostProcess UnrealEd.Default__GenericBrowserType_PostProcess")); }
}
