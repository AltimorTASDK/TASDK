module UnrealScript.UnrealEd.GenericBrowserType_FracturedStaticMesh;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType_StaticMesh;

extern(C++) interface GenericBrowserType_FracturedStaticMesh : GenericBrowserType_StaticMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_FracturedStaticMesh")); }
}
