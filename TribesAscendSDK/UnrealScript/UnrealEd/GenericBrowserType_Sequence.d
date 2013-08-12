module UnrealScript.UnrealEd.GenericBrowserType_Sequence;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Sequence : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_Sequence")); }
	private static __gshared GenericBrowserType_Sequence mDefaultProperties;
	@property final static GenericBrowserType_Sequence DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_Sequence)("GenericBrowserType_Sequence UnrealEd.Default__GenericBrowserType_Sequence")); }
}
