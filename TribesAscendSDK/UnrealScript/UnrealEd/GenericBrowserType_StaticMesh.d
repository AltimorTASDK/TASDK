module UnrealScript.UnrealEd.GenericBrowserType_StaticMesh;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_StaticMesh : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_StaticMesh")); }
	private static __gshared GenericBrowserType_StaticMesh mDefaultProperties;
	@property final static GenericBrowserType_StaticMesh DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_StaticMesh)("GenericBrowserType_StaticMesh UnrealEd.Default__GenericBrowserType_StaticMesh")); }
}
