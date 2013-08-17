module UnrealScript.UnrealEd.AnalyzeShaderCachesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeShaderCachesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.AnalyzeShaderCachesCommandlet")); }
	private static __gshared AnalyzeShaderCachesCommandlet mDefaultProperties;
	@property final static AnalyzeShaderCachesCommandlet DefaultProperties() { mixin(MGDPC("AnalyzeShaderCachesCommandlet", "AnalyzeShaderCachesCommandlet UnrealEd.Default__AnalyzeShaderCachesCommandlet")); }
}
