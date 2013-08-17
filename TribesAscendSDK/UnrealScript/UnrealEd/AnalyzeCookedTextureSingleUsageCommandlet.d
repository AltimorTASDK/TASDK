module UnrealScript.UnrealEd.AnalyzeCookedTextureSingleUsageCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeCookedTextureSingleUsageCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.AnalyzeCookedTextureSingleUsageCommandlet")); }
	private static __gshared AnalyzeCookedTextureSingleUsageCommandlet mDefaultProperties;
	@property final static AnalyzeCookedTextureSingleUsageCommandlet DefaultProperties() { mixin(MGDPC("AnalyzeCookedTextureSingleUsageCommandlet", "AnalyzeCookedTextureSingleUsageCommandlet UnrealEd.Default__AnalyzeCookedTextureSingleUsageCommandlet")); }
}
