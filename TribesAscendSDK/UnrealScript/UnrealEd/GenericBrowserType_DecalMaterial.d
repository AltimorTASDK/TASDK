module UnrealScript.UnrealEd.GenericBrowserType_DecalMaterial;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_DecalMaterial : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_DecalMaterial")); }
}
