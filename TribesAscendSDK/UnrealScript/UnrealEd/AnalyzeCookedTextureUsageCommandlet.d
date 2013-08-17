module UnrealScript.UnrealEd.AnalyzeCookedTextureUsageCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeCookedTextureUsageCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.AnalyzeCookedTextureUsageCommandlet")); }
	private static __gshared AnalyzeCookedTextureUsageCommandlet mDefaultProperties;
	@property final static AnalyzeCookedTextureUsageCommandlet DefaultProperties() { mixin(MGDPC("AnalyzeCookedTextureUsageCommandlet", "AnalyzeCookedTextureUsageCommandlet UnrealEd.Default__AnalyzeCookedTextureUsageCommandlet")); }
}
