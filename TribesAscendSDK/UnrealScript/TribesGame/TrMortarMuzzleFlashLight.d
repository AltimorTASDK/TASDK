module UnrealScript.TribesGame.TrMortarMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMortarMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrMortarMuzzleFlashLight")); }
	private static __gshared TrMortarMuzzleFlashLight mDefaultProperties;
	@property final static TrMortarMuzzleFlashLight DefaultProperties() { mixin(MGDPC("TrMortarMuzzleFlashLight", "TrMortarMuzzleFlashLight TribesGame.Default__TrMortarMuzzleFlashLight")); }
}
