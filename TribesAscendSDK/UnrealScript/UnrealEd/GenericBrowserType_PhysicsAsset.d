module UnrealScript.UnrealEd.GenericBrowserType_PhysicsAsset;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_PhysicsAsset : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_PhysicsAsset")); }
	private static __gshared GenericBrowserType_PhysicsAsset mDefaultProperties;
	@property final static GenericBrowserType_PhysicsAsset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_PhysicsAsset)("GenericBrowserType_PhysicsAsset UnrealEd.Default__GenericBrowserType_PhysicsAsset")); }
}
