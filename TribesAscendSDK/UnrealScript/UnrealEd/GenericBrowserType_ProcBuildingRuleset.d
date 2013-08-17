module UnrealScript.UnrealEd.GenericBrowserType_ProcBuildingRuleset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_ProcBuildingRuleset : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_ProcBuildingRuleset")); }
	private static __gshared GenericBrowserType_ProcBuildingRuleset mDefaultProperties;
	@property final static GenericBrowserType_ProcBuildingRuleset DefaultProperties() { mixin(MGDPC("GenericBrowserType_ProcBuildingRuleset", "GenericBrowserType_ProcBuildingRuleset UnrealEd.Default__GenericBrowserType_ProcBuildingRuleset")); }
}
