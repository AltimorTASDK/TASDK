module UnrealScript.TribesGame.TrProj_HeavyBoltLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HeavyBoltLauncher : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_HeavyBoltLauncher")()); }
	private static __gshared TrProj_HeavyBoltLauncher mDefaultProperties;
	@property final static TrProj_HeavyBoltLauncher DefaultProperties() { mixin(MGDPC!(TrProj_HeavyBoltLauncher, "TrProj_HeavyBoltLauncher TribesGame.Default__TrProj_HeavyBoltLauncher")()); }
}
