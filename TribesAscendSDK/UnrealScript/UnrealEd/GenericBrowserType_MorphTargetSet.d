module UnrealScript.UnrealEd.GenericBrowserType_MorphTargetSet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_MorphTargetSet : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_MorphTargetSet")); }
	private static __gshared GenericBrowserType_MorphTargetSet mDefaultProperties;
	@property final static GenericBrowserType_MorphTargetSet DefaultProperties() { mixin(MGDPC("GenericBrowserType_MorphTargetSet", "GenericBrowserType_MorphTargetSet UnrealEd.Default__GenericBrowserType_MorphTargetSet")); }
}
