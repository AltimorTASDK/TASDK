module UnrealScript.TribesGame.TrMuzzleFlashLight_AssaultRifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_AssaultRifle : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrMuzzleFlashLight_AssaultRifle")()); }
	private static __gshared TrMuzzleFlashLight_AssaultRifle mDefaultProperties;
	@property final static TrMuzzleFlashLight_AssaultRifle DefaultProperties() { mixin(MGDPC!(TrMuzzleFlashLight_AssaultRifle, "TrMuzzleFlashLight_AssaultRifle TribesGame.Default__TrMuzzleFlashLight_AssaultRifle")()); }
}
