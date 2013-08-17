module UnrealScript.TribesGame.TrNeutralMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrNeutralMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrNeutralMuzzleFlashLight")()); }
	private static __gshared TrNeutralMuzzleFlashLight mDefaultProperties;
	@property final static TrNeutralMuzzleFlashLight DefaultProperties() { mixin(MGDPC!(TrNeutralMuzzleFlashLight, "TrNeutralMuzzleFlashLight TribesGame.Default__TrNeutralMuzzleFlashLight")()); }
}
