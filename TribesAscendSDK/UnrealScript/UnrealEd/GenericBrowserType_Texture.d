module UnrealScript.UnrealEd.GenericBrowserType_Texture;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Texture : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_Texture")); }
}
