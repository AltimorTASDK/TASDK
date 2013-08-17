module UnrealScript.UnrealEd.PrecompileShadersCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface PrecompileShadersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.PrecompileShadersCommandlet")); }
	private static __gshared PrecompileShadersCommandlet mDefaultProperties;
	@property final static PrecompileShadersCommandlet DefaultProperties() { mixin(MGDPC("PrecompileShadersCommandlet", "PrecompileShadersCommandlet UnrealEd.Default__PrecompileShadersCommandlet")); }
}
