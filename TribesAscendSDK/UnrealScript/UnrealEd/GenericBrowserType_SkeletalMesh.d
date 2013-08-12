module UnrealScript.UnrealEd.GenericBrowserType_SkeletalMesh;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_SkeletalMesh : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_SkeletalMesh")); }
	private static __gshared GenericBrowserType_SkeletalMesh mDefaultProperties;
	@property final static GenericBrowserType_SkeletalMesh DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_SkeletalMesh)("GenericBrowserType_SkeletalMesh UnrealEd.Default__GenericBrowserType_SkeletalMesh")); }
}
