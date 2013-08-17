module UnrealScript.UnrealEd.GenericBrowserType_Sounds;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Sounds : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_Sounds")()); }
	private static __gshared GenericBrowserType_Sounds mDefaultProperties;
	@property final static GenericBrowserType_Sounds DefaultProperties() { mixin(MGDPC!(GenericBrowserType_Sounds, "GenericBrowserType_Sounds UnrealEd.Default__GenericBrowserType_Sounds")()); }
}
