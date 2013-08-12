module UnrealScript.UnrealEd.GenericBrowserType_FracturedStaticMesh;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType_StaticMesh;

extern(C++) interface GenericBrowserType_FracturedStaticMesh : GenericBrowserType_StaticMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_FracturedStaticMesh")); }
	private static __gshared GenericBrowserType_FracturedStaticMesh mDefaultProperties;
	@property final static GenericBrowserType_FracturedStaticMesh DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_FracturedStaticMesh)("GenericBrowserType_FracturedStaticMesh UnrealEd.Default__GenericBrowserType_FracturedStaticMesh")); }
}
