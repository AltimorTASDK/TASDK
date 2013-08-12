module UnrealScript.UnrealEd.GenericBrowserType_RenderTexture;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType_Texture;

extern(C++) interface GenericBrowserType_RenderTexture : GenericBrowserType_Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_RenderTexture")); }
	private static __gshared GenericBrowserType_RenderTexture mDefaultProperties;
	@property final static GenericBrowserType_RenderTexture DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_RenderTexture)("GenericBrowserType_RenderTexture UnrealEd.Default__GenericBrowserType_RenderTexture")); }
}
