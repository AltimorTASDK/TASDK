module UnrealScript.UnrealEd.GenericBrowserType_FracturedStaticMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType_StaticMesh;

extern(C++) interface GenericBrowserType_FracturedStaticMesh : GenericBrowserType_StaticMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_FracturedStaticMesh")); }
	private static __gshared GenericBrowserType_FracturedStaticMesh mDefaultProperties;
	@property final static GenericBrowserType_FracturedStaticMesh DefaultProperties() { mixin(MGDPC("GenericBrowserType_FracturedStaticMesh", "GenericBrowserType_FracturedStaticMesh UnrealEd.Default__GenericBrowserType_FracturedStaticMesh")); }
}
