module UnrealScript.UnrealEd.GenericBrowserType_PhysicsAsset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_PhysicsAsset : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_PhysicsAsset")()); }
	private static __gshared GenericBrowserType_PhysicsAsset mDefaultProperties;
	@property final static GenericBrowserType_PhysicsAsset DefaultProperties() { mixin(MGDPC!(GenericBrowserType_PhysicsAsset, "GenericBrowserType_PhysicsAsset UnrealEd.Default__GenericBrowserType_PhysicsAsset")()); }
}
