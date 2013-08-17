module UnrealScript.UnrealEd.GenericBrowserType_MaterialInstanceTimeVarying;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_MaterialInstanceTimeVarying : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_MaterialInstanceTimeVarying")); }
	private static __gshared GenericBrowserType_MaterialInstanceTimeVarying mDefaultProperties;
	@property final static GenericBrowserType_MaterialInstanceTimeVarying DefaultProperties() { mixin(MGDPC("GenericBrowserType_MaterialInstanceTimeVarying", "GenericBrowserType_MaterialInstanceTimeVarying UnrealEd.Default__GenericBrowserType_MaterialInstanceTimeVarying")); }
}
