module UnrealScript.TribesGame.TrGenerateRefPackagesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface TrGenerateRefPackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGenerateRefPackagesCommandlet")); }
	private static __gshared TrGenerateRefPackagesCommandlet mDefaultProperties;
	@property final static TrGenerateRefPackagesCommandlet DefaultProperties() { mixin(MGDPC("TrGenerateRefPackagesCommandlet", "TrGenerateRefPackagesCommandlet TribesGame.Default__TrGenerateRefPackagesCommandlet")); }
}
