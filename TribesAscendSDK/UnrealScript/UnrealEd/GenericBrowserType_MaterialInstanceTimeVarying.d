module UnrealScript.UnrealEd.GenericBrowserType_MaterialInstanceTimeVarying;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_MaterialInstanceTimeVarying : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_MaterialInstanceTimeVarying")); }
	private static __gshared GenericBrowserType_MaterialInstanceTimeVarying mDefaultProperties;
	@property final static GenericBrowserType_MaterialInstanceTimeVarying DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_MaterialInstanceTimeVarying)("GenericBrowserType_MaterialInstanceTimeVarying UnrealEd.Default__GenericBrowserType_MaterialInstanceTimeVarying")); }
}
