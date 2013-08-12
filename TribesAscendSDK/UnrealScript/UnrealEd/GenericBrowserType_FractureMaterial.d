module UnrealScript.UnrealEd.GenericBrowserType_FractureMaterial;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_FractureMaterial : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_FractureMaterial")); }
	private static __gshared GenericBrowserType_FractureMaterial mDefaultProperties;
	@property final static GenericBrowserType_FractureMaterial DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_FractureMaterial)("GenericBrowserType_FractureMaterial UnrealEd.Default__GenericBrowserType_FractureMaterial")); }
}
