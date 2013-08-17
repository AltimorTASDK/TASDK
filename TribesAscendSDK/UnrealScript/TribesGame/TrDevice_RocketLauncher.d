module UnrealScript.TribesGame.TrDevice_RocketLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_RocketLauncher : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_RocketLauncher")()); }
	private static __gshared TrDevice_RocketLauncher mDefaultProperties;
	@property final static TrDevice_RocketLauncher DefaultProperties() { mixin(MGDPC!(TrDevice_RocketLauncher, "TrDevice_RocketLauncher TribesGame.Default__TrDevice_RocketLauncher")()); }
}
