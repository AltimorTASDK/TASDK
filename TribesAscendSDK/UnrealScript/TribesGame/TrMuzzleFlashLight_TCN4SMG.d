module UnrealScript.TribesGame.TrMuzzleFlashLight_TCN4SMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_TCN4SMG : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrMuzzleFlashLight_TCN4SMG")); }
	private static __gshared TrMuzzleFlashLight_TCN4SMG mDefaultProperties;
	@property final static TrMuzzleFlashLight_TCN4SMG DefaultProperties() { mixin(MGDPC("TrMuzzleFlashLight_TCN4SMG", "TrMuzzleFlashLight_TCN4SMG TribesGame.Default__TrMuzzleFlashLight_TCN4SMG")); }
}
