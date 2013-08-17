module UnrealScript.TribesGame.TrSpinfusorMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrSpinfusorMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSpinfusorMuzzleFlashLight")()); }
	private static __gshared TrSpinfusorMuzzleFlashLight mDefaultProperties;
	@property final static TrSpinfusorMuzzleFlashLight DefaultProperties() { mixin(MGDPC!(TrSpinfusorMuzzleFlashLight, "TrSpinfusorMuzzleFlashLight TribesGame.Default__TrSpinfusorMuzzleFlashLight")()); }
}
