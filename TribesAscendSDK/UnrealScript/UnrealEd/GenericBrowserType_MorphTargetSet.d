module UnrealScript.UnrealEd.GenericBrowserType_MorphTargetSet;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_MorphTargetSet : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_MorphTargetSet")); }
	private static __gshared GenericBrowserType_MorphTargetSet mDefaultProperties;
	@property final static GenericBrowserType_MorphTargetSet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_MorphTargetSet)("GenericBrowserType_MorphTargetSet UnrealEd.Default__GenericBrowserType_MorphTargetSet")); }
}
