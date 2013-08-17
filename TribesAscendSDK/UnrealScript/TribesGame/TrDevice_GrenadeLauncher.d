module UnrealScript.TribesGame.TrDevice_GrenadeLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_GrenadeLauncher : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_GrenadeLauncher")); }
	private static __gshared TrDevice_GrenadeLauncher mDefaultProperties;
	@property final static TrDevice_GrenadeLauncher DefaultProperties() { mixin(MGDPC("TrDevice_GrenadeLauncher", "TrDevice_GrenadeLauncher TribesGame.Default__TrDevice_GrenadeLauncher")); }
}
