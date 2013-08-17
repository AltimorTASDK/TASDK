module UnrealScript.TribesGame.TrMuzzleFlashLight_Gold;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_Gold : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrMuzzleFlashLight_Gold")); }
	private static __gshared TrMuzzleFlashLight_Gold mDefaultProperties;
	@property final static TrMuzzleFlashLight_Gold DefaultProperties() { mixin(MGDPC("TrMuzzleFlashLight_Gold", "TrMuzzleFlashLight_Gold TribesGame.Default__TrMuzzleFlashLight_Gold")); }
}
