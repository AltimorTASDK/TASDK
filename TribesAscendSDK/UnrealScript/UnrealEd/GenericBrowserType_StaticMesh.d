module UnrealScript.UnrealEd.GenericBrowserType_StaticMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_StaticMesh : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_StaticMesh")()); }
	private static __gshared GenericBrowserType_StaticMesh mDefaultProperties;
	@property final static GenericBrowserType_StaticMesh DefaultProperties() { mixin(MGDPC!(GenericBrowserType_StaticMesh, "GenericBrowserType_StaticMesh UnrealEd.Default__GenericBrowserType_StaticMesh")()); }
}
