module UnrealScript.UnrealEd.GenericBrowserType_TextureCube;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType_Texture;

extern(C++) interface GenericBrowserType_TextureCube : GenericBrowserType_Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_TextureCube")); }
}
