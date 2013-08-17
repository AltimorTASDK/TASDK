module UnrealScript.UnrealEd.GenericBrowserType_Archetype;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Archetype : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_Archetype")()); }
	private static __gshared GenericBrowserType_Archetype mDefaultProperties;
	@property final static GenericBrowserType_Archetype DefaultProperties() { mixin(MGDPC!(GenericBrowserType_Archetype, "GenericBrowserType_Archetype UnrealEd.Default__GenericBrowserType_Archetype")()); }
}
