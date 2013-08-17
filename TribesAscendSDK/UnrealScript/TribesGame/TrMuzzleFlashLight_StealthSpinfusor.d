module UnrealScript.TribesGame.TrMuzzleFlashLight_StealthSpinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_StealthSpinfusor : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrMuzzleFlashLight_StealthSpinfusor")()); }
	private static __gshared TrMuzzleFlashLight_StealthSpinfusor mDefaultProperties;
	@property final static TrMuzzleFlashLight_StealthSpinfusor DefaultProperties() { mixin(MGDPC!(TrMuzzleFlashLight_StealthSpinfusor, "TrMuzzleFlashLight_StealthSpinfusor TribesGame.Default__TrMuzzleFlashLight_StealthSpinfusor")()); }
}
