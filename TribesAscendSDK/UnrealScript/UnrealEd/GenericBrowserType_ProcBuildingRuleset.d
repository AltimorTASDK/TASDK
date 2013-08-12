module UnrealScript.UnrealEd.GenericBrowserType_ProcBuildingRuleset;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_ProcBuildingRuleset : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_ProcBuildingRuleset")); }
	private static __gshared GenericBrowserType_ProcBuildingRuleset mDefaultProperties;
	@property final static GenericBrowserType_ProcBuildingRuleset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_ProcBuildingRuleset)("GenericBrowserType_ProcBuildingRuleset UnrealEd.Default__GenericBrowserType_ProcBuildingRuleset")); }
}
