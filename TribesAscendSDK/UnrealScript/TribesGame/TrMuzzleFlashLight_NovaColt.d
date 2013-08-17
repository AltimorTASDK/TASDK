module UnrealScript.TribesGame.TrMuzzleFlashLight_NovaColt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_NovaColt : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrMuzzleFlashLight_NovaColt")()); }
	private static __gshared TrMuzzleFlashLight_NovaColt mDefaultProperties;
	@property final static TrMuzzleFlashLight_NovaColt DefaultProperties() { mixin(MGDPC!(TrMuzzleFlashLight_NovaColt, "TrMuzzleFlashLight_NovaColt TribesGame.Default__TrMuzzleFlashLight_NovaColt")()); }
}
