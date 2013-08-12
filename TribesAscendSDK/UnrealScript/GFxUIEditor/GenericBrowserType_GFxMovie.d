module UnrealScript.GFxUIEditor.GenericBrowserType_GFxMovie;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_GFxMovie : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUIEditor.GenericBrowserType_GFxMovie")); }
	private static __gshared GenericBrowserType_GFxMovie mDefaultProperties;
	@property final static GenericBrowserType_GFxMovie DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_GFxMovie)("GenericBrowserType_GFxMovie GFxUIEditor.Default__GenericBrowserType_GFxMovie")); }
}
