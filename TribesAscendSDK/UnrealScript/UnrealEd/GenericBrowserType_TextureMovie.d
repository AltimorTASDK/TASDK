module UnrealScript.UnrealEd.GenericBrowserType_TextureMovie;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_TextureMovie : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_TextureMovie")); }
	private static __gshared GenericBrowserType_TextureMovie mDefaultProperties;
	@property final static GenericBrowserType_TextureMovie DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_TextureMovie)("GenericBrowserType_TextureMovie UnrealEd.Default__GenericBrowserType_TextureMovie")); }
}
