module UnrealScript.UnrealEd.GenericBrowserType_SkeletalMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_SkeletalMesh : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_SkeletalMesh")()); }
	private static __gshared GenericBrowserType_SkeletalMesh mDefaultProperties;
	@property final static GenericBrowserType_SkeletalMesh DefaultProperties() { mixin(MGDPC!(GenericBrowserType_SkeletalMesh, "GenericBrowserType_SkeletalMesh UnrealEd.Default__GenericBrowserType_SkeletalMesh")()); }
}
