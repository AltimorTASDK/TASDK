module UnrealScript.UnrealEd.GenericBrowserType_AnimTree;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_AnimTree : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_AnimTree")); }
	private static __gshared GenericBrowserType_AnimTree mDefaultProperties;
	@property final static GenericBrowserType_AnimTree DefaultProperties() { mixin(MGDPC("GenericBrowserType_AnimTree", "GenericBrowserType_AnimTree UnrealEd.Default__GenericBrowserType_AnimTree")); }
}
