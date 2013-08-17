module UnrealScript.UnrealEd.GenericBrowserType_Sequence;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Sequence : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_Sequence")); }
	private static __gshared GenericBrowserType_Sequence mDefaultProperties;
	@property final static GenericBrowserType_Sequence DefaultProperties() { mixin(MGDPC("GenericBrowserType_Sequence", "GenericBrowserType_Sequence UnrealEd.Default__GenericBrowserType_Sequence")); }
}
