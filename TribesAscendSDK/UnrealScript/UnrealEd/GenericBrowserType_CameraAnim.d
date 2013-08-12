module UnrealScript.UnrealEd.GenericBrowserType_CameraAnim;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_CameraAnim : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_CameraAnim")); }
	private static __gshared GenericBrowserType_CameraAnim mDefaultProperties;
	@property final static GenericBrowserType_CameraAnim DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_CameraAnim)("GenericBrowserType_CameraAnim UnrealEd.Default__GenericBrowserType_CameraAnim")); }
}
